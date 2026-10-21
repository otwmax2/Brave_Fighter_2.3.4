package com.tendcloud.tenddata.game;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.os.Vibrator;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class y implements SensorEventListener {
    final /* synthetic */ w a;
    private int b = 0;

    y(w wVar) {
        this.a = wVar;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            int type = sensorEvent.sensor.getType();
            if (jCurrentTimeMillis - this.a.e <= 250 || type != 1) {
                return;
            }
            this.a.e = jCurrentTimeMillis;
            float[] fArr = sensorEvent.values;
            Log.i("", "values[0] = " + fArr[0]);
            if (Math.abs(fArr[0]) > 18.0f || Math.abs(fArr[1]) > 18.0f || Math.abs(fArr[2]) > 18.0f) {
                this.b++;
            }
            if (this.b >= 5) {
                if (this.a.j != null) {
                    if (aa.b(this.a.a, "android.permission.VIBRATE")) {
                        ((Vibrator) this.a.a.getSystemService("vibrator")).vibrate(100L);
                    }
                    this.a.j.a();
                    if (this.a.i != null) {
                        this.a.i.unregisterListener(this.a.l);
                    }
                }
                this.b = 0;
            }
        } catch (Throwable th) {
        }
    }
}
