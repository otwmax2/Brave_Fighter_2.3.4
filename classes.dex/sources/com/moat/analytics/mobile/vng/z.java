package com.moat.analytics.mobile.vng;

import android.app.Activity;
import android.graphics.Rect;
import android.location.Location;
import android.os.Build;
import android.support.annotation.VisibleForTesting;
import android.support.v4.widget.ExploreByTouchHelper;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import com.ironsource.eventsmodule.DataBaseEventsStorage;
import com.ironsource.sdk.constants.LocationConst;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class z {
    private JSONObject c;
    private Rect d;
    private Rect e;
    private JSONObject f;
    private JSONObject g;
    private Location h;
    private Map<String, Object> i = new HashMap();
    String a = "{}";
    private a b = new a();

    private static class a {
        Rect a = new Rect(0, 0, 0, 0);
        double b = 0.0d;
        double c = 0.0d;

        a() {
        }
    }

    z() {
    }

    @VisibleForTesting
    static int a(Rect rect, Set<Rect> set) {
        if (set.isEmpty()) {
            return 0;
        }
        ArrayList<Rect> arrayList = new ArrayList();
        arrayList.addAll(set);
        Collections.sort(arrayList, new Comparator<Rect>() { // from class: com.moat.analytics.mobile.vng.z.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(Rect rect2, Rect rect3) {
                return Integer.valueOf(rect2.top).compareTo(Integer.valueOf(rect3.top));
            }
        });
        ArrayList arrayList2 = new ArrayList();
        for (Rect rect2 : arrayList) {
            arrayList2.add(Integer.valueOf(rect2.left));
            arrayList2.add(Integer.valueOf(rect2.right));
        }
        Collections.sort(arrayList2);
        int i = 0;
        for (int i2 = 0; i2 < arrayList2.size() - 1; i2++) {
            if (!((Integer) arrayList2.get(i2)).equals(arrayList2.get(i2 + 1))) {
                Rect rect3 = new Rect(((Integer) arrayList2.get(i2)).intValue(), rect.top, ((Integer) arrayList2.get(i2 + 1)).intValue(), rect.bottom);
                int i3 = rect.top;
                Iterator it = arrayList.iterator();
                while (true) {
                    int iMax = i;
                    int i4 = i3;
                    if (!it.hasNext()) {
                        i = iMax;
                        break;
                    }
                    Rect rect4 = (Rect) it.next();
                    if (Rect.intersects(rect4, rect3)) {
                        if (rect4.bottom > i4) {
                            iMax += (rect4.bottom - Math.max(i4, rect4.top)) * rect3.width();
                            i4 = rect4.bottom;
                        }
                        if (rect4.bottom == rect3.bottom) {
                            i = iMax;
                            break;
                        }
                    }
                    i3 = i4;
                    i = iMax;
                }
            }
        }
        return i;
    }

    private static Rect a(DisplayMetrics displayMetrics) {
        return new Rect(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    static Rect a(View view) {
        return view != null ? h(view) : new Rect(0, 0, 0, 0);
    }

    private static a a(View view, Rect rect, boolean z, boolean z2, boolean z3) {
        a aVar = new a();
        int iB = b(rect);
        if (view != null && z && z2 && !z3 && iB > 0) {
            Rect rect2 = new Rect(0, 0, 0, 0);
            if (view.getGlobalVisibleRect(rect2)) {
                int iB2 = b(rect2);
                if (iB2 < iB) {
                    p.b(2, "VisibilityInfo", null, "Ad is clipped");
                }
                HashSet hashSet = new HashSet();
                if (view.getRootView() instanceof ViewGroup) {
                    aVar.a = rect2;
                    boolean zA = a(rect2, view, hashSet);
                    if (zA) {
                        aVar.c = 1.0d;
                    }
                    if (!zA) {
                        int iA = a(rect2, hashSet);
                        if (iA > 0) {
                            aVar.c = ((double) iA) / (((double) iB2) * 1.0d);
                        }
                        aVar.b = ((double) (iB2 - iA)) / (((double) iB) * 1.0d);
                    }
                }
            }
        }
        return aVar;
    }

    private static Map<String, String> a(Rect rect) {
        HashMap map = new HashMap();
        map.put("x", String.valueOf(rect.left));
        map.put("y", String.valueOf(rect.top));
        map.put("w", String.valueOf(rect.right - rect.left));
        map.put("h", String.valueOf(rect.bottom - rect.top));
        return map;
    }

    private static Map<String, String> a(Rect rect, DisplayMetrics displayMetrics) {
        return a(b(rect, displayMetrics));
    }

    private static JSONObject a(Location location) {
        Map<String, String> mapB = b(location);
        if (mapB == null) {
            return null;
        }
        return new JSONObject(mapB);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ce  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean a(android.graphics.Rect r11, android.view.View r12, java.util.Set<android.graphics.Rect> r13) {
        /*
            Method dump skipped, instruction units count: 208
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.vng.z.a(android.graphics.Rect, android.view.View, java.util.Set):boolean");
    }

    private static int b(Rect rect) {
        return rect.width() * rect.height();
    }

    private static Rect b(Rect rect, DisplayMetrics displayMetrics) {
        float f = displayMetrics.density;
        if (f == 0.0f) {
            return rect;
        }
        return new Rect(Math.round(rect.left / f), Math.round(rect.top / f), Math.round(rect.right / f), Math.round(rect.bottom / f));
    }

    private static Map<String, String> b(Location location) {
        if (location == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put(LocationConst.LATITUDE, Double.toString(location.getLatitude()));
        map.put(LocationConst.LONGITUDE, Double.toString(location.getLongitude()));
        map.put(DataBaseEventsStorage.EventEntry.COLUMN_NAME_TIMESTAMP, Long.toString(location.getTime()));
        map.put("horizontalAccuracy", Float.toString(location.getAccuracy()));
        return map;
    }

    private static boolean b(View view) {
        return Build.VERSION.SDK_INT >= 19 ? view != null && view.isAttachedToWindow() : (view == null || view.getWindowToken() == null) ? false : true;
    }

    private static boolean c(View view) {
        return view != null && view.hasWindowFocus();
    }

    private static boolean d(View view) {
        return view == null || !view.isShown();
    }

    private static float e(View view) {
        if (view == null) {
            return 0.0f;
        }
        return f(view);
    }

    private static float f(View view) {
        float alpha = view.getAlpha();
        while (view != null && view.getParent() != null && alpha != 0.0d && (view.getParent() instanceof View)) {
            alpha *= ((View) view.getParent()).getAlpha();
            view = (View) view.getParent();
        }
        return alpha;
    }

    private static boolean g(View view) {
        return view.isShown() && ((double) view.getAlpha()) > 0.0d;
    }

    private static Rect h(View view) {
        int[] iArr = {ExploreByTouchHelper.INVALID_ID, ExploreByTouchHelper.INVALID_ID};
        view.getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2);
    }

    private static DisplayMetrics i(View view) {
        Activity activity;
        if (Build.VERSION.SDK_INT < 17 || com.moat.analytics.mobile.vng.a.a == null || (activity = com.moat.analytics.mobile.vng.a.a.get()) == null) {
            return view.getContext().getResources().getDisplayMetrics();
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics;
    }

    void a(String str, View view) {
        HashMap map = new HashMap();
        boolean z = false;
        if (view != null) {
            try {
                DisplayMetrics displayMetricsI = i(view);
                boolean zB = b(view);
                boolean zC = c(view);
                boolean zD = d(view);
                float fE = e(view);
                map.put("dr", Float.valueOf(displayMetricsI.density));
                map.put("dv", Double.valueOf(s.a()));
                map.put("adKey", str);
                map.put("isAttached", Integer.valueOf(zB ? 1 : 0));
                map.put("inFocus", Integer.valueOf(zC ? 1 : 0));
                map.put("isHidden", Integer.valueOf(zD ? 1 : 0));
                map.put("opacity", Float.valueOf(fE));
                Rect rectA = a(displayMetricsI);
                Rect rectA2 = a(view);
                a aVarA = a(view, rectA2, zB, zC, zD);
                if (this.c == null || aVarA.b != this.b.b || !aVarA.a.equals(this.b.a) || aVarA.c != this.b.c) {
                    this.b = aVarA;
                    this.c = new JSONObject(a(this.b.a, displayMetricsI));
                    z = true;
                }
                map.put("coveredPercent", Double.valueOf(aVarA.c));
                if (this.g == null || !rectA.equals(this.e)) {
                    this.e = rectA;
                    this.g = new JSONObject(a(rectA, displayMetricsI));
                    z = true;
                }
                if (this.f == null || !rectA2.equals(this.d)) {
                    this.d = rectA2;
                    this.f = new JSONObject(a(rectA2, displayMetricsI));
                    z = true;
                }
                if (this.i == null || !map.equals(this.i)) {
                    this.i = map;
                    z = true;
                }
                Location locationB = o.a().b();
                if (!o.a(locationB, this.h)) {
                    z = true;
                    this.h = locationB;
                }
                if (!z) {
                    String str2 = this.a;
                    return;
                }
                JSONObject jSONObject = new JSONObject(this.i);
                jSONObject.accumulate("screen", this.g);
                jSONObject.accumulate("view", this.f);
                jSONObject.accumulate("visible", this.c);
                jSONObject.accumulate("maybe", this.c);
                jSONObject.accumulate("visiblePercent", Double.valueOf(this.b.b));
                if (locationB != null) {
                    jSONObject.accumulate("location", a(locationB));
                }
                this.a = jSONObject.toString();
            } catch (Exception e) {
                m.a(e);
                this.a = "{}";
            }
        }
    }
}
