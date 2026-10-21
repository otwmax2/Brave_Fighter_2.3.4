###### Class com.google.android.gms.games.appcontent.AppContentAnnotationRef (com.google.android.gms.games.appcontent.AppContentAnnotationRef)
.class public final Lcom/google/android/gms/games/appcontent/AppContentAnnotationRef;
.super Lcom/google/android/gms/games/appcontent/MultiDataBufferRef;

# interfaces
.implements Lcom/google/android/gms/games/appcontent/AppContentAnnotation;


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

    const/4 v0, 0x2

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

    invoke-static {p0, p1}, Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;->zza(Lcom/google/android/gms/games/appcontent/AppContentAnnotation;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentAnnotationRef;->zzbhf()Lcom/google/android/gms/games/appcontent/AppContentAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    const-string v0, "annotation_description"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentAnnotationRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    const-string v0, "annotation_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentAnnotationRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    const-string v0, "annotation_title"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentAnnotationRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;->zza(Lcom/google/android/gms/games/appcontent/AppContentAnnotation;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;->zzb(Lcom/google/android/gms/games/appcontent/AppContentAnnotation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentAnnotationRef;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/appcontent/AppContentAnnotation;

    check-cast v0, Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbgz()Ljava/lang/String;
    .registers 2

    const-string v0, "annotation_image_default_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentAnnotationRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzbha()I
    .registers 2

    const-string v0, "annotation_image_height"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentAnnotationRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public zzbhb()Landroid/net/Uri;
    .registers 2

    const-string v0, "annotation_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentAnnotationRef;->zzhg(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public zzbhc()Landroid/os/Bundle;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentAnnotationRef;->tk:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentAnnotationRef;->Su:Ljava/util/ArrayList;

    const-string v2, "annotation_modifiers"

    iget v3, p0, Lcom/google/android/gms/games/appcontent/AppContentAnnotationRef;->vK:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/games/appcontent/AppContentUtils;->zzd(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public zzbhd()I
    .registers 2

    const-string v0, "annotation_image_width"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentAnnotationRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public zzbhe()Ljava/lang/String;
    .registers 2

    const-string v0, "annotation_layout_slot"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentAnnotationRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzbhf()Lcom/google/android/gms/games/appcontent/AppContentAnnotation;
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;-><init>(Lcom/google/android/gms/games/appcontent/AppContentAnnotation;)V

    return-object v0
.end method
