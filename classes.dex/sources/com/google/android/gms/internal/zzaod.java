package com.google.android.gms.internal;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class zzaod extends zzank<Date> {
    public static final zzanl bfE = new zzanl() { // from class: com.google.android.gms.internal.zzaod.1
        @Override // com.google.android.gms.internal.zzanl
        public <T> zzank<T> zza(zzams zzamsVar, zzaoo<T> zzaooVar) {
            if (zzaooVar.s() == Date.class) {
                return new zzaod();
            }
            return null;
        }
    };
    private final DateFormat bdO = DateFormat.getDateTimeInstance(2, 2, Locale.US);
    private final DateFormat bdP = DateFormat.getDateTimeInstance(2, 2);
    private final DateFormat bdQ = g();

    private static DateFormat g() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat;
    }

    private synchronized Date zzsz(String str) {
        Date date;
        try {
            date = this.bdP.parse(str);
        } catch (ParseException e) {
            try {
                date = this.bdO.parse(str);
            } catch (ParseException e2) {
                try {
                    date = this.bdQ.parse(str);
                } catch (ParseException e3) {
                    throw new zzanh(str, e3);
                }
            }
        }
        return date;
    }

    @Override // com.google.android.gms.internal.zzank
    public synchronized void zza(zzaor zzaorVar, Date date) throws IOException {
        if (date == null) {
            zzaorVar.r();
        } else {
            zzaorVar.zztb(this.bdO.format(date));
        }
    }

    @Override // com.google.android.gms.internal.zzank
    /* JADX INFO: renamed from: zzk, reason: merged with bridge method [inline-methods] */
    public Date zzb(zzaop zzaopVar) throws IOException {
        if (zzaopVar.h() != zzaoq.NULL) {
            return zzsz(zzaopVar.nextString());
        }
        zzaopVar.nextNull();
        return null;
    }
}
