###### Class com.google.android.gms.games.appcontent.AppContentCardRef (com.google.android.gms.games.appcontent.AppContentCardRef)
.class public final Lcom/google/android/gms/games/appcontent/AppContentCardRef;
.super Lcom/google/android/gms/games/appcontent/MultiDataBufferRef;

# interfaces
.implements Lcom/google/android/gms/games/appcontent/AppContentCard;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/games/appcontent/MultiDataBufferRef;-><init>(Ljava/util/ArrayList;II)V

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

    invoke-static {p0, p1}, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zza(Lcom/google/android/gms/games/appcontent/AppContentCard;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->zzbhk()Lcom/google/android/gms/games/appcontent/AppContentCard;

    move-result-object v0

    return-object v0
.end method

.method public getActions()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->tk:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->Su:Ljava/util/ArrayList;

    const-string v2, "card_actions"

    iget v3, p0, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->vK:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/games/appcontent/AppContentUtils;->zza(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    const-string v0, "card_description"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->tk:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->Su:Ljava/util/ArrayList;

    const-string v2, "card_data"

    iget v3, p0, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->vK:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/games/appcontent/AppContentUtils;->zzd(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    const-string v0, "card_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    const-string v0, "card_title"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    const-string v0, "card_type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zza(Lcom/google/android/gms/games/appcontent/AppContentCard;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->zzb(Lcom/google/android/gms/games/appcontent/AppContentCard;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/appcontent/AppContentCard;

    check-cast v0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbgv()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentCondition;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->tk:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->Su:Ljava/util/ArrayList;

    const-string v2, "card_conditions"

    iget v3, p0, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->vK:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/games/appcontent/AppContentUtils;->zzc(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public zzbgw()Ljava/lang/String;
    .registers 2

    const-string v0, "card_content_description"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzbhg()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentAnnotation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->tk:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->Su:Ljava/util/ArrayList;

    const-string v2, "card_annotations"

    iget v3, p0, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->vK:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/games/appcontent/AppContentUtils;->zzb(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public zzbhh()I
    .registers 2

    const-string v0, "card_current_steps"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public zzbhi()Ljava/lang/String;
    .registers 2

    const-string v0, "card_subtitle"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzbhj()I
    .registers 2

    const-string v0, "card_total_steps"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentCardRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public zzbhk()Lcom/google/android/gms/games/appcontent/AppContentCard;
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;-><init>(Lcom/google/android/gms/games/appcontent/AppContentCard;)V

    return-object v0
.end method
