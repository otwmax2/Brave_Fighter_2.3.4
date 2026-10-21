package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.awareness.snapshot.internal.BeaconStateImpl;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.GamesActivityResultCodes;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class SnapshotRequest extends AbstractSafeParcelable {
    private final int gl;
    private final ArrayList<BeaconStateImpl.TypeFilterImpl> gm;
    private final int mVersionCode;
    private static final int[] gk = {GamesActivityResultCodes.RESULT_SIGN_IN_FAILED, GamesActivityResultCodes.RESULT_LICENSE_FAILED, GamesActivityResultCodes.RESULT_APP_MISCONFIGURED, GamesActivityResultCodes.RESULT_LEFT_ROOM, GamesActivityResultCodes.RESULT_NETWORK_FAILURE, GamesActivityResultCodes.RESULT_SEND_REQUEST_FAILED};
    public static final Parcelable.Creator<SnapshotRequest> CREATOR = new zzk();

    SnapshotRequest(int i, int i2, ArrayList<BeaconStateImpl.TypeFilterImpl> arrayList) {
        this.mVersionCode = i;
        this.gl = i2;
        this.gm = arrayList;
    }

    public SnapshotRequest(int i, ArrayList<BeaconStateImpl.TypeFilterImpl> arrayList) {
        this(1, i, arrayList);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SnapshotRequest)) {
            return false;
        }
        SnapshotRequest snapshotRequest = (SnapshotRequest) obj;
        if (this.gl != snapshotRequest.zzahg()) {
            return false;
        }
        if ((this.gm != null) ^ (snapshotRequest.zzahh() == null)) {
            return false;
        }
        if (this.gm != null) {
            if (this.gm.size() != snapshotRequest.zzahh().size()) {
                return false;
            }
            Iterator<BeaconStateImpl.TypeFilterImpl> it = this.gm.iterator();
            while (it.hasNext()) {
                if (!snapshotRequest.zzahh().contains(it.next())) {
                    return false;
                }
            }
        }
        return true;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        int iHashCode;
        if (this.gm != null) {
            Iterator<BeaconStateImpl.TypeFilterImpl> it = this.gm.iterator();
            iHashCode = 0;
            while (it.hasNext()) {
                iHashCode = (it.next().hashCode() * 13) + iHashCode;
            }
        } else {
            iHashCode = 0;
        }
        return zzaa.hashCode(Integer.valueOf(this.gl), Integer.valueOf(iHashCode));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzk.zza(this, parcel, i);
    }

    public int zzahg() {
        return this.gl;
    }

    public ArrayList<BeaconStateImpl.TypeFilterImpl> zzahh() {
        return this.gm;
    }
}
