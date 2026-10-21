###### Class com.google.android.gms.games.appcontent.AppContentSectionBuffer (com.google.android.gms.games.appcontent.AppContentSectionBuffer)
.class public final Lcom/google/android/gms/games/appcontent/AppContentSectionBuffer;
.super Lcom/google/android/gms/common/data/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/zzf",
        "<",
        "Lcom/google/android/gms/games/appcontent/AppContentSection;",
        ">;"
    }
.end annotation


# virtual methods
.method public release()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/google/android/gms/common/data/zzf;->release()V

    const/4 v0, 0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_1b

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_1b
    return-void
.end method

.method protected zzarg()Ljava/lang/String;
    .registers 2

    const-string v0, "section_id"

    return-object v0
.end method

.method protected zzari()Ljava/lang/String;
    .registers 2

    const-string v0, "card_id"

    return-object v0
.end method

.method protected synthetic zzl(II)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/appcontent/AppContentSectionBuffer;->zzn(II)Lcom/google/android/gms/games/appcontent/AppContentSection;

    move-result-object v0

    return-object v0
.end method

.method protected zzn(II)Lcom/google/android/gms/games/appcontent/AppContentSection;
    .registers 5

    new-instance v0, Lcom/google/android/gms/games/appcontent/AppContentSectionRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/games/appcontent/AppContentSectionRef;-><init>(Ljava/util/ArrayList;II)V

    return-object v0
.end method
