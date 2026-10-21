package com.vungle.publisher;

import com.vungle.publisher.ei;
import com.vungle.publisher.log.Logger;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import javax.inject.Inject;
import rx.exceptions.Exceptions;
import rx.functions.Func2;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class uu implements Func2<tw, gd<?>, gd<?>> {
    @Inject
    public uu() {
    }

    @Override // rx.functions.Func2
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public gd<?> call(tw twVar, gd<?> gdVar) {
        try {
            return b(twVar, gdVar);
        } catch (IOException e) {
            throw Exceptions.propagate(e);
        }
    }

    public gd<?> b(tw twVar, gd<?> gdVar) throws Throwable {
        InputStream inputStream;
        Throwable th;
        FileOutputStream fileOutputStream;
        int i = 0;
        gd<?> gdVarA = null;
        String strI = gdVar.i();
        try {
            HttpURLConnection httpURLConnectionA = twVar.a();
            inputStream = httpURLConnectionA.getInputStream();
            try {
                File file = new File(strI);
                if (qr.d(file)) {
                    Logger.d(Logger.PREPARE_TAG, "downloading to: " + strI);
                    byte[] bArr = new byte[8192];
                    fileOutputStream = new FileOutputStream(file);
                    while (true) {
                        try {
                            try {
                                int i2 = inputStream.read(bArr);
                                if (i2 <= 0) {
                                    break;
                                }
                                i += i2;
                                fileOutputStream.write(bArr, 0, i2);
                            } catch (IOException e) {
                                throw new qn("could not write ad to disk");
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e2) {
                                    Logger.d(Logger.PREPARE_TAG, "error closing input stream", e2);
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e3) {
                                    Logger.d(Logger.PREPARE_TAG, "error closing output stream", e3);
                                }
                            }
                            throw th;
                        }
                    }
                    fileOutputStream.flush();
                    int contentLength = httpURLConnectionA.getContentLength();
                    Logger.v(Logger.PREPARE_TAG, "response ContentLength = " + contentLength);
                    if (contentLength <= i) {
                        Logger.d(Logger.PREPARE_TAG, "download complete: " + strI + ", size: " + i);
                        gdVarA = a(i, gdVar);
                    } else {
                        Logger.w(Logger.PREPARE_TAG, "download size mismatch: " + strI + ", expected size: " + contentLength + ", actual size: " + i);
                        gdVar.a(ei.a.failed);
                        gdVar.f_();
                    }
                } else {
                    Logger.w(Logger.PREPARE_TAG, "could not create or directory not writeable: " + file);
                    fileOutputStream = null;
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e4) {
                        Logger.d(Logger.PREPARE_TAG, "error closing input stream", e4);
                    }
                }
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e5) {
                        Logger.d(Logger.PREPARE_TAG, "error closing output stream", e5);
                    }
                }
                return gdVarA;
            } catch (Throwable th3) {
                fileOutputStream = null;
                th = th3;
            }
        } catch (Throwable th4) {
            inputStream = null;
            th = th4;
            fileOutputStream = null;
        }
    }

    gd<?> a(int i, gd<?> gdVar) {
        ei.b bVarO = gdVar.o();
        switch (bVarO) {
            case postRoll:
            case template:
            case asset:
                gdVar.a(Integer.valueOf(i));
                break;
        }
        Logger.d(Logger.PREPARE_TAG, bVarO + " downloaded for ad " + gdVar.f());
        gdVar.a(ei.a.downloaded);
        gdVar.f_();
        return gdVar;
    }
}
