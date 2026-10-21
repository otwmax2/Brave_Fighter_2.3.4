package com.google.android.gms.games.internal.notification;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.common.internal.zzaa;

/* JADX INFO: loaded from: classes.dex */
public final class GameNotificationRef extends zzc implements GameNotification {
    GameNotificationRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    public long getId() {
        return getLong("_id");
    }

    public String getText() {
        return getString("text");
    }

    public String getTitle() {
        return getString("title");
    }

    public int getType() {
        return getInteger("type");
    }

    public String toString() {
        return zzaa.zzz(this).zzg("Id", Long.valueOf(getId())).zzg("NotificationId", zzbki()).zzg("Type", Integer.valueOf(getType())).zzg("Title", getTitle()).zzg("Ticker", zzbkj()).zzg("Text", getText()).zzg("CoalescedText", zzbkk()).zzg("isAcknowledged", Boolean.valueOf(zzbkl())).zzg("isSilent", Boolean.valueOf(zzbkm())).zzg("isQuiet", Boolean.valueOf(zzbkn())).toString();
    }

    public String zzbki() {
        return getString("notification_id");
    }

    public String zzbkj() {
        return getString("ticker");
    }

    public String zzbkk() {
        return getString("coalesced_text");
    }

    public boolean zzbkl() {
        return getInteger("acknowledged") > 0;
    }

    public boolean zzbkm() {
        return getInteger("alert_level") == 0;
    }

    public boolean zzbkn() {
        return getInteger("alert_level") == 2;
    }
}
