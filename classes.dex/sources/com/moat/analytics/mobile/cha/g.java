package com.moat.analytics.mobile.cha;

import android.os.Build;
import com.moat.analytics.mobile.cha.t;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class g {

    /* JADX INFO: renamed from: ˊॱ, reason: contains not printable characters */
    private static int f66 = 117;

    /* JADX INFO: renamed from: ʽ, reason: contains not printable characters */
    private static int f65 = -1138247343;

    /* JADX INFO: renamed from: ʼ, reason: contains not printable characters */
    private static int f64 = 565428102;

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    private static byte[] f68 = {-73, 79, -77, 127, -123, -125, -126, 73, 125, -81, 81, -77, 81, 127, -83, -121, 73, -78, 127, 85, -82, -128, 77, -79, 77, -80, -126, 123, -124, 77, -125, -87, -123, 117, -123, 120, -122, 82, -83, -128, -69, -66, 65, -78, 65, -66, 119, -120, -72, 70, 117, -116, 77, -66, -65, 112, -108, 105, -66, 69, 71, -118, 110, -118, 66, -78, 65, 71, -65, 68, 104, -120, 107, -109, -78, 118, -119, 113, -108, -91, -81, -5, 80, -25, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    /* JADX INFO: renamed from: ʻ, reason: contains not printable characters */
    private static int f63 = 0;

    /* JADX INFO: renamed from: ॱˋ, reason: contains not printable characters */
    private static int f67 = 1;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    private boolean f72 = false;

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private boolean f71 = false;

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private boolean f69 = false;

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private int f73 = 200;

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private int f70 = 10;

    g(String str) {
        m58(str);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:217)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:68)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:71)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:71)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:71)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:71)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private void m58(java.lang.String r11) {
        /*
            Method dump skipped, instruction units count: 640
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.cha.g.m58(java.lang.String):void");
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private static boolean m57(JSONObject jSONObject) {
        int i;
        JSONArray jSONArray;
        int length;
        try {
            switch (16 > Build.VERSION.SDK_INT ? ':' : '$') {
                case '$':
                    switch (jSONObject.has(m55(-115, 1138247454, (byte) -93, -565428020).intern()) ? (char) 0 : (char) 1) {
                        default:
                            int i2 = f63 + 71;
                            f67 = i2 % 128;
                            switch (i2 % 2 == 0 ? '`' : '8') {
                                case '`':
                                    JSONArray jSONArray2 = jSONObject.getJSONArray(m55(-115, 1138247454, (byte) -93, -565428020).intern());
                                    i = 0;
                                    jSONArray = jSONArray2;
                                    length = jSONArray2.length();
                                    break;
                                default:
                                    JSONArray jSONArray3 = jSONObject.getJSONArray(m55(-115, 1138247454, (byte) -93, -565428020).intern());
                                    i = 0;
                                    jSONArray = jSONArray3;
                                    length = jSONArray3.length();
                                    break;
                            }
                            while (true) {
                                switch (i < length ? ')' : (char) 24) {
                                    case 24:
                                        break;
                                    default:
                                        switch (jSONArray.getInt(i) == Build.VERSION.SDK_INT ? (char) 0 : (char) 1) {
                                            case 1:
                                                i++;
                                                break;
                                            default:
                                                int i3 = f63 + 65;
                                                f67 = i3 % 128;
                                                if (i3 % 2 == 0) {
                                                }
                                                break;
                                        }
                                        break;
                                }
                            }
                        case 1:
                            break;
                    }
                    return true;
                default:
                    int i4 = f67 + 43;
                    f63 = i4 % 128;
                    if (i4 % 2 != 0) {
                    }
                    return true;
            }
        } catch (Exception e) {
            return true;
        }
        return true;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:29:0x00a8. Please report as an issue. */
    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private static boolean m56(JSONObject jSONObject) {
        String str;
        JSONArray jSONArray;
        int length;
        int i;
        try {
        } catch (Exception e) {
            o.m131(e);
        }
        switch (jSONObject.has(m55(-115, 1138247440, (byte) -24, -565428019).intern()) ? (char) 14 : (char) 18) {
            default:
                int i2 = f63 + 113;
                f67 = i2 % 128;
                switch (i2 % 2 == 0 ? (char) 1 : (char) 0) {
                    case 0:
                        String strM155 = r.m145().m155();
                        JSONArray jSONArray2 = jSONObject.getJSONArray(m55(-115, 1138247440, (byte) -24, -565428019).intern());
                        str = strM155;
                        jSONArray = jSONArray2;
                        length = jSONArray2.length();
                        i = 0;
                        break;
                    default:
                        String strM1552 = r.m145().m155();
                        JSONArray jSONArray3 = jSONObject.getJSONArray(m55(-115, 1138247440, (byte) -24, -565428019).intern());
                        str = strM1552;
                        jSONArray = jSONArray3;
                        length = jSONArray3.length();
                        i = 0;
                        break;
                }
                while (true) {
                    switch (i < length ? (char) 0 : (char) 1) {
                        case 1:
                            break;
                        default:
                            switch (jSONArray.getString(i).contentEquals(str) ? (char) 23 : 'X') {
                                case 23:
                                    int i3 = f67 + 71;
                                    f63 = i3 % 128;
                                    switch (i3 % 2 != 0 ? (char) 4 : 'O') {
                                    }
                                    return true;
                                default:
                                    i++;
                                    break;
                            }
                            break;
                    }
                }
            case 18:
                return false;
        }
        o.m131(e);
        return false;
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private static boolean m59(JSONObject jSONObject) {
        try {
        } catch (Exception e) {
            o.m131(e);
        }
        switch (jSONObject.has(m55(-115, 1138247440, (byte) 1, -565428018).intern()) ? '8' : (char) 19) {
            case '8':
                int i = f63 + 99;
                f67 = i % 128;
                if (i % 2 == 0) {
                }
                String strM155 = r.m145().m155();
                JSONArray jSONArray = jSONObject.getJSONArray(m55(-115, 1138247440, (byte) 1, -565428018).intern());
                int length = jSONArray.length();
                int i2 = 0;
                while (true) {
                    switch (i2 < length ? (char) 0 : (char) 1) {
                        case 0:
                            int i3 = f63 + 49;
                            f67 = i3 % 128;
                            switch (i3 % 2 == 0 ? (char) 0 : 'X') {
                                case 0:
                                    switch (jSONArray.getString(i2).contentEquals(strM155) ? '>' : 'I') {
                                        case '>':
                                            return true;
                                    }
                                default:
                                    switch (jSONArray.getString(i2).contentEquals(strM155) ? (char) 11 : 'K') {
                                        case 'K':
                                            break;
                                        default:
                                            return true;
                                    }
                                    break;
                            }
                            i2++;
                            break;
                    }
                }
            default:
                return false;
        }
        o.m131(e);
        return false;
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    final boolean m60() {
        return this.f71;
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    final boolean m64() {
        return this.f69;
    }

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    final int m63() {
        return this.f73;
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    final int m62() {
        return this.f70;
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    final int m61() {
        return this.f72 ? t.a.f194 : t.a.f195;
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private static String m55(int i, int i2, byte b, int i3) {
        boolean z;
        int i4;
        int i5;
        int i6;
        short[] sArr = null;
        int i7 = 0;
        StringBuilder sb = new StringBuilder();
        int i8 = i + f66;
        switch (i8 == -1 ? (char) 0 : (char) 1) {
            case 1:
                z = false;
                break;
            default:
                z = true;
                break;
        }
        switch (z ? (char) 1 : (char) 0) {
            case 0:
                i4 = i8;
                break;
            default:
                switch (f68 != null ? (char) 0 : (char) 1) {
                    case 0:
                        int i9 = f67 + 87;
                        f63 = i9 % 128;
                        switch (i9 % 2 != 0 ? (char) 0 : (char) 1) {
                            case 1:
                                i4 = (byte) (f68[f64 + i3] + f66);
                                break;
                            default:
                                i4 = (byte) (f68[f64 + i3] + f66);
                                break;
                        }
                        break;
                    default:
                        i4 = (short) (sArr[f64 + i3] + f66);
                        break;
                }
                break;
        }
        switch (i4 > 0 ? '=' : (char) 24) {
            case 24:
                break;
            default:
                int i10 = f64 + ((i3 + i4) - 2);
                switch (z ? 'Q' : 'V') {
                    case 'Q':
                        i7 = 1;
                        break;
                }
                int i11 = i10 + i7;
                char c = (char) (f65 + i2);
                sb.append(c);
                char c2 = c;
                int i12 = i11;
                int i13 = 1;
                while (true) {
                    switch (i13 < i4 ? 'U' : ',') {
                        case ',':
                            break;
                        default:
                            int i14 = f63 + 1;
                            f67 = i14 % 128;
                            if (i14 % 2 == 0) {
                            }
                            switch (f68 != null ? 'B' : 'E') {
                                case 'B':
                                    i5 = i12 - 1;
                                    i6 = f68[i12];
                                    break;
                                default:
                                    i5 = i12 - 1;
                                    i6 = sArr[i12];
                                    break;
                            }
                            char c3 = (char) ((i6 ^ b) + c2);
                            sb.append(c3);
                            i13++;
                            c2 = c3;
                            i12 = i5;
                            break;
                    }
                }
                break;
        }
        return sb.toString();
    }
}
