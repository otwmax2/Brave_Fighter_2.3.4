package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Logger;
import com.google.android.gms.analytics.Tracker;

/* JADX INFO: loaded from: classes.dex */
public class zzdi {
    private Context mContext;
    private Tracker zzcsg;
    private GoogleAnalytics zzcsi;

    static class zza implements Logger {
        zza() {
        }

        private static int zzyf(int i) {
            switch (i) {
                case 2:
                    return 0;
                case 3:
                case 4:
                    return 1;
                case 5:
                    return 2;
                case 6:
                default:
                    return 3;
            }
        }

        @Override // com.google.android.gms.analytics.Logger
        public void error(Exception exc) {
            zzbn.zzb("", exc);
        }

        @Override // com.google.android.gms.analytics.Logger
        public void error(String str) {
            zzbn.e(str);
        }

        @Override // com.google.android.gms.analytics.Logger
        public int getLogLevel() {
            return zzyf(zzbn.getLogLevel());
        }

        @Override // com.google.android.gms.analytics.Logger
        public void info(String str) {
            zzbn.zzcx(str);
        }

        @Override // com.google.android.gms.analytics.Logger
        public void setLogLevel(int i) {
            zzbn.zzcy("GA uses GTM logger. Please use TagManager.setLogLevel(int) instead.");
        }

        @Override // com.google.android.gms.analytics.Logger
        public void verbose(String str) {
            zzbn.v(str);
        }

        @Override // com.google.android.gms.analytics.Logger
        public void warn(String str) {
            zzbn.zzcy(str);
        }
    }

    public zzdi(Context context) {
        this.mContext = context;
    }

    private synchronized void zzoq(String str) {
        if (this.zzcsi == null) {
            this.zzcsi = GoogleAnalytics.getInstance(this.mContext);
            this.zzcsi.setLogger(new zza());
            this.zzcsg = this.zzcsi.newTracker(str);
        }
    }

    public Tracker zzop(String str) {
        zzoq(str);
        return this.zzcsg;
    }
}
