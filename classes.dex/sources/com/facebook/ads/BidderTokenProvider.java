package com.facebook.ads;

import android.content.Context;
import com.facebook.ads.internal.i.c;

/* JADX INFO: loaded from: classes.dex */
public final class BidderTokenProvider {
    public static String getBidderToken(Context context) {
        return new c(context, true).a();
    }
}
