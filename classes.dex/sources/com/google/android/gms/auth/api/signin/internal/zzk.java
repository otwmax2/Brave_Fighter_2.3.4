package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.zzab;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class zzk {
    private static final Lock eu = new ReentrantLock();
    private static zzk ev;
    private final Lock ew = new ReentrantLock();
    private final SharedPreferences ex;

    zzk(Context context) {
        this.ex = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public static zzk zzbc(Context context) {
        zzab.zzaa(context);
        eu.lock();
        try {
            if (ev == null) {
                ev = new zzk(context.getApplicationContext());
            }
            return ev;
        } finally {
            eu.unlock();
        }
    }

    private String zzy(String str, String str2) {
        String strValueOf = String.valueOf(":");
        return new StringBuilder(String.valueOf(str).length() + 0 + String.valueOf(strValueOf).length() + String.valueOf(str2).length()).append(str).append(strValueOf).append(str2).toString();
    }

    void zza(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        zzab.zzaa(googleSignInAccount);
        zzab.zzaa(googleSignInOptions);
        String strZzafm = googleSignInAccount.zzafm();
        zzx(zzy("googleSignInAccount", strZzafm), googleSignInAccount.zzafo());
        zzx(zzy("googleSignInOptions", strZzafm), googleSignInOptions.zzafn());
    }

    public GoogleSignInAccount zzagj() {
        return zzft(zzfv("defaultGoogleSignInAccount"));
    }

    public GoogleSignInOptions zzagk() {
        return zzfu(zzfv("defaultGoogleSignInAccount"));
    }

    public void zzagl() {
        String strZzfv = zzfv("defaultGoogleSignInAccount");
        zzfx("defaultGoogleSignInAccount");
        zzfw(strZzfv);
    }

    public void zzb(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        zzab.zzaa(googleSignInAccount);
        zzab.zzaa(googleSignInOptions);
        zzx("defaultGoogleSignInAccount", googleSignInAccount.zzafm());
        zza(googleSignInAccount, googleSignInOptions);
    }

    GoogleSignInAccount zzft(String str) {
        String strZzfv;
        if (TextUtils.isEmpty(str) || (strZzfv = zzfv(zzy("googleSignInAccount", str))) == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.zzfp(strZzfv);
        } catch (JSONException e) {
            return null;
        }
    }

    GoogleSignInOptions zzfu(String str) {
        String strZzfv;
        if (TextUtils.isEmpty(str) || (strZzfv = zzfv(zzy("googleSignInOptions", str))) == null) {
            return null;
        }
        try {
            return GoogleSignInOptions.zzfr(strZzfv);
        } catch (JSONException e) {
            return null;
        }
    }

    protected String zzfv(String str) {
        this.ew.lock();
        try {
            return this.ex.getString(str, null);
        } finally {
            this.ew.unlock();
        }
    }

    void zzfw(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        zzfx(zzy("googleSignInAccount", str));
        zzfx(zzy("googleSignInOptions", str));
    }

    protected void zzfx(String str) {
        this.ew.lock();
        try {
            this.ex.edit().remove(str).apply();
        } finally {
            this.ew.unlock();
        }
    }

    protected void zzx(String str, String str2) {
        this.ew.lock();
        try {
            this.ex.edit().putString(str, str2).apply();
        } finally {
            this.ew.unlock();
        }
    }
}
