package com.ironsource.mediationsdk.config;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class ConfigFile {
    private static ConfigFile mInstance;
    private String mPluginFrameworkVersion;
    private String mPluginType;
    private String mPluginVersion;
    private String[] mSupportedPlugins = {"Unity", "AdobeAir", "Xamarin", "Corona", "AdMob", "MoPub"};

    public static synchronized ConfigFile getConfigFile() {
        if (mInstance == null) {
            mInstance = new ConfigFile();
        }
        return mInstance;
    }

    public void setPluginData(String pluginType, String pluginVersion, String pluginFrameworkVersion) {
        if (pluginType != null) {
            if (Arrays.asList(this.mSupportedPlugins).contains(pluginType)) {
                this.mPluginType = pluginType;
            } else {
                this.mPluginType = null;
            }
        }
        if (pluginVersion != null) {
            this.mPluginVersion = pluginVersion;
        }
        if (pluginFrameworkVersion != null) {
            this.mPluginFrameworkVersion = pluginFrameworkVersion;
        }
    }

    public String getPluginType() {
        return this.mPluginType;
    }

    public String getPluginVersion() {
        return this.mPluginVersion;
    }

    public String getPluginFrameworkVersion() {
        return this.mPluginFrameworkVersion;
    }
}
