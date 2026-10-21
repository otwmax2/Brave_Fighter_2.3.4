package com.google.android.gms.tagmanager;

import com.facebook.internal.ServerProtocol;
import com.google.android.gms.internal.zzai;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class zzdl {
    private static final Object ayO = null;
    private static Long ayP = new Long(0);
    private static Double ayQ = new Double(0.0d);
    private static zzdk ayR = zzdk.zzbs(0);
    private static String ayS = new String("");
    private static Boolean ayT = new Boolean(false);
    private static List<Object> ayU = new ArrayList(0);
    private static Map<Object, Object> ayV = new HashMap();
    private static zzai.zza ayW = zzar(ayS);

    private static double getDouble(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        zzbn.e("getDouble received non-Number");
        return 0.0d;
    }

    public static String zzam(Object obj) {
        return obj == null ? ayS : obj.toString();
    }

    public static zzdk zzan(Object obj) {
        return obj instanceof zzdk ? (zzdk) obj : zzat(obj) ? zzdk.zzbs(zzau(obj)) : zzas(obj) ? zzdk.zza(Double.valueOf(getDouble(obj))) : zzot(zzam(obj));
    }

    public static Long zzao(Object obj) {
        return zzat(obj) ? Long.valueOf(zzau(obj)) : zzou(zzam(obj));
    }

    public static Double zzap(Object obj) {
        return zzas(obj) ? Double.valueOf(getDouble(obj)) : zzov(zzam(obj));
    }

    public static Boolean zzaq(Object obj) {
        return obj instanceof Boolean ? (Boolean) obj : zzow(zzam(obj));
    }

    public static zzai.zza zzar(Object obj) {
        boolean z = false;
        zzai.zza zzaVar = new zzai.zza();
        if (obj instanceof zzai.zza) {
            return (zzai.zza) obj;
        }
        if (obj instanceof String) {
            zzaVar.type = 1;
            zzaVar.zzwt = (String) obj;
        } else if (obj instanceof List) {
            zzaVar.type = 2;
            List list = (List) obj;
            ArrayList arrayList = new ArrayList(list.size());
            Iterator it = list.iterator();
            boolean z2 = false;
            while (it.hasNext()) {
                zzai.zza zzaVarZzar = zzar(it.next());
                if (zzaVarZzar == ayW) {
                    return ayW;
                }
                boolean z3 = z2 || zzaVarZzar.zzxd;
                arrayList.add(zzaVarZzar);
                z2 = z3;
            }
            zzaVar.zzwu = (zzai.zza[]) arrayList.toArray(new zzai.zza[0]);
            z = z2;
        } else if (obj instanceof Map) {
            zzaVar.type = 3;
            Set<Map.Entry> setEntrySet = ((Map) obj).entrySet();
            ArrayList arrayList2 = new ArrayList(setEntrySet.size());
            ArrayList arrayList3 = new ArrayList(setEntrySet.size());
            boolean z4 = false;
            for (Map.Entry entry : setEntrySet) {
                zzai.zza zzaVarZzar2 = zzar(entry.getKey());
                zzai.zza zzaVarZzar3 = zzar(entry.getValue());
                if (zzaVarZzar2 == ayW || zzaVarZzar3 == ayW) {
                    return ayW;
                }
                boolean z5 = z4 || zzaVarZzar2.zzxd || zzaVarZzar3.zzxd;
                arrayList2.add(zzaVarZzar2);
                arrayList3.add(zzaVarZzar3);
                z4 = z5;
            }
            zzaVar.zzwv = (zzai.zza[]) arrayList2.toArray(new zzai.zza[0]);
            zzaVar.zzww = (zzai.zza[]) arrayList3.toArray(new zzai.zza[0]);
            z = z4;
        } else if (zzas(obj)) {
            zzaVar.type = 1;
            zzaVar.zzwt = obj.toString();
        } else if (zzat(obj)) {
            zzaVar.type = 6;
            zzaVar.zzwz = zzau(obj);
        } else {
            if (!(obj instanceof Boolean)) {
                String strValueOf = String.valueOf(obj == null ? "null" : obj.getClass().toString());
                zzbn.e(strValueOf.length() != 0 ? "Converting to Value from unknown object type: ".concat(strValueOf) : new String("Converting to Value from unknown object type: "));
                return ayW;
            }
            zzaVar.type = 8;
            zzaVar.zzxa = ((Boolean) obj).booleanValue();
        }
        zzaVar.zzxd = z;
        return zzaVar;
    }

    private static boolean zzas(Object obj) {
        return (obj instanceof Double) || (obj instanceof Float) || ((obj instanceof zzdk) && ((zzdk) obj).zzcdf());
    }

    private static boolean zzat(Object obj) {
        return (obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long) || ((obj instanceof zzdk) && ((zzdk) obj).zzcdg());
    }

    private static long zzau(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        zzbn.e("getInt64 received non-Number");
        return 0L;
    }

    public static Object zzcdk() {
        return null;
    }

    public static Long zzcdl() {
        return ayP;
    }

    public static Double zzcdm() {
        return ayQ;
    }

    public static Boolean zzcdn() {
        return ayT;
    }

    public static zzdk zzcdo() {
        return ayR;
    }

    public static String zzcdp() {
        return ayS;
    }

    public static zzai.zza zzcdq() {
        return ayW;
    }

    public static String zzg(zzai.zza zzaVar) {
        return zzam(zzl(zzaVar));
    }

    public static zzdk zzh(zzai.zza zzaVar) {
        return zzan(zzl(zzaVar));
    }

    public static Long zzi(zzai.zza zzaVar) {
        return zzao(zzl(zzaVar));
    }

    public static Double zzj(zzai.zza zzaVar) {
        return zzap(zzl(zzaVar));
    }

    public static Boolean zzk(zzai.zza zzaVar) {
        return zzaq(zzl(zzaVar));
    }

    public static Object zzl(zzai.zza zzaVar) {
        int i = 0;
        if (zzaVar == null) {
            return null;
        }
        switch (zzaVar.type) {
            case 1:
                break;
            case 2:
                ArrayList arrayList = new ArrayList(zzaVar.zzwu.length);
                zzai.zza[] zzaVarArr = zzaVar.zzwu;
                int length = zzaVarArr.length;
                while (i < length) {
                    Object objZzl = zzl(zzaVarArr[i]);
                    if (objZzl != null) {
                        arrayList.add(objZzl);
                        i++;
                    }
                    break;
                }
                break;
            case 3:
                if (zzaVar.zzwv.length == zzaVar.zzww.length) {
                    HashMap map = new HashMap(zzaVar.zzww.length);
                    while (i < zzaVar.zzwv.length) {
                        Object objZzl2 = zzl(zzaVar.zzwv[i]);
                        Object objZzl3 = zzl(zzaVar.zzww[i]);
                        if (objZzl2 != null && objZzl3 != null) {
                            map.put(objZzl2, objZzl3);
                            i++;
                        }
                    }
                } else {
                    String strValueOf = String.valueOf(zzaVar.toString());
                    zzbn.e(strValueOf.length() != 0 ? "Converting an invalid value to object: ".concat(strValueOf) : new String("Converting an invalid value to object: "));
                }
                break;
            case 4:
                zzbn.e("Trying to convert a macro reference to object");
                break;
            case 5:
                zzbn.e("Trying to convert a function id to object");
                break;
            case 6:
                break;
            case 7:
                StringBuffer stringBuffer = new StringBuffer();
                zzai.zza[] zzaVarArr2 = zzaVar.zzxb;
                int length2 = zzaVarArr2.length;
                while (i < length2) {
                    String strZzg = zzg(zzaVarArr2[i]);
                    if (strZzg != ayS) {
                        stringBuffer.append(strZzg);
                        i++;
                    }
                    break;
                }
                break;
            case 8:
                break;
            default:
                zzbn.e(new StringBuilder(46).append("Failed to convert a value of type: ").append(zzaVar.type).toString());
                break;
        }
        return null;
    }

    public static zzai.zza zzos(String str) {
        zzai.zza zzaVar = new zzai.zza();
        zzaVar.type = 5;
        zzaVar.zzwy = str;
        return zzaVar;
    }

    private static zzdk zzot(String str) {
        try {
            return zzdk.zzor(str);
        } catch (NumberFormatException e) {
            zzbn.e(new StringBuilder(String.valueOf(str).length() + 33).append("Failed to convert '").append(str).append("' to a number.").toString());
            return ayR;
        }
    }

    private static Long zzou(String str) {
        zzdk zzdkVarZzot = zzot(str);
        return zzdkVarZzot == ayR ? ayP : Long.valueOf(zzdkVarZzot.longValue());
    }

    private static Double zzov(String str) {
        zzdk zzdkVarZzot = zzot(str);
        return zzdkVarZzot == ayR ? ayQ : Double.valueOf(zzdkVarZzot.doubleValue());
    }

    private static Boolean zzow(String str) {
        return ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equalsIgnoreCase(str) ? Boolean.TRUE : "false".equalsIgnoreCase(str) ? Boolean.FALSE : ayT;
    }
}
