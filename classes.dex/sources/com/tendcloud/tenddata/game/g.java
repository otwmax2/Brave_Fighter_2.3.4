package com.tendcloud.tenddata.game;

import android.content.Context;
import android.preference.PreferenceManager;
import com.facebook.ads.AudienceNetworkActivity;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URL;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes.dex */
public class g {
    private static final int d = 600;
    private static final int e = 60000;
    private static final int f = 60000;
    public static int a = 60000;
    public static int b = 60000;
    public static volatile HashMap c = new HashMap();
    private static Context g = null;
    private static volatile HashMap h = new HashMap();

    static class a {
        String a = null;
        String b = null;
        String c = null;
        String d = null;
        String e = null;

        a() {
        }
    }

    static class b {
        static final int a = 1;
        static final int b = 2;
        static final int c = 3;
        static final int d = 4;

        b() {
        }
    }

    static class c implements X509TrustManager {
        X509Certificate a;

        c(X509Certificate x509Certificate) {
            this.a = x509Certificate;
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            boolean z;
            CertificateException certificateException;
            int iIndexOf;
            if (x509CertificateArr.length == 0) {
                throw new CertificateException("No server certificate found!");
            }
            if (!x509CertificateArr[0].getIssuerDN().equals(this.a.getSubjectDN())) {
                throw new CertificateException("Parent certificate of server was different than expected signing certificate");
            }
            try {
                String name = x509CertificateArr[0].getSubjectDN().getName();
                int iIndexOf2 = name.indexOf("CN=");
                if (iIndexOf2 >= 0 && (iIndexOf = (name = name.substring(iIndexOf2 + 3)).indexOf(",")) >= 0) {
                    name = name.substring(0, iIndexOf);
                }
                String[] strArrSplit = name.split("\\.");
                String str2 = strArrSplit.length >= 2 ? strArrSplit[strArrSplit.length - 2] + "." + strArrSplit[strArrSplit.length - 1] : name;
                if (!g.c.containsKey(Long.valueOf(Thread.currentThread().getId()))) {
                    throw new CertificateException("No valid host provided!");
                }
                if (!((String) g.c.get(Long.valueOf(Thread.currentThread().getId()))).endsWith(str2)) {
                    throw new CertificateException("Server certificate has incorrect host name!");
                }
                x509CertificateArr[0].verify(this.a.getPublicKey());
                x509CertificateArr[0].checkValidity();
            } finally {
                if (z) {
                }
            }
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return null;
        }
    }

    public static class d {
        public int a;
        public String b;

        d(int i) {
            this(i, "");
        }

        d(int i, String str) {
            this.a = i;
            this.b = str;
        }

        public int a() {
            return this.a;
        }

        public String b() {
            return this.b;
        }
    }

    public static d a(Context context, String str, String str2, String str3, String str4, byte[] bArr) {
        g = context;
        b(str, str2);
        return a(str, str2, str3, str4, bArr);
    }

    private static d a(String str, String str2, String str3, String str4, byte[] bArr) {
        d dVar = new d(600);
        try {
            if (a(str, 2) != null) {
                dVar = a(a(str, 2), str3, str4, bArr, str);
                if (dVar.a == 600) {
                    a(str, (String) null, 2);
                }
            } else {
                if (a(str, 1) != null) {
                    dVar = a(a(str, 1), str3, str4, bArr, str);
                    if (dVar.a != 600) {
                        a(str, a(str, 1), 2);
                        a(str);
                    }
                }
                if (dVar.a == 600 && a(str, 3) != null) {
                    dVar = a(a(str, 3), str3, str4, bArr, str);
                    if (dVar.a != 600) {
                        a(str, a(str, 3), 2);
                    }
                }
                if (dVar.a == 600) {
                    dVar = a(a(str, 4), str3, str4, bArr, str);
                    if (dVar.a != 600) {
                        a(str, a(str, 4), 2);
                    }
                }
            }
        } catch (Throwable th) {
        }
        return dVar;
    }

    private static d a(String str, String str2, String str3, byte[] bArr, String str4) {
        try {
            if (str2.startsWith("https://")) {
                c.put(Long.valueOf(Thread.currentThread().getId()), str4);
            }
            URLConnection uRLConnectionA = a(a(str2, str), str4, true);
            if (uRLConnectionA == null) {
                return new d(600, "");
            }
            if (str2.toLowerCase().startsWith("https") && !str3.trim().isEmpty()) {
                uRLConnectionA = a(uRLConnectionA, str3);
            }
            return a(bArr, uRLConnectionA);
        } catch (Throwable th) {
            return new d(600, "");
        }
    }

