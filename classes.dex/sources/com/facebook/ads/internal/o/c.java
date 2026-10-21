package com.facebook.ads.internal.o;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.facebook.ads.internal.o.f;
import com.facebook.ads.internal.p.a.m;
import com.facebook.ads.internal.p.a.n;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.i;
import com.facebook.ads.internal.q.a.l;
import com.facebook.ads.internal.q.c.d;
import java.security.MessageDigest;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private static final l i = new l();
    private static final ThreadPoolExecutor j = (ThreadPoolExecutor) Executors.newCachedThreadPool(i);
    private final Context a;
    private final com.facebook.ads.internal.l.a c;
    private Map<String, String> d;
    private a e;
    private b f;
    private com.facebook.ads.internal.p.a.a g;
    private final e b = e.a();
    private final String h = d.a();

    public interface a {
        void a(g gVar);

        void a(com.facebook.ads.internal.protocol.a aVar);
    }

    public c(Context context) {
        this.a = context.getApplicationContext();
        this.c = new com.facebook.ads.internal.l.a(this.a);
    }

    private void a(g gVar) {
        if (this.e != null) {
            this.e.a(gVar);
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.facebook.ads.internal.protocol.a aVar) {
        if (this.e != null) {
            this.e.a(aVar);
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        try {
            f fVarA = this.b.a(str);
            com.facebook.ads.internal.h.c cVarA = fVarA.a();
            if (cVarA != null) {
                this.c.a(cVarA.b());
                com.facebook.ads.internal.o.a.a(cVarA.a().d(), this.f);
            }
            switch (fVarA.b()) {
                case ADS:
                    g gVar = (g) fVarA;
                    if (cVarA != null) {
                        if (cVarA.a().e()) {
                            com.facebook.ads.internal.o.a.a(str, this.f);
                        }
                        String str2 = this.d != null ? this.d.get("CLIENT_REQUEST_ID") : null;
                        String strC = fVarA.c();
                        if (!TextUtils.isEmpty(strC) && !TextUtils.isEmpty(str2)) {
                            StringBuilder sb = new StringBuilder();
                            for (int i2 = 0; i2 < "qo290s8p6q174sr59pr123o45pr7pp29".length(); i2++) {
                                char cCharAt = "qo290s8p6q174sr59pr123o45pr7pp29".charAt(i2);
                                if ((cCharAt >= 'a' && cCharAt <= 'm') || (cCharAt >= 'A' && cCharAt <= 'M')) {
                                    cCharAt = (char) (cCharAt + '\r');
                                } else if ((cCharAt >= 'n' && cCharAt <= 'z') || (cCharAt >= 'N' && cCharAt <= 'Z')) {
                                    cCharAt = (char) (cCharAt - '\r');
                                }
                                sb.append(cCharAt);
                            }
                            byte[] bytes = (str2 + strC + sb.toString()).getBytes("iso-8859-1");
                            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
                            messageDigest.update(bytes, 0, bytes.length);
                            if (!fVarA.d().equals(com.facebook.ads.internal.q.a.h.a(messageDigest.digest()))) {
                                com.facebook.ads.internal.q.d.a.a(new i(), this.a);
                            }
                            byte[] bytes2 = (strC + str2 + sb.toString()).getBytes("iso-8859-1");
                            MessageDigest messageDigest2 = MessageDigest.getInstance("SHA-1");
                            messageDigest2.update(bytes2, 0, bytes2.length);
                            com.facebook.ads.internal.f.e.a(new com.facebook.ads.internal.f.a(strC, com.facebook.ads.internal.q.a.h.a(messageDigest2.digest())), this.a);
                        }
                        if (!TextUtils.isEmpty(fVarA.e()) && !TextUtils.isEmpty(str2)) {
                            new com.facebook.ads.internal.k.a(this.a, str2, fVarA.e()).a();
                        }
                    }
                    a(gVar);
                    break;
                case ERROR:
                    h hVar = (h) fVarA;
                    String strF = hVar.f();
                    AdErrorType adErrorTypeAdErrorTypeFromCode = AdErrorType.adErrorTypeFromCode(hVar.g(), AdErrorType.ERROR_MESSAGE);
                    if (strF != null) {
                        str = strF;
                    }
                    a(com.facebook.ads.internal.protocol.a.a(adErrorTypeAdErrorTypeFromCode, str));
                    break;
                default:
                    a(com.facebook.ads.internal.protocol.a.a(AdErrorType.UNKNOWN_RESPONSE, str));
                    break;
            }
        } catch (Exception e) {
            a(com.facebook.ads.internal.protocol.a.a(AdErrorType.PARSER_FAILURE, e.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.facebook.ads.internal.p.a.b b() {
        return new com.facebook.ads.internal.p.a.b() { // from class: com.facebook.ads.internal.o.c.2
            void a(m mVar) {
                com.facebook.ads.internal.o.a.b(c.this.f);
                c.this.g = null;
                try {
                    n nVarA = mVar.a();
                    if (nVarA != null) {
                        String strE = nVarA.e();
                        f fVarA = c.this.b.a(strE);
                        if (fVarA.b() == f.a.ERROR) {
                            h hVar = (h) fVarA;
                            String strF = hVar.f();
                            c.this.a(com.facebook.ads.internal.protocol.a.a(AdErrorType.adErrorTypeFromCode(hVar.g(), AdErrorType.ERROR_MESSAGE), strF == null ? strE : strF));
                            return;
                        }
                    }
                } catch (JSONException e) {
                }
                c.this.a(com.facebook.ads.internal.protocol.a.a(AdErrorType.NETWORK_ERROR, mVar.getMessage()));
            }

            @Override // com.facebook.ads.internal.p.a.b
            public void a(n nVar) {
                if (nVar != null) {
                    String strE = nVar.e();
                    com.facebook.ads.internal.o.a.b(c.this.f);
                    c.this.g = null;
                    c.this.a(strE);
                }
            }

            @Override // com.facebook.ads.internal.p.a.b
            public void a(Exception exc) {
                if (m.class.equals(exc.getClass())) {
                    a((m) exc);
                } else {
                    c.this.a(com.facebook.ads.internal.protocol.a.a(AdErrorType.NETWORK_ERROR, exc.getMessage()));
                }
            }
        };
    }

    public void a() {
        if (this.g != null) {
            this.g.c(1);
            this.g.b(1);
            this.g = null;
        }
    }

    public void a(final b bVar) {
        a();
        if (com.facebook.ads.internal.q.c.d.c(this.a) == d.a.NONE) {
            a(new com.facebook.ads.internal.protocol.a(AdErrorType.NETWORK_ERROR, "No network connection"));
            return;
        }
        this.f = bVar;
        com.facebook.ads.internal.g.a.a(this.a);
        if (!com.facebook.ads.internal.o.a.a(bVar)) {
            j.submit(new Runnable() { // from class: com.facebook.ads.internal.o.c.1
                @Override // java.lang.Runnable
                public void run() throws Throwable {
                    com.facebook.ads.internal.c.b.a(c.this.a);
                    if (bVar.e().a()) {
                        try {
                            bVar.e().a(com.facebook.ads.internal.c.b.b);
                        } catch (com.facebook.ads.internal.protocol.b e) {
                            c.this.a(com.facebook.ads.internal.protocol.a.a(e));
                        }
                        c.this.a(bVar.e().b());
                        return;
                    }
                    c.this.d = bVar.f();
                    try {
                        c.this.d.put("M_BANNER_KEY", new String(Base64.encode((c.this.a.getPackageName() + " " + c.this.a.getPackageManager().getInstallerPackageName(c.this.a.getPackageName())).getBytes(), 2)));
                    } catch (Exception e2) {
                    }
                    try {
                        c.this.g = com.facebook.ads.internal.q.c.d.b(c.this.a, bVar.c == com.facebook.ads.internal.protocol.f.NATIVE_250 || bVar.c == com.facebook.ads.internal.protocol.f.NATIVE_UNKNOWN || bVar.c == null);
                        c.this.g.a(c.this.h, c.this.g.b().a(c.this.d), c.this.b());
                    } catch (Exception e3) {
                        c.this.a(com.facebook.ads.internal.protocol.a.a(AdErrorType.AD_REQUEST_FAILED, e3.getMessage()));
                    }
                }
            });
            return;
        }
        String strC = com.facebook.ads.internal.o.a.c(bVar);
        if (strC != null) {
            a(strC);
        } else {
            a(com.facebook.ads.internal.protocol.a.a(AdErrorType.LOAD_TOO_FREQUENTLY, null));
        }
    }

    public void a(a aVar) {
        this.e = aVar;
    }
}
