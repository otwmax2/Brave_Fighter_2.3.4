package com.google.android.gms.games.internal.experience;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;

/* JADX INFO: loaded from: classes.dex */
public final class ExperienceEventRef extends zzc implements ExperienceEvent {
    private final GameRef WN;

    public ExperienceEventRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
        if (zzhh("external_game_id")) {
            this.WN = null;
        } else {
            this.WN = new GameRef(this.tk, this.vK);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return ExperienceEventEntity.zza(this, obj);
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public Game getGame() {
        return this.WN;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public Uri getIconImageUri() {
        return zzhg("icon_uri");
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public String getIconImageUrl() {
        return getString("icon_url");
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public int getType() {
        return getInteger("type");
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return ExperienceEventEntity.zza(this);
    }

    public String toString() {
        return ExperienceEventEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((ExperienceEventEntity) ((ExperienceEvent) freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public String zzbjt() {
        return getString("external_experience_id");
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public String zzbju() {
        return getString("display_title");
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public String zzbjv() {
        return getString("display_description");
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public long zzbjw() {
        return getLong("created_timestamp");
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public long zzbjx() {
        return getLong("xp_earned");
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public long zzbjy() {
        return getLong("current_xp");
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public int zzbjz() {
        return getInteger("newLevel");
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzbka, reason: merged with bridge method [inline-methods] */
    public ExperienceEvent freeze() {
        return new ExperienceEventEntity(this);
    }
}
