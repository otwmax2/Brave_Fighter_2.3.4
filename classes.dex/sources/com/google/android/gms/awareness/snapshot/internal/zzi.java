package com.google.android.gms.awareness.snapshot.internal;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.awareness.SnapshotApi;
import com.google.android.gms.awareness.snapshot.BeaconStateResult;
import com.google.android.gms.awareness.snapshot.DetectedActivityResult;
import com.google.android.gms.awareness.snapshot.HeadphoneStateResult;
import com.google.android.gms.awareness.snapshot.LocationResult;
import com.google.android.gms.awareness.snapshot.PlacesResult;
import com.google.android.gms.awareness.snapshot.WeatherResult;
import com.google.android.gms.awareness.snapshot.internal.BeaconStateImpl;
import com.google.android.gms.awareness.state.BeaconState;
import com.google.android.gms.awareness.state.HeadphoneState;
import com.google.android.gms.awareness.state.Weather;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.contextmanager.internal.zzc;
import com.google.android.gms.games.GamesActivityResultCodes;
import com.google.android.gms.internal.zzbt;
import com.google.android.gms.location.ActivityRecognitionResult;
import com.google.android.gms.location.places.PlaceLikelihood;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class zzi implements SnapshotApi {
    private PendingResult<BeaconStateResult> zza(GoogleApiClient googleApiClient, ArrayList<BeaconStateImpl.TypeFilterImpl> arrayList) {
        return new zzbt<BeaconStateResult, zzl>(googleApiClient.zzc(zza(googleApiClient, GamesActivityResultCodes.RESULT_LICENSE_FAILED, arrayList))) { // from class: com.google.android.gms.awareness.snapshot.internal.zzi.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzbt
            /* JADX INFO: renamed from: zzf, reason: merged with bridge method [inline-methods] */
            public BeaconStateResult zza(final zzl zzlVar) {
                return new BeaconStateResult() { // from class: com.google.android.gms.awareness.snapshot.internal.zzi.6.1
                    @Override // com.google.android.gms.awareness.snapshot.BeaconStateResult
                    public BeaconState getBeaconState() {
                        if (zzlVar.zzahi() == null) {
                            return null;
                        }
                        return zzlVar.zzahi().zzagz();
                    }

                    @Override // com.google.android.gms.common.api.Result
                    public Status getStatus() {
                        return zzlVar.getStatus();
                    }
                };
            }
        };
    }

    private static zzc.zzb zza(GoogleApiClient googleApiClient, final int i) {
        return new zzc.zzb(googleApiClient) { // from class: com.google.android.gms.awareness.snapshot.internal.zzi.7
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(com.google.android.gms.contextmanager.internal.zzd zzdVar) throws RemoteException {
                zzdVar.zza(this, new SnapshotRequest(i, null));
            }
        };
    }

    private static zzc.zzb zza(GoogleApiClient googleApiClient, final int i, final ArrayList<BeaconStateImpl.TypeFilterImpl> arrayList) {
        return new zzc.zzb(googleApiClient) { // from class: com.google.android.gms.awareness.snapshot.internal.zzi.8
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(com.google.android.gms.contextmanager.internal.zzd zzdVar) throws RemoteException {
                zzdVar.zza(this, new SnapshotRequest(i, arrayList));
            }
        };
    }

    private static ArrayList<BeaconStateImpl.TypeFilterImpl> zza(BeaconState.TypeFilter... typeFilterArr) {
        zzab.zzb(typeFilterArr, "beaconTypes cannot be null");
        zzab.zzb(typeFilterArr.length > 0, "beaconTypes must not be empty");
        ArrayList<BeaconStateImpl.TypeFilterImpl> arrayList = new ArrayList<>();
        for (BeaconState.TypeFilter typeFilter : typeFilterArr) {
            arrayList.add((BeaconStateImpl.TypeFilterImpl) typeFilter);
        }
        return arrayList;
    }

    private static ArrayList<BeaconStateImpl.TypeFilterImpl> zze(Collection<BeaconState.TypeFilter> collection) {
        zzab.zzb(collection, "beaconTypes cannot be null");
        zzab.zzb(collection.size() > 0, "beaconTypes must not be empty");
        ArrayList<BeaconStateImpl.TypeFilterImpl> arrayList = new ArrayList<>();
        Iterator<BeaconState.TypeFilter> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add((BeaconStateImpl.TypeFilterImpl) it.next());
        }
        return arrayList;
    }

    @Override // com.google.android.gms.awareness.SnapshotApi
    public PendingResult<BeaconStateResult> getBeaconState(GoogleApiClient googleApiClient, Collection<BeaconState.TypeFilter> collection) {
        return zza(googleApiClient, zze(collection));
    }

    @Override // com.google.android.gms.awareness.SnapshotApi
    public PendingResult<BeaconStateResult> getBeaconState(GoogleApiClient googleApiClient, BeaconState.TypeFilter... typeFilterArr) {
        return zza(googleApiClient, zza(typeFilterArr));
    }

    @Override // com.google.android.gms.awareness.SnapshotApi
    public PendingResult<DetectedActivityResult> getDetectedActivity(GoogleApiClient googleApiClient) {
        return new zzbt<DetectedActivityResult, zzl>(googleApiClient.zzc(zza(googleApiClient, GamesActivityResultCodes.RESULT_SIGN_IN_FAILED))) { // from class: com.google.android.gms.awareness.snapshot.internal.zzi.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzbt
            public DetectedActivityResult zza(final zzl zzlVar) {
                return new DetectedActivityResult() { // from class: com.google.android.gms.awareness.snapshot.internal.zzi.1.1
                    @Override // com.google.android.gms.awareness.snapshot.DetectedActivityResult
                    public ActivityRecognitionResult getActivityRecognitionResult() {
                        if (zzlVar.zzahi() == null) {
                            return null;
                        }
                        return zzlVar.zzahi().getActivityRecognitionResult();
                    }

                    @Override // com.google.android.gms.common.api.Result
                    public Status getStatus() {
                        return zzlVar.getStatus();
                    }
                };
            }
        };
    }

    @Override // com.google.android.gms.awareness.SnapshotApi
    public PendingResult<HeadphoneStateResult> getHeadphoneState(GoogleApiClient googleApiClient) {
        return new zzbt<HeadphoneStateResult, zzl>(googleApiClient.zzc(zza(googleApiClient, GamesActivityResultCodes.RESULT_APP_MISCONFIGURED))) { // from class: com.google.android.gms.awareness.snapshot.internal.zzi.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzbt
            /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
            public HeadphoneStateResult zza(final zzl zzlVar) {
                return new HeadphoneStateResult() { // from class: com.google.android.gms.awareness.snapshot.internal.zzi.2.1
                    @Override // com.google.android.gms.awareness.snapshot.HeadphoneStateResult
                    public HeadphoneState getHeadphoneState() {
                        if (zzlVar.zzahi() == null) {
                            return null;
                        }
                        return zzlVar.zzahi().zzaha();
                    }

                    @Override // com.google.android.gms.common.api.Result
                    public Status getStatus() {
                        return zzlVar.getStatus();
                    }
                };
            }
        };
    }

    @Override // com.google.android.gms.awareness.SnapshotApi
    public PendingResult<LocationResult> getLocation(GoogleApiClient googleApiClient) {
        return new zzbt<LocationResult, zzl>(googleApiClient.zzc(zza(googleApiClient, GamesActivityResultCodes.RESULT_LEFT_ROOM))) { // from class: com.google.android.gms.awareness.snapshot.internal.zzi.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzbt
            /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
            public LocationResult zza(final zzl zzlVar) {
                return new LocationResult() { // from class: com.google.android.gms.awareness.snapshot.internal.zzi.3.1
                    @Override // com.google.android.gms.awareness.snapshot.LocationResult
                    public Location getLocation() {
                        if (zzlVar.zzahi() == null) {
                            return null;
                        }
                        return zzlVar.zzahi().getLocation();
                    }

                    @Override // com.google.android.gms.common.api.Result
                    public Status getStatus() {
                        return zzlVar.getStatus();
                    }
                };
            }
        };
    }

    @Override // com.google.android.gms.awareness.SnapshotApi
    public PendingResult<PlacesResult> getPlaces(GoogleApiClient googleApiClient) {
        return new zzbt<PlacesResult, zzl>(googleApiClient.zzc(zza(googleApiClient, GamesActivityResultCodes.RESULT_NETWORK_FAILURE))) { // from class: com.google.android.gms.awareness.snapshot.internal.zzi.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzbt
            /* JADX INFO: renamed from: zzd, reason: merged with bridge method [inline-methods] */
            public PlacesResult zza(final zzl zzlVar) {
                return new PlacesResult() { // from class: com.google.android.gms.awareness.snapshot.internal.zzi.4.1
                    private boolean gd = false;
                    private List<PlaceLikelihood> ge = null;

                    @Override // com.google.android.gms.awareness.snapshot.PlacesResult
                    public List<PlaceLikelihood> getPlaceLikelihoods() {
                        DataHolder dataHolderZzahc;
                        if (this.gd) {
                            return this.ge;
                        }
                        this.gd = true;
                        if (zzlVar.zzahi() == null || (dataHolderZzahc = zzlVar.zzahi().zzahc()) == null) {
                            return null;
                        }
                        zze zzeVar = new zze(dataHolderZzahc);
                        try {
                            if (zzeVar.getCount() <= 0) {
                                return null;
                            }
                            this.ge = ((PlacesData) ((SafeParcelable) zzeVar.get(0))).getPlaceLikelihoods();
                            return this.ge;
                        } finally {
                            zzeVar.release();
                        }
                    }

                    @Override // com.google.android.gms.common.api.Result
                    public Status getStatus() {
                        return zzlVar.getStatus();
                    }
                };
            }
        };
    }

    @Override // com.google.android.gms.awareness.SnapshotApi
    public PendingResult<WeatherResult> getWeather(GoogleApiClient googleApiClient) {
        return new zzbt<WeatherResult, zzl>(googleApiClient.zzc(zza(googleApiClient, GamesActivityResultCodes.RESULT_SEND_REQUEST_FAILED))) { // from class: com.google.android.gms.awareness.snapshot.internal.zzi.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzbt
            /* JADX INFO: renamed from: zze, reason: merged with bridge method [inline-methods] */
            public WeatherResult zza(final zzl zzlVar) {
                return new WeatherResult() { // from class: com.google.android.gms.awareness.snapshot.internal.zzi.5.1
                    @Override // com.google.android.gms.common.api.Result
                    public Status getStatus() {
                        return zzlVar.getStatus();
                    }

                    @Override // com.google.android.gms.awareness.snapshot.WeatherResult
                    public Weather getWeather() {
                        if (zzlVar.zzahi() == null) {
                            return null;
                        }
                        return zzlVar.zzahi().zzahf();
                    }
                };
            }
        };
    }
}
