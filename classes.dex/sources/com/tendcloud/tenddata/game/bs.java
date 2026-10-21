package com.tendcloud.tenddata.game;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class bs extends AsyncTask {
    public static boolean a = false;
    private Context b;
    private JSONObject c;

    class a {
        private String b;
        private String c;

        public a(String str, String str2) {
            this.b = str;
            this.c = str2;
            a("");
        }

        private void a(String str) {
            File file = new File(this.c, str);
            if (file.isDirectory()) {
                return;
            }
            file.mkdirs();
        }

        public void a() {
            try {
                ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(this.b));
                while (true) {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry == null) {
                        zipInputStream.close();
                        return;
                    }
                    bp.a("Decompress", "Unzipping " + nextEntry.getName());
                    if (nextEntry.isDirectory()) {
                        a(nextEntry.getName());
                    } else {
                        FileOutputStream fileOutputStream = new FileOutputStream(this.c + nextEntry.getName());
                        for (int i = zipInputStream.read(); i != -1; i = zipInputStream.read()) {
                            fileOutputStream.write(i);
                        }
                        zipInputStream.closeEntry();
                        fileOutputStream.close();
                    }
                }
            } catch (Exception e) {
                Log.e("Decompress", "unzip" + e.getMessage());
            }
        }
    }

    public bs(Context context, JSONObject jSONObject) {
        this.b = context;
        this.c = jSONObject;
    }

    private void a(File file) {
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
                return;
            }
            if (file.isDirectory()) {
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                    file.delete();
                    return;
                }
                for (File file2 : fileArrListFiles) {
                    a(file2);
                }
                file.delete();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public String doInBackground(String... strArr) {
        a = true;
        try {
            File file = new File(strArr[1]);
            a(file);
            file.mkdirs();
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(strArr[0].toString()).openConnection();
            httpURLConnection.setRequestProperty("Accept-Encoding", "");
            httpURLConnection.setRequestProperty("Content-Type", "");
            httpURLConnection.connect();
            if (httpURLConnection.getResponseCode() != 200) {
                return null;
            }
            InputStream inputStream = httpURLConnection.getInputStream();
            FileOutputStream fileOutputStream = new FileOutputStream(strArr[1] + "/tmp.zip");
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStream.read(bArr);
                if (-1 == i) {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    new a(strArr[1] + "/tmp.zip", strArr[1] + "/").a();
                    String str = "file://" + strArr[1] + "/index.html";
                    try {
                        bp.a("Decompress", str);
                        return str;
                    } catch (Exception e) {
                        return str;
                    }
                }
                fileOutputStream.write(bArr, 0, i);
            }
        } catch (Exception e2) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(String str) {
        if (str == null) {
            Log.e("TDZipDownload", "download error");
        } else if (this.c != null) {
            try {
                this.c.put("url", str);
            } catch (JSONException e) {
            }
            az.a(this.b, this.c, false);
        }
        a = false;
        super.onPostExecute(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onProgressUpdate(Integer... numArr) {
        super.onProgressUpdate(numArr);
    }
}
