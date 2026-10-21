package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class zzaob<E> extends zzank<Object> {
    public static final zzanl bfE = new zzanl() { // from class: com.google.android.gms.internal.zzaob.1
        @Override // com.google.android.gms.internal.zzanl
        public <T> zzank<T> zza(zzams zzamsVar, zzaoo<T> zzaooVar) {
            Type typeT = zzaooVar.t();
            if (!(typeT instanceof GenericArrayType) && (!(typeT instanceof Class) || !((Class) typeT).isArray())) {
                return null;
            }
            Type typeZzh = zzanr.zzh(typeT);
            return new zzaob(zzamsVar, zzamsVar.zza(zzaoo.zzl(typeZzh)), zzanr.zzf(typeZzh));
        }
    };
    private final Class<E> bfF;
    private final zzank<E> bfG;

    public zzaob(zzams zzamsVar, zzank<E> zzankVar, Class<E> cls) {
        this.bfG = new zzaom(zzamsVar, zzankVar, cls);
        this.bfF = cls;
    }

    @Override // com.google.android.gms.internal.zzank
    public void zza(zzaor zzaorVar, Object obj) throws IOException {
        if (obj == null) {
            zzaorVar.r();
            return;
        }
        zzaorVar.n();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.bfG.zza(zzaorVar, (E) Array.get(obj, i));
        }
        zzaorVar.o();
    }

    @Override // com.google.android.gms.internal.zzank
    public Object zzb(zzaop zzaopVar) throws IOException {
        if (zzaopVar.h() == zzaoq.NULL) {
            zzaopVar.nextNull();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        zzaopVar.beginArray();
        while (zzaopVar.hasNext()) {
            arrayList.add(this.bfG.zzb(zzaopVar));
        }
        zzaopVar.endArray();
        Object objNewInstance = Array.newInstance((Class<?>) this.bfF, arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            Array.set(objNewInstance, i, arrayList.get(i));
        }
        return objNewInstance;
    }
}
