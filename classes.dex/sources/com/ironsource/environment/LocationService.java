package com.ironsource.environment;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LocationService {
    private static String TAG = LocationService.class.getSimpleName();

    public interface ISLocationListener {
        void onLocationChanged(Location location);
    }

    public static Location getLastLocation(Context context) {
        Location bestLocation = null;
        if (!ApplicationContext.isPermissionGranted(context, "android.permission.ACCESS_FINE_LOCATION") && !ApplicationContext.isPermissionGranted(context, "android.permission.ACCESS_COARSE_LOCATION")) {
            Log.d(TAG, "Location Permission Not Granted (ACCESS_FINE_LOCATION or ACCESS_COARSE_LOCATION)");
            return null;
        }
        try {
            LocationManager locationManager = (LocationManager) context.getSystemService("location");
            List<String> providers = locationManager != null ? locationManager.getAllProviders() : null;
            if (providers != null) {
                for (String provider : providers) {
                    try {
                        Location location = locationManager.getLastKnownLocation(provider);
                        if (location != null) {
                            long currentTime = location.getTime();
                            if (currentTime > Long.MIN_VALUE) {
                                bestLocation = location;
                            }
                        }
                    } catch (Exception e) {
                    }
                }
            }
        } catch (Exception e2) {
        }
        return bestLocation;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0035 -> B:19:0x0015). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0037 -> B:19:0x0015). Please report as a decompilation issue!!! */
    @SuppressLint({"MissingPermission"})
    public static void getPreciseLocation(Context context, final ISLocationListener isLocationListener) {
        if (!ApplicationContext.isPermissionGranted(context, "android.permission.ACCESS_FINE_LOCATION")) {
            Log.d(TAG, "Location Permission Not Granted (ACCESS_FINE_LOCATION)");
            if (isLocationListener != null) {
                isLocationListener.onLocationChanged(null);
                return;
            }
        }
        try {
            LocationManager locationManager = (LocationManager) context.getSystemService("location");
            if (isLocationListener != null && !locationManager.isProviderEnabled("gps")) {
                Log.d(TAG, "GPS Provider is turned off");
                isLocationListener.onLocationChanged(null);
            } else {
                LocationListener locationListener = new LocationListener() { // from class: com.ironsource.environment.LocationService.1
                    @Override // android.location.LocationListener
                    public void onLocationChanged(Location location) {
                        Log.d("LocationService", "onLocationChanged " + location.getProvider());
                        if (isLocationListener != null) {
                            isLocationListener.onLocationChanged(location);
                        }
                    }

                    @Override // android.location.LocationListener
                    public void onStatusChanged(String provider, int status, Bundle extras) {
                        Log.d("LocationService", "onStatusChanged " + provider);
                    }

                    @Override // android.location.LocationListener
                    public void onProviderEnabled(String provider) {
                        Log.d("LocationService", "onProviderEnabled " + provider);
                    }

                    @Override // android.location.LocationListener
                    public void onProviderDisabled(String provider) {
                        Log.d("LocationService", "onProviderDisabled " + provider);
                    }
                };
                Criteria c = new Criteria();
                locationManager.requestSingleUpdate(c, locationListener, Looper.myLooper());
            }
        } catch (Exception e) {
            if (isLocationListener != null) {
                isLocationListener.onLocationChanged(null);
            }
        }
    }

    public static boolean locationServicesEnabled(Context context) {
        boolean z = false;
        try {
            if (!ApplicationContext.isPermissionGranted(context, "android.permission.ACCESS_FINE_LOCATION") && !ApplicationContext.isPermissionGranted(context, "android.permission.ACCESS_COARSE_LOCATION")) {
                Log.d(TAG, "Location Permission Not Granted (ACCESS_FINE_LOCATION or ACCESS_COARSE_LOCATION)");
            } else {
                LocationManager locationManager = (LocationManager) context.getSystemService("location");
                boolean gps_enabled = false;
                boolean network_enabled = false;
                try {
                    gps_enabled = locationManager.isProviderEnabled("gps");
                } catch (Exception e) {
                }
                try {
                    network_enabled = locationManager.isProviderEnabled("network");
                } catch (Exception e2) {
                }
                if (gps_enabled || network_enabled) {
                    z = true;
                }
            }
        } catch (Exception e3) {
        }
        return z;
    }
}
