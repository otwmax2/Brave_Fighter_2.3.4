package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.games.multiplayer.realtime.RoomConfig;

/* JADX INFO: loaded from: classes.dex */
public final class RoomConfigImpl extends RoomConfig {
    private final RoomUpdateListener YF;
    private final RoomStatusUpdateListener YG;
    private final RealTimeMessageReceivedListener YH;
    private final Bundle YK;
    private final String[] YL;
    private final int Yu;
    private final String bT;

    RoomConfigImpl(RoomConfig.Builder builder) {
        this.YF = builder.YF;
        this.YG = builder.YG;
        this.YH = builder.YH;
        this.bT = builder.YI;
        this.Yu = builder.Yu;
        this.YK = builder.YK;
        this.YL = (String[]) builder.YJ.toArray(new String[builder.YJ.size()]);
        zzab.zzb(this.YH, "Must specify a message listener");
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RoomConfig
    public Bundle getAutoMatchCriteria() {
        return this.YK;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RoomConfig
    public String getInvitationId() {
        return this.bT;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RoomConfig
    public String[] getInvitedPlayerIds() {
        return this.YL;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RoomConfig
    public RealTimeMessageReceivedListener getMessageReceivedListener() {
        return this.YH;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RoomConfig
    public RoomStatusUpdateListener getRoomStatusUpdateListener() {
        return this.YG;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RoomConfig
    public RoomUpdateListener getRoomUpdateListener() {
        return this.YF;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RoomConfig
    public int getVariant() {
        return this.Yu;
    }
}
