package com.vungle.publisher;

import android.content.Intent;
import android.net.Uri;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class zc {
    @Inject
    zc() {
    }

    public Intent a(String str, Uri uri) {
        return new Intent(str, uri);
    }
}
