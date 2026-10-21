###### Class com.google.android.gms.plus.internal.zze (com.google.android.gms.plus.internal.zze)
.class public Lcom/google/android/gms/plus/internal/zze;
.super Lcom/google/android/gms/common/internal/zzk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/internal/zze$zzc;,
        Lcom/google/android/gms/plus/internal/zze$zzb;,
        Lcom/google/android/gms/plus/internal/zze$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzk",
        "<",
        "Lcom/google/android/gms/plus/internal/zzd;",
        ">;"
    }
.end annotation


# instance fields
.field private asB:Lcom/google/android/gms/plus/model/people/Person;

.field private final asC:Lcom/google/android/gms/plus/internal/PlusSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/plus/internal/PlusSession;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 14

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-object p4, p0, Lcom/google/android/gms/plus/internal/zze;->asC:Lcom/google/android/gms/plus/internal/PlusSession;

    return-void
.end method

.method public static zze(Ljava/util/Set;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v1, :cond_1e

    new-instance v2, Lcom/google/android/gms/common/api/Scope;

    const-string v3, "plus_one_placeholder_scope"

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_1e
    move v0, v1

    goto :goto_a
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzarv()V

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/plus/internal/zzd;->getAccountName()Ljava/lang/String;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e

    move-result-object v0

    return-object v0

    :catch_e
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;ILjava/lang/String;)Lcom/google/android/gms/common/internal/zzr;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/internal/zzr;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzarv()V

    new-instance v1, Lcom/google/android/gms/plus/internal/zze$zzb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/plus/internal/zze$zzb;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/zzd;

    const/4 v2, 0x1

    const/4 v4, -0x1

    move v3, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/zzd;->zza(Lcom/google/android/gms/plus/internal/zzb;IIILjava/lang/String;)Lcom/google/android/gms/common/internal/zzr;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_18

    move-result-object v0

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->zzfp(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/plus/internal/zze$zzb;->zza(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_17
.end method

.method protected zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .registers 6

    if-nez p1, :cond_18

    if-eqz p3, :cond_18

    const-string v0, "loaded_person"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "loaded_person"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaj([B)Lcom/google/android/gms/plus/internal/model/people/PersonEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/zze;->asB:Lcom/google/android/gms/plus/model/people/Person;

    :cond_18
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/zzk;->zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzarv()V

    new-instance v1, Lcom/google/android/gms/plus/internal/zze$zzb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/plus/internal/zze$zzb;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/zzd;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/plus/internal/zzd;->zza(Lcom/google/android/gms/plus/internal/zzb;Ljava/util/List;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->zzfp(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/plus/internal/zze$zzb;->zza(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    goto :goto_16
.end method

.method protected zzaeu()Landroid/os/Bundle;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zze;->asC:Lcom/google/android/gms/plus/internal/PlusSession;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/PlusSession;->zzbyr()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "request_visible_actions"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/zze;->asC:Lcom/google/android/gms/plus/internal/PlusSession;

    invoke-virtual {v2}, Lcom/google/android/gms/plus/internal/PlusSession;->zzbyl()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "auth_package"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/zze;->asC:Lcom/google/android/gms/plus/internal/PlusSession;

    invoke-virtual {v2}, Lcom/google/android/gms/plus/internal/PlusSession;->zzbyn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public zzafk()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzasr()Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzg;->zzb(Lcom/google/android/gms/common/api/Api;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/zze;->zze(Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method protected synthetic zzbb(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/internal/zze;->zzjz(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzbyf()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzarv()V

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/google/android/gms/plus/internal/zze;->asB:Lcom/google/android/gms/plus/model/people/Person;

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/plus/internal/zzd;->zzbyf()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzbyh()Lcom/google/android/gms/plus/model/people/Person;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzarv()V

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zze;->asB:Lcom/google/android/gms/plus/model/people/Person;

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/internal/zzpr$zzb;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/plus/internal/zze;->zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/util/Collection;)V

    return-void
.end method

.method protected zzjz(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/zzd;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/plus/internal/zzd$zza;->zzjy(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/zzd;

    move-result-object v0

    return-object v0
.end method

.method protected zzra()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.plus.service.START"

    return-object v0
.end method

.method protected zzrb()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    return-object v0
.end method

.method public zzu(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)Lcom/google/android/gms/common/internal/zzr;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/internal/zzr;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/plus/internal/zze;->zza(Lcom/google/android/gms/internal/zzpr$zzb;ILjava/lang/String;)Lcom/google/android/gms/common/internal/zzr;

    move-result-object v0

    return-object v0
.end method

.method public zzv(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzarv()V

    new-instance v1, Lcom/google/android/gms/plus/internal/zze$zzb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/plus/internal/zze$zzb;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/zzd;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/zzd;->zza(Lcom/google/android/gms/plus/internal/zzb;IIILjava/lang/String;)Lcom/google/android/gms/common/internal/zzr;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->zzfp(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/plus/internal/zze$zzb;->zza(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    goto :goto_16
.end method

.method public zzw(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzarv()V

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzbyf()V

    new-instance v1, Lcom/google/android/gms/plus/internal/zze$zzc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/plus/internal/zze$zzc;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    :try_start_b
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/zzd;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/internal/zzd;->zzb(Lcom/google/android/gms/plus/internal/zzb;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/plus/internal/zze$zzc;->zzk(ILandroid/os/Bundle;)V

    goto :goto_14
.end method

###### Class com.google.android.gms.plus.internal.zze.zza (com.google.android.gms.plus.internal.zze$zza)
.class final Lcom/google/android/gms/plus/internal/zze$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/People$LoadPeopleResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# instance fields
.field private final asD:Ljava/lang/String;

.field private final asE:Lcom/google/android/gms/plus/model/people/PersonBuffer;

.field private final cc:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/zze$zza;->cc:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/zze$zza;->asD:Ljava/lang/String;

    if-eqz p2, :cond_11

    new-instance v0, Lcom/google/android/gms/plus/model/people/PersonBuffer;

    invoke-direct {v0, p2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :goto_e
    iput-object v0, p0, Lcom/google/android/gms/plus/internal/zze$zza;->asE:Lcom/google/android/gms/plus/model/people/PersonBuffer;

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public getNextPageToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zze$zza;->asD:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonBuffer()Lcom/google/android/gms/plus/model/people/PersonBuffer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zze$zza;->asE:Lcom/google/android/gms/plus/model/people/PersonBuffer;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zze$zza;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zze$zza;->asE:Lcom/google/android/gms/plus/model/people/PersonBuffer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zze$zza;->asE:Lcom/google/android/gms/plus/model/people/PersonBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->release()V

    :cond_9
    return-void
.end method

###### Class com.google.android.gms.plus.internal.zze.zzb (com.google.android.gms.plus.internal.zze$zzb)
.class final Lcom/google/android/gms/plus/internal/zze$zzb;
.super Lcom/google/android/gms/plus/internal/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzb"
.end annotation


# instance fields
.field private final adS:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/plus/internal/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/zze$zzb;->adS:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->zzaqy()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->zzaqy()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "pendingIntent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_13
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v3

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2e

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_2d
    move-object p1, v1

    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zze$zzb;->adS:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/plus/internal/zze$zza;

    invoke-direct {v1, v2, p1, p2}, Lcom/google/android/gms/plus/internal/zze$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_39
    move-object v0, v1

    goto :goto_13
.end method

###### Class com.google.android.gms.plus.internal.zze.zzc (com.google.android.gms.plus.internal.zze$zzc)
.class final Lcom/google/android/gms/plus/internal/zze$zzc;
.super Lcom/google/android/gms/plus/internal/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzc"
.end annotation


# instance fields
.field private final adS:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/plus/internal/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/zze$zzc;->adS:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzk(ILandroid/os/Bundle;)V
    .registers 6

    const/4 v1, 0x0

    if-eqz p2, :cond_16

    const-string v0, "pendingIntent"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_b
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zze$zzc;->adS:Lcom/google/android/gms/internal/zzpr$zzb;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_16
    move-object v0, v1

    goto :goto_b
.end method
