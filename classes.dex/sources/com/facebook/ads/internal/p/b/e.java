package com.facebook.ads.internal.p.b;

import android.text.TextUtils;
import com.ironsource.sdk.precache.DownloadManager;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;

/* JADX INFO: loaded from: classes.dex */
class e extends k {
    private final h a;
    private final com.facebook.ads.internal.p.b.a.b b;
    private b c;

    public e(h hVar, com.facebook.ads.internal.p.b.a.b bVar) {
        super(hVar, bVar);
        this.b = bVar;
        this.a = hVar;
    }

    private void a(OutputStream outputStream, long j) throws IOException {
        byte[] bArr = new byte[8192];
        while (true) {
            int iA = a(bArr, j, bArr.length);
            if (iA == -1) {
                outputStream.flush();
                return;
            } else {
                outputStream.write(bArr, 0, iA);
                j += (long) iA;
            }
        }
    }

    private boolean a(d dVar) {
        int iA = this.a.a();
        boolean z = iA > 0;
        int iA2 = this.b.a();
        if (z && dVar.c) {
            if (dVar.b > (iA * 0.2f) + iA2) {
                return false;
            }
        }
        return true;
    }

    private String b(d dVar) {
        String strC = this.a.c();
        boolean z = !TextUtils.isEmpty(strC);
        int iA = this.b.d() ? this.b.a() : this.a.a();
        boolean z2 = iA >= 0;
        return (dVar.c ? "HTTP/1.1 206 PARTIAL CONTENT\n" : "HTTP/1.1 200 OK\n") + "Accept-Ranges: bytes\n" + (z2 ? String.format("Content-Length: %d\n", Long.valueOf(dVar.c ? ((long) iA) - dVar.b : iA)) : "") + (z2 && dVar.c ? String.format("Content-Range: bytes %d-%d/%d\n", Long.valueOf(dVar.b), Integer.valueOf(iA - 1), Integer.valueOf(iA)) : "") + (z ? String.format("Content-Type: %s\n", strC) : "") + "\n";
    }

    private void b(OutputStream outputStream, long j) throws l {
        try {
            h hVar = new h(this.a);
            hVar.a((int) j);
            byte[] bArr = new byte[8192];
            while (true) {
                int iA = hVar.a(bArr);
                if (iA == -1) {
                    outputStream.flush();
                    return;
                } else {
                    outputStream.write(bArr, 0, iA);
                    j += (long) iA;
                }
            }
        } finally {
            this.a.b();
        }
    }

    @Override // com.facebook.ads.internal.p.b.k
    protected void a(int i) {
        if (this.c != null) {
            this.c.a(this.b.a, this.a.a, i);
        }
    }

    public void a(b bVar) {
        this.c = bVar;
    }

    public void a(d dVar, Socket socket) throws IOException, l {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(socket.getOutputStream());
        bufferedOutputStream.write(b(dVar).getBytes(DownloadManager.UTF8_CHARSET));
        long j = dVar.b;
        if (a(dVar)) {
            a(bufferedOutputStream, j);
        } else {
            b(bufferedOutputStream, j);
        }
    }
}
