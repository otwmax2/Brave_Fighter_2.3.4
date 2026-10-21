package com.moat.analytics.mobile.iro;

import android.graphics.Rect;
import android.location.Location;
import android.support.v4.widget.ExploreByTouchHelper;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class y {

    /* JADX INFO: renamed from: ˊॱ, reason: contains not printable characters */
    private static int f428 = 0;

    /* JADX INFO: renamed from: ˏॱ, reason: contains not printable characters */
    private static int f429 = 1;

    /* JADX INFO: renamed from: ʻ, reason: contains not printable characters */
    private Location f430;

    /* JADX INFO: renamed from: ʽ, reason: contains not printable characters */
    private JSONObject f432;

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private Rect f434;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    private JSONObject f436;

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private Rect f437;

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    private JSONObject f438;

    /* JADX INFO: renamed from: ʼ, reason: contains not printable characters */
    private Map<String, Object> f431 = new HashMap();

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    String f435 = "{}";

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private a f433 = new a();

    static class a {

        /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
        Rect f439 = new Rect(0, 0, 0, 0);

        /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
        double f440 = 0.0d;

        /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
        double f441 = 0.0d;

        a() {
        }
    }

    static class b {

        /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
        final View f442;

        /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
        final boolean f443;

        /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
        final int f444;

        b(View view, int i, boolean z) {
            this.f442 = view;
            this.f444 = i;
            this.f443 = z;
        }
    }

    y() {
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:146:0x029b. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:170:0x02f1. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:223:0x03c4. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0026 A[Catch: Exception -> 0x0270, FALL_THROUGH, TryCatch #0 {Exception -> 0x0270, blocks: (B:9:0x001c, B:12:0x0023, B:13:0x0026, B:14:0x0033, B:17:0x003a, B:20:0x0041, B:21:0x0044, B:40:0x0076, B:43:0x009a, B:45:0x009e, B:48:0x00aa, B:50:0x00ae, B:53:0x00ba, B:55:0x00be, B:58:0x00dc, B:59:0x00df, B:60:0x00e4, B:85:0x013a, B:88:0x014c, B:188:0x0334, B:191:0x0340, B:192:0x0343, B:199:0x0363, B:202:0x036f, B:203:0x0372, B:206:0x037c, B:208:0x0381, B:211:0x0389, B:212:0x038c, B:221:0x03bf, B:216:0x03a4, B:186:0x032f, B:89:0x014f, B:92:0x0156, B:93:0x0159, B:94:0x0175, B:102:0x019a, B:105:0x01ba, B:108:0x01c1, B:109:0x01c4, B:110:0x01da, B:113:0x01e1, B:114:0x01e4, B:115:0x01e9, B:122:0x020c, B:246:0x0425, B:129:0x0224, B:132:0x0263, B:133:0x0266, B:260:0x0456, B:263:0x0498, B:261:0x045b, B:241:0x0414, B:244:0x041f, B:288:0x04fd, B:238:0x0408, B:235:0x03fc, B:104:0x01a4, B:223:0x03c4, B:224:0x03c7, B:227:0x03d6, B:228:0x03d9, B:231:0x03e9, B:232:0x03ec, B:280:0x04dc, B:183:0x031f, B:176:0x0303, B:170:0x02f1, B:171:0x02f4, B:174:0x02fc, B:272:0x04bf, B:163:0x02df, B:166:0x02e6, B:154:0x02c4, B:156:0x02cb, B:159:0x02d3, B:139:0x0286, B:147:0x029e, B:150:0x02aa, B:151:0x02ad, B:264:0x049e), top: B:339:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02ad A[Catch: Exception -> 0x0270, PHI: r2
      0x02ad: PHI (r2v23 android.app.Activity) = (r2v22 android.app.Activity), (r2v28 android.app.Activity) binds: [B:267:0x04aa, B:150:0x02aa] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {Exception -> 0x0270, blocks: (B:9:0x001c, B:12:0x0023, B:13:0x0026, B:14:0x0033, B:17:0x003a, B:20:0x0041, B:21:0x0044, B:40:0x0076, B:43:0x009a, B:45:0x009e, B:48:0x00aa, B:50:0x00ae, B:53:0x00ba, B:55:0x00be, B:58:0x00dc, B:59:0x00df, B:60:0x00e4, B:85:0x013a, B:88:0x014c, B:188:0x0334, B:191:0x0340, B:192:0x0343, B:199:0x0363, B:202:0x036f, B:203:0x0372, B:206:0x037c, B:208:0x0381, B:211:0x0389, B:212:0x038c, B:221:0x03bf, B:216:0x03a4, B:186:0x032f, B:89:0x014f, B:92:0x0156, B:93:0x0159, B:94:0x0175, B:102:0x019a, B:105:0x01ba, B:108:0x01c1, B:109:0x01c4, B:110:0x01da, B:113:0x01e1, B:114:0x01e4, B:115:0x01e9, B:122:0x020c, B:246:0x0425, B:129:0x0224, B:132:0x0263, B:133:0x0266, B:260:0x0456, B:263:0x0498, B:261:0x045b, B:241:0x0414, B:244:0x041f, B:288:0x04fd, B:238:0x0408, B:235:0x03fc, B:104:0x01a4, B:223:0x03c4, B:224:0x03c7, B:227:0x03d6, B:228:0x03d9, B:231:0x03e9, B:232:0x03ec, B:280:0x04dc, B:183:0x031f, B:176:0x0303, B:170:0x02f1, B:171:0x02f4, B:174:0x02fc, B:272:0x04bf, B:163:0x02df, B:166:0x02e6, B:154:0x02c4, B:156:0x02cb, B:159:0x02d3, B:139:0x0286, B:147:0x029e, B:150:0x02aa, B:151:0x02ad, B:264:0x049e), top: B:339:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x03d9 A[Catch: Exception -> 0x0270, TryCatch #0 {Exception -> 0x0270, blocks: (B:9:0x001c, B:12:0x0023, B:13:0x0026, B:14:0x0033, B:17:0x003a, B:20:0x0041, B:21:0x0044, B:40:0x0076, B:43:0x009a, B:45:0x009e, B:48:0x00aa, B:50:0x00ae, B:53:0x00ba, B:55:0x00be, B:58:0x00dc, B:59:0x00df, B:60:0x00e4, B:85:0x013a, B:88:0x014c, B:188:0x0334, B:191:0x0340, B:192:0x0343, B:199:0x0363, B:202:0x036f, B:203:0x0372, B:206:0x037c, B:208:0x0381, B:211:0x0389, B:212:0x038c, B:221:0x03bf, B:216:0x03a4, B:186:0x032f, B:89:0x014f, B:92:0x0156, B:93:0x0159, B:94:0x0175, B:102:0x019a, B:105:0x01ba, B:108:0x01c1, B:109:0x01c4, B:110:0x01da, B:113:0x01e1, B:114:0x01e4, B:115:0x01e9, B:122:0x020c, B:246:0x0425, B:129:0x0224, B:132:0x0263, B:133:0x0266, B:260:0x0456, B:263:0x0498, B:261:0x045b, B:241:0x0414, B:244:0x041f, B:288:0x04fd, B:238:0x0408, B:235:0x03fc, B:104:0x01a4, B:223:0x03c4, B:224:0x03c7, B:227:0x03d6, B:228:0x03d9, B:231:0x03e9, B:232:0x03ec, B:280:0x04dc, B:183:0x031f, B:176:0x0303, B:170:0x02f1, B:171:0x02f4, B:174:0x02fc, B:272:0x04bf, B:163:0x02df, B:166:0x02e6, B:154:0x02c4, B:156:0x02cb, B:159:0x02d3, B:139:0x0286, B:147:0x029e, B:150:0x02aa, B:151:0x02ad, B:264:0x049e), top: B:339:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:311:0x054f  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0159 A[Catch: Exception -> 0x0270, FALL_THROUGH, TryCatch #0 {Exception -> 0x0270, blocks: (B:9:0x001c, B:12:0x0023, B:13:0x0026, B:14:0x0033, B:17:0x003a, B:20:0x0041, B:21:0x0044, B:40:0x0076, B:43:0x009a, B:45:0x009e, B:48:0x00aa, B:50:0x00ae, B:53:0x00ba, B:55:0x00be, B:58:0x00dc, B:59:0x00df, B:60:0x00e4, B:85:0x013a, B:88:0x014c, B:188:0x0334, B:191:0x0340, B:192:0x0343, B:199:0x0363, B:202:0x036f, B:203:0x0372, B:206:0x037c, B:208:0x0381, B:211:0x0389, B:212:0x038c, B:221:0x03bf, B:216:0x03a4, B:186:0x032f, B:89:0x014f, B:92:0x0156, B:93:0x0159, B:94:0x0175, B:102:0x019a, B:105:0x01ba, B:108:0x01c1, B:109:0x01c4, B:110:0x01da, B:113:0x01e1, B:114:0x01e4, B:115:0x01e9, B:122:0x020c, B:246:0x0425, B:129:0x0224, B:132:0x0263, B:133:0x0266, B:260:0x0456, B:263:0x0498, B:261:0x045b, B:241:0x0414, B:244:0x041f, B:288:0x04fd, B:238:0x0408, B:235:0x03fc, B:104:0x01a4, B:223:0x03c4, B:224:0x03c7, B:227:0x03d6, B:228:0x03d9, B:231:0x03e9, B:232:0x03ec, B:280:0x04dc, B:183:0x031f, B:176:0x0303, B:170:0x02f1, B:171:0x02f4, B:174:0x02fc, B:272:0x04bf, B:163:0x02df, B:166:0x02e6, B:154:0x02c4, B:156:0x02cb, B:159:0x02d3, B:139:0x0286, B:147:0x029e, B:150:0x02aa, B:151:0x02ad, B:264:0x049e), top: B:339:0x001c }] */
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
    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void m364(java.lang.String r19, android.view.View r20) {
        /*
            Method dump skipped, instruction units count: 1754
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.iro.y.m364(java.lang.String, android.view.View):void");
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private static float m356(View view) {
        float alpha = view.getAlpha();
        while (true) {
            switch (view != null ? 'S' : 'c') {
                case 'S':
                    switch (view.getParent() != null ? '\r' : (char) 18) {
                        case 18:
                            break;
                        default:
                            switch (((double) alpha) != 0.0d ? 'D' : (char) 5) {
                                case 5:
                                    break;
                                default:
                                    int i = f428 + 121;
                                    f429 = i % 128;
                                    if (i % 2 == 0) {
                                    }
                                    switch (view.getParent() instanceof View ? 'H' : (char) 1) {
                                        case 'H':
                                            int i2 = f428 + 117;
                                            f429 = i2 % 128;
                                            if (i2 % 2 == 0) {
                                            }
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

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    static Rect m359(View view) {
        switch (view != null ? '\n' : 'Z') {
            case 'Z':
                return new Rect(0, 0, 0, 0);
            default:
                return m362(view);
        }
    }

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    private static void m360(ArrayDeque<b> arrayDeque, b bVar, boolean z) {
        switch (bVar.f442 instanceof ViewGroup ? '?' : '/') {
            case '/':
                break;
            default:
                int i = f429 + 107;
                f428 = i % 128;
                if (i % 2 != 0) {
                }
                switch (!(bVar.f442 instanceof ListView) ? (char) 1 : (char) 0) {
                    case 1:
                        ViewGroup viewGroup = (ViewGroup) bVar.f442;
                        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                            arrayDeque.add(new b(viewGroup.getChildAt(childCount), bVar.f444 + 1, z));
                        }
                        break;
                }
                break;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:177:0x02b9. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:189:0x02e3. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0013. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0262 A[Catch: Exception -> 0x02a6, TRY_LEAVE, TryCatch #0 {Exception -> 0x02a6, blocks: (B:3:0x0002, B:4:0x000b, B:24:0x004c, B:27:0x0053, B:48:0x0098, B:49:0x00b7, B:61:0x00dc, B:64:0x00f0, B:65:0x00f3, B:68:0x00f8, B:69:0x00fb, B:77:0x0125, B:80:0x012d, B:81:0x0130, B:89:0x014d, B:200:0x0303, B:159:0x024a, B:162:0x0251, B:164:0x0256, B:166:0x0262, B:98:0x0178, B:101:0x0181, B:102:0x0184, B:103:0x018d, B:106:0x0192, B:107:0x0195, B:109:0x019f, B:127:0x01d8, B:130:0x01e0, B:131:0x01e3, B:195:0x02f7, B:198:0x02fe, B:140:0x0207, B:149:0x0222, B:152:0x0231, B:154:0x0236, B:157:0x0245, B:134:0x01f4, B:137:0x0201, B:190:0x02e6, B:193:0x02f2, B:97:0x016d, B:44:0x008e, B:47:0x0095, B:35:0x0064, B:43:0x0085, B:184:0x02cc, B:30:0x0058, B:33:0x005f, B:178:0x02bc, B:181:0x02c3), top: B:251:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:229:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0375  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0256 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:268:0x01f1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:271:0x015d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:281:0x00fb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x013c  */
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
    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean m361(android.graphics.Rect r15, @android.support.annotation.NonNull android.view.View r16, java.util.Set<android.graphics.Rect> r17) {
        /*
            Method dump skipped, instruction units count: 1200
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.iro.y.m361(android.graphics.Rect, android.view.View, java.util.HashSet):boolean");
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
    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private static int m357(android.graphics.Rect r14, java.util.Set<android.graphics.Rect> r15) {
        /*
            Method dump skipped, instruction units count: 304
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.iro.y.m357(android.graphics.Rect, java.util.HashSet):int");
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private static Map<String, String> m363(Rect rect) {
        HashMap map = new HashMap();
        map.put("x", String.valueOf(rect.left));
        map.put("y", String.valueOf(rect.top));
        map.put("w", String.valueOf(rect.right - rect.left));
        map.put("h", String.valueOf(rect.bottom - rect.top));
        return map;
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private static Rect m358(Rect rect, DisplayMetrics displayMetrics) {
        float f = displayMetrics.density;
        switch (f == 0.0f ? (char) 0 : (char) 1) {
            case 1:
                return new Rect(Math.round(rect.left / f), Math.round(rect.top / f), Math.round(rect.right / f), Math.round(rect.bottom / f));
            default:
                return rect;
        }
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private static Rect m362(View view) {
        int[] iArr = {ExploreByTouchHelper.INVALID_ID, ExploreByTouchHelper.INVALID_ID};
        view.getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2);
    }
}
