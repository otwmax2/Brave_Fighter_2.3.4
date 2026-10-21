###### Class com.google.android.gms.contextmanager.zzc (com.google.android.gms.contextmanager.zzc)
.class public final Lcom/google/android/gms/contextmanager/zzc;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/awareness/AwarenessOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final FenceApi:Lcom/google/android/gms/awareness/FenceApi;

.field public static final SnapshotApi:Lcom/google/android/gms/awareness/SnapshotApi;

.field public static final bN:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/zzd;",
            ">;"
        }
    .end annotation
.end field

.field private static final bO:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/zzd;",
            "Lcom/google/android/gms/awareness/AwarenessOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/zzc;->bN:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/fence/internal/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/zzc;->FenceApi:Lcom/google/android/gms/awareness/FenceApi;

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/zzc;->SnapshotApi:Lcom/google/android/gms/awareness/SnapshotApi;

    new-instance v0, Lcom/google/android/gms/contextmanager/zzc$1;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/zzc$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/zzc;->bO:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "ContextManager.API"

    sget-object v2, Lcom/google/android/gms/contextmanager/zzc;->bO:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/contextmanager/zzc;->bN:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/contextmanager/zzc;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

###### Class com.google.android.gms.contextmanager.zzc.AnonymousClass1 (com.google.android.gms.contextmanager.zzc$1)
.class final Lcom/google/android/gms/contextmanager/zzc$1;
.super Lcom/google/android/gms/common/api/Api$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/contextmanager/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Api$zza",
        "<",
        "Lcom/google/android/gms/contextmanager/internal/zzd;",
        "Lcom/google/android/gms/awareness/AwarenessOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/Api$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;
    .registers 14

    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/awareness/AwarenessOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/contextmanager/zzc$1;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/awareness/AwarenessOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/contextmanager/internal/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/awareness/AwarenessOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/contextmanager/internal/zzd;
    .registers 14

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/zzd;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/contextmanager/internal/zzd;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/awareness/AwarenessOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-object v0
.end method
