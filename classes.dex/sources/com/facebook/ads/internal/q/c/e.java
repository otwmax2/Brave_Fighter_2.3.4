package com.facebook.ads.internal.q.c;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.internal.p.a.n;
import com.facebook.ads.internal.p.a.p;
import com.facebook.ads.internal.q.a.j;
import com.ironsource.sdk.constants.Constants;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class e extends AsyncTask<String, Void, f> {
    private static final String a = e.class.getSimpleName();
    private static final Set<String> b = new HashSet();
    private Context c;
    private Map<String, String> d;
    private Map<String, String> e;
    private n f;
    private a g;

    public interface a {
        void a();

        void a(f fVar);
    }

    static {
        b.add("#");
        b.add("null");
    }

    public e(Context context) {
        this(context, null, null);
    }

    public e(Context context, Map<String, String> map) {
        this(context, map, null);
    }

    public e(Context context, Map<String, String> map, Map<String, String> map2) {
        this.c = context;
        this.d = map != null ? new HashMap(map) : null;
        this.e = map2 != null ? new HashMap(map2) : null;
    }

    private String a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            return str;
        }
        return str + (str.contains("?") ? Constants.RequestParameters.AMPERSAND : "?") + str2 + Constants.RequestParameters.EQUAL + URLEncoder.encode(str3);
    }

    private boolean a(String str) {
        com.facebook.ads.internal.p.a.a aVarA = d.a(this.c);
        try {
            if (this.e == null || this.e.size() == 0) {
                this.f = aVarA.a(str, (p) null);
            } else {
                p pVar = new p();
                pVar.a((Map<? extends String, ? extends String>) this.e);
                this.f = aVarA.b(str, pVar);
            }
            if (this.f != null) {
                return this.f.a() == 200;
            }
            return false;
        } catch (Exception e) {
            Log.e(a, "Error opening url: " + str, e);
            return false;
        }
    }

    private String b(String str) {
        try {
            return a(str, "analog", j.a(com.facebook.ads.internal.g.a.a()));
        } catch (Exception e) {
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public f doInBackground(String... strArr) {
        String str;
        String str2 = strArr[0];
        if (TextUtils.isEmpty(str2) || b.contains(str2)) {
            return null;
        }
        String strB = b(str2);
        if (this.d != null && !this.d.isEmpty()) {
            Iterator<Map.Entry<String, String>> it = this.d.entrySet().iterator();
            while (true) {
                str = strB;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, String> next = it.next();
                strB = a(str, next.getKey(), next.getValue());
            }
            strB = str;
        }
        int i = 1;
        while (true) {
            int i2 = i + 1;
            if (i > 2) {
                return null;
            }
            if (a(strB)) {
                return new f(this.f);
            }
            i = i2;
        }
    }

    public void a(a aVar) {
        this.g = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(f fVar) {
        if (this.g != null) {
            this.g.a(fVar);
        }
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        if (this.g != null) {
            this.g.a();
        }
    }
}
