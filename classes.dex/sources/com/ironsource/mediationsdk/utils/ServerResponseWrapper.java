package com.ironsource.mediationsdk.utils;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.share.internal.ShareConstants;
import com.ironsource.environment.DeviceStatus;
import com.ironsource.eventsmodule.DataBaseEventsStorage;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.ConsoleLogger;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.logger.ServerLogger;
import com.ironsource.mediationsdk.model.ApplicationConfigurations;
import com.ironsource.mediationsdk.model.ApplicationEvents;
import com.ironsource.mediationsdk.model.ApplicationLogger;
import com.ironsource.mediationsdk.model.BannerConfigurations;
import com.ironsource.mediationsdk.model.BannerPlacement;
import com.ironsource.mediationsdk.model.Configurations;
import com.ironsource.mediationsdk.model.InterstitialConfigurations;
import com.ironsource.mediationsdk.model.InterstitialPlacement;
import com.ironsource.mediationsdk.model.OfferwallConfigurations;
import com.ironsource.mediationsdk.model.OfferwallPlacement;
import com.ironsource.mediationsdk.model.Placement;
import com.ironsource.mediationsdk.model.PlacementAvailabilitySettings;
import com.ironsource.mediationsdk.model.PlacementCappingType;
import com.ironsource.mediationsdk.model.ProviderOrder;
import com.ironsource.mediationsdk.model.ProviderSettings;
import com.ironsource.mediationsdk.model.ProviderSettingsHolder;
import com.ironsource.mediationsdk.model.RewardedVideoConfigurations;
import com.ironsource.mediationsdk.model.ServerSegmetData;
import com.ironsource.mediationsdk.sdk.GeneralProperties;
import com.ironsource.sdk.constants.Constants;
import com.ironsource.sdk.precache.DownloadManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ServerResponseWrapper {
    public static final String APP_KEY_FIELD = "appKey";
    public static final String RESPONSE_FIELD = "response";
    public static final String USER_ID_FIELD = "userId";
    private String mAppKey;
    private Configurations mConfigurations;
    private Context mContext;
    private ProviderOrder mProviderOrder;
    private ProviderSettingsHolder mProviderSettingsHolder;
    private JSONObject mResponse;
    private String mUserId;
    private final String ERROR_KEY = "error";
    private final int DEFAULT_LOG_LEVEL = 3;
    private final int DEFAULT_ADAPTERS_SMARTLOAD_AMOUNT = 2;
    private final int DEFAULT_ADAPTERS_SMARTLOAD_TIMEOUT = 60;
    private final int DEFAULT_BANNER_SMARTLOAD_TIMEOUT = 10000;
    private final int DEFAULT_MAX_EVENTS_PER_BATCH = DownloadManager.OPERATION_TIMEOUT;
    private final String PROVIDER_ORDER_FIELD = "providerOrder";
    private final String PROVIDER_SETTINGS_FIELD = "providerSettings";
    private final String CONFIGURATIONS_FIELD = "configurations";
    private final String AD_UNITS_FIELD = "adUnits";
    private final String PROVIDER_LOAD_NAME_FIELD = "providerLoadName";
    private final String APPLICATION_FIELD = Constants.ParametersKeys.ORIENTATION_APPLICATION;
    private final String RV_FIELD = "rewardedVideo";
    private final String IS_FIELD = "interstitial";
    private final String OW_FIELD = "offerwall";
    private final String BN_FIELD = "banner";
    private final String INTEGRATION_FIELD = "integration";
    private final String LOGGERS_FIELD = "loggers";
    private final String SEGMENT_FIELD = "segment";
    private final String EVENTS_FIELD = DataBaseEventsStorage.EventEntry.TABLE_NAME;
    private final String MAX_NUM_OF_ADAPTERS_TO_LOAD_ON_START_FIELD = "maxNumOfAdaptersToLoadOnStart";
    private final String ADAPTER_TIMEOUT_IN_SECS_FIELD = "adapterTimeOutInSeconds";
    private final String ADAPTER_TIMEOUT_IN_MILLIS_FIELD = "atim";
    private final String DEFAULT_BANNER_LOAD_REFRESH_INTERVAL = "bannerInterval";
    private final String SERVER_FIELD = ServerLogger.NAME;
    private final String PUBLISHER_FIELD = "publisher";
    private final String CONSOLE_FIELD = ConsoleLogger.NAME;
    private final String SEND_ULTRA_EVENTS_FIELD = "sendUltraEvents";
    private final String SEND_EVENTS_TOGGLE_FIELD = "sendEventsToggle";
    private final String SERVER_EVENTS_URL_FIELD = "serverEventsURL";
    private final String SERVER_EVENTS_TYPE = "serverEventsType";
    private final String BACKUP_THRESHOLD_FIELD = "backupThreshold";
    private final String MAX_NUM_OF_EVENTS_FIELD = "maxNumberOfEvents";
    private final String MAX_EVENTS_PER_BATCH = "maxEventsPerBatch";
    private final String OPT_OUT_EVENTS_FIELD = "optOut";
    private final String ALLOW_LOCATION = "allowLocation";
    private final String PLACEMENTS_FIELD = "placements";
    private final String PLACEMENT_ID_FIELD = "placementId";
    private final String PLACEMENT_NAME_FIELD = "placementName";
    private final String PLACEMENT_SETTINGS_DELIVERY_FIELD = "delivery";
    private final String PLACEMENT_SETTINGS_CAPPING_FIELD = "capping";
    private final String PLACEMENT_SETTINGS_PACING_FIELD = "pacing";
    private final String PLACEMENT_SETTINGS_ENABLED_FIELD = "enabled";
    private final String PLACEMENT_SETTINGS_CAPPING_VALUE_FIELD = "maxImpressions";
    private final String PLACEMENT_SETTINGS_PACING_VALUE_FIELD = "numOfSeconds";
    private final String PLACEMENT_SETTINGS_CAPPING_UNIT_FIELD = "unit";
    private final String VIRTUAL_ITEM_NAME_FIELD = "virtualItemName";
    private final String VIRTUAL_ITEM_COUNT_FIELD = "virtualItemCount";
    private final String BACKFILL_FIELD = "backFill";
    private final String PREMIUM_FIELD = "premium";
    private final String UUID_ENABLED_FIELD = DeviceStatus.UUID_ENABLED;
    private final String AB_TESTING = "abt";
    private final String SUB_PROVIDER_ID_FIELD = "spId";
    private final String IS_MULTIPLE_INSTANCES_FIELD = "mpis";

    public ServerResponseWrapper(Context context, String appKey, String userId, String jsonData) {
        this.mContext = context;
        try {
            if (TextUtils.isEmpty(jsonData)) {
                this.mResponse = new JSONObject();
            } else {
                this.mResponse = new JSONObject(jsonData);
            }
            parseProviderSettings();
            parseConfigurations();
            parseProviderOrder();
            this.mAppKey = TextUtils.isEmpty(appKey) ? "" : appKey;
            this.mUserId = TextUtils.isEmpty(userId) ? "" : userId;
        } catch (JSONException e) {
            e.printStackTrace();
            defaultInit();
        }
    }

    public ServerResponseWrapper(ServerResponseWrapper srw) {
        try {
            this.mContext = srw.getContext();
            this.mResponse = new JSONObject(srw.mResponse.toString());
            this.mAppKey = srw.mAppKey;
            this.mUserId = srw.mUserId;
            this.mProviderOrder = srw.getProviderOrder();
            this.mProviderSettingsHolder = srw.getProviderSettingsHolder();
            this.mConfigurations = srw.getConfigurations();
        } catch (Exception e) {
            defaultInit();
        }
    }

    private void defaultInit() {
        this.mResponse = new JSONObject();
        this.mAppKey = "";
        this.mUserId = "";
        this.mProviderOrder = new ProviderOrder();
        this.mProviderSettingsHolder = ProviderSettingsHolder.getProviderSettingsHolder();
        this.mConfigurations = new Configurations();
    }

    public String toString() {
        JSONObject resultObject = new JSONObject();
        try {
            resultObject.put(APP_KEY_FIELD, this.mAppKey);
            resultObject.put(USER_ID_FIELD, this.mUserId);
            resultObject.put(RESPONSE_FIELD, this.mResponse);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return resultObject.toString();
    }

    public boolean isValidResponse() {
        boolean valid = this.mResponse != null;
        boolean valid2 = valid && !this.mResponse.has("error");
        boolean valid3 = valid2 && this.mProviderOrder != null;
        boolean valid4 = valid3 && this.mProviderSettingsHolder != null;
        return valid4 && this.mConfigurations != null;
    }

    public List<IronSource.AD_UNIT> getInitiatedAdUnits() {
        if (this.mResponse == null || this.mConfigurations == null) {
            return null;
        }
        List<IronSource.AD_UNIT> adUnits = new ArrayList<>();
        if (this.mConfigurations.getRewardedVideoConfigurations() != null && this.mProviderOrder != null && this.mProviderOrder.getRewardedVideoProviderOrder().size() > 0) {
            adUnits.add(IronSource.AD_UNIT.REWARDED_VIDEO);
        }
        if (this.mConfigurations.getInterstitialConfigurations() != null && this.mProviderOrder != null && this.mProviderOrder.getInterstitialProviderOrder().size() > 0) {
            adUnits.add(IronSource.AD_UNIT.INTERSTITIAL);
        }
        if (this.mConfigurations.getOfferwallConfigurations() != null) {
            adUnits.add(IronSource.AD_UNIT.OFFERWALL);
        }
        if (this.mConfigurations.getBannerConfigurations() != null) {
            adUnits.add(IronSource.AD_UNIT.BANNER);
            return adUnits;
        }
        return adUnits;
    }

    private void parseProviderOrder() {
        try {
            JSONObject providerOrderSection = getSection(this.mResponse, "providerOrder");
            JSONArray rvOrderSection = providerOrderSection.optJSONArray("rewardedVideo");
            JSONArray isOrderSection = providerOrderSection.optJSONArray("interstitial");
            JSONArray bnOrderSection = providerOrderSection.optJSONArray("banner");
            this.mProviderOrder = new ProviderOrder();
            if (rvOrderSection != null && getConfigurations() != null && getConfigurations().getRewardedVideoConfigurations() != null) {
                String backFillProviderName = getConfigurations().getRewardedVideoConfigurations().getBackFillProviderName();
                String premiumProviderName = getConfigurations().getRewardedVideoConfigurations().getPremiumProviderName();
                for (int i = 0; i < rvOrderSection.length(); i++) {
                    String providerName = rvOrderSection.optString(i);
                    if (providerName.equals(backFillProviderName)) {
                        this.mProviderOrder.setRVBackFillProvider(backFillProviderName);
                    } else {
                        if (providerName.equals(premiumProviderName)) {
                            this.mProviderOrder.setRVPremiumProvider(premiumProviderName);
                        }
                        this.mProviderOrder.addRewardedVideoProvider(providerName);
                        ProviderSettings settings = ProviderSettingsHolder.getProviderSettingsHolder().getProviderSettings(providerName);
                        if (settings != null) {
                            settings.setRewardedVideoPriority(i);
                        }
                    }
                }
            }
            if (isOrderSection != null && getConfigurations() != null && getConfigurations().getInterstitialConfigurations() != null) {
                String backFillProviderName2 = getConfigurations().getInterstitialConfigurations().getBackFillProviderName();
                String premiumProviderName2 = getConfigurations().getInterstitialConfigurations().getPremiumProviderName();
                for (int i2 = 0; i2 < isOrderSection.length(); i2++) {
                    String providerName2 = isOrderSection.optString(i2);
                    if (providerName2.equals(backFillProviderName2)) {
                        this.mProviderOrder.setISBackFillProvider(backFillProviderName2);
                    } else {
                        if (providerName2.equals(premiumProviderName2)) {
                            this.mProviderOrder.setISPremiumProvider(premiumProviderName2);
                        }
                        this.mProviderOrder.addInterstitialProvider(providerName2);
                        ProviderSettings settings2 = ProviderSettingsHolder.getProviderSettingsHolder().getProviderSettings(providerName2);
                        if (settings2 != null) {
                            settings2.setInterstitialPriority(i2);
                        }
                    }
                }
            }
            if (bnOrderSection != null) {
                for (int i3 = 0; i3 < bnOrderSection.length(); i3++) {
                    String providerName3 = bnOrderSection.optString(i3);
                    this.mProviderOrder.addBannerProvider(providerName3);
                    ProviderSettings settings3 = ProviderSettingsHolder.getProviderSettingsHolder().getProviderSettings(providerName3);
                    if (settings3 != null) {
                        settings3.setBannerPriority(i3);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void parseProviderSettings() {
        try {
            this.mProviderSettingsHolder = ProviderSettingsHolder.getProviderSettingsHolder();
            JSONObject providerSettingsSection = getSection(this.mResponse, "providerSettings");
            Iterator<?> keys = providerSettingsSection.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                JSONObject concreteProviderSettingsSection = providerSettingsSection.optJSONObject(key);
                if (concreteProviderSettingsSection != null) {
                    boolean isMultipleInstances = concreteProviderSettingsSection.optBoolean("mpis", false);
                    String subProviderId = concreteProviderSettingsSection.optString("spId", AppEventsConstants.EVENT_PARAM_VALUE_NO);
                    String nameForReflection = concreteProviderSettingsSection.optString("providerLoadName", key);
                    JSONObject adUnitSection = getSection(concreteProviderSettingsSection, "adUnits");
                    JSONObject appSection = getSection(concreteProviderSettingsSection, Constants.ParametersKeys.ORIENTATION_APPLICATION);
                    JSONObject rvSection = getSection(adUnitSection, "rewardedVideo");
                    JSONObject isSection = getSection(adUnitSection, "interstitial");
                    JSONObject bnSection = getSection(adUnitSection, "banner");
                    JSONObject rewardedVideoSettings = IronSourceUtils.mergeJsons(rvSection, appSection);
                    JSONObject interstitialSettings = IronSourceUtils.mergeJsons(isSection, appSection);
                    JSONObject bannerSettings = IronSourceUtils.mergeJsons(bnSection, appSection);
                    if (this.mProviderSettingsHolder.containsProviderSettings(key)) {
                        ProviderSettings providerLocalSettings = this.mProviderSettingsHolder.getProviderSettings(key);
                        JSONObject providerLocalRVSettings = providerLocalSettings.getRewardedVideoSettings();
                        JSONObject providerLocalISSettings = providerLocalSettings.getInterstitialSettings();
                        JSONObject providerLocalBNSettings = providerLocalSettings.getBannerSettings();
                        providerLocalSettings.setRewardedVideoSettings(IronSourceUtils.mergeJsons(providerLocalRVSettings, rewardedVideoSettings));
                        providerLocalSettings.setInterstitialSettings(IronSourceUtils.mergeJsons(providerLocalISSettings, interstitialSettings));
                        providerLocalSettings.setBannerSettings(IronSourceUtils.mergeJsons(providerLocalBNSettings, bannerSettings));
                        providerLocalSettings.setIsMultipleInstances(isMultipleInstances);
                        providerLocalSettings.setSubProviderId(subProviderId);
                    } else if (this.mProviderSettingsHolder.containsProviderSettings("Mediation") && (IronSourceConstants.IRONSOURCE_CONFIG_NAME.toLowerCase().equals(nameForReflection.toLowerCase()) || IronSourceConstants.RIS_CONFIG_NAME.toLowerCase().equals(nameForReflection.toLowerCase()))) {
                        ProviderSettings mediationLocalSettings = this.mProviderSettingsHolder.getProviderSettings("Mediation");
                        JSONObject mediationLocalRVSettings = mediationLocalSettings.getRewardedVideoSettings();
                        JSONObject mediationLocalISSettings = mediationLocalSettings.getInterstitialSettings();
                        JSONObject mergedRVSettings = new JSONObject(mediationLocalRVSettings.toString());
                        JSONObject mergedISSettings = new JSONObject(mediationLocalISSettings.toString());
                        ProviderSettings settings = new ProviderSettings(key, nameForReflection, appSection, IronSourceUtils.mergeJsons(mergedRVSettings, rewardedVideoSettings), IronSourceUtils.mergeJsons(mergedISSettings, interstitialSettings), bannerSettings);
                        settings.setIsMultipleInstances(isMultipleInstances);
                        settings.setSubProviderId(subProviderId);
                        this.mProviderSettingsHolder.addProviderSettings(settings);
                    } else {
                        ProviderSettings settings2 = new ProviderSettings(key, nameForReflection, appSection, rewardedVideoSettings, interstitialSettings, bannerSettings);
                        settings2.setIsMultipleInstances(isMultipleInstances);
                        settings2.setSubProviderId(subProviderId);
                        this.mProviderSettingsHolder.addProviderSettings(settings2);
                    }
                }
            }
            this.mProviderSettingsHolder.fillSubProvidersDetails();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void parseConfigurations() {
        try {
            JSONObject configurationsSection = getSection(this.mResponse, "configurations");
            JSONObject adUnitSection = getSection(configurationsSection, "adUnits");
            JSONObject appSection = getSection(configurationsSection, Constants.ParametersKeys.ORIENTATION_APPLICATION);
            JSONObject rvSection = getSection(adUnitSection, "rewardedVideo");
            JSONObject isSection = getSection(adUnitSection, "interstitial");
            JSONObject owSection = getSection(adUnitSection, "offerwall");
            JSONObject bnSection = getSection(adUnitSection, "banner");
            JSONObject appEventsSection = getSection(appSection, DataBaseEventsStorage.EventEntry.TABLE_NAME);
            JSONObject loggerSection = getSection(appSection, "loggers");
            JSONObject segmentSection = getSection(appSection, "segment");
            RewardedVideoConfigurations rvConfig = null;
            InterstitialConfigurations isConfig = null;
            OfferwallConfigurations owConfig = null;
            BannerConfigurations bannerConfig = null;
            if (appSection != null) {
                boolean isUuidEnabled = appSection.optBoolean(DeviceStatus.UUID_ENABLED, true);
                IronSourceUtils.saveBooleanToSharedPrefs(this.mContext, DeviceStatus.UUID_ENABLED, isUuidEnabled);
            }
            if (appEventsSection != null) {
                String abt = appEventsSection.optString("abt");
                if (!TextUtils.isEmpty(abt)) {
                    IronSourceUtils.setABT(abt);
                }
            }
            if (rvSection != null) {
                JSONArray rvPlacementsSection = rvSection.optJSONArray("placements");
                JSONObject rvEventsSection = getSection(rvSection, DataBaseEventsStorage.EventEntry.TABLE_NAME);
                int rvSmartLoadAmount = getIntConfigValue(rvSection, appSection, "maxNumOfAdaptersToLoadOnStart", 2);
                int rvSmartLoadTimeout = getIntConfigValue(rvSection, appSection, "adapterTimeOutInSeconds", 60);
                JSONObject rewardedVideoCombinedEvents = IronSourceUtils.mergeJsons(rvEventsSection, appEventsSection);
                boolean rvUltraEvents = rewardedVideoCombinedEvents.optBoolean("sendUltraEvents", false);
                boolean rvEventsToggle = rewardedVideoCombinedEvents.optBoolean("sendEventsToggle", false);
                String rvEventsUrl = rewardedVideoCombinedEvents.optString("serverEventsURL", "");
                String rvEventsType = rewardedVideoCombinedEvents.optString("serverEventsType", "");
                int rvBackupThreshold = rewardedVideoCombinedEvents.optInt("backupThreshold", -1);
                int rvMaxNumOfEvents = rewardedVideoCombinedEvents.optInt("maxNumberOfEvents", -1);
                int rvMaxEventsPerBatch = rewardedVideoCombinedEvents.optInt("maxEventsPerBatch", DownloadManager.OPERATION_TIMEOUT);
                int[] optOutEvents = null;
                JSONArray optOutJsonArray = rewardedVideoCombinedEvents.optJSONArray("optOut");
                if (optOutJsonArray != null) {
                    optOutEvents = new int[optOutJsonArray.length()];
                    for (int i = 0; i < optOutJsonArray.length(); i++) {
                        optOutEvents[i] = optOutJsonArray.optInt(i);
                    }
                }
                ApplicationEvents rvEvents = new ApplicationEvents(rvUltraEvents, rvEventsToggle, rvEventsUrl, rvEventsType, rvBackupThreshold, rvMaxNumOfEvents, rvMaxEventsPerBatch, optOutEvents);
                rvConfig = new RewardedVideoConfigurations(rvSmartLoadAmount, rvSmartLoadTimeout, rvEvents);
                if (rvPlacementsSection != null) {
                    for (int i2 = 0; i2 < rvPlacementsSection.length(); i2++) {
                        JSONObject singlePlacementJson = rvPlacementsSection.optJSONObject(i2);
                        Placement placement = parseSingleRVPlacement(singlePlacementJson);
                        if (placement != null) {
                            rvConfig.addRewardedVideoPlacement(placement);
                        }
                    }
                }
                String backFillProviderName = rvSection.optString("backFill");
                if (!TextUtils.isEmpty(backFillProviderName)) {
                    rvConfig.setBackFillProviderName(backFillProviderName);
                }
                String premiumProviderName = rvSection.optString("premium");
                if (!TextUtils.isEmpty(premiumProviderName)) {
                    rvConfig.setPremiumProviderName(premiumProviderName);
                }
            }
            if (isSection != null) {
                JSONArray isPlacementsSection = isSection.optJSONArray("placements");
                JSONObject isEventsSection = getSection(isSection, DataBaseEventsStorage.EventEntry.TABLE_NAME);
                int isSmartLoadAmount = getIntConfigValue(isSection, appSection, "maxNumOfAdaptersToLoadOnStart", 2);
                int isSmartLoadTimeout = getIntConfigValue(isSection, appSection, "adapterTimeOutInSeconds", 60);
                JSONObject interstitialCombinedEvents = IronSourceUtils.mergeJsons(isEventsSection, appEventsSection);
                boolean isEventsToggle = interstitialCombinedEvents.optBoolean("sendEventsToggle", false);
                String isEventsUrl = interstitialCombinedEvents.optString("serverEventsURL", "");
                String isEventsType = interstitialCombinedEvents.optString("serverEventsType", "");
                int isBackupThreshold = interstitialCombinedEvents.optInt("backupThreshold", -1);
                int isMaxNumOfEvents = interstitialCombinedEvents.optInt("maxNumberOfEvents", -1);
                int isMaxEventsPerBatch = interstitialCombinedEvents.optInt("maxEventsPerBatch", DownloadManager.OPERATION_TIMEOUT);
                int[] optOutEvents2 = null;
                JSONArray optOutJsonArray2 = interstitialCombinedEvents.optJSONArray("optOut");
                if (optOutJsonArray2 != null) {
                    optOutEvents2 = new int[optOutJsonArray2.length()];
                    for (int i3 = 0; i3 < optOutJsonArray2.length(); i3++) {
                        optOutEvents2[i3] = optOutJsonArray2.optInt(i3);
                    }
                }
                ApplicationEvents isEvents = new ApplicationEvents(false, isEventsToggle, isEventsUrl, isEventsType, isBackupThreshold, isMaxNumOfEvents, isMaxEventsPerBatch, optOutEvents2);
                isConfig = new InterstitialConfigurations(isSmartLoadAmount, isSmartLoadTimeout, isEvents);
                if (isPlacementsSection != null) {
                    for (int i4 = 0; i4 < isPlacementsSection.length(); i4++) {
                        JSONObject singlePlacementJson2 = isPlacementsSection.optJSONObject(i4);
                        InterstitialPlacement placement2 = parseSingleISPlacement(singlePlacementJson2);
                        if (placement2 != null) {
                            isConfig.addInterstitialPlacement(placement2);
                        }
                    }
                }
                String backFillProviderName2 = isSection.optString("backFill");
                if (!TextUtils.isEmpty(backFillProviderName2)) {
                    isConfig.setBackFillProviderName(backFillProviderName2);
                }
                String premiumProviderName2 = isSection.optString("premium");
                if (!TextUtils.isEmpty(premiumProviderName2)) {
                    isConfig.setPremiumProviderName(premiumProviderName2);
                }
            }
            if (bnSection != null) {
                JSONArray bnPlacementsSection = bnSection.optJSONArray("placements");
                JSONObject bnEventsSection = getSection(bnSection, DataBaseEventsStorage.EventEntry.TABLE_NAME);
                int bnSmartLoadAmount = getIntConfigValue(bnSection, appSection, "maxNumOfAdaptersToLoadOnStart", 1);
                long bnSmartLoadTimeout = getLongConfigValue(bnSection, appSection, "atim", 10000L);
                int bnIntervalTime = getIntConfigValue(bnSection, appSection, "bannerInterval", 60);
                JSONObject bannerCombinedEvents = IronSourceUtils.mergeJsons(bnEventsSection, appEventsSection);
                boolean bnEventsToggle = bannerCombinedEvents.optBoolean("sendEventsToggle", false);
                String bnEventsUrl = bannerCombinedEvents.optString("serverEventsURL", "");
                String bnEventsType = bannerCombinedEvents.optString("serverEventsType", "");
                int bnBackupThreshold = bannerCombinedEvents.optInt("backupThreshold", -1);
                int bnMaxNumOfEvents = bannerCombinedEvents.optInt("maxNumberOfEvents", -1);
                int bnMaxEventsPerBatch = bannerCombinedEvents.optInt("maxEventsPerBatch", DownloadManager.OPERATION_TIMEOUT);
                int[] optOutEvents3 = null;
                JSONArray optOutJsonArray3 = bannerCombinedEvents.optJSONArray("optOut");
                if (optOutJsonArray3 != null) {
                    optOutEvents3 = new int[optOutJsonArray3.length()];
                    for (int i5 = 0; i5 < optOutJsonArray3.length(); i5++) {
                        optOutEvents3[i5] = optOutJsonArray3.optInt(i5);
                    }
                }
                ApplicationEvents bnEvents = new ApplicationEvents(false, bnEventsToggle, bnEventsUrl, bnEventsType, bnBackupThreshold, bnMaxNumOfEvents, bnMaxEventsPerBatch, optOutEvents3);
                bannerConfig = new BannerConfigurations(bnSmartLoadAmount, bnSmartLoadTimeout, bnEvents, bnIntervalTime);
                if (bnPlacementsSection != null) {
                    for (int i6 = 0; i6 < bnPlacementsSection.length(); i6++) {
                        JSONObject singlePlacementJson3 = bnPlacementsSection.optJSONObject(i6);
                        BannerPlacement placement3 = parseSingleBNPlacement(singlePlacementJson3);
                        if (placement3 != null) {
                            bannerConfig.addBannerPlacement(placement3);
                        }
                    }
                }
            }
            if (owSection != null) {
                JSONArray owPlacementsSection = owSection.optJSONArray("placements");
                owConfig = new OfferwallConfigurations();
                if (owPlacementsSection != null) {
                    for (int i7 = 0; i7 < owPlacementsSection.length(); i7++) {
                        JSONObject singlePlacementJson4 = owPlacementsSection.optJSONObject(i7);
                        OfferwallPlacement placement4 = parseSingleOWPlacement(singlePlacementJson4);
                        if (placement4 != null) {
                            owConfig.addOfferwallPlacement(placement4);
                        }
                    }
                }
            }
            int serverLoggerLevel = loggerSection.optInt(ServerLogger.NAME, 3);
            int publisherLoggerLevel = loggerSection.optInt("publisher", 3);
            int consoleLoggerLevel = loggerSection.optInt(ConsoleLogger.NAME, 3);
            ApplicationLogger logger = new ApplicationLogger(serverLoggerLevel, publisherLoggerLevel, consoleLoggerLevel);
            ServerSegmetData segmentData = null;
            if (segmentSection != null) {
                String segmentName = segmentSection.optString("name", "");
                String segmentId = segmentSection.optString(ShareConstants.WEB_DIALOG_PARAM_ID, "-1");
                JSONObject customSegments = segmentSection.optJSONObject("custom");
                segmentData = new ServerSegmetData(segmentName, segmentId, customSegments);
            }
            boolean isIntegration = appSection.optBoolean("integration", false);
            ApplicationConfigurations appConfig = new ApplicationConfigurations(logger, segmentData, isIntegration);
            boolean allowLocation = appSection.optBoolean("allowLocation", false);
            IronSourceUtils.saveBooleanToSharedPrefs(this.mContext, GeneralProperties.ALLOW_LOCATION_SHARED_PREFS_KEY, allowLocation);
            this.mConfigurations = new Configurations(rvConfig, isConfig, owConfig, bannerConfig, appConfig);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private int getIntConfigValue(JSONObject mainJson, JSONObject secondaryJson, String key, int defaultValue) {
        int result = 0;
        if (mainJson.has(key)) {
            result = mainJson.optInt(key, 0);
        } else if (secondaryJson.has(key)) {
            result = secondaryJson.optInt(key, 0);
        }
        if (result == 0) {
            return defaultValue;
        }
        return result;
    }

    private long getLongConfigValue(JSONObject mainJson, JSONObject secondaryJson, String key, long defaultValue) {
        long result = 0;
        if (mainJson.has(key)) {
            result = mainJson.optLong(key, 0L);
        } else if (secondaryJson.has(key)) {
            result = secondaryJson.optLong(key, 0L);
        }
        if (result == 0) {
            return defaultValue;
        }
        return result;
    }

    private Placement parseSingleRVPlacement(JSONObject placementJson) {
        Placement result = null;
        if (placementJson != null) {
            int placementId = placementJson.optInt("placementId", -1);
            String placementName = placementJson.optString("placementName", "");
            String virtualItemName = placementJson.optString("virtualItemName", "");
            int virtualItemCount = placementJson.optInt("virtualItemCount", -1);
            PlacementAvailabilitySettings settings = getPlacementAvailabilitySettings(placementJson);
            if (placementId >= 0 && !TextUtils.isEmpty(placementName) && !TextUtils.isEmpty(virtualItemName) && virtualItemCount > 0) {
                result = new Placement(placementId, placementName, virtualItemName, virtualItemCount, settings);
                if (settings != null) {
                    CappingManager.addCappingInfo(this.mContext, result);
                }
            }
        }
        return result;
    }

    private InterstitialPlacement parseSingleISPlacement(JSONObject placementJson) {
        InterstitialPlacement result = null;
        if (placementJson != null) {
            int placementId = placementJson.optInt("placementId", -1);
            String placementName = placementJson.optString("placementName", "");
            PlacementAvailabilitySettings settings = getPlacementAvailabilitySettings(placementJson);
            if (placementId >= 0 && !TextUtils.isEmpty(placementName)) {
                result = new InterstitialPlacement(placementId, placementName, settings);
                if (settings != null) {
                    CappingManager.addCappingInfo(this.mContext, result);
                }
            }
        }
        return result;
    }

    private OfferwallPlacement parseSingleOWPlacement(JSONObject placementJson) {
        if (placementJson == null) {
            return null;
        }
        int placementId = placementJson.optInt("placementId", -1);
        String placementName = placementJson.optString("placementName", "");
        if (placementId < 0 || TextUtils.isEmpty(placementName)) {
            return null;
        }
        OfferwallPlacement result = new OfferwallPlacement(placementId, placementName);
        return result;
    }

    private BannerPlacement parseSingleBNPlacement(JSONObject placementJson) {
        BannerPlacement result = null;
        if (placementJson != null) {
            int placementId = placementJson.optInt("placementId", -1);
            String placementName = placementJson.optString("placementName", "");
            PlacementAvailabilitySettings settings = getPlacementAvailabilitySettings(placementJson);
            if (placementId >= 0 && !TextUtils.isEmpty(placementName)) {
                result = new BannerPlacement(placementId, placementName, settings);
                if (settings != null) {
                    CappingManager.addCappingInfo(this.mContext, result);
                }
            }
        }
        return result;
    }

    private PlacementAvailabilitySettings getPlacementAvailabilitySettings(JSONObject placementJson) {
        if (placementJson == null) {
            return null;
        }
        PlacementAvailabilitySettings.PlacementAvailabilitySettingsBuilder settingsBuilder = new PlacementAvailabilitySettings.PlacementAvailabilitySettingsBuilder();
        boolean delivery = placementJson.optBoolean("delivery", true);
        settingsBuilder.delivery(delivery);
        JSONObject cappingJson = placementJson.optJSONObject("capping");
        if (cappingJson != null) {
            PlacementCappingType cappingType = null;
            String cappingUnitString = cappingJson.optString("unit");
            if (!TextUtils.isEmpty(cappingUnitString)) {
                if (PlacementCappingType.PER_DAY.toString().equals(cappingUnitString)) {
                    cappingType = PlacementCappingType.PER_DAY;
                } else if (PlacementCappingType.PER_HOUR.toString().equals(cappingUnitString)) {
                    cappingType = PlacementCappingType.PER_HOUR;
                }
            }
            int cappingValue = cappingJson.optInt("maxImpressions", 0);
            boolean isCappingEnabled = cappingJson.optBoolean("enabled", false) && cappingValue > 0;
            settingsBuilder.capping(isCappingEnabled, cappingType, cappingValue);
        }
        JSONObject pacingJson = placementJson.optJSONObject("pacing");
        if (pacingJson != null) {
            int pacingValue = pacingJson.optInt("numOfSeconds", 0);
            boolean isPacingEnabled = pacingJson.optBoolean("enabled", false) && pacingValue > 0;
            settingsBuilder.pacing(isPacingEnabled, pacingValue);
        }
        return settingsBuilder.build();
    }

    private JSONObject getSection(JSONObject json, String sectionName) {
        if (json == null) {
            return null;
        }
        JSONObject result = json.optJSONObject(sectionName);
        return result;
    }

    public String getRVBackFillProvider() {
        try {
            return this.mProviderOrder.getRVBackFillProvider();
        } catch (Exception e) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.INTERNAL, "getRVBackFillProvider", e);
            return null;
        }
    }

    public String getRVPremiumProvider() {
        try {
            return this.mProviderOrder.getRVPremiumProvider();
        } catch (Exception e) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.INTERNAL, "getRVPremiumProvider", e);
            return null;
        }
    }

    public ProviderSettingsHolder getProviderSettingsHolder() {
        return this.mProviderSettingsHolder;
    }

    public ProviderOrder getProviderOrder() {
        return this.mProviderOrder;
    }

    public Configurations getConfigurations() {
        return this.mConfigurations;
    }

    private Context getContext() {
        return this.mContext;
    }
}
