package com.vungle.publisher;

import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public abstract class vt<T> {
    public abstract T b() throws JSONException;

    public String e() throws JSONException {
        T tB = b();
        if (tB == null) {
            return null;
        }
        return tB.toString();
    }
}
