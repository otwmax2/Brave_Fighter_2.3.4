package com.google.android.gms.games.internal.api;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomConfig;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;
import com.google.android.gms.internal.zzqs;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class RealTimeMultiplayerImpl implements RealTimeMultiplayer {
    private static <L> zzqs<L> zza(GoogleApiClient googleApiClient, L l) {
        if (l == null) {
            return null;
        }
        return googleApiClient.zzt(l);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer
    public void create(GoogleApiClient googleApiClient, RoomConfig roomConfig) {
        GamesClientImpl gamesClientImplZzb = Games.zzb(googleApiClient, false);
        if (gamesClientImplZzb == null) {
            return;
        }
        gamesClientImplZzb.zza(googleApiClient.zzt(roomConfig.getRoomUpdateListener()), zza(googleApiClient, roomConfig.getRoomStatusUpdateListener()), zza(googleApiClient, roomConfig.getMessageReceivedListener()), roomConfig);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer
    public void declineInvitation(GoogleApiClient googleApiClient, String str) {
        GamesClientImpl gamesClientImplZzb = Games.zzb(googleApiClient, false);
        if (gamesClientImplZzb != null) {
            gamesClientImplZzb.zzp(str, 0);
        }
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer
    public void dismissInvitation(GoogleApiClient googleApiClient, String str) {
        GamesClientImpl gamesClientImplZzb = Games.zzb(googleApiClient, false);
        if (gamesClientImplZzb != null) {
            gamesClientImplZzb.zzo(str, 0);
        }
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer
    public Intent getSelectOpponentsIntent(GoogleApiClient googleApiClient, int i, int i2) {
        return Games.zzi(googleApiClient).zzc(i, i2, true);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer
    public Intent getSelectOpponentsIntent(GoogleApiClient googleApiClient, int i, int i2, boolean z) {
        return Games.zzi(googleApiClient).zzc(i, i2, z);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer
    public Intent getWaitingRoomIntent(GoogleApiClient googleApiClient, Room room, int i) {
        return Games.zzi(googleApiClient).zza(room, i);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer
    public void join(GoogleApiClient googleApiClient, RoomConfig roomConfig) {
        GamesClientImpl gamesClientImplZzb = Games.zzb(googleApiClient, false);
        if (gamesClientImplZzb == null) {
            return;
        }
        gamesClientImplZzb.zzb(googleApiClient.zzt(roomConfig.getRoomUpdateListener()), zza(googleApiClient, roomConfig.getRoomStatusUpdateListener()), zza(googleApiClient, roomConfig.getMessageReceivedListener()), roomConfig);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer
    public void leave(GoogleApiClient googleApiClient, RoomUpdateListener roomUpdateListener, String str) {
        GamesClientImpl gamesClientImplZzb = Games.zzb(googleApiClient, false);
        if (gamesClientImplZzb != null) {
            gamesClientImplZzb.zza(googleApiClient.zzt(roomUpdateListener), str);
        }
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer
    public int sendReliableMessage(GoogleApiClient googleApiClient, RealTimeMultiplayer.ReliableMessageSentCallback reliableMessageSentCallback, byte[] bArr, String str, String str2) {
        return Games.zzi(googleApiClient).zza(zza(googleApiClient, reliableMessageSentCallback), bArr, str, str2);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer
    public int sendUnreliableMessage(GoogleApiClient googleApiClient, byte[] bArr, String str, String str2) {
        return Games.zzi(googleApiClient).zza(bArr, str, new String[]{str2});
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer
    public int sendUnreliableMessage(GoogleApiClient googleApiClient, byte[] bArr, String str, List<String> list) {
        return Games.zzi(googleApiClient).zza(bArr, str, (String[]) list.toArray(new String[list.size()]));
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer
    public int sendUnreliableMessageToOthers(GoogleApiClient googleApiClient, byte[] bArr, String str) {
        return Games.zzi(googleApiClient).zze(bArr, str);
    }
}
