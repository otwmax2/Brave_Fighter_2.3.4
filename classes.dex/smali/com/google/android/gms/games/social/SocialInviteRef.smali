###### Class com.google.android.gms.games.social.SocialInviteRef (com.google.android.gms.games.social.SocialInviteRef)
.class public final Lcom/google/android/gms/games/social/SocialInviteRef;
.super Lcom/google/android/gms/common/data/zzc;

# interfaces
.implements Lcom/google/android/gms/games/social/SocialInvite;


# instance fields
.field private final ZP:Lcom/google/android/gms/games/Player;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    new-instance v0, Lcom/google/android/gms/games/PlayerRef;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object v0, p0, Lcom/google/android/gms/games/social/SocialInviteRef;->ZP:Lcom/google/android/gms/games/Player;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/social/SocialInviteEntity;->zza(Lcom/google/android/gms/games/social/SocialInvite;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/social/SocialInviteRef;->zzbln()Lcom/google/android/gms/games/social/SocialInvite;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()I
    .registers 2

    const-string v0, "direction"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/social/SocialInviteRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLastModifiedTimestamp()J
    .registers 3

    const-string v0, "last_modified_timestamp"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/social/SocialInviteRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayer()Lcom/google/android/gms/games/Player;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/social/SocialInviteRef;->ZP:Lcom/google/android/gms/games/Player;

    return-object v0
.end method

.method public getType()I
    .registers 2

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/social/SocialInviteRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzc(Lcom/google/android/gms/games/social/SocialInvite;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzd(Lcom/google/android/gms/games/social/SocialInvite;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/games/social/SocialInviteRef;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/social/SocialInvite;

    check-cast v0, Lcom/google/android/gms/games/social/SocialInviteEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/social/SocialInviteEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzblm()Ljava/lang/String;
    .registers 2

    const-string v0, "external_social_invite_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/social/SocialInviteRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzbln()Lcom/google/android/gms/games/social/SocialInvite;
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/social/SocialInviteEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/social/SocialInviteEntity;-><init>(Lcom/google/android/gms/games/social/SocialInvite;)V

    return-object v0
.end method
