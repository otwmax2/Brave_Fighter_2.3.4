package com.facebook.ads.internal.e;

import android.support.annotation.Nullable;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.android.gms.games.GamesStatusCodes;

/* JADX INFO: loaded from: classes.dex */
abstract class f<T> {
    private a a;

    public enum a {
        UNKNOWN(GamesStatusCodes.STATUS_VIDEO_NOT_ACTIVE, "An unknown error has occurred."),
        DATABASE_SELECT(3001, "Failed to read from database."),
        DATABASE_INSERT(3002, "Failed to insert row into database."),
        DATABASE_UPDATE(3003, "Failed to update row in database."),
        DATABASE_DELETE(AuthApiStatusCodes.AUTH_TOKEN_ERROR, "Failed to delete row from database.");

        private final int f;
        private final String g;

        a(int i, String str) {
            this.f = i;
            this.g = str;
        }

        public int a() {
            return this.f;
        }

        public String b() {
            return this.g;
        }
    }

    f() {
    }

    protected void a(a aVar) {
        this.a = aVar;
    }

    @Nullable
    abstract T b();

    public a c() {
        return this.a;
    }
}
