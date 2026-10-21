package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class zzaoc implements zzanl {
    private final zzans beb;

    private static final class zza<E> extends zzank<Collection<E>> {
        private final zzank<E> bfH;
        private final zzanx<? extends Collection<E>> bfI;

        public zza(zzams zzamsVar, Type type, zzank<E> zzankVar, zzanx<? extends Collection<E>> zzanxVar) {
            this.bfH = new zzaom(zzamsVar, zzankVar, type);
            this.bfI = zzanxVar;
        }

        @Override // com.google.android.gms.internal.zzank
        public void zza(zzaor zzaorVar, Collection<E> collection) throws IOException {
            if (collection == null) {
                zzaorVar.r();
                return;
            }
            zzaorVar.n();
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                this.bfH.zza(zzaorVar, it.next());
            }
            zzaorVar.o();
        }

        @Override // com.google.android.gms.internal.zzank
        /* JADX INFO: renamed from: zzj, reason: merged with bridge method [inline-methods] */
        public Collection<E> zzb(zzaop zzaopVar) throws IOException {
            if (zzaopVar.h() == zzaoq.NULL) {
                zzaopVar.nextNull();
                return null;
            }
            Collection<E> collectionA = this.bfI.a();
            zzaopVar.beginArray();
            while (zzaopVar.hasNext()) {
                collectionA.add(this.bfH.zzb(zzaopVar));
            }
            zzaopVar.endArray();
            return collectionA;
        }
    }

    public zzaoc(zzans zzansVar) {
        this.beb = zzansVar;
    }

    @Override // com.google.android.gms.internal.zzanl
    public <T> zzank<T> zza(zzams zzamsVar, zzaoo<T> zzaooVar) {
        Type typeT = zzaooVar.t();
        Class<? super T> clsS = zzaooVar.s();
        if (!Collection.class.isAssignableFrom(clsS)) {
            return null;
        }
        Type typeZza = zzanr.zza(typeT, (Class<?>) clsS);
        return new zza(zzamsVar, typeZza, zzamsVar.zza(zzaoo.zzl(typeZza)), this.beb.zzb(zzaooVar));
    }
}
