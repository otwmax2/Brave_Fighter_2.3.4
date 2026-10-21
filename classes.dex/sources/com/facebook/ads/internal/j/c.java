package com.facebook.ads.internal.j;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class c {
    public static String a(InputStream inputStream) throws IOException {
        StringWriter stringWriter = new StringWriter();
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
        char[] cArr = new char[4096];
        while (true) {
            int i = inputStreamReader.read(cArr);
            if (i == -1) {
                String string = stringWriter.toString();
                stringWriter.close();
                inputStreamReader.close();
                return string;
            }
            stringWriter.write(cArr, 0, i);
        }
    }

    public static String a(byte[] bArr) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            String strA = a(gZIPInputStream);
            gZIPInputStream.close();
            byteArrayInputStream.close();
            return strA;
        } catch (Exception e) {
            b.a(a.a(e, "Error decompressing data"));
            e.printStackTrace();
            return "";
        }
    }

    public static byte[] a(String str) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(str.length());
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(str.getBytes());
            gZIPOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Exception e) {
            b.a(a.a(e, "Error compressing data"));
            e.printStackTrace();
            return new byte[0];
        }
    }
}
