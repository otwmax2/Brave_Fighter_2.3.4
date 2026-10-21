package com.facebook.ads.internal.p.a;

import com.ironsource.sdk.precache.DownloadManager;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public abstract class f implements q {
    private final r a;

    public f() {
        this(new g());
    }

    public f(r rVar) {
        this.a = rVar;
    }

    @Override // com.facebook.ads.internal.p.a.q
    public OutputStream a(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getOutputStream();
    }

    @Override // com.facebook.ads.internal.p.a.q
    public HttpURLConnection a(String str) {
        return (HttpURLConnection) new URL(str).openConnection();
    }

    @Override // com.facebook.ads.internal.p.a.q
    public void a(OutputStream outputStream, byte[] bArr) throws IOException {
        outputStream.write(bArr);
    }

    @Override // com.facebook.ads.internal.p.a.q
    public void a(HttpURLConnection httpURLConnection, j jVar, String str) throws ProtocolException {
        httpURLConnection.setRequestMethod(jVar.c());
        httpURLConnection.setDoOutput(jVar.b());
        httpURLConnection.setDoInput(jVar.a());
        if (str != null) {
            httpURLConnection.setRequestProperty("Content-Type", str);
        }
        httpURLConnection.setRequestProperty("Accept-Charset", DownloadManager.UTF8_CHARSET);
    }

    @Override // com.facebook.ads.internal.p.a.q
    public boolean a(m mVar) {
        n nVarA = mVar.a();
        if (this.a.a()) {
            this.a.a("BasicRequestHandler.onError got");
            mVar.printStackTrace();
        }
        return nVarA != null && nVarA.a() > 0;
    }

    @Override // com.facebook.ads.internal.p.a.q
    public byte[] a(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[16384];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    @Override // com.facebook.ads.internal.p.a.q
    public InputStream b(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getInputStream();
    }
}
