###### Class com.google.android.gms.games.appcontent.AppContentActionRef (com.google.android.gms.games.appcontent.AppContentActionRef)
.class public final Lcom/google/android/gms/games/appcontent/AppContentActionRef;
.super Lcom/google/android/gms/games/appcontent/MultiDataBufferRef;

# interfaces
.implements Lcom/google/android/gms/games/appcontent/AppContentAction;


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

    const/4 v0, 0x1

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

    invoke-static {p0, p1}, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zza(Lcom/google/android/gms/games/appcontent/AppContentAction;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentActionRef;->zzbgy()Lcom/google/android/gms/games/appcontent/AppContentAction;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentActionRef;->tk:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentActionRef;->Su:Ljava/util/ArrayList;

    const-string v2, "action_data"

    iget v3, p0, Lcom/google/android/gms/games/appcontent/AppContentActionRef;->vK:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/games/appcontent/AppContentUtils;->zzd(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    const-string v0, "action_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentActionRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    const-string v0, "action_type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentActionRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zza(Lcom/google/android/gms/games/appcontent/AppContentAction;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zzb(Lcom/google/android/gms/games/appcontent/AppContentAction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentActionRef;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/appcontent/AppContentAction;

    check-cast v0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbgu()Lcom/google/android/gms/games/appcontent/AppContentAnnotation;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentActionRef;->tk:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentActionRef;->Su:Ljava/util/ArrayList;

    const-string v2, "action_annotation"

    iget v3, p0, Lcom/google/android/gms/games/appcontent/AppContentActionRef;->vK:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/games/appcontent/AppContentUtils;->zzb(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/appcontent/AppContentAnnotation;

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
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

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentActionRef;->tk:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentActionRef;->Su:Ljava/util/ArrayList;

    const-string v2, "action_conditions"

    iget v3, p0, Lcom/google/android/gms/games/appcontent/AppContentActionRef;->vK:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/games/appcontent/AppContentUtils;->zzc(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public zzbgw()Ljava/lang/String;
    .registers 2

    const-string v0, "action_content_description"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentActionRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzbgx()Ljava/lang/String;
    .registers 2

    const-string v0, "overflow_text"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentActionRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzbgy()Lcom/google/android/gms/games/appcontent/AppContentAction;
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;-><init>(Lcom/google/android/gms/games/appcontent/AppContentAction;)V

    return-object v0
.end method
