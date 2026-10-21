package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.analytics.internal.zzao;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzly;
import com.google.android.gms.internal.zzlz;
import com.google.android.gms.internal.zzma;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzmc;
import com.google.android.gms.internal.zzmd;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzmf;
import com.google.android.gms.internal.zzmg;
import com.google.android.gms.internal.zzmh;
import com.google.android.gms.internal.zzmi;
import com.google.android.gms.internal.zzmj;
import com.google.android.gms.internal.zzmk;
import com.ironsource.sdk.constants.Constants;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class zzb extends com.google.android.gms.analytics.internal.zzc implements zzk {
    private static DecimalFormat zzcru;
    private final com.google.android.gms.analytics.internal.zzf zzcrq;
    private final String zzcrv;
    private final Uri zzcrw;
    private final boolean zzcrx;
    private final boolean zzcry;

    public zzb(com.google.android.gms.analytics.internal.zzf zzfVar, String str) {
        this(zzfVar, str, true, false);
    }

    public zzb(com.google.android.gms.analytics.internal.zzf zzfVar, String str, boolean z, boolean z2) {
        super(zzfVar);
        zzab.zzhs(str);
        this.zzcrq = zzfVar;
        this.zzcrv = str;
        this.zzcrx = z;
        this.zzcry = z2;
        this.zzcrw = zzdj(this.zzcrv);
    }

    private static void zza(Map<String, String> map, String str, double d) {
        if (d != 0.0d) {
            map.put(str, zzb(d));
        }
    }

    private static void zza(Map<String, String> map, String str, int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        map.put(str, new StringBuilder(23).append(i).append("x").append(i2).toString());
    }

    private static void zza(Map<String, String> map, String str, boolean z) {
        if (z) {
            map.put(str, "1");
        }
    }

    private static String zzan(Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (sb.length() != 0) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append(Constants.RequestParameters.EQUAL);
            sb.append(entry.getValue());
        }
        return sb.toString();
    }

    static String zzb(double d) {
        if (zzcru == null) {
            zzcru = new DecimalFormat("0.######");
        }
        return zzcru.format(d);
    }

    private static void zzb(Map<String, String> map, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        map.put(str, str2);
    }

    public static Map<String, String> zzc(zze zzeVar) {
        HashMap map = new HashMap();
        zzmc zzmcVar = (zzmc) zzeVar.zza(zzmc.class);
        if (zzmcVar != null) {
            for (Map.Entry<String, Object> entry : zzmcVar.zzxm().entrySet()) {
                String strZzj = zzj(entry.getValue());
                if (strZzj != null) {
                    map.put(entry.getKey(), strZzj);
                }
            }
        }
        zzmh zzmhVar = (zzmh) zzeVar.zza(zzmh.class);
        if (zzmhVar != null) {
            zzb(map, "t", zzmhVar.zzxx());
            zzb(map, "cid", zzmhVar.zzwb());
            zzb(map, "uid", zzmhVar.getUserId());
            zzb(map, "sc", zzmhVar.zzya());
            zza(map, "sf", zzmhVar.zzyc());
            zza(map, "ni", zzmhVar.zzyb());
            zzb(map, "adid", zzmhVar.zzxy());
            zza(map, "ate", zzmhVar.zzxz());
        }
        zzmi zzmiVar = (zzmi) zzeVar.zza(zzmi.class);
        if (zzmiVar != null) {
            zzb(map, "cd", zzmiVar.zzye());
            zza(map, "a", zzmiVar.zzyf());
            zzb(map, "dr", zzmiVar.zzyg());
        }
        zzmf zzmfVar = (zzmf) zzeVar.zza(zzmf.class);
        if (zzmfVar != null) {
            zzb(map, "ec", zzmfVar.getCategory());
            zzb(map, "ea", zzmfVar.getAction());
            zzb(map, "el", zzmfVar.getLabel());
            zza(map, "ev", zzmfVar.getValue());
        }
        zzlz zzlzVar = (zzlz) zzeVar.zza(zzlz.class);
        if (zzlzVar != null) {
            zzb(map, "cn", zzlzVar.getName());
            zzb(map, "cs", zzlzVar.getSource());
            zzb(map, "cm", zzlzVar.zzxe());
            zzb(map, "ck", zzlzVar.zzxf());
            zzb(map, "cc", zzlzVar.getContent());
            zzb(map, "ci", zzlzVar.getId());
            zzb(map, "anid", zzlzVar.zzxg());
            zzb(map, "gclid", zzlzVar.zzxh());
            zzb(map, "dclid", zzlzVar.zzxi());
            zzb(map, "aclid", zzlzVar.zzxj());
        }
        zzmg zzmgVar = (zzmg) zzeVar.zza(zzmg.class);
        if (zzmgVar != null) {
            zzb(map, "exd", zzmgVar.getDescription());
            zza(map, "exf", zzmgVar.zzxw());
        }
        zzmj zzmjVar = (zzmj) zzeVar.zza(zzmj.class);
        if (zzmjVar != null) {
            zzb(map, "sn", zzmjVar.zzyi());
            zzb(map, "sa", zzmjVar.getAction());
            zzb(map, "st", zzmjVar.getTarget());
        }
        zzmk zzmkVar = (zzmk) zzeVar.zza(zzmk.class);
        if (zzmkVar != null) {
            zzb(map, "utv", zzmkVar.zzyj());
            zza(map, "utt", zzmkVar.getTimeInMillis());
            zzb(map, "utc", zzmkVar.getCategory());
            zzb(map, "utl", zzmkVar.getLabel());
        }
        zzma zzmaVar = (zzma) zzeVar.zza(zzma.class);
        if (zzmaVar != null) {
            for (Map.Entry<Integer, String> entry2 : zzmaVar.zzxk().entrySet()) {
                String strZzbd = zzc.zzbd(entry2.getKey().intValue());
                if (!TextUtils.isEmpty(strZzbd)) {
                    map.put(strZzbd, entry2.getValue());
                }
            }
        }
        zzmb zzmbVar = (zzmb) zzeVar.zza(zzmb.class);
        if (zzmbVar != null) {
            for (Map.Entry<Integer, Double> entry3 : zzmbVar.zzxl().entrySet()) {
                String strZzbf = zzc.zzbf(entry3.getKey().intValue());
                if (!TextUtils.isEmpty(strZzbf)) {
                    map.put(strZzbf, zzb(entry3.getValue().doubleValue()));
                }
            }
        }
        zzme zzmeVar = (zzme) zzeVar.zza(zzme.class);
        if (zzmeVar != null) {
            ProductAction productActionZzxs = zzmeVar.zzxs();
            if (productActionZzxs != null) {
                for (Map.Entry<String, String> entry4 : productActionZzxs.build().entrySet()) {
                    if (entry4.getKey().startsWith(Constants.RequestParameters.AMPERSAND)) {
                        map.put(entry4.getKey().substring(1), entry4.getValue());
                    } else {
                        map.put(entry4.getKey(), entry4.getValue());
                    }
                }
            }
            Iterator<Promotion> it = zzmeVar.zzxv().iterator();
            int i = 1;
            while (it.hasNext()) {
                map.putAll(it.next().zzef(zzc.zzbj(i)));
                i++;
            }
            Iterator<Product> it2 = zzmeVar.zzxt().iterator();
            int i2 = 1;
            while (it2.hasNext()) {
                map.putAll(it2.next().zzef(zzc.zzbh(i2)));
                i2++;
            }
            int i3 = 1;
            for (Map.Entry<String, List<Product>> entry5 : zzmeVar.zzxu().entrySet()) {
                List<Product> value = entry5.getValue();
                String strZzbm = zzc.zzbm(i3);
                int i4 = 1;
                for (Product product : value) {
                    String strValueOf = String.valueOf(strZzbm);
                    String strValueOf2 = String.valueOf(zzc.zzbk(i4));
                    map.putAll(product.zzef(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf)));
                    i4++;
                }
                if (!TextUtils.isEmpty(entry5.getKey())) {
                    String strValueOf3 = String.valueOf(strZzbm);
                    String strValueOf4 = String.valueOf("nm");
                    map.put(strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3), entry5.getKey());
                }
                i3++;
            }
        }
        zzmd zzmdVar = (zzmd) zzeVar.zza(zzmd.class);
        if (zzmdVar != null) {
            zzb(map, "ul", zzmdVar.getLanguage());
            zza(map, "sd", zzmdVar.zzxn());
            zza(map, "sr", zzmdVar.zzxo(), zzmdVar.zzxp());
            zza(map, "vp", zzmdVar.zzxq(), zzmdVar.zzxr());
        }
        zzly zzlyVar = (zzly) zzeVar.zza(zzly.class);
        if (zzlyVar != null) {
            zzb(map, "an", zzlyVar.zzxb());
            zzb(map, "aid", zzlyVar.zzsi());
            zzb(map, "aiid", zzlyVar.zzxd());
            zzb(map, "av", zzlyVar.zzxc());
        }
        return map;
    }

    static Uri zzdj(String str) {
        zzab.zzhs(str);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(ShareConstants.MEDIA_URI);
        builder.authority("google-analytics.com");
        builder.path(str);
        return builder.build();
    }

    private static String zzj(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return str;
        }
        if (obj instanceof Double) {
            Double d = (Double) obj;
            if (d.doubleValue() != 0.0d) {
                return zzb(d.doubleValue());
            }
            return null;
        }
        if (!(obj instanceof Boolean)) {
            return String.valueOf(obj);
        }
        if (obj != Boolean.FALSE) {
            return "1";
        }
        return null;
    }

    @Override // com.google.android.gms.analytics.zzk
    public void zzb(zze zzeVar) {
        zzab.zzaa(zzeVar);
        zzab.zzb(zzeVar.zzwk(), "Can't deliver not submitted measurement");
        zzab.zzhk("deliver should be called on worker thread");
        zze zzeVarZzwf = zzeVar.zzwf();
        zzmh zzmhVar = (zzmh) zzeVarZzwf.zzb(zzmh.class);
        if (TextUtils.isEmpty(zzmhVar.zzxx())) {
            zzyx().zzh(zzc(zzeVarZzwf), "Ignoring measurement without type");
            return;
        }
        if (TextUtils.isEmpty(zzmhVar.zzwb())) {
            zzyx().zzh(zzc(zzeVarZzwf), "Ignoring measurement without client id");
            return;
        }
        if (this.zzcrq.zzzk().getAppOptOut()) {
            return;
        }
        double dZzyc = zzmhVar.zzyc();
        if (zzao.zza(dZzyc, zzmhVar.zzwb())) {
            zzb("Sampling enabled. Hit sampled out. sampling rate", Double.valueOf(dZzyc));
            return;
        }
        Map<String, String> mapZzc = zzc(zzeVarZzwf);
        mapZzc.put("v", "1");
        mapZzc.put("_v", com.google.android.gms.analytics.internal.zze.zzcwu);
        mapZzc.put("tid", this.zzcrv);
        if (this.zzcrq.zzzk().isDryRunEnabled()) {
            zzc("Dry run is enabled. GoogleAnalytics would have sent", zzan(mapZzc));
            return;
        }
        HashMap map = new HashMap();
        zzao.zzc(map, "uid", zzmhVar.getUserId());
        zzly zzlyVar = (zzly) zzeVar.zza(zzly.class);
        if (zzlyVar != null) {
            zzao.zzc(map, "an", zzlyVar.zzxb());
            zzao.zzc(map, "aid", zzlyVar.zzsi());
            zzao.zzc(map, "av", zzlyVar.zzxc());
            zzao.zzc(map, "aiid", zzlyVar.zzxd());
        }
        mapZzc.put("_s", String.valueOf(zzwd().zza(new com.google.android.gms.analytics.internal.zzh(0L, zzmhVar.zzwb(), this.zzcrv, !TextUtils.isEmpty(zzmhVar.zzxy()), 0L, map))));
        zzwd().zza(new com.google.android.gms.analytics.internal.zzab(zzyx(), mapZzc, zzeVar.zzwi(), true));
    }

    @Override // com.google.android.gms.analytics.zzk
    public Uri zzvu() {
        return this.zzcrw;
    }
}
