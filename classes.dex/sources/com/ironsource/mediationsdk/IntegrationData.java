package com.ironsource.mediationsdk;

import android.util.Pair;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class IntegrationData {
    public String name;
    public String version;
    public String[] activities = null;
    public String sdkName = null;
    public ArrayList<Pair<String, String>> externalLibs = null;
    public String[] broadcastReceivers = null;
    public String[] services = null;
    public boolean validateWriteExternalStorage = false;

    public IntegrationData(String name, String version) {
        this.name = name;
        this.version = version;
    }
}
