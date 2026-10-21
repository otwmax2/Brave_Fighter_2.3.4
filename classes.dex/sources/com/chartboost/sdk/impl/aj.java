package com.chartboost.sdk.impl;

import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.d;
import com.chartboost.sdk.Libraries.e;
import com.chartboost.sdk.Model.CBError;
import com.facebook.GraphResponse;
import com.facebook.internal.ServerProtocol;
import com.facebook.share.internal.ShareConstants;
import com.ironsource.eventsmodule.DataBaseEventsStorage;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class aj extends ad<JSONObject> {
    public final JSONObject a;
    public final a k;
    public boolean l;
    protected final ap m;
    private final String n;
    private String o;
    private final com.chartboost.sdk.Tracking.a p;

    public interface a {
        void a(aj ajVar, CBError cBError);

        void a(aj ajVar, JSONObject jSONObject);
    }

    public aj(String str, ap apVar, com.chartboost.sdk.Tracking.a aVar, int i, a aVar2) {
        super("POST", a(str), i, null);
        this.l = false;
        this.a = new JSONObject();
        this.n = str;
        this.m = apVar;
        this.p = aVar;
        this.k = aVar2;
    }

    public static String a(String str) {
        Object[] objArr = new Object[3];
        objArr[0] = "https://live.chartboost.com";
        objArr[1] = (str == null || !str.startsWith("/")) ? "/" : "";
        if (str == null) {
            str = "";
        }
        objArr[2] = str;
        return String.format("%s%s%s", objArr);
    }

    public void a(String str, Object obj) {
        com.chartboost.sdk.Libraries.e.a(this.a, str, obj);
    }

    protected void c() {
        a("app", this.m.s);
        a("model", this.m.f);
        a("device_type", this.m.t);
        a("actual_device_type", this.m.u);
        a("os", this.m.g);
        a("country", this.m.h);
        a("language", this.m.i);
        a(ServerProtocol.DIALOG_PARAM_SDK_VERSION, this.m.l);
        a("user_agent", com.chartboost.sdk.i.w);
        a(DataBaseEventsStorage.EventEntry.COLUMN_NAME_TIMESTAMP, String.valueOf(TimeUnit.MILLISECONDS.toSeconds(this.m.e.a())));
        a("session", Integer.valueOf(this.m.d.getInt("cbPrefSessionCount", 0)));
        a("reachability", Integer.valueOf(this.m.b.a()));
        a("scale", this.m.r);
        a("is_portrait", Boolean.valueOf(CBUtility.a(CBUtility.a())));
        a("bundle", this.m.j);
        a("bundle_id", this.m.k);
        a("carrier", this.m.v);
        a("custom_id", com.chartboost.sdk.i.a);
        a("mediation", com.chartboost.sdk.i.h);
        if (com.chartboost.sdk.i.d != null) {
            a("framework_version", com.chartboost.sdk.i.f);
            a("wrapper_version", com.chartboost.sdk.i.b);
        }
        a("rooted_device", Boolean.valueOf(this.m.w));
        a("timezone", this.m.x);
        a("mobile_network", this.m.y);
        a("dw", this.m.o);
        a("dh", this.m.p);
        a("dpi", this.m.q);
        a("w", this.m.m);
        a("h", this.m.n);
        a("commit_hash", "ecf99f36d9c9c31bcecd74aa3fd6d75f397249e4");
        d.a aVarB = this.m.a.b();
        a("identity", aVarB.b);
        if (aVarB.a != -1) {
            a("limit_ad_tracking", Boolean.valueOf(aVarB.a == 1));
        }
        a("gdpr_dnt", Boolean.valueOf(com.chartboost.sdk.i.x));
        String str = this.m.c.get().a;
        if (!s.a().a(str)) {
            a("config_variant", str);
        }
        a("certification_providers", o.e());
    }

    public String d() {
        return e();
    }

    public String e() {
        if (this.n == null) {
            return "/";
        }
        return (this.n.startsWith("/") ? "" : "/") + this.n;
    }

    private void a(ag agVar, CBError cBError) {
        e.a[] aVarArr = new e.a[5];
        aVarArr[0] = com.chartboost.sdk.Libraries.e.a("endpoint", e());
        aVarArr[1] = com.chartboost.sdk.Libraries.e.a("statuscode", agVar == null ? "None" : Integer.valueOf(agVar.a));
        aVarArr[2] = com.chartboost.sdk.Libraries.e.a("error", cBError == null ? "None" : cBError.a().toString());
        aVarArr[3] = com.chartboost.sdk.Libraries.e.a("errorDescription", cBError == null ? "None" : cBError.b());
        aVarArr[4] = com.chartboost.sdk.Libraries.e.a("retryCount", (Object) 0);
        this.p.a("request_manager", ShareConstants.WEB_DIALOG_RESULT_PARAM_REQUEST_ID, cBError == null ? GraphResponse.SUCCESS_KEY : "failure", (String) null, (String) null, (String) null, com.chartboost.sdk.Libraries.e.a(aVarArr));
    }

    public void b(String str) {
        this.o = str;
    }

    @Override // com.chartboost.sdk.impl.ad
    public ae a() {
        c();
        String string = this.a.toString();
        String str = com.chartboost.sdk.i.k;
        String strB = com.chartboost.sdk.Libraries.c.b(com.chartboost.sdk.Libraries.c.a(String.format(Locale.US, "%s %s\n%s\n%s", this.b, d(), com.chartboost.sdk.i.l, string).getBytes()));
        HashMap map = new HashMap();
        map.put("Accept", "application/json");
        map.put("X-Chartboost-Client", CBUtility.b());
        map.put("X-Chartboost-API", "7.2.0");
        map.put("X-Chartboost-App", str);
        map.put("X-Chartboost-Signature", strB);
        return new ae(map, string.getBytes(), "application/json");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a4 A[Catch: Exception -> 0x00aa, TRY_LEAVE, TryCatch #0 {Exception -> 0x00aa, blocks: (B:2:0x0000, B:4:0x0004, B:6:0x0012, B:8:0x0059, B:10:0x0063, B:15:0x0079, B:16:0x00a4), top: B:21:0x0000 }] */
    @Override // com.chartboost.sdk.impl.ad
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.chartboost.sdk.impl.af<org.json.JSONObject> a(com.chartboost.sdk.impl.ag r5) {
        /*
            r4 = this;
            byte[] r0 = r5.b     // Catch: java.lang.Exception -> Laa
            if (r0 != 0) goto L12
            com.chartboost.sdk.Model.CBError r0 = new com.chartboost.sdk.Model.CBError     // Catch: java.lang.Exception -> Laa
            com.chartboost.sdk.Model.CBError$a r1 = com.chartboost.sdk.Model.CBError.a.INVALID_RESPONSE     // Catch: java.lang.Exception -> Laa
            java.lang.String r2 = "Response is not a valid json object"
            r0.<init>(r1, r2)     // Catch: java.lang.Exception -> Laa
            com.chartboost.sdk.impl.af r0 = com.chartboost.sdk.impl.af.a(r0)     // Catch: java.lang.Exception -> Laa
        L11:
            return r0
        L12:
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Exception -> Laa
            java.lang.String r1 = new java.lang.String     // Catch: java.lang.Exception -> Laa
            byte[] r2 = r5.b     // Catch: java.lang.Exception -> Laa
            r1.<init>(r2)     // Catch: java.lang.Exception -> Laa
            r0.<init>(r1)     // Catch: java.lang.Exception -> Laa
            java.lang.String r1 = "CBRequest"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Laa
            r2.<init>()     // Catch: java.lang.Exception -> Laa
            java.lang.String r3 = "Request "
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Exception -> Laa
            java.lang.String r3 = r4.e()     // Catch: java.lang.Exception -> Laa
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Exception -> Laa
            java.lang.String r3 = " succeeded. Response code: "
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Exception -> Laa
            int r3 = r5.a     // Catch: java.lang.Exception -> Laa
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Exception -> Laa
            java.lang.String r3 = ", body: "
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Exception -> Laa
            r3 = 4
            java.lang.String r3 = r0.toString(r3)     // Catch: java.lang.Exception -> Laa
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Exception -> Laa
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> Laa
            com.chartboost.sdk.Libraries.CBLogging.c(r1, r2)     // Catch: java.lang.Exception -> Laa
            boolean r1 = r4.l     // Catch: java.lang.Exception -> Laa
            if (r1 == 0) goto La4
            java.lang.String r1 = "status"
            int r1 = r0.optInt(r1)     // Catch: java.lang.Exception -> Laa
            r2 = 404(0x194, float:5.66E-43)
            if (r1 != r2) goto L71
            com.chartboost.sdk.Model.CBError r0 = new com.chartboost.sdk.Model.CBError     // Catch: java.lang.Exception -> Laa
            com.chartboost.sdk.Model.CBError$a r1 = com.chartboost.sdk.Model.CBError.a.HTTP_NOT_FOUND     // Catch: java.lang.Exception -> Laa
            java.lang.String r2 = "404 error from server"
            r0.<init>(r1, r2)     // Catch: java.lang.Exception -> Laa
            com.chartboost.sdk.impl.af r0 = com.chartboost.sdk.impl.af.a(r0)     // Catch: java.lang.Exception -> Laa
            goto L11
        L71:
            r2 = 200(0xc8, float:2.8E-43)
            if (r1 < r2) goto L79
            r2 = 299(0x12b, float:4.19E-43)
            if (r1 <= r2) goto La4
        L79:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Laa
            r0.<init>()     // Catch: java.lang.Exception -> Laa
            java.lang.String r2 = "Request failed due to status code "
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch: java.lang.Exception -> Laa
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Exception -> Laa
            java.lang.String r1 = " in message"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Exception -> Laa
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Exception -> Laa
            java.lang.String r1 = "CBRequest"
            com.chartboost.sdk.Libraries.CBLogging.b(r1, r0)     // Catch: java.lang.Exception -> Laa
            com.chartboost.sdk.Model.CBError r1 = new com.chartboost.sdk.Model.CBError     // Catch: java.lang.Exception -> Laa
            com.chartboost.sdk.Model.CBError$a r2 = com.chartboost.sdk.Model.CBError.a.UNEXPECTED_RESPONSE     // Catch: java.lang.Exception -> Laa
            r1.<init>(r2, r0)     // Catch: java.lang.Exception -> Laa
            com.chartboost.sdk.impl.af r0 = com.chartboost.sdk.impl.af.a(r1)     // Catch: java.lang.Exception -> Laa
            goto L11
        La4:
            com.chartboost.sdk.impl.af r0 = com.chartboost.sdk.impl.af.a(r0)     // Catch: java.lang.Exception -> Laa
            goto L11
        Laa:
            r0 = move-exception
            java.lang.Class r1 = r4.getClass()
            java.lang.String r2 = "parseServerResponse"
            com.chartboost.sdk.Tracking.a.a(r1, r2, r0)
            com.chartboost.sdk.Model.CBError r1 = new com.chartboost.sdk.Model.CBError
            com.chartboost.sdk.Model.CBError$a r2 = com.chartboost.sdk.Model.CBError.a.MISCELLANEOUS
            java.lang.String r0 = r0.getLocalizedMessage()
            r1.<init>(r2, r0)
            com.chartboost.sdk.impl.af r0 = com.chartboost.sdk.impl.af.a(r1)
            goto L11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chartboost.sdk.impl.aj.a(com.chartboost.sdk.impl.ag):com.chartboost.sdk.impl.af");
    }

    @Override // com.chartboost.sdk.impl.ad
    public void a(JSONObject jSONObject, ag agVar) {
        if (this.k != null && jSONObject != null) {
            this.k.a(this, jSONObject);
        }
        if (this.p != null) {
            a(agVar, (CBError) null);
        }
    }

    @Override // com.chartboost.sdk.impl.ad
    public void a(CBError cBError, ag agVar) {
        if (cBError != null) {
            if (this.k != null) {
                this.k.a(this, cBError);
            }
            if (this.p != null) {
                a(agVar, cBError);
            }
        }
    }
}
