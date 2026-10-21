package com.vungle.publisher;

import com.ironsource.sdk.precache.DownloadManager;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class ut {
    public static String a(String str) throws UnsupportedEncodingException {
        return URLDecoder.decode(str, DownloadManager.UTF8_CHARSET);
    }
}
