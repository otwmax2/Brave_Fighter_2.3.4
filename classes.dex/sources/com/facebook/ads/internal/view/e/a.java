package com.facebook.ads.internal.view.e;

import android.database.ContentObserver;
import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
class a extends ContentObserver {
    private final d a;

    public a(Handler handler, d dVar) {
        super(handler);
        this.a = dVar;
    }

    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        return false;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        this.a.e();
    }
}
