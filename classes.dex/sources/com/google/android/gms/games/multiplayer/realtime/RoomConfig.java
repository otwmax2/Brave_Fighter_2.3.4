package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.games.multiplayer.Multiplayer;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class RoomConfig {

    public static final class Builder {
        final RoomUpdateListener YF;
        RoomStatusUpdateListener YG;
        RealTimeMessageReceivedListener YH;
        String YI;
        ArrayList<String> YJ;
        Bundle YK;
        int Yu;

        private Builder(RoomUpdateListener roomUpdateListener) {
            this.YI = null;
            this.Yu = -1;
            this.YJ = new ArrayList<>();
            this.YF = (RoomUpdateListener) zzab.zzb(roomUpdateListener, "Must provide a RoomUpdateListener");
        }

        public Builder addPlayersToInvite(ArrayList<String> arrayList) {
            zzab.zzaa(arrayList);
            this.YJ.addAll(arrayList);
            return this;
        }

        public Builder addPlayersToInvite(String... strArr) {
            zzab.zzaa(strArr);
            this.YJ.addAll(Arrays.asList(strArr));
            return this;
        }

        public RoomConfig build() {
            return new RoomConfigImpl(this);
        }

        public Builder setAutoMatchCriteria(Bundle bundle) {
            this.YK = bundle;
            return this;
        }

        public Builder setInvitationIdToAccept(String str) {
            zzab.zzaa(str);
            this.YI = str;
            return this;
        }

        public Builder setMessageReceivedListener(RealTimeMessageReceivedListener realTimeMessageReceivedListener) {
            this.YH = realTimeMessageReceivedListener;
            return this;
        }

        public Builder setRoomStatusUpdateListener(RoomStatusUpdateListener roomStatusUpdateListener) {
            this.YG = roomStatusUpdateListener;
            return this;
        }

        public Builder setVariant(int i) {
            zzab.zzb(i == -1 || i > 0, "Variant must be a positive integer or Room.ROOM_VARIANT_ANY");
            this.Yu = i;
            return this;
        }
    }

    protected RoomConfig() {
    }

    public static Builder builder(RoomUpdateListener roomUpdateListener) {
        return new Builder(roomUpdateListener);
    }

    public static Bundle createAutoMatchCriteria(int i, int i2, long j) {
        Bundle bundle = new Bundle();
        bundle.putInt(Multiplayer.EXTRA_MIN_AUTOMATCH_PLAYERS, i);
        bundle.putInt(Multiplayer.EXTRA_MAX_AUTOMATCH_PLAYERS, i2);
        bundle.putLong(Multiplayer.EXTRA_EXCLUSIVE_BIT_MASK, j);
        return bundle;
    }

    public abstract Bundle getAutoMatchCriteria();

    public abstract String getInvitationId();

    public abstract String[] getInvitedPlayerIds();

    public abstract RealTimeMessageReceivedListener getMessageReceivedListener();

    public abstract RoomStatusUpdateListener getRoomStatusUpdateListener();

    public abstract RoomUpdateListener getRoomUpdateListener();

    public abstract int getVariant();
}
