package com.moat.analytics.mobile.cha;

import android.graphics.Rect;
import android.location.Location;
import android.support.v4.widget.ExploreByTouchHelper;
import android.util.DisplayMetrics;
import android.view.View;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class u {

    /* JADX INFO: renamed from: ʼ, reason: contains not printable characters */
    private static int f205 = 0;

    /* JADX INFO: renamed from: ˋॱ, reason: contains not printable characters */
    private static int f206 = 1;

    /* JADX INFO: renamed from: ʻ, reason: contains not printable characters */
    private Location f207;

    /* JADX INFO: renamed from: ʽ, reason: contains not printable characters */
    private JSONObject f208;

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private Rect f209;

    /* JADX INFO: renamed from: ˊॱ, reason: contains not printable characters */
    private JSONObject f210;

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private JSONObject f211;

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private Rect f212;

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    private Map<String, Object> f215 = new HashMap();

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    String f214 = "{}";

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    private c f213 = new c();

    static class c {

        /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
        Rect f222 = new Rect(0, 0, 0, 0);

        /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
        double f221 = 0.0d;

        /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
        double f223 = 0.0d;

        c() {
        }
    }

    static class a {

        /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
        final Rect f216;

        /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
        final View f217;

        a(View view, a aVar) {
            this.f217 = view;
            if (aVar == null) {
                this.f216 = u.m183(view);
                return;
            }
            int i = aVar.f216.left;
            int i2 = aVar.f216.top;
            int left = i + view.getLeft();
            int top = i2 + view.getTop();
            this.f216 = new Rect(left, top, view.getWidth() + left, view.getHeight() + top);
        }
    }

    u() {
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:159:0x02be. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:22:0x0046. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:43:0x008c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0279 A[Catch: Exception -> 0x03c0, PHI: r2
      0x0279: PHI (r2v288 android.app.Activity) = (r2v287 android.app.Activity), (r2v293 android.app.Activity) binds: [B:142:0x0276, B:26:0x0054] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #0 {Exception -> 0x03c0, blocks: (B:8:0x001a, B:15:0x0030, B:23:0x0049, B:26:0x0054, B:143:0x0279, B:28:0x0064, B:44:0x008f, B:47:0x0097, B:51:0x00a0, B:52:0x00a3, B:55:0x00ab, B:59:0x00b3, B:60:0x00b6, B:61:0x00bb, B:64:0x00e0, B:66:0x00e4, B:69:0x00f1, B:71:0x00f5, B:74:0x0102, B:76:0x0106, B:79:0x0125, B:80:0x0128, B:81:0x0132, B:84:0x0143, B:85:0x0146, B:91:0x015c, B:93:0x016a, B:96:0x0179, B:97:0x017c, B:100:0x01a6, B:106:0x01c7, B:109:0x01e7, B:112:0x01ef, B:113:0x01f2, B:116:0x0212, B:122:0x0228, B:125:0x0233, B:127:0x023b, B:134:0x025f, B:137:0x0266, B:238:0x03e5, B:241:0x0425, B:245:0x042d, B:249:0x0436, B:250:0x0439, B:251:0x043e, B:253:0x044b, B:252:0x0441, B:126:0x0236, B:115:0x01fc, B:108:0x01d1, B:233:0x03d0, B:236:0x03e0, B:99:0x018a, B:200:0x0346, B:203:0x0359, B:205:0x035e, B:208:0x036a, B:209:0x036d, B:210:0x0375, B:213:0x037e, B:215:0x0383, B:218:0x0390, B:219:0x0393, B:226:0x03b2, B:227:0x03b4, B:232:0x03cc, B:276:0x04d3, B:177:0x02f9, B:264:0x04a4, B:160:0x02c1, B:259:0x0497, B:262:0x049f, B:150:0x029e, B:139:0x026a, B:142:0x0276, B:27:0x0057), top: B:329:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x035e A[Catch: Exception -> 0x03c0, PHI: r5
      0x035e: PHI (r5v10 android.graphics.Rect) = (r5v9 android.graphics.Rect), (r5v12 android.graphics.Rect) binds: [B:279:0x04e5, B:203:0x0359] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {Exception -> 0x03c0, blocks: (B:8:0x001a, B:15:0x0030, B:23:0x0049, B:26:0x0054, B:143:0x0279, B:28:0x0064, B:44:0x008f, B:47:0x0097, B:51:0x00a0, B:52:0x00a3, B:55:0x00ab, B:59:0x00b3, B:60:0x00b6, B:61:0x00bb, B:64:0x00e0, B:66:0x00e4, B:69:0x00f1, B:71:0x00f5, B:74:0x0102, B:76:0x0106, B:79:0x0125, B:80:0x0128, B:81:0x0132, B:84:0x0143, B:85:0x0146, B:91:0x015c, B:93:0x016a, B:96:0x0179, B:97:0x017c, B:100:0x01a6, B:106:0x01c7, B:109:0x01e7, B:112:0x01ef, B:113:0x01f2, B:116:0x0212, B:122:0x0228, B:125:0x0233, B:127:0x023b, B:134:0x025f, B:137:0x0266, B:238:0x03e5, B:241:0x0425, B:245:0x042d, B:249:0x0436, B:250:0x0439, B:251:0x043e, B:253:0x044b, B:252:0x0441, B:126:0x0236, B:115:0x01fc, B:108:0x01d1, B:233:0x03d0, B:236:0x03e0, B:99:0x018a, B:200:0x0346, B:203:0x0359, B:205:0x035e, B:208:0x036a, B:209:0x036d, B:210:0x0375, B:213:0x037e, B:215:0x0383, B:218:0x0390, B:219:0x0393, B:226:0x03b2, B:227:0x03b4, B:232:0x03cc, B:276:0x04d3, B:177:0x02f9, B:264:0x04a4, B:160:0x02c1, B:259:0x0497, B:262:0x049f, B:150:0x029e, B:139:0x026a, B:142:0x0276, B:27:0x0057), top: B:329:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0057 A[Catch: Exception -> 0x03c0, FALL_THROUGH, TryCatch #0 {Exception -> 0x03c0, blocks: (B:8:0x001a, B:15:0x0030, B:23:0x0049, B:26:0x0054, B:143:0x0279, B:28:0x0064, B:44:0x008f, B:47:0x0097, B:51:0x00a0, B:52:0x00a3, B:55:0x00ab, B:59:0x00b3, B:60:0x00b6, B:61:0x00bb, B:64:0x00e0, B:66:0x00e4, B:69:0x00f1, B:71:0x00f5, B:74:0x0102, B:76:0x0106, B:79:0x0125, B:80:0x0128, B:81:0x0132, B:84:0x0143, B:85:0x0146, B:91:0x015c, B:93:0x016a, B:96:0x0179, B:97:0x017c, B:100:0x01a6, B:106:0x01c7, B:109:0x01e7, B:112:0x01ef, B:113:0x01f2, B:116:0x0212, B:122:0x0228, B:125:0x0233, B:127:0x023b, B:134:0x025f, B:137:0x0266, B:238:0x03e5, B:241:0x0425, B:245:0x042d, B:249:0x0436, B:250:0x0439, B:251:0x043e, B:253:0x044b, B:252:0x0441, B:126:0x0236, B:115:0x01fc, B:108:0x01d1, B:233:0x03d0, B:236:0x03e0, B:99:0x018a, B:200:0x0346, B:203:0x0359, B:205:0x035e, B:208:0x036a, B:209:0x036d, B:210:0x0375, B:213:0x037e, B:215:0x0383, B:218:0x0390, B:219:0x0393, B:226:0x03b2, B:227:0x03b4, B:232:0x03cc, B:276:0x04d3, B:177:0x02f9, B:264:0x04a4, B:160:0x02c1, B:259:0x0497, B:262:0x049f, B:150:0x029e, B:139:0x026a, B:142:0x0276, B:27:0x0057), top: B:329:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:311:0x0555  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x017c A[Catch: Exception -> 0x03c0, TryCatch #0 {Exception -> 0x03c0, blocks: (B:8:0x001a, B:15:0x0030, B:23:0x0049, B:26:0x0054, B:143:0x0279, B:28:0x0064, B:44:0x008f, B:47:0x0097, B:51:0x00a0, B:52:0x00a3, B:55:0x00ab, B:59:0x00b3, B:60:0x00b6, B:61:0x00bb, B:64:0x00e0, B:66:0x00e4, B:69:0x00f1, B:71:0x00f5, B:74:0x0102, B:76:0x0106, B:79:0x0125, B:80:0x0128, B:81:0x0132, B:84:0x0143, B:85:0x0146, B:91:0x015c, B:93:0x016a, B:96:0x0179, B:97:0x017c, B:100:0x01a6, B:106:0x01c7, B:109:0x01e7, B:112:0x01ef, B:113:0x01f2, B:116:0x0212, B:122:0x0228, B:125:0x0233, B:127:0x023b, B:134:0x025f, B:137:0x0266, B:238:0x03e5, B:241:0x0425, B:245:0x042d, B:249:0x0436, B:250:0x0439, B:251:0x043e, B:253:0x044b, B:252:0x0441, B:126:0x0236, B:115:0x01fc, B:108:0x01d1, B:233:0x03d0, B:236:0x03e0, B:99:0x018a, B:200:0x0346, B:203:0x0359, B:205:0x035e, B:208:0x036a, B:209:0x036d, B:210:0x0375, B:213:0x037e, B:215:0x0383, B:218:0x0390, B:219:0x0393, B:226:0x03b2, B:227:0x03b4, B:232:0x03cc, B:276:0x04d3, B:177:0x02f9, B:264:0x04a4, B:160:0x02c1, B:259:0x0497, B:262:0x049f, B:150:0x029e, B:139:0x026a, B:142:0x0276, B:27:0x0057), top: B:329:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x018a A[Catch: Exception -> 0x03c0, FALL_THROUGH, TryCatch #0 {Exception -> 0x03c0, blocks: (B:8:0x001a, B:15:0x0030, B:23:0x0049, B:26:0x0054, B:143:0x0279, B:28:0x0064, B:44:0x008f, B:47:0x0097, B:51:0x00a0, B:52:0x00a3, B:55:0x00ab, B:59:0x00b3, B:60:0x00b6, B:61:0x00bb, B:64:0x00e0, B:66:0x00e4, B:69:0x00f1, B:71:0x00f5, B:74:0x0102, B:76:0x0106, B:79:0x0125, B:80:0x0128, B:81:0x0132, B:84:0x0143, B:85:0x0146, B:91:0x015c, B:93:0x016a, B:96:0x0179, B:97:0x017c, B:100:0x01a6, B:106:0x01c7, B:109:0x01e7, B:112:0x01ef, B:113:0x01f2, B:116:0x0212, B:122:0x0228, B:125:0x0233, B:127:0x023b, B:134:0x025f, B:137:0x0266, B:238:0x03e5, B:241:0x0425, B:245:0x042d, B:249:0x0436, B:250:0x0439, B:251:0x043e, B:253:0x044b, B:252:0x0441, B:126:0x0236, B:115:0x01fc, B:108:0x01d1, B:233:0x03d0, B:236:0x03e0, B:99:0x018a, B:200:0x0346, B:203:0x0359, B:205:0x035e, B:208:0x036a, B:209:0x036d, B:210:0x0375, B:213:0x037e, B:215:0x0383, B:218:0x0390, B:219:0x0393, B:226:0x03b2, B:227:0x03b4, B:232:0x03cc, B:276:0x04d3, B:177:0x02f9, B:264:0x04a4, B:160:0x02c1, B:259:0x0497, B:262:0x049f, B:150:0x029e, B:139:0x026a, B:142:0x0276, B:27:0x0057), top: B:329:0x001a }] */
    /* JADX WARN: Type inference failed for: r2v116, types: [java.util.HashSet, java.util.Set<android.graphics.Rect>] */
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
    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void m185(java.lang.String r19, android.view.View r20) {
        /*
            Method dump skipped, instruction units count: 1728
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.cha.u.m185(java.lang.String, android.view.View):void");
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private static float m175(View view) {
        float alpha = view.getAlpha();
        while (true) {
            switch (view != null ? (char) 25 : 'E') {
                case 25:
                    switch (view.getParent() != null ? (char) 1 : (char) 0) {
                        case 1:
                            switch (((double) alpha) != 0.0d ? (char) 1 : (char) 0) {
                                case 1:
                                    switch (view.getParent() instanceof View ? (char) 27 : ']') {
                                        case 27:
                                            alpha *= ((View) view.getParent()).getAlpha();
                                            view = (View) view.getParent();
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        }
        return alpha;
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    static Rect m178(View view) {
        switch (view != null ? '+' : '>') {
            case '+':
                int i = f206 + 39;
                f205 = i % 128;
                switch (i % 2 != 0 ? (char) 0 : (char) 1) {
                    case 0:
                        return m183(view);
                    default:
                        return m183(view);
                }
            default:
                return new Rect(0, 0, 0, 0);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:100:0x0187. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:66:0x0118. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0126 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0144  */
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
    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void m184(com.moat.analytics.mobile.cha.u.a r10, android.graphics.Rect r11, com.moat.analytics.mobile.cha.u.b r12) {
        /*
            Method dump skipped, instruction units count: 564
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.cha.u.m184(com.moat.analytics.mobile.cha.u$a, android.graphics.Rect, com.moat.analytics.mobile.cha.u$b):void");
    }

    static class b {

        /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
        int f220 = 0;

        /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
        final Set<Rect> f219 = new HashSet();

        /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
        boolean f218 = false;

        b() {
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:79:0x010e. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:110:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00af A[Catch: Exception -> 0x0174, TryCatch #0 {Exception -> 0x0174, blocks: (B:3:0x0005, B:4:0x000d, B:15:0x0030, B:16:0x0038, B:36:0x0078, B:37:0x0081, B:40:0x0088, B:41:0x008b, B:44:0x009d, B:46:0x00a2, B:49:0x00ac, B:50:0x00af, B:53:0x00c0, B:55:0x00c5, B:58:0x00cc, B:59:0x00cf, B:63:0x00df, B:66:0x00e6, B:67:0x00e9, B:70:0x00f2, B:71:0x00f5, B:80:0x0111, B:83:0x011e, B:87:0x0126, B:88:0x0129, B:91:0x0136, B:92:0x0139, B:104:0x015e, B:94:0x013f, B:97:0x0146, B:98:0x0149, B:101:0x0157, B:137:0x01c8, B:62:0x00dc, B:128:0x01a9, B:31:0x0060, B:34:0x006d, B:35:0x0070, B:26:0x0055, B:29:0x005c, B:118:0x018a), top: B:167:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00c3 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00df A[Catch: Exception -> 0x0174, TryCatch #0 {Exception -> 0x0174, blocks: (B:3:0x0005, B:4:0x000d, B:15:0x0030, B:16:0x0038, B:36:0x0078, B:37:0x0081, B:40:0x0088, B:41:0x008b, B:44:0x009d, B:46:0x00a2, B:49:0x00ac, B:50:0x00af, B:53:0x00c0, B:55:0x00c5, B:58:0x00cc, B:59:0x00cf, B:63:0x00df, B:66:0x00e6, B:67:0x00e9, B:70:0x00f2, B:71:0x00f5, B:80:0x0111, B:83:0x011e, B:87:0x0126, B:88:0x0129, B:91:0x0136, B:92:0x0139, B:104:0x015e, B:94:0x013f, B:97:0x0146, B:98:0x0149, B:101:0x0157, B:137:0x01c8, B:62:0x00dc, B:128:0x01a9, B:31:0x0060, B:34:0x006d, B:35:0x0070, B:26:0x0055, B:29:0x005c, B:118:0x018a), top: B:167:0x0005 }] */
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
    @android.support.annotation.VisibleForTesting
    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.moat.analytics.mobile.cha.u.b m179(android.graphics.Rect r12, @android.support.annotation.NonNull android.view.View r13) {
        /*
            Method dump skipped, instruction units count: 714
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.cha.u.m179(android.graphics.Rect, android.view.View):com.moat.analytics.mobile.cha.u$b");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:217)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:68)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:282)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:65)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    @android.support.annotation.VisibleForTesting
    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private static int m176(android.graphics.Rect r14, java.util.Set<android.graphics.Rect> r15) {
        /*
            Method dump skipped, instruction units count: 344
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.cha.u.m176(android.graphics.Rect, java.util.HashSet):int");
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private static Map<String, String> m182(Rect rect) {
        HashMap map = new HashMap();
        map.put("x", String.valueOf(rect.left));
        map.put("y", String.valueOf(rect.top));
        map.put("w", String.valueOf(rect.right - rect.left));
        map.put("h", String.valueOf(rect.bottom - rect.top));
        return map;
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private static Rect m177(Rect rect, DisplayMetrics displayMetrics) {
        float f = displayMetrics.density;
        switch (f == 0.0f ? (char) 0 : (char) 1) {
            case 1:
                return new Rect(Math.round(rect.left / f), Math.round(rect.top / f), Math.round(rect.right / f), Math.round(rect.bottom / f));
            default:
                return rect;
        }
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private static boolean m180(View view, Rect rect) {
        switch (view.getGlobalVisibleRect(rect) ? 'Z' : (char) 1) {
            case 'Z':
                int[] iArr = {ExploreByTouchHelper.INVALID_ID, ExploreByTouchHelper.INVALID_ID};
                view.getLocationInWindow(iArr);
                int[] iArr2 = {ExploreByTouchHelper.INVALID_ID, ExploreByTouchHelper.INVALID_ID};
                view.getLocationOnScreen(iArr2);
                rect.offset(iArr2[0] - iArr[0], iArr2[1] - iArr[1]);
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    public static Rect m183(View view) {
        int[] iArr = {ExploreByTouchHelper.INVALID_ID, ExploreByTouchHelper.INVALID_ID};
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2);
    }
}
