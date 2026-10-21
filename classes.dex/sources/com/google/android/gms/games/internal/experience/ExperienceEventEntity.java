package com.google.android.gms.games.internal.experience;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;

/* JADX INFO: loaded from: classes.dex */
public final class ExperienceEventEntity extends AbstractSafeParcelable implements ExperienceEvent {
    public static final ExperienceEventEntityCreator CREATOR = new ExperienceEventEntityCreator();
    private final Uri QE;
    private final String QP;
    private final String WF;
    private final GameEntity WG;
    private final String WH;
    private final String WI;
    private final long WJ;
    private final long WK;
    private final long WL;
    private final int WM;
    private final int it;
    private final int mVersionCode;

    ExperienceEventEntity(int i, String str, GameEntity gameEntity, String str2, String str3, String str4, Uri uri, long j, long j2, long j3, int i2, int i3) {
        this.mVersionCode = i;
        this.WF = str;
        this.WG = gameEntity;
        this.WH = str2;
        this.WI = str3;
        this.QP = str4;
        this.QE = uri;
        this.WJ = j;
        this.WK = j2;
        this.WL = j3;
        this.it = i2;
        this.WM = i3;
    }

    public ExperienceEventEntity(ExperienceEvent experienceEvent) {
        this.mVersionCode = 1;
        this.WF = experienceEvent.zzbjt();
        this.WG = new GameEntity(experienceEvent.getGame());
        this.WH = experienceEvent.zzbju();
        this.WI = experienceEvent.zzbjv();
        this.QP = experienceEvent.getIconImageUrl();
        this.QE = experienceEvent.getIconImageUri();
        this.WJ = experienceEvent.zzbjw();
        this.WK = experienceEvent.zzbjx();
        this.WL = experienceEvent.zzbjy();
        this.it = experienceEvent.getType();
        this.WM = experienceEvent.zzbjz();
    }

    static int zza(ExperienceEvent experienceEvent) {
        return zzaa.hashCode(experienceEvent.zzbjt(), experienceEvent.getGame(), experienceEvent.zzbju(), experienceEvent.zzbjv(), experienceEvent.getIconImageUrl(), experienceEvent.getIconImageUri(), Long.valueOf(experienceEvent.zzbjw()), Long.valueOf(experienceEvent.zzbjx()), Long.valueOf(experienceEvent.zzbjy()), Integer.valueOf(experienceEvent.getType()), Integer.valueOf(experienceEvent.zzbjz()));
    }

    static boolean zza(ExperienceEvent experienceEvent, Object obj) {
        if (!(obj instanceof ExperienceEvent)) {
            return false;
        }
        if (experienceEvent == obj) {
            return true;
        }
        ExperienceEvent experienceEvent2 = (ExperienceEvent) obj;
        return zzaa.equal(experienceEvent2.zzbjt(), experienceEvent.zzbjt()) && zzaa.equal(experienceEvent2.getGame(), experienceEvent.getGame()) && zzaa.equal(experienceEvent2.zzbju(), experienceEvent.zzbju()) && zzaa.equal(experienceEvent2.zzbjv(), experienceEvent.zzbjv()) && zzaa.equal(experienceEvent2.getIconImageUrl(), experienceEvent.getIconImageUrl()) && zzaa.equal(experienceEvent2.getIconImageUri(), experienceEvent.getIconImageUri()) && zzaa.equal(Long.valueOf(experienceEvent2.zzbjw()), Long.valueOf(experienceEvent.zzbjw())) && zzaa.equal(Long.valueOf(experienceEvent2.zzbjx()), Long.valueOf(experienceEvent.zzbjx())) && zzaa.equal(Long.valueOf(experienceEvent2.zzbjy()), Long.valueOf(experienceEvent.zzbjy())) && zzaa.equal(Integer.valueOf(experienceEvent2.getType()), Integer.valueOf(experienceEvent.getType())) && zzaa.equal(Integer.valueOf(experienceEvent2.zzbjz()), Integer.valueOf(experienceEvent.zzbjz()));
    }

    static String zzb(ExperienceEvent experienceEvent) {
        return zzaa.zzz(experienceEvent).zzg("ExperienceId", experienceEvent.zzbjt()).zzg("Game", experienceEvent.getGame()).zzg("DisplayTitle", experienceEvent.zzbju()).zzg("DisplayDescription", experienceEvent.zzbjv()).zzg("IconImageUrl", experienceEvent.getIconImageUrl()).zzg("IconImageUri", experienceEvent.getIconImageUri()).zzg("CreatedTimestamp", Long.valueOf(experienceEvent.zzbjw())).zzg("XpEarned", Long.valueOf(experienceEvent.zzbjx())).zzg("CurrentXp", Long.valueOf(experienceEvent.zzbjy())).zzg("Type", Integer.valueOf(experienceEvent.getType())).zzg("NewLevel", Integer.valueOf(experienceEvent.zzbjz())).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public Game getGame() {
        return this.WG;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public Uri getIconImageUri() {
        return this.QE;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public String getIconImageUrl() {
        return this.QP;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public int getType() {
        return this.it;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ExperienceEventEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public String zzbjt() {
        return this.WF;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public String zzbju() {
        return this.WH;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public String zzbjv() {
        return this.WI;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public long zzbjw() {
        return this.WJ;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public long zzbjx() {
        return this.WK;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public long zzbjy() {
        return this.WL;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public int zzbjz() {
        return this.WM;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzbka, reason: merged with bridge method [inline-methods] */
    public ExperienceEvent freeze() {
        return this;
    }
}
