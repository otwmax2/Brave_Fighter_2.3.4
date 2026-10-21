package com.vungle.publisher;

import android.database.Cursor;
import com.vungle.publisher.eh;
import com.vungle.publisher.log.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ji extends eh {

    /* JADX INFO: compiled from: vungle */
    public enum a implements jf {
        error,
        mute,
        moat,
        play_percentage_0(0.0f),
        play_percentage_25(0.25f),
        play_percentage_50(0.5f),
        play_percentage_75(0.75f),
        play_percentage_80(0.8f),
        play_percentage_100(0.99f),
        postroll_click(true),
        postroll_view,
        unmute,
        video_click(true),
        video_close,
        video_pause,
        video_resume;

        private final float q;
        private final boolean r;

        a() {
            this(-1.0f, false);
        }

        a(float f) {
            this(f, false);
        }

        a(boolean z) {
            this(-1.0f, z);
        }

        a(float f, boolean z) {
            this.q = f;
            this.r = z;
        }

        @Override // com.vungle.publisher.jf
        public boolean a() {
            return this.r;
        }

        public float b() {
            return this.q;
        }
    }

    protected ji() {
    }

    /* JADX INFO: compiled from: vungle */
    static abstract class b<R extends wp> extends eh.a<ji, wv, R> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.vungle.publisher.eh.a
        public Map<jf, List<ji>> a(String str, wv wvVar) {
            HashMap map = null;
            if (wvVar != null) {
                map = new HashMap();
                a(str, map, a.error, wvVar.g());
                a(str, map, a.mute, wvVar.h());
                wa[] waVarArrJ = wvVar.j();
                if (waVarArrJ != null && waVarArrJ.length > 0) {
                    for (wa waVar : waVarArrJ) {
                        Float fC = waVar.c();
                        if (fC == null) {
                            Logger.w(Logger.DATABASE_TAG, "Invalid/null play percentage checkpoint received");
                        } else {
                            switch ((int) (((double) fC.floatValue()) * 100.0d)) {
                                case 0:
                                    a(str, map, a.play_percentage_0, waVar.d());
                                    break;
                                case 25:
                                    a(str, map, a.play_percentage_25, waVar.d());
                                    break;
                                case 50:
                                    a(str, map, a.play_percentage_50, waVar.d());
                                    break;
                                case 75:
                                    a(str, map, a.play_percentage_75, waVar.d());
                                    break;
                                case 100:
                                    a(str, map, a.play_percentage_100, waVar.d());
                                    break;
                                default:
                                    Logger.w(Logger.DATABASE_TAG, "Invalid/unsupported play percentage checkpoint: " + fC);
                                    break;
                            }
                        }
                    }
                }
                a(str, map, a.postroll_click, wvVar.c());
                a(str, map, a.postroll_view, wvVar.k());
                a(str, map, a.video_click, wvVar.d());
                a(str, map, a.video_close, wvVar.f());
                a(str, map, a.video_pause, wvVar.i());
                a(str, map, a.video_resume, wvVar.l());
                a(str, map, a.unmute, wvVar.m());
                if (wvVar.n().booleanValue()) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(wvVar.o());
                    a(str, map, a.moat, arrayList);
                }
            }
            return map;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.eh.a
        public ji a(ji jiVar, Cursor cursor, boolean z) {
            super.a(jiVar, cursor, z);
            jiVar.c = (jf) ce.a(cursor, "event", a.class);
            return jiVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public ji[] d(int i) {
            return new ji[i];
        }
    }
}
