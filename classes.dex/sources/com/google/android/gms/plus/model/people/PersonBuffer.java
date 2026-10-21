package com.google.android.gms.plus.model.people;

import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzd;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.internal.model.people.PersonEntity;
import com.google.android.gms.plus.internal.model.people.zzk;

/* JADX INFO: loaded from: classes.dex */
public final class PersonBuffer extends AbstractDataBuffer<Person> {
    private final zzd<PersonEntity> atI;

    public PersonBuffer(DataHolder dataHolder) {
        super(dataHolder);
        if (dataHolder.zzaqy() == null || !dataHolder.zzaqy().getBoolean("com.google.android.gms.plus.IsSafeParcelable", false)) {
            this.atI = null;
        } else {
            this.atI = new zzd<>(dataHolder, PersonEntity.CREATOR);
        }
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public Person get(int i) {
        return this.atI != null ? (Person) ((SafeParcelable) this.atI.get(i)) : new zzk(this.tk, i);
    }
}
