package com.vungle.publisher.log;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.vungle.publisher.env.n;
import com.vungle.publisher.env.r;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class a {

    @Inject
    r a;

    @Inject
    n b;

    @Inject
    public a() {
    }

    public JsonObject a(File file) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("batch_id", Long.valueOf(this.a.p()));
        jsonObject.addProperty("device_guid", this.a.q());
        JsonArray jsonArray = new JsonArray();
        if (file != null && file.exists()) {
            a(jsonArray, file);
        }
        jsonObject.add("payload", jsonArray);
        return jsonObject;
    }

    private void a(JsonArray jsonArray, File file) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    String[] strArrA = a(line);
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty("device_timestamp", strArrA[0]);
                    jsonObject.addProperty("time_zone", strArrA[1]);
                    jsonObject.addProperty("context", strArrA[2]);
                    jsonObject.addProperty("log_level", strArrA[3]);
                    jsonObject.addProperty("event_id", strArrA[4]);
                    jsonObject.addProperty("sdk_user_agent", strArrA[5]);
                    jsonObject.addProperty("log_message", strArrA[6]);
                    jsonObject.addProperty("bundle_id", this.b.a());
                    JsonObject jsonObject2 = new JsonObject();
                    jsonObject2.add("metadata", jsonObject);
                    jsonObject2.addProperty("raw_log", line);
                    jsonArray.add(jsonObject2);
                } else {
                    return;
                }
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    private String[] a(String str) {
        return str.split(";");
    }
}
