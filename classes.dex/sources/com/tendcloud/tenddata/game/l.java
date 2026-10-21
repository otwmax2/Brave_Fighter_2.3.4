package com.tendcloud.tenddata.game;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class l implements k {
    private static final String b = "dyn_update_check_ts";
    Context a;

    @Override // com.tendcloud.tenddata.game.k
    public void a() {
    }

    @Override // com.tendcloud.tenddata.game.s
    public void a(Context context, String str) {
        this.a = context;
    }

    @Override // com.tendcloud.tenddata.game.s
    public void a(String str) {
        t.a(this.a, "actionstablepref", b, System.currentTimeMillis());
    }

    @Override // com.tendcloud.tenddata.game.s
    public String b() {
        return "1";
    }

    @Override // com.tendcloud.tenddata.game.s
    public boolean c() {
        long jAbs = Math.abs((System.currentTimeMillis() - t.b(this.a, "actionstablepref", b, System.currentTimeMillis())) / 86400000);
        if (jAbs <= 7) {
            if (jAbs * Math.random() <= 2.0d) {
                return false;
            }
        }
        return true;
    }

    @Override // com.tendcloud.tenddata.game.s
    public String d() {
        return "https://u.talkingdata.net/ota/common/android/dynamic/ver";
    }

    @Override // com.tendcloud.tenddata.game.s
    public String e() {
        return "https://u.talkingdata.net/ota/common/android/dynamic/sdk.zip";
    }

    @Override // com.tendcloud.tenddata.game.s
    public void f() {
    }
}
