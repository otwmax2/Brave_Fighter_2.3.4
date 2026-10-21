package com.google.android.gms.games.internal.game;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.internal.constants.PlatformType;

/* JADX INFO: loaded from: classes.dex */
public final class GameInstanceRef extends zzc implements GameInstance {
    GameInstanceRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    public String getApplicationId() {
        return getString("external_game_id");
    }

    public String getDisplayName() {
        return getString("instance_display_name");
    }

    public String getPackageName() {
        return getString("package_name");
    }

    public String toString() {
        return zzaa.zzz(this).zzg("ApplicationId", getApplicationId()).zzg("DisplayName", getDisplayName()).zzg("SupportsRealTime", Boolean.valueOf(zzbkc())).zzg("SupportsTurnBased", Boolean.valueOf(zzbkd())).zzg("PlatformType", PlatformType.zzqs(zzbdo())).zzg("PackageName", getPackageName()).zzg("PiracyCheckEnabled", Boolean.valueOf(zzbke())).zzg("Installed", Boolean.valueOf(zzbkf())).toString();
    }

    public int zzbdo() {
        return getInteger("platform_type");
    }

    public boolean zzbkc() {
        return getInteger("real_time_support") > 0;
    }

    public boolean zzbkd() {
        return getInteger("turn_based_support") > 0;
    }

    public boolean zzbke() {
        return getInteger("piracy_check") > 0;
    }

    public boolean zzbkf() {
        return getInteger("installed") > 0;
    }
}
