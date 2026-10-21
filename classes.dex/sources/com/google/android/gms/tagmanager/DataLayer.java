package com.google.android.gms.tagmanager;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class DataLayer {
    public static final String EVENT_KEY = "event";
    public static final Object OBJECT_NOT_PRESENT = new Object();
    static final String[] avE = "gtm.lifetime".toString().split("\\.");
    private static final Pattern avF = Pattern.compile("(\\d+)\\s*([smhd]?)");
    private final ConcurrentHashMap<zzb, Integer> avG;
    private final Map<String, Object> avH;
    private final ReentrantLock avI;
    private final LinkedList<Map<String, Object>> avJ;
    private final zzc avK;
    private final CountDownLatch avL;

    static final class zza {
        public final String zzaxn;
        public final Object zzcnr;

        zza(String str, Object obj) {
            this.zzaxn = str;
            this.zzcnr = obj;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return this.zzaxn.equals(zzaVar.zzaxn) && this.zzcnr.equals(zzaVar.zzcnr);
        }

        public int hashCode() {
            return Arrays.hashCode(new Integer[]{Integer.valueOf(this.zzaxn.hashCode()), Integer.valueOf(this.zzcnr.hashCode())});
        }

        public String toString() {
            String str = this.zzaxn;
            String strValueOf = String.valueOf(this.zzcnr.toString());
            return new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(strValueOf).length()).append("Key: ").append(str).append(" value: ").append(strValueOf).toString();
        }
    }

    interface zzb {
        void zzaw(Map<String, Object> map);
    }

    interface zzc {

        public interface zza {
            void zzaf(List<zza> list);
        }

        void zza(zza zzaVar);

        void zza(List<zza> list, long j);

        void zzny(String str);
    }

    DataLayer() {
        this(new zzc() { // from class: com.google.android.gms.tagmanager.DataLayer.1
            @Override // com.google.android.gms.tagmanager.DataLayer.zzc
            public void zza(zzc.zza zzaVar) {
                zzaVar.zzaf(new ArrayList());
            }

            @Override // com.google.android.gms.tagmanager.DataLayer.zzc
            public void zza(List<zza> list, long j) {
            }

            @Override // com.google.android.gms.tagmanager.DataLayer.zzc
            public void zzny(String str) {
            }
        });
    }

    DataLayer(zzc zzcVar) {
        this.avK = zzcVar;
        this.avG = new ConcurrentHashMap<>();
        this.avH = new HashMap();
        this.avI = new ReentrantLock();
        this.avJ = new LinkedList<>();
        this.avL = new CountDownLatch(1);
        zzcat();
    }

    public static List<Object> listOf(Object... objArr) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            arrayList.add(obj);
        }
        return arrayList;
    }

    public static Map<String, Object> mapOf(Object... objArr) {
        if (objArr.length % 2 != 0) {
            throw new IllegalArgumentException("expected even number of key-value pairs");
        }
        HashMap map = new HashMap();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= objArr.length) {
                return map;
            }
            if (!(objArr[i2] instanceof String)) {
                String strValueOf = String.valueOf(objArr[i2]);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 21).append("key is not a string: ").append(strValueOf).toString());
            }
            map.put((String) objArr[i2], objArr[i2 + 1]);
            i = i2 + 2;
        }
    }

    private void zza(Map<String, Object> map, String str, Collection<zza> collection) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String str2 = str.length() == 0 ? "" : ".";
            String key = entry.getKey();
            String string = new StringBuilder(String.valueOf(str).length() + 0 + String.valueOf(str2).length() + String.valueOf(key).length()).append(str).append(str2).append(key).toString();
            if (entry.getValue() instanceof Map) {
                zza((Map) entry.getValue(), string, collection);
            } else if (!string.equals("gtm.lifetime")) {
                collection.add(new zza(string, entry.getValue()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzay(Map<String, Object> map) {
        this.avI.lock();
        try {
            this.avJ.offer(map);
            if (this.avI.getHoldCount() == 1) {
                zzcau();
            }
            zzaz(map);
        } finally {
            this.avI.unlock();
        }
    }

    private void zzaz(Map<String, Object> map) {
        Long lZzba = zzba(map);
        if (lZzba == null) {
            return;
        }
        List<zza> listZzbc = zzbc(map);
        listZzbc.remove("gtm.lifetime");
        this.avK.zza(listZzbc, lZzba.longValue());
    }

    private Long zzba(Map<String, Object> map) {
        Object objZzbb = zzbb(map);
        if (objZzbb == null) {
            return null;
        }
        return zznx(objZzbb.toString());
    }

    private Object zzbb(Map<String, Object> map) {
        String[] strArr = avE;
        int length = strArr.length;
        int i = 0;
        Object obj = map;
        while (i < length) {
            String str = strArr[i];
            if (!(obj instanceof Map)) {
                return null;
            }
            i++;
            obj = ((Map) obj).get(str);
        }
        return obj;
    }

    private List<zza> zzbc(Map<String, Object> map) {
        ArrayList arrayList = new ArrayList();
        zza(map, "", arrayList);
        return arrayList;
    }

    private void zzbd(Map<String, Object> map) {
        synchronized (this.avH) {
            for (String str : map.keySet()) {
                zzd(zzo(str, map.get(str)), this.avH);
            }
        }
        zzbe(map);
    }

    private void zzbe(Map<String, Object> map) {
        Iterator<zzb> it = this.avG.keySet().iterator();
        while (it.hasNext()) {
            it.next().zzaw(map);
        }
    }

    private void zzcat() {
        this.avK.zza(new zzc.zza() { // from class: com.google.android.gms.tagmanager.DataLayer.2
            @Override // com.google.android.gms.tagmanager.DataLayer.zzc.zza
            public void zzaf(List<zza> list) {
                for (zza zzaVar : list) {
                    DataLayer.this.zzay(DataLayer.this.zzo(zzaVar.zzaxn, zzaVar.zzcnr));
                }
                DataLayer.this.avL.countDown();
            }
        });
    }

    private void zzcau() {
        int i = 0;
        do {
            int i2 = i;
            Map<String, Object> mapPoll = this.avJ.poll();
            if (mapPoll == null) {
                return;
            }
            zzbd(mapPoll);
            i = i2 + 1;
        } while (i <= 500);
        this.avJ.clear();
        throw new RuntimeException("Seems like an infinite loop of pushing to the data layer");
    }

    static Long zznx(String str) {
        long j;
        Matcher matcher = avF.matcher(str);
        if (!matcher.matches()) {
            String strValueOf = String.valueOf(str);
            zzbn.zzcx(strValueOf.length() != 0 ? "unknown _lifetime: ".concat(strValueOf) : new String("unknown _lifetime: "));
            return null;
        }
        try {
            j = Long.parseLong(matcher.group(1));
        } catch (NumberFormatException e) {
            String strValueOf2 = String.valueOf(str);
            zzbn.zzcy(strValueOf2.length() != 0 ? "illegal number in _lifetime value: ".concat(strValueOf2) : new String("illegal number in _lifetime value: "));
            j = 0;
        }
        if (j <= 0) {
            String strValueOf3 = String.valueOf(str);
            zzbn.zzcx(strValueOf3.length() != 0 ? "non-positive _lifetime: ".concat(strValueOf3) : new String("non-positive _lifetime: "));
            return null;
        }
        String strGroup = matcher.group(2);
        if (strGroup.length() == 0) {
            return Long.valueOf(j);
        }
        switch (strGroup.charAt(0)) {
            case 'd':
                break;
            case 'h':
                break;
            case 'm':
                break;
            case 's':
                break;
            default:
                String strValueOf4 = String.valueOf(str);
                zzbn.zzcy(strValueOf4.length() != 0 ? "unknown units in _lifetime: ".concat(strValueOf4) : new String("unknown units in _lifetime: "));
                break;
        }
        return null;
    }

    public Object get(String str) {
        synchronized (this.avH) {
            Map<String, Object> map = this.avH;
            String[] strArrSplit = str.split("\\.");
            int length = strArrSplit.length;
            Object obj = map;
            int i = 0;
            while (i < length) {
                String str2 = strArrSplit[i];
                if (!(obj instanceof Map)) {
                    return null;
                }
                Object obj2 = ((Map) obj).get(str2);
                if (obj2 == null) {
                    return null;
                }
                i++;
                obj = obj2;
            }
            return obj;
        }
    }

    public void push(String str, Object obj) {
        push(zzo(str, obj));
    }

    public void push(Map<String, Object> map) {
        try {
            this.avL.await();
        } catch (InterruptedException e) {
            zzbn.zzcy("DataLayer.push: unexpected InterruptedException");
        }
        zzay(map);
    }

    public void pushEvent(String str, Map<String, Object> map) {
        HashMap map2 = new HashMap(map);
        map2.put("event", str);
        push(map2);
    }

    public String toString() {
        String string;
        synchronized (this.avH) {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, Object> entry : this.avH.entrySet()) {
                sb.append(String.format("{\n\tKey: %s\n\tValue: %s\n}\n", entry.getKey(), entry.getValue()));
            }
            string = sb.toString();
        }
        return string;
    }

    void zza(zzb zzbVar) {
        this.avG.put(zzbVar, 0);
    }

    void zzb(List<Object> list, List<Object> list2) {
        while (list2.size() < list.size()) {
            list2.add(null);
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                return;
            }
            Object obj = list.get(i2);
            if (obj instanceof List) {
                if (!(list2.get(i2) instanceof List)) {
                    list2.set(i2, new ArrayList());
                }
                zzb((List) obj, (List) list2.get(i2));
            } else if (obj instanceof Map) {
                if (!(list2.get(i2) instanceof Map)) {
                    list2.set(i2, new HashMap());
                }
                zzd((Map) obj, (Map) list2.get(i2));
            } else if (obj != OBJECT_NOT_PRESENT) {
                list2.set(i2, obj);
            }
            i = i2 + 1;
        }
    }

    void zzd(Map<String, Object> map, Map<String, Object> map2) {
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj instanceof List) {
                if (!(map2.get(str) instanceof List)) {
                    map2.put(str, new ArrayList());
                }
                zzb((List) obj, (List) map2.get(str));
            } else if (obj instanceof Map) {
                if (!(map2.get(str) instanceof Map)) {
                    map2.put(str, new HashMap());
                }
                zzd((Map) obj, (Map) map2.get(str));
            } else {
                map2.put(str, obj);
            }
        }
    }

    void zznw(String str) {
        push(str, null);
        this.avK.zzny(str);
    }

    Map<String, Object> zzo(String str, Object obj) {
        HashMap map = new HashMap();
        String[] strArrSplit = str.toString().split("\\.");
        int i = 0;
        HashMap map2 = map;
        while (i < strArrSplit.length - 1) {
            HashMap map3 = new HashMap();
            map2.put(strArrSplit[i], map3);
            i++;
            map2 = map3;
        }
        map2.put(strArrSplit[strArrSplit.length - 1], obj);
        return map;
    }
}
