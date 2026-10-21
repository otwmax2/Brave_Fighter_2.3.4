package com.google.android.gms.games.internal.multiplayer;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationEntity;
import com.google.android.gms.games.multiplayer.Participant;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class ZInvitationCluster extends AbstractSafeParcelable implements Invitation {
    public static final InvitationClusterCreator CREATOR = new InvitationClusterCreator();
    private final ArrayList<InvitationEntity> WO;
    private final int mVersionCode;

    ZInvitationCluster(int i, ArrayList<InvitationEntity> arrayList) {
        this.mVersionCode = i;
        this.WO = arrayList;
        zzbkg();
    }

    private void zzbkg() {
        zzb.zzbm(!this.WO.isEmpty());
        InvitationEntity invitationEntity = this.WO.get(0);
        int size = this.WO.size();
        for (int i = 1; i < size; i++) {
            zzb.zza(invitationEntity.getInviter().equals(this.WO.get(i).getInviter()), "All the invitations must be from the same inviter");
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ZInvitationCluster)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        ZInvitationCluster zInvitationCluster = (ZInvitationCluster) obj;
        if (zInvitationCluster.WO.size() != this.WO.size()) {
            return false;
        }
        int size = this.WO.size();
        for (int i = 0; i < size; i++) {
            if (!this.WO.get(i).equals(zInvitationCluster.WO.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    public Invitation freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public int getAvailableAutoMatchSlots() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public long getCreationTimestamp() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public Game getGame() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public String getInvitationId() {
        return this.WO.get(0).getInvitationId();
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public int getInvitationType() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public Participant getInviter() {
        return this.WO.get(0).getInviter();
    }

    @Override // com.google.android.gms.games.multiplayer.Participatable
    public ArrayList<Participant> getParticipants() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public int getVariant() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(this.WO.toArray());
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        InvitationClusterCreator.zza(this, parcel, i);
    }

    public ArrayList<Invitation> zzbkh() {
        return new ArrayList<>(this.WO);
    }
}
