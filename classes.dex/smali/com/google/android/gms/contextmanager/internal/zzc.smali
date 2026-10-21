###### Class com.google.android.gms.contextmanager.internal.zzc (com.google.android.gms.contextmanager.internal.zzc)
.class public Lcom/google/android/gms/contextmanager/internal/zzc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/contextmanager/internal/zzc$zza;,
        Lcom/google/android/gms/contextmanager/internal/zzc$zzb;,
        Lcom/google/android/gms/contextmanager/internal/zzc$zzc;
    }
.end annotation

###### Class com.google.android.gms.contextmanager.internal.zzc.zza (com.google.android.gms.contextmanager.internal.zzc$zza)
.class public abstract Lcom/google/android/gms/contextmanager/internal/zzc$zza;
.super Lcom/google/android/gms/internal/zzpr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/contextmanager/internal/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzpr$zza",
        "<",
        "Lcom/google/android/gms/awareness/fence/FenceQueryResult;",
        "Lcom/google/android/gms/contextmanager/internal/zzd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/contextmanager/zzc;->API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzpr$zza;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public zzag(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/awareness/fence/FenceQueryResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/zzc$zza$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/contextmanager/internal/zzc$zza$1;-><init>(Lcom/google/android/gms/contextmanager/internal/zzc$zza;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/contextmanager/internal/zzc$zza;->zzag(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/awareness/fence/FenceQueryResult;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.contextmanager.internal.zzc.zza.AnonymousClass1 (com.google.android.gms.contextmanager.internal.zzc$zza$1)
.class Lcom/google/android/gms/contextmanager/internal/zzc$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/awareness/fence/FenceQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/contextmanager/internal/zzc$zza;->zzag(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/awareness/fence/FenceQueryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Co:Lcom/google/android/gms/contextmanager/internal/zzc$zza;

.field final synthetic gH:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/contextmanager/internal/zzc$zza;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/contextmanager/internal/zzc$zza$1;->Co:Lcom/google/android/gms/contextmanager/internal/zzc$zza;

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/internal/zzc$zza$1;->gH:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFenceStateMap()Lcom/google/android/gms/awareness/fence/FenceStateMap;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/zzc$zza$1;->gH:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.contextmanager.internal.zzc.zzb (com.google.android.gms.contextmanager.internal.zzc$zzb)
.class public abstract Lcom/google/android/gms/contextmanager/internal/zzc$zzb;
.super Lcom/google/android/gms/internal/zzpr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/contextmanager/internal/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzpr$zza",
        "<",
        "Lcom/google/android/gms/awareness/snapshot/internal/zzl;",
        "Lcom/google/android/gms/contextmanager/internal/zzd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/contextmanager/zzc;->API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzpr$zza;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public zzah(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/awareness/snapshot/internal/zzl;
    .registers 3

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/zzc$zzb$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/contextmanager/internal/zzc$zzb$1;-><init>(Lcom/google/android/gms/contextmanager/internal/zzc$zzb;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/contextmanager/internal/zzc$zzb;->zzah(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.contextmanager.internal.zzc.zzb.AnonymousClass1 (com.google.android.gms.contextmanager.internal.zzc$zzb$1)
.class Lcom/google/android/gms/contextmanager/internal/zzc$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/awareness/snapshot/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/contextmanager/internal/zzc$zzb;->zzah(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/awareness/snapshot/internal/zzl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Cp:Lcom/google/android/gms/contextmanager/internal/zzc$zzb;

.field final synthetic gH:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/contextmanager/internal/zzc$zzb;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/contextmanager/internal/zzc$zzb$1;->Cp:Lcom/google/android/gms/contextmanager/internal/zzc$zzb;

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/internal/zzc$zzb$1;->gH:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/zzc$zzb$1;->gH:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public zzahi()Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.google.android.gms.contextmanager.internal.zzc.AbstractC0083zzc (com.google.android.gms.contextmanager.internal.zzc$zzc)
.class public abstract Lcom/google/android/gms/contextmanager/internal/zzc$zzc;
.super Lcom/google/android/gms/internal/zzpr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/contextmanager/internal/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzpr$zza",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        "Lcom/google/android/gms/contextmanager/internal/zzd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/contextmanager/zzc;->API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzpr$zza;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .registers 2

    return-object p1
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/contextmanager/internal/zzc$zzc;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
