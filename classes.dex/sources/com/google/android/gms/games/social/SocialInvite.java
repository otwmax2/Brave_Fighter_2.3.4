package com.google.android.gms.games.social;

import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.games.Player;

/* JADX INFO: loaded from: classes.dex */
public interface SocialInvite extends Parcelable, Freezable<SocialInvite> {
    int getDirection();

    long getLastModifiedTimestamp();

    Player getPlayer();

    int getType();

    String zzblm();
}
