package com.ironsource.mediationsdk.utils;

import android.content.Context;
import android.text.TextUtils;
import com.ironsource.mediationsdk.model.BannerPlacement;
import com.ironsource.mediationsdk.model.InterstitialPlacement;
import com.ironsource.mediationsdk.model.Placement;
import com.ironsource.mediationsdk.model.PlacementAvailabilitySettings;
import com.ironsource.mediationsdk.model.PlacementCappingType;
import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public class CappingManager {
    private static final String CAPPING_TIME_THRESHOLD = "CappingManager.CAPPING_TIME_THRESHOLD";
    private static final String CAPPING_TYPE = "CappingManager.CAPPING_TYPE";
    private static final String CURRENT_NUMBER_OF_SHOWS = "CappingManager.CURRENT_NUMBER_OF_SHOWS";
    private static final String IS_CAPPING_ENABLED = "CappingManager.IS_CAPPING_ENABLED";
    private static final String IS_DELIVERY_ENABLED = "CappingManager.IS_DELIVERY_ENABLED";
    private static final String IS_PACING_ENABLED = "CappingManager.IS_PACING_ENABLED";
    private static final String MAX_NUMBER_OF_SHOWS = "CappingManager.MAX_NUMBER_OF_SHOWS";
    private static final String SECONDS_BETWEEN_SHOWS = "CappingManager.SECONDS_BETWEEN_SHOWS";
    private static final String TIME_OF_THE_PREVIOUS_SHOW = "CappingManager.TIME_OF_THE_PREVIOUS_SHOW";

    public enum ECappingStatus {
        CAPPED_PER_DELIVERY,
        CAPPED_PER_COUNT,
        CAPPED_PER_PACE,
        NOT_CAPPED
    }

    public static synchronized void addCappingInfo(Context context, InterstitialPlacement placement) {
        if (context != null && placement != null) {
            PlacementAvailabilitySettings availabilitySettings = placement.getPlacementAvailabilitySettings();
            if (availabilitySettings != null) {
                addCappingInfo(context, "Interstitial", placement.getPlacementName(), availabilitySettings);
            }
        }
    }

    public static synchronized void addCappingInfo(Context context, Placement placement) {
        if (context != null && placement != null) {
            PlacementAvailabilitySettings availabilitySettings = placement.getPlacementAvailabilitySettings();
            if (availabilitySettings != null) {
                addCappingInfo(context, IronSourceConstants.REWARDED_VIDEO_AD_UNIT, placement.getPlacementName(), availabilitySettings);
            }
        }
    }

    public static synchronized void addCappingInfo(Context context, BannerPlacement placement) {
        if (context != null && placement != null) {
            PlacementAvailabilitySettings availabilitySettings = placement.getPlacementAvailabilitySettings();
            if (availabilitySettings != null) {
                addCappingInfo(context, IronSourceConstants.BANNER_AD_UNIT, placement.getPlacementName(), availabilitySettings);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x000d A[Catch: all -> 0x001c, TRY_LEAVE, TryCatch #0 {, blocks: (B:6:0x0007, B:11:0x0011, B:8:0x000d), top: B:16:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized com.ironsource.mediationsdk.utils.CappingManager.ECappingStatus isPlacementCapped(android.content.Context r3, com.ironsource.mediationsdk.model.InterstitialPlacement r4) {
        /*
            java.lang.Class<com.ironsource.mediationsdk.utils.CappingManager> r1 = com.ironsource.mediationsdk.utils.CappingManager.class
            monitor-enter(r1)
            if (r3 == 0) goto Ld
            if (r4 == 0) goto Ld
            com.ironsource.mediationsdk.model.PlacementAvailabilitySettings r0 = r4.getPlacementAvailabilitySettings()     // Catch: java.lang.Throwable -> L1c
            if (r0 != 0) goto L11
        Ld:
            com.ironsource.mediationsdk.utils.CappingManager$ECappingStatus r0 = com.ironsource.mediationsdk.utils.CappingManager.ECappingStatus.NOT_CAPPED     // Catch: java.lang.Throwable -> L1c
        Lf:
            monitor-exit(r1)
            return r0
        L11:
            java.lang.String r0 = "Interstitial"
            java.lang.String r2 = r4.getPlacementName()     // Catch: java.lang.Throwable -> L1c
            com.ironsource.mediationsdk.utils.CappingManager$ECappingStatus r0 = isPlacementCapped(r3, r0, r2)     // Catch: java.lang.Throwable -> L1c
            goto Lf
        L1c:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.utils.CappingManager.isPlacementCapped(android.content.Context, com.ironsource.mediationsdk.model.InterstitialPlacement):com.ironsource.mediationsdk.utils.CappingManager$ECappingStatus");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x000d A[Catch: all -> 0x001c, TRY_LEAVE, TryCatch #0 {, blocks: (B:6:0x0007, B:11:0x0011, B:8:0x000d), top: B:16:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized com.ironsource.mediationsdk.utils.CappingManager.ECappingStatus isPlacementCapped(android.content.Context r3, com.ironsource.mediationsdk.model.BannerPlacement r4) {
        /*
            java.lang.Class<com.ironsource.mediationsdk.utils.CappingManager> r1 = com.ironsource.mediationsdk.utils.CappingManager.class
            monitor-enter(r1)
            if (r3 == 0) goto Ld
            if (r4 == 0) goto Ld
            com.ironsource.mediationsdk.model.PlacementAvailabilitySettings r0 = r4.getPlacementAvailabilitySettings()     // Catch: java.lang.Throwable -> L1c
            if (r0 != 0) goto L11
        Ld:
            com.ironsource.mediationsdk.utils.CappingManager$ECappingStatus r0 = com.ironsource.mediationsdk.utils.CappingManager.ECappingStatus.NOT_CAPPED     // Catch: java.lang.Throwable -> L1c
        Lf:
            monitor-exit(r1)
            return r0
        L11:
            java.lang.String r0 = "Banner"
            java.lang.String r2 = r4.getPlacementName()     // Catch: java.lang.Throwable -> L1c
            com.ironsource.mediationsdk.utils.CappingManager$ECappingStatus r0 = isPlacementCapped(r3, r0, r2)     // Catch: java.lang.Throwable -> L1c
            goto Lf
        L1c:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.utils.CappingManager.isPlacementCapped(android.content.Context, com.ironsource.mediationsdk.model.BannerPlacement):com.ironsource.mediationsdk.utils.CappingManager$ECappingStatus");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x000d A[Catch: all -> 0x001c, TRY_LEAVE, TryCatch #0 {, blocks: (B:6:0x0007, B:11:0x0011, B:8:0x000d), top: B:16:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized com.ironsource.mediationsdk.utils.CappingManager.ECappingStatus isPlacementCapped(android.content.Context r3, com.ironsource.mediationsdk.model.Placement r4) {
        /*
            java.lang.Class<com.ironsource.mediationsdk.utils.CappingManager> r1 = com.ironsource.mediationsdk.utils.CappingManager.class
            monitor-enter(r1)
            if (r3 == 0) goto Ld
            if (r4 == 0) goto Ld
            com.ironsource.mediationsdk.model.PlacementAvailabilitySettings r0 = r4.getPlacementAvailabilitySettings()     // Catch: java.lang.Throwable -> L1c
            if (r0 != 0) goto L11
        Ld:
            com.ironsource.mediationsdk.utils.CappingManager$ECappingStatus r0 = com.ironsource.mediationsdk.utils.CappingManager.ECappingStatus.NOT_CAPPED     // Catch: java.lang.Throwable -> L1c
        Lf:
            monitor-exit(r1)
            return r0
        L11:
            java.lang.String r0 = "Rewarded Video"
            java.lang.String r2 = r4.getPlacementName()     // Catch: java.lang.Throwable -> L1c
            com.ironsource.mediationsdk.utils.CappingManager$ECappingStatus r0 = isPlacementCapped(r3, r0, r2)     // Catch: java.lang.Throwable -> L1c
            goto Lf
        L1c:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.utils.CappingManager.isPlacementCapped(android.content.Context, com.ironsource.mediationsdk.model.Placement):com.ironsource.mediationsdk.utils.CappingManager$ECappingStatus");
    }

    public static synchronized void incrementShowCounter(Context context, InterstitialPlacement placement) {
        if (placement != null) {
            incrementShowCounter(context, "Interstitial", placement.getPlacementName());
        }
    }

    public static synchronized void incrementShowCounter(Context context, Placement placement) {
        if (placement != null) {
            incrementShowCounter(context, IronSourceConstants.REWARDED_VIDEO_AD_UNIT, placement.getPlacementName());
        }
    }

    public static synchronized void incrementShowCounter(Context context, String placementName) {
        if (!TextUtils.isEmpty(placementName)) {
            incrementShowCounter(context, IronSourceConstants.BANNER_AD_UNIT, placementName);
        }
    }

    private static String constructSharedPrefsKey(String adUnit, String baseConst, String placementName) {
        return adUnit + "_" + baseConst + "_" + placementName;
    }

    private static ECappingStatus isPlacementCapped(Context context, String adUnit, String placementName) {
        long currentTime = System.currentTimeMillis();
        String deliveryKey = constructSharedPrefsKey(adUnit, IS_DELIVERY_ENABLED, placementName);
        boolean isDeliveryEnabled = IronSourceUtils.getBooleanFromSharedPrefs(context, deliveryKey, true);
        if (!isDeliveryEnabled) {
            return ECappingStatus.CAPPED_PER_DELIVERY;
        }
        String isPacingEnabledKey = constructSharedPrefsKey(adUnit, IS_PACING_ENABLED, placementName);
        boolean isPacingEnabled = IronSourceUtils.getBooleanFromSharedPrefs(context, isPacingEnabledKey, false);
        if (isPacingEnabled) {
            String timeOfPreviousShowKey = constructSharedPrefsKey(adUnit, TIME_OF_THE_PREVIOUS_SHOW, placementName);
            long timeOfPreviousShow = IronSourceUtils.getLongFromSharedPrefs(context, timeOfPreviousShowKey, 0L);
            String secondsBetweenShowsKey = constructSharedPrefsKey(adUnit, SECONDS_BETWEEN_SHOWS, placementName);
            int secondsBetweenShows = IronSourceUtils.getIntFromSharedPrefs(context, secondsBetweenShowsKey, 0);
            if (currentTime - timeOfPreviousShow < secondsBetweenShows * 1000) {
                return ECappingStatus.CAPPED_PER_PACE;
            }
        }
        String isCappingEnabledKey = constructSharedPrefsKey(adUnit, IS_CAPPING_ENABLED, placementName);
        boolean isCappingEnabled = IronSourceUtils.getBooleanFromSharedPrefs(context, isCappingEnabledKey, false);
        if (isCappingEnabled) {
            String maxNumberOfShowsKey = constructSharedPrefsKey(adUnit, MAX_NUMBER_OF_SHOWS, placementName);
            int maxNumberOfShows = IronSourceUtils.getIntFromSharedPrefs(context, maxNumberOfShowsKey, 0);
            String currentNumberOfShowsKey = constructSharedPrefsKey(adUnit, CURRENT_NUMBER_OF_SHOWS, placementName);
            int currentNumberOfShows = IronSourceUtils.getIntFromSharedPrefs(context, currentNumberOfShowsKey, 0);
            String timeThresholdKey = constructSharedPrefsKey(adUnit, CAPPING_TIME_THRESHOLD, placementName);
            long timeThreshold = IronSourceUtils.getLongFromSharedPrefs(context, timeThresholdKey, 0L);
            if (currentTime >= timeThreshold) {
                IronSourceUtils.saveIntToSharedPrefs(context, currentNumberOfShowsKey, 0);
                IronSourceUtils.saveLongToSharedPrefs(context, timeThresholdKey, 0L);
            } else if (currentNumberOfShows >= maxNumberOfShows) {
                return ECappingStatus.CAPPED_PER_COUNT;
            }
        }
        return ECappingStatus.NOT_CAPPED;
    }

    private static void incrementShowCounter(Context context, String adUnit, String placementName) {
        String isPacingEnabledKey = constructSharedPrefsKey(adUnit, IS_PACING_ENABLED, placementName);
        boolean isPacingEnabled = IronSourceUtils.getBooleanFromSharedPrefs(context, isPacingEnabledKey, false);
        if (isPacingEnabled) {
            long currentTime = System.currentTimeMillis();
            String timeOfPreviousShowKey = constructSharedPrefsKey(adUnit, TIME_OF_THE_PREVIOUS_SHOW, placementName);
            IronSourceUtils.saveLongToSharedPrefs(context, timeOfPreviousShowKey, currentTime);
        }
        String isCappingEnabledKey = constructSharedPrefsKey(adUnit, IS_CAPPING_ENABLED, placementName);
        boolean isCappingEnabled = IronSourceUtils.getBooleanFromSharedPrefs(context, isCappingEnabledKey, false);
        if (isCappingEnabled) {
            String maxNumberOfShowsKey = constructSharedPrefsKey(adUnit, MAX_NUMBER_OF_SHOWS, placementName);
            IronSourceUtils.getIntFromSharedPrefs(context, maxNumberOfShowsKey, 0);
            String currentNumberOfShowsKey = constructSharedPrefsKey(adUnit, CURRENT_NUMBER_OF_SHOWS, placementName);
            int currentNumberOfShows = IronSourceUtils.getIntFromSharedPrefs(context, currentNumberOfShowsKey, 0);
            boolean isFirstShow = currentNumberOfShows == 0;
            if (isFirstShow) {
                String cappingTypeKey = constructSharedPrefsKey(adUnit, CAPPING_TYPE, placementName);
                String cappingTypeString = IronSourceUtils.getStringFromSharedPrefs(context, cappingTypeKey, PlacementCappingType.PER_DAY.toString());
                PlacementCappingType cappingType = null;
                PlacementCappingType[] placementCappingTypeArrValues = PlacementCappingType.values();
                int length = placementCappingTypeArrValues.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    PlacementCappingType type = placementCappingTypeArrValues[i];
                    if (!type.value.equals(cappingTypeString)) {
                        i++;
                    } else {
                        cappingType = type;
                        break;
                    }
                }
                long timeThreshold = initTimeThreshold(cappingType);
                String timeThresholdKey = constructSharedPrefsKey(adUnit, CAPPING_TIME_THRESHOLD, placementName);
                IronSourceUtils.saveLongToSharedPrefs(context, timeThresholdKey, timeThreshold);
            }
            IronSourceUtils.saveIntToSharedPrefs(context, currentNumberOfShowsKey, currentNumberOfShows + 1);
        }
    }

    private static long initTimeThreshold(PlacementCappingType cappingType) {
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        switch (cappingType) {
            case PER_DAY:
                calendar.set(14, 0);
                calendar.set(13, 0);
                calendar.set(12, 0);
                calendar.set(11, 0);
                calendar.add(6, 1);
                break;
            case PER_HOUR:
                calendar.set(14, 0);
                calendar.set(13, 0);
                calendar.set(12, 0);
                calendar.add(11, 1);
                break;
        }
        return calendar.getTimeInMillis();
    }

    private static void addCappingInfo(Context context, String adUnit, String placementName, PlacementAvailabilitySettings availabilitySettings) {
        boolean isDeliveryEnabled = availabilitySettings.isDeliveryEnabled();
        String deliveryKey = constructSharedPrefsKey(adUnit, IS_DELIVERY_ENABLED, placementName);
        IronSourceUtils.saveBooleanToSharedPrefs(context, deliveryKey, isDeliveryEnabled);
        if (isDeliveryEnabled) {
            boolean isCappingEnabled = availabilitySettings.isCappingEnabled();
            String isCappingEnabledKey = constructSharedPrefsKey(adUnit, IS_CAPPING_ENABLED, placementName);
            IronSourceUtils.saveBooleanToSharedPrefs(context, isCappingEnabledKey, isCappingEnabled);
            if (isCappingEnabled) {
                int maxNumberOfShows = availabilitySettings.getCappingValue();
                String maxNumberOfShowsKey = constructSharedPrefsKey(adUnit, MAX_NUMBER_OF_SHOWS, placementName);
                IronSourceUtils.saveIntToSharedPrefs(context, maxNumberOfShowsKey, maxNumberOfShows);
                PlacementCappingType cappingType = availabilitySettings.getCappingType();
                String cappingTypeKey = constructSharedPrefsKey(adUnit, CAPPING_TYPE, placementName);
                IronSourceUtils.saveStringToSharedPrefs(context, cappingTypeKey, cappingType.toString());
            }
            boolean isPacingEnabled = availabilitySettings.isPacingEnabled();
            String isPacingEnabledKey = constructSharedPrefsKey(adUnit, IS_PACING_ENABLED, placementName);
            IronSourceUtils.saveBooleanToSharedPrefs(context, isPacingEnabledKey, isPacingEnabled);
            if (isPacingEnabled) {
                int secondsBetweenShows = availabilitySettings.getPacingValue();
                String secondsBetweenShowsKey = constructSharedPrefsKey(adUnit, SECONDS_BETWEEN_SHOWS, placementName);
                IronSourceUtils.saveIntToSharedPrefs(context, secondsBetweenShowsKey, secondsBetweenShows);
            }
        }
    }
}
