package com.moat.analytics.mobile.iro;

import android.os.Build;
import com.moat.analytics.mobile.iro.t;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class i {

    /* JADX INFO: renamed from: ʽ, reason: contains not printable characters */
    private static char f329 = 5;

    /* JADX INFO: renamed from: ʻ, reason: contains not printable characters */
    private static char[] f328 = {'s', 'a', '2', 'b', 'c', '3', '4', '1', '8', '9', 'f', '0', '6', 'd', 'e', '5', 'o', 'n', 'i', 'p', 'l', 't', 'u', 'v', 'w'};

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    private static int f331 = 0;

    /* JADX INFO: renamed from: ˊॱ, reason: contains not printable characters */
    private static int f330 = 1;

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private boolean f332 = false;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    private boolean f335 = false;

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private boolean f336 = false;

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private int f334 = 200;

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private int f333 = 10;

    i(String str) {
        m273(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0056 A[Catch: Exception -> 0x0117, FALL_THROUGH, TryCatch #0 {Exception -> 0x0117, blocks: (B:5:0x0005, B:8:0x0053, B:9:0x0056, B:12:0x005d, B:13:0x0060, B:16:0x0068, B:17:0x006b, B:24:0x0087, B:25:0x0089, B:28:0x009d, B:29:0x00a0, B:32:0x00b7, B:72:0x0165, B:33:0x00ba, B:40:0x00de, B:41:0x00f0, B:49:0x010c, B:73:0x0169), top: B:87:0x0005 }] */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1091)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:390)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:370)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:85)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:33)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m273(java.lang.String r10) {
        /*
            Method dump skipped, instruction units count: 482
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.iro.i.m273(java.lang.String):void");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x001a. Please report as an issue. */
    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private static boolean m274(JSONObject jSONObject) {
        try {
            switch (16 > Build.VERSION.SDK_INT ? (char) 1 : (char) 0) {
                case 0:
                    switch (jSONObject.has(m275(2, "\u0012\u0001", (byte) 62).intern()) ? 'M' : 'V') {
                        default:
                            JSONArray jSONArray = jSONObject.getJSONArray(m275(2, "\u0012\u0001", (byte) 62).intern());
                            int length = jSONArray.length();
                            int i = 0;
                            while (true) {
                                switch (i < length ? '<' : 'G') {
                                    case '<':
                                        switch (jSONArray.getInt(i) == Build.VERSION.SDK_INT ? (char) 14 : (char) 26) {
                                            case 14:
                                                return true;
                                            default:
                                                i++;
                                                break;
                                        }
                                        break;
                                }
                            }
                        case 'V':
                            return false;
                    }
                    break;
                default:
                    int i2 = f331 + 69;
                    f330 = i2 % 128;
                    switch (i2 % 2 == 0 ? '?' : '\'') {
                    }
                    return true;
            }
        } catch (Exception e) {
            return true;
        }
        return true;
    }

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    private static boolean m277(JSONObject jSONObject) {
        try {
        } catch (Exception e) {
            o.m311(e);
        }
        switch (jSONObject.has(m275(2, "\u0004\u0010", (byte) 47).intern()) ? (char) 1 : (char) 0) {
            case 1:
                String strM325 = p.m318().m325();
                JSONArray jSONArray = jSONObject.getJSONArray(m275(2, "\u0004\u0010", (byte) 47).intern());
                int length = jSONArray.length();
                int i = 0;
                while (true) {
                    switch (i < length ? '\"' : '8') {
                        case '\"':
                            int i2 = f330 + 115;
                            f331 = i2 % 128;
                            if (i2 % 2 != 0) {
                            }
                            switch (jSONArray.getString(i).contentEquals(strM325) ? (char) 1 : (char) 0) {
                                case 0:
                                    i++;
                                    break;
                                default:
                                    int i3 = f330 + 47;
                                    f331 = i3 % 128;
                                    if (i3 % 2 != 0) {
                                    }
                                    return true;
                            }
                            break;
                    }
                }
            default:
                return false;
        }
        o.m311(e);
        return false;
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private static boolean m276(JSONObject jSONObject) {
        try {
        } catch (Exception e) {
            o.m311(e);
        }
        switch (jSONObject.has(m275(2, "\u0000\u0015", (byte) 3).intern()) ? (char) 23 : '7') {
            case 23:
                int i = f331 + 73;
                f330 = i % 128;
                if (i % 2 == 0) {
                }
                String strM325 = p.m318().m325();
                JSONArray jSONArray = jSONObject.getJSONArray(m275(2, "\u0000\u0015", (byte) 3).intern());
                int length = jSONArray.length();
                int i2 = 0;
                while (true) {
                    switch (i2 < length ? (char) 0 : (char) 1) {
                        case 1:
                            break;
                        default:
                            switch (jSONArray.getString(i2).contentEquals(strM325) ? (char) 1 : (char) 0) {
                                case 1:
                                    return true;
                                default:
                                    i2++;
                                    break;
                            }
                            break;
                    }
                }
            default:
                return false;
        }
        o.m311(e);
        return false;
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    final boolean m278() {
        return this.f335;
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    final boolean m280() {
        return this.f336;
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    final int m279() {
        return this.f334;
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    final int m282() {
        return this.f333;
    }

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    final int m281() {
        return this.f332 ? t.c.f419 : t.c.f418;
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private static String m275(int i, String str, byte b) {
        int i2;
        char[] charArray = str.toCharArray();
        char[] cArr = f328;
        char c = f329;
        char[] cArr2 = new char[i];
        switch (i % 2 != 0 ? (char) 0 : (char) 1) {
            case 1:
                break;
            default:
                int i3 = f330 + 99;
                f331 = i3 % 128;
                if (i3 % 2 != 0) {
                }
                i--;
                cArr2[i] = (char) (charArray[i] - b);
                break;
        }
        switch (i > 1 ? (char) 0 : (char) 1) {
            case 0:
                int i4 = f330 + 125;
                f331 = i4 % 128;
                switch (i4 % 2 != 0 ? 'R' : '\"') {
                    case '\"':
                        i2 = 0;
                        break;
                    default:
                        i2 = 0;
                        break;
                }
                while (true) {
                    switch (i2 < i ? 'c' : 'U') {
                        case 'U':
                            break;
                        default:
                            char c2 = charArray[i2];
                            char c3 = charArray[i2 + 1];
                            switch (c2 == c3 ? (char) 24 : '#') {
                                case '#':
                                    int iM5 = com.c.c.b.m5(c2, c);
                                    int iM6 = com.c.c.b.m6(c2, c);
                                    int iM52 = com.c.c.b.m5(c3, c);
                                    int iM62 = com.c.c.b.m6(c3, c);
                                    switch (iM6 == iM62 ? (char) 0 : (char) 1) {
                                        case 1:
                                            switch (iM5 == iM52 ? '.' : '1') {
                                                case '1':
                                                    int iM7 = com.c.c.b.m7(iM5, iM62, c);
                                                    int iM72 = com.c.c.b.m7(iM52, iM6, c);
                                                    cArr2[i2] = cArr[iM7];
                                                    cArr2[i2 + 1] = cArr[iM72];
                                                    break;
                                                default:
                                                    int iM4 = com.c.c.b.m4(iM6, c);
                                                    int iM42 = com.c.c.b.m4(iM62, c);
                                                    int iM73 = com.c.c.b.m7(iM5, iM4, c);
                                                    int iM74 = com.c.c.b.m7(iM52, iM42, c);
                                                    cArr2[i2] = cArr[iM73];
                                                    cArr2[i2 + 1] = cArr[iM74];
                                                    break;
                                            }
                                            break;
                                        default:
                                            int iM43 = com.c.c.b.m4(iM5, c);
                                            int iM44 = com.c.c.b.m4(iM52, c);
                                            int iM75 = com.c.c.b.m7(iM43, iM6, c);
                                            int iM76 = com.c.c.b.m7(iM44, iM62, c);
                                            cArr2[i2] = cArr[iM75];
                                            cArr2[i2 + 1] = cArr[iM76];
                                            break;
                                    }
                                    break;
                                default:
                                    cArr2[i2] = (char) (c2 - b);
                                    cArr2[i2 + 1] = (char) (c3 - b);
                                    break;
                            }
                            i2 += 2;
                            break;
                    }
                }
                break;
        }
        return new String(cArr2);
    }
}
