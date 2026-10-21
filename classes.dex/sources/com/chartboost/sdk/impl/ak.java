package com.chartboost.sdk.impl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Model.CBError;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class ak {
    final ai a;
    final Handler b;
    private final Executor c;
    private final ah d;

    public ak(Executor executor, ah ahVar, ai aiVar, Handler handler) {
        this.c = executor;
        this.d = ahVar;
        this.a = aiVar;
        this.b = handler;
    }

    public void a(com.chartboost.sdk.Model.c cVar, boolean z, String str, CBError.CBClickError cBClickError, aj ajVar) {
        if (cVar != null) {
            cVar.x = false;
            if (cVar.b()) {
                cVar.l = 4;
            }
        }
        if (!z) {
            if (com.chartboost.sdk.i.c != null) {
                com.chartboost.sdk.i.c.didFailToRecordClick(str, cBClickError);
            }
        } else if (cVar != null && cVar.w != null) {
            this.d.a(cVar.w);
        } else if (ajVar != null) {
            this.d.a(ajVar);
        }
    }

    public void a(final com.chartboost.sdk.Model.c cVar, final String str, final Activity activity, final aj ajVar) {
        try {
            String scheme = new URI(str).getScheme();
            if (scheme == null) {
                a(cVar, false, str, CBError.CBClickError.URI_INVALID, ajVar);
            } else if (!scheme.equals("http") && !scheme.equals("https")) {
                a(cVar, str, (Context) activity, ajVar);
            } else {
                this.c.execute(new Runnable() { // from class: com.chartboost.sdk.impl.ak.1
                    /* JADX WARN: Removed duplicated region for block: B:27:0x0063  */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    public void run() throws java.lang.Throwable {
                        /*
                            r6 = this;
                            java.lang.String r2 = r2     // Catch: java.lang.Exception -> L50
                            com.chartboost.sdk.impl.ak r0 = com.chartboost.sdk.impl.ak.this     // Catch: java.lang.Exception -> L50
                            com.chartboost.sdk.impl.ai r0 = r0.a     // Catch: java.lang.Exception -> L50
                            boolean r0 = r0.b()     // Catch: java.lang.Exception -> L50
                            if (r0 == 0) goto L63
                            r1 = 0
                            java.net.URL r0 = new java.net.URL     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L49
                            java.lang.String r3 = r2     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L49
                            r0.<init>(r3)     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L49
                            java.net.URLConnection r0 = r0.openConnection()     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L49
                            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L49
                            r1 = 0
                            r0.setInstanceFollowRedirects(r1)     // Catch: java.lang.Throwable -> L59 java.lang.Exception -> L5e
                            r1 = 10000(0x2710, float:1.4013E-41)
                            r0.setConnectTimeout(r1)     // Catch: java.lang.Throwable -> L59 java.lang.Exception -> L5e
                            r1 = 10000(0x2710, float:1.4013E-41)
                            r0.setReadTimeout(r1)     // Catch: java.lang.Throwable -> L59 java.lang.Exception -> L5e
                            java.lang.String r1 = "Location"
                            java.lang.String r1 = r0.getHeaderField(r1)     // Catch: java.lang.Throwable -> L59 java.lang.Exception -> L5e
                            if (r1 == 0) goto L67
                        L30:
                            if (r0 == 0) goto L65
                            r0.disconnect()     // Catch: java.lang.Exception -> L50
                            r0 = r1
                        L36:
                            r6.a(r0)     // Catch: java.lang.Exception -> L50
                        L39:
                            return
                        L3a:
                            r0 = move-exception
                        L3b:
                            java.lang.String r3 = "CBURLOpener"
                            java.lang.String r4 = "Exception raised while opening a HTTP Conection"
                            com.chartboost.sdk.Libraries.CBLogging.b(r3, r4, r0)     // Catch: java.lang.Throwable -> L49
                            if (r1 == 0) goto L63
                            r1.disconnect()     // Catch: java.lang.Exception -> L50
                            r0 = r2
                            goto L36
                        L49:
                            r0 = move-exception
                        L4a:
                            if (r1 == 0) goto L4f
                            r1.disconnect()     // Catch: java.lang.Exception -> L50
                        L4f:
                            throw r0     // Catch: java.lang.Exception -> L50
                        L50:
                            r0 = move-exception
                            java.lang.Class<com.chartboost.sdk.impl.ak> r1 = com.chartboost.sdk.impl.ak.class
                            java.lang.String r2 = "open followTask"
                            com.chartboost.sdk.Tracking.a.a(r1, r2, r0)
                            goto L39
                        L59:
                            r1 = move-exception
                            r5 = r1
                            r1 = r0
                            r0 = r5
                            goto L4a
                        L5e:
                            r1 = move-exception
                            r5 = r1
                            r1 = r0
                            r0 = r5
                            goto L3b
                        L63:
                            r0 = r2
                            goto L36
                        L65:
                            r0 = r1
                            goto L36
                        L67:
                            r1 = r2
                            goto L30
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.chartboost.sdk.impl.ak.AnonymousClass1.run():void");
                    }

                    private void a(final String str2) {
                        Runnable runnable = new Runnable() { // from class: com.chartboost.sdk.impl.ak.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    ak.this.a(cVar, str2, (Context) activity, ajVar);
                                } catch (Exception e) {
                                    com.chartboost.sdk.Tracking.a.a(ak.class, "open openOnUiThread Runnable.run", e);
                                }
                            }
                        };
                        if (activity != null) {
                            activity.runOnUiThread(runnable);
                        } else {
                            ak.this.b.post(runnable);
                        }
                    }
                });
            }
        } catch (URISyntaxException e) {
            a(cVar, false, str, CBError.CBClickError.URI_INVALID, ajVar);
        }
    }

    void a(com.chartboost.sdk.Model.c cVar, String str, Context context, aj ajVar) {
        String str2;
        if (cVar != null && cVar.b()) {
            cVar.l = 5;
        }
        if (context == null) {
            context = com.chartboost.sdk.i.m;
        }
        if (context == null) {
            a(cVar, false, str, CBError.CBClickError.NO_HOST_ACTIVITY, ajVar);
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            intent.setData(Uri.parse(str));
            context.startActivity(intent);
            str2 = str;
        } catch (Exception e) {
            if (str.startsWith("market://")) {
                try {
                    str = "http://market.android.com/" + str.substring(9);
                    Intent intent2 = new Intent("android.intent.action.VIEW");
                    if (!(context instanceof Activity)) {
                        intent2.addFlags(268435456);
                    }
                    intent2.setData(Uri.parse(str));
                    context.startActivity(intent2);
                    str2 = str;
                } catch (Exception e2) {
                    CBLogging.b("CBURLOpener", "Exception raised openeing an inavld playstore URL", e2);
                    a(cVar, false, str, CBError.CBClickError.URI_UNRECOGNIZED, ajVar);
                    return;
                }
            } else {
                a(cVar, false, str, CBError.CBClickError.URI_UNRECOGNIZED, ajVar);
                str2 = str;
            }
        }
        a(cVar, true, str2, null, ajVar);
    }

    public boolean a(String str) {
        try {
            Context context = com.chartboost.sdk.i.m;
            Intent intent = new Intent("android.intent.action.VIEW");
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            intent.setData(Uri.parse(str));
            return context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
        } catch (Exception e) {
            CBLogging.b("CBURLOpener", "Cannot open URL", e);
            com.chartboost.sdk.Tracking.a.a(ak.class, "canOpenURL", e);
            return false;
        }
    }

    public void a(com.chartboost.sdk.Model.c cVar, String str, aj ajVar) {
        a(cVar, str, cVar != null ? cVar.g.a() : null, ajVar);
    }
}
