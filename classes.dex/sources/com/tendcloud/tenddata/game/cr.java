package com.tendcloud.tenddata.game;

import android.content.Context;
import android.os.Build;
import com.tendcloud.tenddata.TalkingDataGA;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class cr {
    private static final String A = "tdudid";
    private static final String B = "locs";
    private static final String C = "networks";
    private static final String D = "accounts";
    private static final String E = "imeis";
    private static final String F = "serialNO";
    private static final String m = "deviceId";
    private static final String n = "mobileModel";
    private static final String o = "osSdkVersion";
    private static final String p = "pixel";
    private static final String q = "country";
    private static final String r = "language";
    private static final String s = "timezone";
    private static final String t = "osVersion";
    private static final String u = "simOperator";
    private static final String v = "networkOperator";
    private static final String w = "manufacture";
    private static final String x = "networkType";
    private static final String y = "carrier";
    private static final String z = "apnProxy";
    public String a;
    public String b;
    public int c;
    String d;
    String e;
    public String f;
    public String g;
    public String h;
    public int i;
    public String j;
    public String k;
    public String l;

    public cr() {
        this.a = "";
        this.b = "";
        this.d = "";
        this.e = "";
        this.f = "";
        this.g = "";
        this.h = "";
        this.i = 8;
        this.j = "";
        this.k = "";
        this.l = "";
        Context context = TalkingDataGA.getContext();
        this.a = i.b(context);
        this.b = j.f();
        this.c = j.g();
        this.f = j.c(context);
        this.g = j.j();
        this.h = j.i();
        this.i = j.e();
        this.j = j.a();
        this.k = Build.MANUFACTURER;
        this.e = i.a();
        try {
            this.d = o.y(context).toString();
        } catch (Exception e) {
        }
        try {
            this.l = i.i(context);
        } catch (Exception e2) {
        }
    }

    private void a(Map map) {
        Context context = TalkingDataGA.getContext();
        map.put(v, o.k(context));
        map.put("simOperator", o.l(context));
        map.put(y, o.q(context));
        map.put(x, o.i(context));
        map.put(z, Boolean.valueOf(o.a()));
        map.put(D, z.d(context));
        map.put(B, z.c(TalkingDataGA.getContext()));
        map.put("networks", o.r(TalkingDataGA.getContext()));
    }

    public String a() {
        TreeMap treeMap = new TreeMap();
        treeMap.put(m, this.a);
        treeMap.put(n, this.b);
        treeMap.put(o, Integer.valueOf(this.c));
        treeMap.put(p, this.f);
        treeMap.put(q, this.g);
        treeMap.put(r, this.h);
        treeMap.put(s, Integer.valueOf(this.i));
        treeMap.put(t, this.j);
        treeMap.put(w, this.k);
        treeMap.put(A, this.l);
        treeMap.put(E, this.d);
        treeMap.put(F, this.e);
        a(treeMap);
        return new JSONObject(treeMap).toString();
    }
}
