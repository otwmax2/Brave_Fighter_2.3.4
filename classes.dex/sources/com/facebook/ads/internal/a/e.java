package com.facebook.ads.internal.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.internal.j.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class e extends a {
    private static final String d = e.class.getSimpleName();
    private final Uri e;
    private final Map<String, String> f;

    public e(Context context, com.facebook.ads.internal.m.c cVar, String str, Uri uri, Map<String, String> map) {
        super(context, cVar, str);
        this.e = uri;
        this.f = map;
    }

    private Intent a(f fVar) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        if (!TextUtils.isEmpty(fVar.a()) && !TextUtils.isEmpty(fVar.b())) {
            intent.setComponent(new ComponentName(fVar.a(), fVar.b()));
        }
        if (!TextUtils.isEmpty(fVar.c())) {
            intent.setData(Uri.parse(fVar.c()));
        }
        return intent;
    }

    private Intent b(f fVar) {
        if (!TextUtils.isEmpty(fVar.a()) && d.a(this.a, fVar.a())) {
            String strC = fVar.c();
            if (!TextUtils.isEmpty(strC) && (strC.startsWith("tel:") || strC.startsWith("telprompt:"))) {
                return new Intent("android.intent.action.CALL", Uri.parse(strC));
            }
            PackageManager packageManager = this.a.getPackageManager();
            if (TextUtils.isEmpty(fVar.b()) && TextUtils.isEmpty(strC)) {
                return packageManager.getLaunchIntentForPackage(fVar.a());
            }
            Intent intentA = a(fVar);
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intentA, 65536);
            if (intentA.getComponent() == null) {
                Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    ResolveInfo next = it.next();
                    if (next.activityInfo.packageName.equals(fVar.a())) {
                        intentA.setComponent(new ComponentName(next.activityInfo.packageName, next.activityInfo.name));
                        break;
                    }
                }
            }
            if (listQueryIntentActivities.isEmpty() || intentA.getComponent() == null) {
                return null;
            }
            return intentA;
        }
        return null;
    }

    private List<f> e() {
        String queryParameter = this.e.getQueryParameter("appsite_data");
        if (TextUtils.isEmpty(queryParameter) || "[]".equals(queryParameter)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArrayOptJSONArray = new JSONObject(queryParameter).optJSONArray("android");
            if (jSONArrayOptJSONArray == null) {
                return arrayList;
            }
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                f fVarA = f.a(jSONArrayOptJSONArray.optJSONObject(i));
                if (fVarA != null) {
                    arrayList.add(fVarA);
                }
            }
            return arrayList;
        } catch (JSONException e) {
            Log.w(d, "Error parsing appsite_data", e);
            return arrayList;
        }
    }

    private boolean f() {
        List<Intent> listD = d();
        if (listD == null) {
            return false;
        }
        Iterator<Intent> it = listD.iterator();
        while (it.hasNext()) {
            try {
                this.a.startActivity(it.next());
                return true;
            } catch (Exception e) {
                Log.d(d, "Failed to open app intent, falling back", e);
            }
        }
        return false;
    }

    private boolean g() {
        com.facebook.ads.internal.q.c.g gVar = new com.facebook.ads.internal.q.c.g();
        try {
            com.facebook.ads.internal.q.c.g.a(gVar, this.a, c(), this.c);
            return true;
        } catch (Exception e) {
            Log.d(d, "Failed to open market url: " + this.e.toString(), e);
            String queryParameter = this.e.getQueryParameter("store_url_web_fallback");
            if (queryParameter != null && queryParameter.length() > 0) {
                try {
                    com.facebook.ads.internal.q.c.g.a(gVar, this.a, Uri.parse(queryParameter), this.c);
                } catch (Exception e2) {
                    Log.d(d, "Failed to open fallback url: " + queryParameter, e2);
                }
            }
            return false;
        }
    }

    @Override // com.facebook.ads.internal.a.a
    public a.EnumC0013a a() {
        return a.EnumC0013a.OPEN_STORE;
    }

    @Override // com.facebook.ads.internal.a.a
    public void b() {
        this.f.put(f() ? "opened_deeplink" : g() ? "opened_store_url" : "opened_store_fallback_url", String.valueOf(true));
        a(this.f);
    }

    protected Uri c() {
        String queryParameter = this.e.getQueryParameter("store_url");
        return !TextUtils.isEmpty(queryParameter) ? Uri.parse(queryParameter) : Uri.parse(String.format("market://details?id=%s", this.e.getQueryParameter("store_id")));
    }

    protected List<Intent> d() {
        List<f> listE = e();
        ArrayList arrayList = new ArrayList();
        if (listE != null) {
            Iterator<f> it = listE.iterator();
            while (it.hasNext()) {
                Intent intentB = b(it.next());
                if (intentB != null) {
                    arrayList.add(intentB);
                }
            }
        }
        return arrayList;
    }
}
