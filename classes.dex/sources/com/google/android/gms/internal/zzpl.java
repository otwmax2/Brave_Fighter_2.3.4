package com.google.android.gms.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.util.Log;
import com.google.android.gms.clearcut.zzb;
import com.ironsource.sdk.precache.DownloadManager;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public class zzpl implements zzb.InterfaceC0069zzb {
    private static final Charset UTF_8 = Charset.forName(DownloadManager.UTF8_CHARSET);
    static Boolean qK = null;
    final zza qL;

    static class zza {
        final ContentResolver mContentResolver;

        zza(Context context) {
            if (context == null || !zzbm(context)) {
                this.mContentResolver = null;
            } else {
                this.mContentResolver = context.getContentResolver();
                zzaer.zzb(this.mContentResolver, "gms:playlog:service:sampling_");
            }
        }

        private String getString(String str, String str2) {
            return this.mContentResolver == null ? str2 : zzaer.zza(this.mContentResolver, str, str2);
        }

        private static boolean zzbm(Context context) {
            if (zzpl.qK == null) {
                zzpl.qK = Boolean.valueOf(context.checkCallingOrSelfPermission("com.google.android.providers.gsf.permission.READ_GSERVICES") == 0);
            }
            return zzpl.qK.booleanValue();
        }

        long zzanb() {
            if (this.mContentResolver == null) {
                return 0L;
            }
            return zzaer.getLong(this.mContentResolver, "android_id", 0L);
        }

        String zzgv(String str) {
            String strValueOf = String.valueOf("gms:playlog:service:sampling_");
            String strValueOf2 = String.valueOf(str);
            return getString(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf), null);
        }
    }

    static class zzb {
        public final String qM;
        public final long qN;
        public final long qO;

        public zzb(String str, long j, long j2) {
            this.qM = str;
            this.qN = j;
            this.qO = j2;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzbVar = (zzb) obj;
            return com.google.android.gms.common.internal.zzaa.equal(this.qM, zzbVar.qM) && com.google.android.gms.common.internal.zzaa.equal(Long.valueOf(this.qN), Long.valueOf(zzbVar.qN)) && com.google.android.gms.common.internal.zzaa.equal(Long.valueOf(this.qO), Long.valueOf(zzbVar.qO));
        }

        public int hashCode() {
            return com.google.android.gms.common.internal.zzaa.hashCode(this.qM, Long.valueOf(this.qN), Long.valueOf(this.qO));
        }
    }

    public zzpl() {
        this(new zza(null));
    }

    public zzpl(Context context) {
        this(new zza(context));
    }

    zzpl(zza zzaVar) {
        this.qL = (zza) com.google.android.gms.common.internal.zzab.zzaa(zzaVar);
    }

    static boolean zza(long j, long j2, long j3) {
        if (j2 < 0 || j3 < 0) {
            throw new IllegalArgumentException(new StringBuilder(72).append("negative values not supported: ").append(j2).append("/").append(j3).toString());
        }
        return j3 > 0 && zzpm.zzd(j, j3) < j2;
    }

    static long zzag(long j) {
        return zzpi.zzm(ByteBuffer.allocate(8).putLong(j).array());
    }

    static long zzd(String str, long j) {
        if (str == null || str.isEmpty()) {
            return zzag(j);
        }
        byte[] bytes = str.getBytes(UTF_8);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bytes.length + 8);
        byteBufferAllocate.put(bytes);
        byteBufferAllocate.putLong(j);
        return zzpi.zzm(byteBufferAllocate.array());
    }

    static zzb zzgu(String str) {
        int i = 0;
        if (str == null) {
            return null;
        }
        String strSubstring = "";
        int iIndexOf = str.indexOf(44);
        if (iIndexOf >= 0) {
            strSubstring = str.substring(0, iIndexOf);
            i = iIndexOf + 1;
        }
        int iIndexOf2 = str.indexOf(47, i);
        if (iIndexOf2 <= 0) {
            String strValueOf = String.valueOf(str);
            Log.e("LogSamplerImpl", strValueOf.length() != 0 ? "Failed to parse the rule: ".concat(strValueOf) : new String("Failed to parse the rule: "));
            return null;
        }
        try {
            long j = Long.parseLong(str.substring(i, iIndexOf2));
            long j2 = Long.parseLong(str.substring(iIndexOf2 + 1));
            if (j >= 0 && j2 >= 0) {
                return new zzb(strSubstring, j, j2);
            }
            Log.e("LogSamplerImpl", new StringBuilder(72).append("negative values not supported: ").append(j).append("/").append(j2).toString());
            return null;
        } catch (NumberFormatException e) {
            String strValueOf2 = String.valueOf(str);
            Log.e("LogSamplerImpl", strValueOf2.length() != 0 ? "parseLong() failed while parsing: ".concat(strValueOf2) : new String("parseLong() failed while parsing: "), e);
            return null;
        }
    }

    @Override // com.google.android.gms.clearcut.zzb.InterfaceC0069zzb
    public boolean zzg(String str, int i) {
        if (str == null || str.isEmpty()) {
            str = i >= 0 ? String.valueOf(i) : null;
        }
        if (str == null) {
            return true;
        }
        long jZzanb = this.qL.zzanb();
        zzb zzbVarZzgu = zzgu(this.qL.zzgv(str));
        if (zzbVarZzgu != null) {
            return zza(zzd(zzbVarZzgu.qM, jZzanb), zzbVarZzgu.qN, zzbVarZzgu.qO);
        }
        return true;
    }
}
