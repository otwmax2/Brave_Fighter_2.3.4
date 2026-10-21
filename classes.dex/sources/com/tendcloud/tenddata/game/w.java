package com.tendcloud.tenddata.game;

import android.content.Context;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.Looper;
import com.ironsource.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes.dex */
public class w {
    private static volatile w b = null;
    private static final long g = 10000;
    private static final int h = 10;
    private Context a;
    private SensorManager i;
    private final int c = IronSourceConstants.INTERSTITIAL_DAILY_CAPPED;
    private final int d = 18;
    private long e = 0;
    private final int f = 5;
    private a j = null;
    private Handler k = new x(this, Looper.getMainLooper());
    private SensorEventListener l = new y(this);

    public interface a {
        void a();
    }

    private w(Context context) {
        this.a = null;
        try {
            this.a = context;
            this.i = (SensorManager) context.getSystemService("sensor");
            this.i.registerListener(this.l, this.i.getDefaultSensor(1), 1);
            this.k.sendEmptyMessageDelayed(10, g);
        } catch (Throwable th) {
        }
    }

    public static w a(Context context) {
        if (b == null) {
            synchronized (w.class) {
                if (b == null) {
                    b = new w(context);
                }
            }
        }
        return b;
    }

    public void a(a aVar) {
        this.j = aVar;
    }
}
