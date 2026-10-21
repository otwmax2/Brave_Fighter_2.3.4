package com.ironsource.mediationsdk.model;

import android.text.TextUtils;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public class ProviderSettingsHolder {
    private static ProviderSettingsHolder mInstance;
    private ArrayList<ProviderSettings> mProviderSettingsArrayList = new ArrayList<>();

    public static synchronized ProviderSettingsHolder getProviderSettingsHolder() {
        if (mInstance == null) {
            mInstance = new ProviderSettingsHolder();
        }
        return mInstance;
    }

    private ProviderSettingsHolder() {
    }

    public void addProviderSettings(ProviderSettings providerSettings) {
        if (providerSettings != null) {
            this.mProviderSettingsArrayList.add(providerSettings);
        }
    }

    public ProviderSettings getProviderSettings(String providerName) {
        for (ProviderSettings providerSettings : this.mProviderSettingsArrayList) {
            if (providerSettings.getProviderName().equals(providerName)) {
                return providerSettings;
            }
        }
        ProviderSettings ps = new ProviderSettings(providerName);
        addProviderSettings(ps);
        return ps;
    }

    public HashSet<String> getProviderSettingsByReflectionName(String providerNameForReflection, String fieldName) {
        HashSet<String> result = new HashSet<>();
        try {
            for (ProviderSettings providerSettings : this.mProviderSettingsArrayList) {
                if (providerSettings.getProviderTypeForReflection().equals(providerNameForReflection)) {
                    if (providerSettings.getRewardedVideoSettings() != null && providerSettings.getRewardedVideoSettings().length() > 0 && !TextUtils.isEmpty(providerSettings.getRewardedVideoSettings().optString(fieldName))) {
                        result.add(providerSettings.getRewardedVideoSettings().optString(fieldName));
                    }
                    if (providerSettings.getInterstitialSettings() != null && providerSettings.getInterstitialSettings().length() > 0 && !TextUtils.isEmpty(providerSettings.getInterstitialSettings().optString(fieldName))) {
                        result.add(providerSettings.getInterstitialSettings().optString(fieldName));
                    }
                    if (providerSettings.getBannerSettings() != null && providerSettings.getBannerSettings().length() > 0 && !TextUtils.isEmpty(providerSettings.getBannerSettings().optString(fieldName))) {
                        result.add(providerSettings.getBannerSettings().optString(fieldName));
                    }
                }
            }
        } catch (Exception e) {
        }
        return result;
    }

    public boolean containsProviderSettings(String providerName) {
        for (ProviderSettings providerSettings : this.mProviderSettingsArrayList) {
            if (providerSettings.getProviderName().equals(providerName)) {
                return true;
            }
        }
        return false;
    }

    public ArrayList<ProviderSettings> getProviderSettingsArrayList() {
        return this.mProviderSettingsArrayList;
    }

    public void fillSubProvidersDetails() {
        for (ProviderSettings providerSettings : this.mProviderSettingsArrayList) {
            boolean isSubProvider = providerSettings.isMultipleInstances() && !TextUtils.isEmpty(providerSettings.getProviderTypeForReflection());
            if (isSubProvider) {
                ProviderSettings commonProviderSettings = getProviderSettings(providerSettings.getProviderTypeForReflection());
                providerSettings.setInterstitialSettings(IronSourceUtils.mergeJsons(providerSettings.getInterstitialSettings(), commonProviderSettings.getInterstitialSettings()));
                providerSettings.setRewardedVideoSettings(IronSourceUtils.mergeJsons(providerSettings.getRewardedVideoSettings(), commonProviderSettings.getRewardedVideoSettings()));
                providerSettings.setBannerSettings(IronSourceUtils.mergeJsons(providerSettings.getBannerSettings(), commonProviderSettings.getBannerSettings()));
            }
        }
    }
}
