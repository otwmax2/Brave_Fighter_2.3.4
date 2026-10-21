package com.tendcloud.tenddata.game;

import com.tendcloud.tenddata.TalkingDataGA;
import java.util.TreeMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class cq {
    public static String l = null;
    private static final String m = "sequenceNumber";
    private static final String n = "appPackageName";
    private static final String o = "appVersionName";
    private static final String p = "sdkVersion";
    private static final String q = "sdkType";
    private static final String r = "partner";
    private static final String s = "appDisplayName";
    private static final String t = "isCracked";
    private static final String u = "installationTime";
    private static final String v = "purchaseTime";
    String a;
    String b;
    String c;
    long d;
    long e;
    String j;
    boolean f = false;
    int g = 0;
    String h = ao.a;
    String i = TalkingDataGA.getPartnerId(TalkingDataGA.getContext());
    String k = TalkingDataGA.getAppId(TalkingDataGA.getContext());

    public cq() {
        this.a = "";
        this.b = "";
        this.c = "";
        this.d = 0L;
        this.e = 0L;
        this.j = "Android SDK";
        this.a = c.a().a(TalkingDataGA.getContext());
        this.b = c.a().c(TalkingDataGA.getContext());
        this.d = bq.b(TalkingDataGA.getContext());
        this.e = c.a().d(TalkingDataGA.getContext());
        this.c = c.a().h(TalkingDataGA.getContext());
        switch (TalkingDataGA.sPlatformType) {
            case 1:
                this.j = "Android_cocos2d-x_SDK";
                break;
            case 2:
                this.j = "Android_Unity_SDK";
                break;
            case 3:
                this.j = "Android_AIR_SDK";
                break;
            case 4:
                this.j = "Android_PhoneGap_SDK";
                break;
            default:
                this.j = "Android_Native_SDK";
                break;
        }
    }

    public String a() {
        TreeMap treeMap = new TreeMap();
        treeMap.put(m, this.k);
        treeMap.put(r, this.i);
        treeMap.put(n, this.a);
        treeMap.put(o, this.b);
        treeMap.put(s, this.c);
        treeMap.put(t, Boolean.valueOf(this.f));
        treeMap.put(u, Long.valueOf(this.e));
        treeMap.put(v, Integer.valueOf(this.g));
        treeMap.put("sdkVersion", this.h);
        treeMap.put(q, this.j);
        return new JSONObject(treeMap).toString();
    }
}