    private static d a(byte[] bArr, URLConnection uRLConnection) throws Throwable {
        int responseCode;
        BufferedReader bufferedReader;
        OutputStream outputStream;
        OutputStream outputStream2 = null;
        bufferedReader = null;
        BufferedReader bufferedReader2 = null;
        if (bArr == null || bArr.length == 0 || uRLConnection == null) {
            return new d(600, "");
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnection;
        StringBuffer stringBuffer = new StringBuffer();
        try {
            httpURLConnection.setRequestMethod("POST");
            outputStream = httpURLConnection.getOutputStream();
            try {
                try {
                    outputStream.write(bArr);
                    outputStream.close();
                    responseCode = httpURLConnection.getResponseCode();
                    try {
                        bufferedReader = new BufferedReader(new InputStreamReader(responseCode > 400 ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream()));
                        while (true) {
                            try {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                }
                                stringBuffer.append(line);
                                stringBuffer.append('\n');
                            } catch (Throwable th) {
                                outputStream2 = outputStream;
                                if (outputStream2 != null) {
                                    try {
                                        outputStream2.close();
                                    } catch (Throwable th2) {
                                    }
                                }
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (Throwable th3) {
                                    }
                                }
                                if (httpURLConnection != null) {
                                    try {
                                        httpURLConnection.disconnect();
                                    } catch (Throwable th4) {
                                    }
                                }
                                a = 60000;
                                b = 60000;
                            }
                        }
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Throwable th5) {
                            }
                        }
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable th6) {
                            }
                        }
                        if (httpURLConnection != null) {
                            try {
                                httpURLConnection.disconnect();
                            } catch (Throwable th7) {
                            }
                        }
                        a = 60000;
                        b = 60000;
                    } catch (Throwable th8) {
                        bufferedReader = null;
                        outputStream2 = outputStream;
                    }
                } catch (Throwable th9) {
                    responseCode = 600;
                    bufferedReader = null;
                    outputStream2 = outputStream;
                }
            } catch (Throwable th10) {
                th = th10;
            }
        } catch (Throwable th11) {
            responseCode = 600;
            bufferedReader = null;
        }
        return new d(responseCode, stringBuffer.toString());
    }

    private static synchronized String a(String str, int i) {
        String str2;
        a aVar;
        if (!aa.b(str) && h.containsKey(str) && (aVar = (a) h.get(str)) != null) {
            switch (i) {
                case 1:
                    str2 = aVar.b;
                    break;
                case 2:
                    str2 = aVar.d;
                    break;
                case 3:
                    str2 = aVar.c;
                    break;
                case 4:
                    str2 = aVar.a;
                    break;
                default:
                    str2 = null;
                    break;
            }
        } else {
            str2 = null;
        }
        return str2;
    }

    public static String a(String str, File file) {
        return b(str, (String) null, file);
    }

    public static String a(String str, String str2, File file) {
        return b(str, str2, file);
    }

    public static String a(String str, String str2, boolean z) {
        return b(str, str2, z);
    }

    public static String a(String str, boolean z) {
        return b(str, (String) null, z);
    }

    private static URL a(String str, String str2) {
        URL url = new URL(str);
        return o.a() ? url : new URL(url.getProtocol(), str2, url.getPort(), url.getFile());
    }

    private static URLConnection a(URL url, String str, boolean z) {
        try {
            URLConnection uRLConnectionOpenConnection = url.openConnection();
            uRLConnectionOpenConnection.setRequestProperty("Accept-Encoding", "");
            if (str != null) {
                uRLConnectionOpenConnection.setRequestProperty("Host", str);
                uRLConnectionOpenConnection.setRequestProperty("Content-Type", "");
                if (!aa.b(str) && str.equals("eauth.xdrig.com")) {
                    uRLConnectionOpenConnection.setRequestProperty("Content-Type", "application/json; charset=utf-8");
                }
            } else {
                String host = url.getHost();
                if (aa.b(host) || host.equals("jic.talkingdata.com")) {
                }
            }
            uRLConnectionOpenConnection.setDoInput(true);
            if (z) {
                uRLConnectionOpenConnection.setDoOutput(true);
            }
            uRLConnectionOpenConnection.setConnectTimeout(a);
            uRLConnectionOpenConnection.setReadTimeout(b);
            return uRLConnectionOpenConnection;
        } catch (Throwable th) {
            return null;
        }
    }

    private static HttpsURLConnection a(URLConnection uRLConnection, String str) {
        try {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) uRLConnection;
            SSLContext sSLContext = SSLContext.getInstance("TLSv1.2");
            sSLContext.init(null, new TrustManager[]{new c(b(str))}, null);
            httpsURLConnection.setHostnameVerifier(new h());
            httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
            return httpsURLConnection;
        } catch (Throwable th) {
            return null;
        }
    }

    public static SSLSocketFactory a(X509Certificate x509Certificate) {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new TrustManager[]{new c(x509Certificate)}, null);
            return sSLContext.getSocketFactory();
        } catch (Throwable th) {
            return null;
        }
    }

    private static void a(String str) {
        String strA = a(str, 1);
        if (strA == null || strA.equalsIgnoreCase(a(str, 3)) || g == null) {
            return;
        }
        PreferenceManager.getDefaultSharedPreferences(g).edit().putString(aa.d(str), a(str, 1)).apply();
        a(str, a(str, 1), 3);
    }

    private static synchronized void a(String str, String str2, int i) {
        if (!aa.b(str) && h.containsKey(str)) {
            a aVar = (a) h.get(str);
            switch (i) {
                case 1:
                    aVar.b = str2;
                    break;
                case 2:
                    aVar.d = str2;
                    break;
                case 3:
                    aVar.c = str2;
                    break;
                case 4:
                    aVar.a = str2;
                    break;
            }
        }
    }

    private static void a(HttpsURLConnection httpsURLConnection) {
        if (httpsURLConnection != null) {
            try {
                System.out.println("Response url: " + httpsURLConnection.getURL());
                System.out.println("Response Code : " + httpsURLConnection.getResponseCode());
                System.out.println("Cipher Suite : " + httpsURLConnection.getCipherSuite());
                System.out.println("\n");
                for (Certificate certificate : httpsURLConnection.getServerCertificates()) {
                    System.out.println("Cert Type : " + certificate.getType());
                    System.out.println("Cert Hash Code : " + certificate.hashCode());
                    System.out.println("Cert Public Key Algorithm : " + certificate.getPublicKey().getAlgorithm());
                    System.out.println("Cert Public Key Format : " + certificate.getPublicKey().getFormat());
                    System.out.println("\n");
                }
            } catch (Throwable th) {
            }
        }
    }

    private static byte[] a(InputStream inputStream) {
        byte[] byteArray = null;
        try {
            GZIPInputStream gZIPInputStream = new GZIPInputStream(inputStream);
            byte[] bArr = new byte[1024];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int i = gZIPInputStream.read(bArr, 0, bArr.length);
                if (i == -1) {
                    byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.flush();
                    byteArrayOutputStream.close();
                    gZIPInputStream.close();
                    return byteArray;
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
        } catch (Throwable th) {
            return byteArray;
        }
    }

    private static String b(String str, String str2, File file) throws Throwable {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnectionA;
        try {
            URL url = new URL(str);
            httpURLConnection = (HttpURLConnection) a(url, (String) null, false);
            try {
                if (!str.toLowerCase().startsWith("https") || aa.b(str2)) {
                    httpURLConnectionA = httpURLConnection;
                } else {
                    c.put(Long.valueOf(Thread.currentThread().getId()), url.getHost());
                    httpURLConnectionA = a(httpURLConnection, str2);
                }
            } catch (Throwable th) {
            }
            try {
            } catch (Throwable th2) {
                th = th2;
                if (httpURLConnectionA != null) {
                    try {
                        httpURLConnectionA.disconnect();
                    } catch (Throwable th3) {
                    }
                }
                throw th;
            }
        } catch (Throwable th4) {
            httpURLConnection = null;
        }
        if (httpURLConnectionA.getResponseCode() != 200) {
            if (httpURLConnectionA != null) {
                try {
                    httpURLConnectionA.disconnect();
                } catch (Throwable th5) {
                }
            }
            return null;
        }
        InputStream inputStream = httpURLConnectionA.getInputStream();
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        try {
            byte[] bArr = new byte[4096];
            while (true) {
                int i = inputStream.read(bArr);
                if (i == -1) {
                    break;
                }
                fileOutputStream.write(bArr, 0, i);
                messageDigest.update(bArr, 0, i);
            }
            fileOutputStream.close();
            inputStream.close();
            String strA = aa.a(messageDigest.digest());
            if (httpURLConnectionA == null) {
                return strA;
            }
            try {
                httpURLConnectionA.disconnect();
                return strA;
            } catch (Throwable th6) {
                return strA;
            }
        } catch (Throwable th7) {
            fileOutputStream.close();
            inputStream.close();
            throw th7;
        }
    }

    private static String b(String str, String str2, boolean z) throws Throwable {
        HttpURLConnection httpURLConnectionA;
        HttpURLConnection httpURLConnection;
        BufferedReader bufferedReader = null;
        if (aa.b(str)) {
            return null;
        }
        BufferedReader bufferedReader2 = null;
        StringBuffer stringBuffer = new StringBuffer();
        try {
            URL url = new URL(str);
            httpURLConnection = (HttpURLConnection) a(url, (String) null, false);
            try {
                if (!str.toLowerCase().startsWith("https") || aa.b(str2)) {
                    httpURLConnectionA = httpURLConnection;
                } else {
                    c.put(Long.valueOf(Thread.currentThread().getId()), url.getHost());
                    httpURLConnectionA = a(httpURLConnection, str2);
                }
                try {
                    httpURLConnectionA.setRequestMethod("GET");
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Throwable th2) {
                httpURLConnectionA = httpURLConnection;
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            httpURLConnectionA = null;
        }
        if (httpURLConnectionA.getResponseCode() != 200) {
            if (0 != 0) {
                try {
                    bufferedReader2.close();
                } catch (Throwable th4) {
                }
            }
            if (httpURLConnectionA != null) {
                try {
                    httpURLConnectionA.disconnect();
                } catch (Throwable th5) {
                }
            }
            return null;
        }
        if (z) {
            stringBuffer.append(new String(a(httpURLConnectionA.getInputStream()), AudienceNetworkActivity.WEBVIEW_ENCODING));
        } else {
            BufferedReader bufferedReader3 = new BufferedReader(new InputStreamReader(httpURLConnectionA.getInputStream()));
            while (true) {
                try {
                    String line = bufferedReader3.readLine();
                    if (line == null) {
                        break;
                    }
                    stringBuffer.append("/n");
                    stringBuffer.append(line);
                } catch (Throwable th6) {
                    bufferedReader = bufferedReader3;
                    httpURLConnection = httpURLConnectionA;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th7) {
                        }
                    }
                    if (httpURLConnection != null) {
                        try {
                            httpURLConnection.disconnect();
                        } catch (Throwable th8) {
                        }
                    }
                }
            }
            bufferedReader = bufferedReader3;
        }
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
            } catch (Throwable th9) {
            }
        }
        if (httpURLConnectionA != null) {
            try {
                httpURLConnectionA.disconnect();
            } catch (Throwable th10) {
            }
        }
        return stringBuffer.toString();
    }

    private static X509Certificate b(String str) {
        if (str == null || str.trim().isEmpty()) {
            return null;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str.getBytes());
        try {
            X509Certificate x509Certificate = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(byteArrayInputStream);
            if (byteArrayInputStream == null) {
                return x509Certificate;
            }
            try {
                byteArrayInputStream.close();
                return x509Certificate;
            } catch (Throwable th) {
                return x509Certificate;
            }
        } catch (Exception e2) {
            if (byteArrayInputStream != null) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th2) {
                    return null;
                }
            }
            return null;
        } catch (Throwable th3) {
            if (byteArrayInputStream != null) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th4) {
                }
            }
            throw th3;
        }
    }

    private static synchronized void b(String str, String str2) {
        if (!aa.b(str) && !h.containsKey(str)) {
            a aVar = new a();
            aVar.e = str;
            aVar.a = str2;
            aVar.c = PreferenceManager.getDefaultSharedPreferences(g).getString(aa.d(str), null);
            try {
                aVar.b = InetAddress.getByName(str).getHostAddress();
            } catch (Throwable th) {
            }
            h.put(str, aVar);
        }
    }
}
