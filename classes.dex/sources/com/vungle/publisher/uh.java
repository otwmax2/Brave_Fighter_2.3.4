package com.vungle.publisher;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class uh {
    @Inject
    uh() {
    }

    public HttpURLConnection a(String str) throws IOException {
        return (HttpURLConnection) new URL(str).openConnection();
    }
}
