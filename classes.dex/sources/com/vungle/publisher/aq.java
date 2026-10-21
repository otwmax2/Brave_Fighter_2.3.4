package com.vungle.publisher;

import android.net.Uri;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class aq extends ph {
    private final Uri a;

    public aq() {
        this.a = Uri.parse("https://www.vungle.com/privacy/");
    }

    public aq(String str) {
        this.a = zk.a(str, "https://www.vungle.com/privacy/");
    }

    public Uri a() {
        return this.a;
    }
}
