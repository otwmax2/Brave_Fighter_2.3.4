package com.tendcloud.tenddata.game;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.tendcloud.tenddata.game.n;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static final Parcelable.Creator e = new b();
    public boolean a;
    public int b;
    public final String c;
    public final int d;
    private final n.a f;

    public a(int i) {
        this.d = i;
        this.c = a(i);
        this.f = n.a.a(i);
        try {
            n.b bVarB = this.f.b("cpuacct");
            this.a = this.f.b("cpu").c.contains("bg_non_interactive") ? false : true;
            this.b = Integer.parseInt(bVarB.c.split("/")[1].replace("uid_", ""));
        } catch (Throwable th) {
            if (d() != null) {
                this.b = d().a();
            }
        }
    }

    protected a(Parcel parcel) {
        this.c = parcel.readString();
        this.d = parcel.readInt();
        this.f = (n.a) parcel.readParcelable(n.a.class.getClassLoader());
        this.a = parcel.readByte() != 0;
    }

    static String a(int i) {
        try {
            String strTrim = n.a(String.format("/proc/%d/cmdline", Integer.valueOf(i))).trim();
            return TextUtils.isEmpty(strTrim) ? n.c.a(i).b() : strTrim;
        } catch (Throwable th) {
            return null;
        }
    }

    public String a() {
        try {
            return this.c.split(":")[0];
        } catch (Throwable th) {
            return "";
        }
    }

    public String b() {
        try {
            if (this.c.split(":").length > 1) {
                return ":" + this.c.split(":")[1];
            }
        } catch (Throwable th) {
        }
        return "";
    }

    public n.a c() {
        return this.f;
    }

    public n.d d() {
        try {
            return n.d.a(this.d);
        } catch (Throwable th) {
            return null;
        }
    }

    public n.c e() {
        try {
            return n.c.a(this.d);
        } catch (Throwable th) {
            return null;
        }
    }
}
