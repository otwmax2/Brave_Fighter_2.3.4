package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import android.widget.RelativeLayout;
import com.facebook.ads.AdError;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.internal.q.c.d;
import com.facebook.ads.internal.view.e.c.d;
import com.facebook.internal.AnalyticsEvents;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class l extends u implements com.facebook.ads.internal.q.a.o<Bundle> {
    static final /* synthetic */ boolean e;

    @Nullable
    protected com.facebook.ads.internal.m.c a;

    @Nullable
    protected com.facebook.ads.internal.view.e.b b;

    @Nullable
    protected JSONObject c;

    @Nullable
    protected Context d;

    @Nullable
    private com.facebook.ads.a.a j;

    @Nullable
    private String k;

    @Nullable
    private com.facebook.ads.internal.view.e.d m;

    @Nullable
    private String n;
    private com.facebook.ads.internal.d.b p;
    private final com.facebook.ads.internal.j.f<com.facebook.ads.internal.view.e.b.b> f = new com.facebook.ads.internal.j.f<com.facebook.ads.internal.view.e.b.b>() { // from class: com.facebook.ads.internal.adapters.l.1
        @Override // com.facebook.ads.internal.j.f
        public Class<com.facebook.ads.internal.view.e.b.b> a() {
            return com.facebook.ads.internal.view.e.b.b.class;
        }

        @Override // com.facebook.ads.internal.j.f
        public void a(com.facebook.ads.internal.view.e.b.b bVar) {
            if (l.this.j == null) {
                return;
            }
            l.this.j.d(l.this);
        }
    };
    private final com.facebook.ads.internal.j.f<com.facebook.ads.internal.view.e.b.l> g = new com.facebook.ads.internal.j.f<com.facebook.ads.internal.view.e.b.l>() { // from class: com.facebook.ads.internal.adapters.l.2
        @Override // com.facebook.ads.internal.j.f
        public Class<com.facebook.ads.internal.view.e.b.l> a() {
            return com.facebook.ads.internal.view.e.b.l.class;
        }

        @Override // com.facebook.ads.internal.j.f
        public void a(com.facebook.ads.internal.view.e.b.l lVar) {
            l.this.l = true;
            if (l.this.j != null) {
                l.this.j.a(l.this);
            }
        }
    };
    private final com.facebook.ads.internal.j.f<com.facebook.ads.internal.view.e.b.d> h = new com.facebook.ads.internal.j.f<com.facebook.ads.internal.view.e.b.d>() { // from class: com.facebook.ads.internal.adapters.l.3
        @Override // com.facebook.ads.internal.j.f
        public Class<com.facebook.ads.internal.view.e.b.d> a() {
            return com.facebook.ads.internal.view.e.b.d.class;
        }

        @Override // com.facebook.ads.internal.j.f
        public void a(com.facebook.ads.internal.view.e.b.d dVar) {
            if (l.this.j == null) {
                return;
            }
            l.this.j.a(l.this, AdError.INTERNAL_ERROR);
        }
    };
    private final com.facebook.ads.internal.j.f<com.facebook.ads.internal.view.e.b.a> i = new com.facebook.ads.internal.j.f<com.facebook.ads.internal.view.e.b.a>() { // from class: com.facebook.ads.internal.adapters.l.4
        @Override // com.facebook.ads.internal.j.f
        public Class<com.facebook.ads.internal.view.e.b.a> a() {
            return com.facebook.ads.internal.view.e.b.a.class;
        }

        @Override // com.facebook.ads.internal.j.f
        public void a(com.facebook.ads.internal.view.e.b.a aVar) {
            if (l.this.j != null) {
                l.this.j.b(l.this);
            }
        }
    };
    private boolean l = false;
    private boolean o = false;

    static {
        e = !l.class.desiredAssertionStatus();
    }

    private void a(Context context, com.facebook.ads.a.a aVar, JSONObject jSONObject, com.facebook.ads.internal.m.c cVar, @Nullable Bundle bundle, EnumSet<CacheFlag> enumSet) throws JSONException {
        this.d = context;
        this.j = aVar;
        this.a = cVar;
        this.c = jSONObject;
        this.l = false;
        JSONObject jSONObject2 = jSONObject.getJSONObject(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
        this.n = jSONObject.optString("ct");
        this.b = new com.facebook.ads.internal.view.e.b(context);
        a();
        this.b.getEventBus().a(this.f, this.g, this.h, this.i);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.facebook.ads.internal.b.b(1.0E-7d, -1.0d, 0.001d, false) { // from class: com.facebook.ads.internal.adapters.l.5
            @Override // com.facebook.ads.internal.b.b
            protected void a(boolean z, boolean z2, com.facebook.ads.internal.b.c cVar2) {
                l.this.f();
            }
        });
        if (bundle != null) {
            this.m = new com.facebook.ads.internal.view.e.c(context, cVar, this.b, arrayList, this.n, bundle.getBundle("logger"));
        } else {
            this.m = new com.facebook.ads.internal.view.e.c(context, cVar, this.b, arrayList, this.n);
        }
        this.j.a(this, this.b);
        if (com.facebook.ads.internal.q.c.d.c(context) == d.a.MOBILE_INTERNET && jSONObject2.has("videoHDURL") && !jSONObject2.isNull("videoHDURL")) {
            this.k = jSONObject2.getString("videoHDURL");
        } else {
            this.k = jSONObject2.getString(AudienceNetworkActivity.VIDEO_URL);
        }
        if (!enumSet.contains(CacheFlag.VIDEO)) {
            this.b.setVideoURI(h());
            return;
        }
        this.p = new com.facebook.ads.internal.d.b(context);
        this.p.a(this.k);
        this.p.a(new com.facebook.ads.internal.d.a() { // from class: com.facebook.ads.internal.adapters.l.6
            @Override // com.facebook.ads.internal.d.a
            public void a() {
                l.this.b.setVideoURI(l.this.h());
            }

            @Override // com.facebook.ads.internal.d.a
            public void b() {
                l.this.b.setVideoURI(l.this.h());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String h() {
        String strB = "";
        if (this.p != null && this.k != null) {
            strB = this.p.b(this.k);
        }
        return TextUtils.isEmpty(strB) ? this.k : strB;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    protected void a() throws JSONException {
        if (!e && this.d == null) {
            throw new AssertionError();
        }
        if (!e && this.c == null) {
            throw new AssertionError();
        }
        JSONObject jSONObjectOptJSONObject = this.c.optJSONObject("text");
        JSONObject jSONObject = jSONObjectOptJSONObject == null ? new JSONObject() : jSONObjectOptJSONObject;
        this.b.a(new com.facebook.ads.internal.view.e.c.k(this.d));
        com.facebook.ads.internal.view.e.c.l lVar = new com.facebook.ads.internal.view.e.c.l(this.d);
        this.b.a(lVar);
        this.b.a(new com.facebook.ads.internal.view.e.c.d(lVar, d.a.INVSIBLE));
        this.b.a(new com.facebook.ads.internal.view.e.c.b(this.d));
        String strB = b();
        if (strB != null) {
            com.facebook.ads.internal.view.e.c.c cVar = new com.facebook.ads.internal.view.e.c.c(this.d, strB);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(12);
            layoutParams.addRule(9);
            cVar.setLayoutParams(layoutParams);
            cVar.setCountdownTextColor(-1);
            this.b.a(cVar);
        }
        if (this.c.has("cta") && !this.c.isNull("cta")) {
            JSONObject jSONObject2 = this.c.getJSONObject("cta");
            com.facebook.ads.internal.view.e.c.e eVar = new com.facebook.ads.internal.view.e.c.e(this.d, jSONObject2.getString("url"), this.a, this.n, jSONObject2.getString("text"));
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(10);
            layoutParams2.addRule(11);
            eVar.setLayoutParams(layoutParams2);
            this.b.a(eVar);
        }
        String strD = d();
        if (!TextUtils.isEmpty(strD)) {
            this.b.a(new com.facebook.ads.internal.view.e.c.a(this.d, strD, this.n, new float[]{0.0f, 0.0f, 8.0f, 0.0f}));
        }
        int iC = c();
        if (iC > 0) {
            com.facebook.ads.internal.view.e.c.i iVar = new com.facebook.ads.internal.view.e.c.i(this.d, iC, jSONObject.optString("skipAdIn", "Skip Ad in"), jSONObject.optString("skipAd", "Skip Ad"));
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams3.addRule(12);
            layoutParams3.addRule(11);
            iVar.setLayoutParams(layoutParams3);
            iVar.setPadding(0, 0, 0, 30);
            this.b.a(iVar);
        }
    }

    public final void a(Context context, com.facebook.ads.a.a aVar, com.facebook.ads.internal.m.c cVar, Bundle bundle, EnumSet<CacheFlag> enumSet) {
        try {
            a(context, aVar, new JSONObject(bundle.getString("ad_response")), cVar, bundle, enumSet);
        } catch (JSONException e2) {
            aVar.a(this, AdError.INTERNAL_ERROR);
        }
    }

    @Override // com.facebook.ads.internal.adapters.u
    public final void a(Context context, com.facebook.ads.a.a aVar, Map<String, Object> map, com.facebook.ads.internal.m.c cVar, EnumSet<CacheFlag> enumSet) {
        try {
            a(context, aVar, (JSONObject) map.get("data"), cVar, null, enumSet);
        } catch (JSONException e2) {
            aVar.a(this, AdError.INTERNAL_ERROR);
        }
    }

    protected String b() {
        if (!e && this.c == null) {
            throw new AssertionError();
        }
        try {
            JSONObject jSONObject = this.c.getJSONObject("capabilities");
            if (!jSONObject.has("countdown") || jSONObject.isNull("countdown")) {
                return null;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("countdown");
            if (jSONObject2.has("format")) {
                return jSONObject2.optString("format");
            }
            return null;
        } catch (Exception e2) {
            Log.w(String.valueOf(l.class), "Invalid JSON", e2);
            return null;
        }
    }

    protected int c() {
        if (!e && this.c == null) {
            throw new AssertionError();
        }
        try {
            JSONObject jSONObject = this.c.getJSONObject("capabilities");
            if (!jSONObject.has("skipButton") || jSONObject.isNull("skipButton")) {
                return -1;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("skipButton");
            if (jSONObject2.has("skippableSeconds")) {
                return jSONObject2.getInt("skippableSeconds");
            }
            return -1;
        } catch (Exception e2) {
            Log.w(String.valueOf(l.class), "Invalid JSON", e2);
            return -1;
        }
    }

    @Nullable
    protected String d() {
        if (!e && this.c == null) {
            throw new AssertionError();
        }
        try {
            JSONObject jSONObject = this.c.getJSONObject("capabilities");
            if (!jSONObject.has("adChoices") || jSONObject.isNull("adChoices")) {
                return null;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("adChoices");
            if (jSONObject2.has("url")) {
                return jSONObject2.getString("url");
            }
            return null;
        } catch (Exception e2) {
            Log.w(String.valueOf(l.class), "Invalid JSON", e2);
            return null;
        }
    }

    @Override // com.facebook.ads.internal.adapters.u
    public boolean e() {
        if (!this.l || this.b == null) {
            return false;
        }
        if (this.m.l() > 0) {
            this.b.a(this.m.l());
        }
        this.b.a(com.facebook.ads.internal.view.e.a.a.AUTO_STARTED);
        return true;
    }

    protected void f() {
        if (this.a == null || this.o) {
            return;
        }
        this.o = true;
        this.a.a(this.n, new HashMap());
        if (this.j != null) {
            this.j.c(this);
        }
    }

    @Override // com.facebook.ads.internal.q.a.o
    public Bundle g() {
        if (this.m == null || this.c == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putBundle("logger", this.m.g());
        bundle.putString("ad_response", this.c.toString());
        return bundle;
    }

    @Override // com.facebook.ads.internal.adapters.AdAdapter
    public void onDestroy() {
        if (this.b != null) {
            this.b.f();
            this.b.k();
        }
        this.j = null;
        this.a = null;
        this.k = null;
        this.l = false;
        this.n = null;
        this.b = null;
        this.m = null;
        this.c = null;
        this.d = null;
        this.o = false;
    }
}
