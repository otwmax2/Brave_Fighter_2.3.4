package com.vungle.publisher;

import android.database.Cursor;
import com.vungle.publisher.log.Logger;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public enum m {
    vungle_local,
    vungle_streaming,
    vungle_mraid,
    third_party_mraid;

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class a {
        @Inject
        public a() {
        }

        public m a(String str) {
            if (str == null) {
                return null;
            }
            for (m mVar : m.values()) {
                if (mVar.toString().equals(str)) {
                    return mVar;
                }
            }
            Logger.e(Logger.PROTOCOL_TAG, "unknown AdType: " + str, new RuntimeException());
            return null;
        }

        public m a(Cursor cursor, String str) {
            if (cursor != null && cursor.getCount() == 1 && cursor.moveToFirst()) {
                return a(ce.e(cursor, str));
            }
            Logger.e(Logger.PROTOCOL_TAG, "AdType not found", new RuntimeException());
            return null;
        }

        public m[] a() {
            return new m[]{m.vungle_local, m.vungle_mraid, m.third_party_mraid};
        }
    }
}
