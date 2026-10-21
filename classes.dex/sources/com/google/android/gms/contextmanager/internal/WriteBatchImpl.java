package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.contextmanager.ContextData;
import com.google.android.gms.contextmanager.Relation;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class WriteBatchImpl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<WriteBatchImpl> CREATOR = new zzs();
    private final boolean CW;
    private ArrayList<ContextData> CX;
    private ArrayList<Relation> CY;
    private ArrayList<Relation> CZ;
    private final int mVersionCode;

    public WriteBatchImpl() {
        this(false);
    }

    WriteBatchImpl(int i, boolean z, ArrayList<ContextData> arrayList, ArrayList<Relation> arrayList2, ArrayList<Relation> arrayList3) {
        this.mVersionCode = i;
        this.CW = z;
        this.CX = arrayList;
        this.CY = arrayList2;
        this.CZ = arrayList3;
    }

    public WriteBatchImpl(boolean z) {
        this.mVersionCode = 1;
        this.CW = z;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzs.zza(this, parcel, i);
    }

    public boolean zzayk() {
        return this.CW;
    }

    public ArrayList<ContextData> zzayl() {
        return this.CX;
    }

    public ArrayList<Relation> zzaym() {
        return this.CY;
    }

    public ArrayList<Relation> zzayn() {
        return this.CZ;
    }
}
