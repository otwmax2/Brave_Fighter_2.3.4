package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.Players;

/* JADX INFO: loaded from: classes.dex */
public class ProfileSettingsEntity extends AbstractSafeParcelable implements Players.LoadProfileSettingsResult {
    public static final ProfileSettingsEntityCreator CREATOR = new ProfileSettingsEntityCreator();
    private final boolean Rt;
    private final String Rv;
    private final boolean XC;
    private final boolean XD;
    private final StockProfileImageEntity XE;
    private final boolean XF;
    private final boolean XG;
    private final Status cc;
    private final int mVersionCode;

    ProfileSettingsEntity(int i, Status status, String str, boolean z, boolean z2, boolean z3, StockProfileImageEntity stockProfileImageEntity, boolean z4, boolean z5) {
        this.mVersionCode = i;
        this.cc = status;
        this.Rv = str;
        this.XC = z;
        this.Rt = z2;
        this.XD = z3;
        this.XE = stockProfileImageEntity;
        this.XF = z4;
        this.XG = z5;
    }

    public ProfileSettingsEntity(DataHolder dataHolder) {
        this.mVersionCode = 3;
        this.cc = new Status(dataHolder.getStatusCode());
        if (!this.cc.isSuccess() || dataHolder.getCount() <= 0) {
            this.Rv = null;
            this.XC = false;
            this.Rt = false;
            this.XD = false;
            this.XE = null;
            this.XF = false;
            this.XG = false;
            return;
        }
        int iZzfo = dataHolder.zzfo(0);
        this.Rv = dataHolder.zzd("gamer_tag", 0, iZzfo);
        this.XC = dataHolder.zze("gamer_tag_explicitly_set", 0, iZzfo);
        this.Rt = dataHolder.zze("profile_visible", 0, iZzfo);
        this.XD = dataHolder.zze("profile_visibility_explicitly_set", 0, iZzfo);
        String strZzd = dataHolder.zzd("stock_avatar_url", 0, iZzfo);
        String strZzd2 = dataHolder.zzd("stock_avatar_uri", 0, iZzfo);
        if (TextUtils.isEmpty(strZzd) || TextUtils.isEmpty(strZzd2)) {
            this.XE = null;
        } else {
            this.XE = new StockProfileImageEntity(strZzd, Uri.parse(strZzd2));
        }
        this.XF = dataHolder.zze("profile_discoverable", 0, iZzfo);
        this.XG = dataHolder.zze("auto_sign_in", 0, iZzfo);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Players.LoadProfileSettingsResult)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        Players.LoadProfileSettingsResult loadProfileSettingsResult = (Players.LoadProfileSettingsResult) obj;
        return zzaa.equal(this.Rv, loadProfileSettingsResult.zzbgd()) && zzaa.equal(Boolean.valueOf(this.XC), Boolean.valueOf(loadProfileSettingsResult.zzbgn())) && zzaa.equal(Boolean.valueOf(this.Rt), Boolean.valueOf(loadProfileSettingsResult.zzbgg())) && zzaa.equal(Boolean.valueOf(this.XD), Boolean.valueOf(loadProfileSettingsResult.zzbgl())) && zzaa.equal(this.cc, loadProfileSettingsResult.getStatus()) && zzaa.equal(this.XE, loadProfileSettingsResult.zzbgm()) && zzaa.equal(Boolean.valueOf(this.XF), Boolean.valueOf(loadProfileSettingsResult.zzbgo())) && zzaa.equal(Boolean.valueOf(this.XG), Boolean.valueOf(loadProfileSettingsResult.zzbgp()));
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.cc;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(this.Rv, Boolean.valueOf(this.XC), Boolean.valueOf(this.Rt), Boolean.valueOf(this.XD), this.cc, this.XE, Boolean.valueOf(this.XF), Boolean.valueOf(this.XG));
    }

    public String toString() {
        return zzaa.zzz(this).zzg("GamerTag", this.Rv).zzg("IsGamerTagExplicitlySet", Boolean.valueOf(this.XC)).zzg("IsProfileVisible", Boolean.valueOf(this.Rt)).zzg("IsVisibilityExplicitlySet", Boolean.valueOf(this.XD)).zzg("Status", this.cc).zzg("StockProfileImage", this.XE).zzg("IsProfileDiscoverable", Boolean.valueOf(this.XF)).zzg("AutoSignIn", Boolean.valueOf(this.XG)).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ProfileSettingsEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.Players.LoadProfileSettingsResult
    public String zzbgd() {
        return this.Rv;
    }

    @Override // com.google.android.gms.games.Players.LoadProfileSettingsResult
    public boolean zzbgg() {
        return this.Rt;
    }

    @Override // com.google.android.gms.games.Players.LoadProfileSettingsResult
    public boolean zzbgl() {
        return this.XD;
    }

    @Override // com.google.android.gms.games.Players.LoadProfileSettingsResult
    public StockProfileImage zzbgm() {
        return this.XE;
    }

    @Override // com.google.android.gms.games.Players.LoadProfileSettingsResult
    public boolean zzbgn() {
        return this.XC;
    }

    @Override // com.google.android.gms.games.Players.LoadProfileSettingsResult
    public boolean zzbgo() {
        return this.XF;
    }

    @Override // com.google.android.gms.games.Players.LoadProfileSettingsResult
    public boolean zzbgp() {
        return this.XG;
    }
}
