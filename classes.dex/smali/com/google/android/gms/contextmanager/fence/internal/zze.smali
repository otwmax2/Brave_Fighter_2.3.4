###### Class com.google.android.gms.contextmanager.fence.internal.zze (com.google.android.gms.contextmanager.fence.internal.zze)
.class public Lcom/google/android/gms/contextmanager/fence/internal/zze;
.super Lcom/google/android/gms/contextmanager/fence/internal/zzm$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/contextmanager/fence/internal/zze$zza;
    }
.end annotation


# static fields
.field public static final BN:Lcom/google/android/gms/internal/zzbv$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbv$zza",
            "<",
            "Lcom/google/android/gms/awareness/fence/zza;",
            "Lcom/google/android/gms/contextmanager/fence/internal/zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BO:Lcom/google/android/gms/awareness/fence/zza;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/zze$1;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/fence/internal/zze$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/fence/internal/zze;->BN:Lcom/google/android/gms/internal/zzbv$zza;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/awareness/fence/zza;Landroid/os/Looper;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/fence/internal/zzm$zza;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/awareness/fence/zza;

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/zze;->BO:Lcom/google/android/gms/awareness/fence/zza;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/internal/zzd;->zza(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/zze;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/awareness/fence/zza;Landroid/os/Looper;Lcom/google/android/gms/contextmanager/fence/internal/zze$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/contextmanager/fence/internal/zze;-><init>(Lcom/google/android/gms/awareness/fence/zza;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/zze;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/contextmanager/fence/internal/zze$zza;

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/fence/internal/zze;->BO:Lcom/google/android/gms/awareness/fence/zza;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/contextmanager/fence/internal/zze$zza;-><init>(Lcom/google/android/gms/awareness/fence/zza;Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.google.android.gms.contextmanager.fence.internal.zze.AnonymousClass1 (com.google.android.gms.contextmanager.fence.internal.zze$1)
.class final Lcom/google/android/gms/contextmanager/fence/internal/zze$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbv$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/contextmanager/fence/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbv$zza",
        "<",
        "Lcom/google/android/gms/awareness/fence/zza;",
        "Lcom/google/android/gms/contextmanager/fence/internal/zze;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Ljava/lang/Object;Landroid/os/Looper;)Landroid/os/IInterface;
    .registers 4

    check-cast p1, Lcom/google/android/gms/awareness/fence/zza;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/contextmanager/fence/internal/zze$1;->zza(Lcom/google/android/gms/awareness/fence/zza;Landroid/os/Looper;)Lcom/google/android/gms/contextmanager/fence/internal/zze;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/awareness/fence/zza;Landroid/os/Looper;)Lcom/google/android/gms/contextmanager/fence/internal/zze;
    .registers 5

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/zze;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/contextmanager/fence/internal/zze;-><init>(Lcom/google/android/gms/awareness/fence/zza;Landroid/os/Looper;Lcom/google/android/gms/contextmanager/fence/internal/zze$1;)V

    return-object v0
.end method

###### Class com.google.android.gms.contextmanager.fence.internal.zze.zza (com.google.android.gms.contextmanager.fence.internal.zze$zza)
.class Lcom/google/android/gms/contextmanager/fence/internal/zze$zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/contextmanager/fence/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final BO:Lcom/google/android/gms/awareness/fence/zza;

.field private final BP:Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/awareness/fence/zza;Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/awareness/fence/zza;

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/zze$zza;->BO:Lcom/google/android/gms/awareness/fence/zza;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/zze$zza;->BP:Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/zze$zza;->BO:Lcom/google/android/gms/awareness/fence/zza;

    iget-object v1, p0, Lcom/google/android/gms/contextmanager/fence/internal/zze$zza;->BP:Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;

    invoke-virtual {v1}, Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/fence/internal/zze$zza;->BP:Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;

    invoke-virtual {v2}, Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;->zzaxg()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/awareness/fence/zza;->zzk(Ljava/lang/String;Z)V

    return-void
.end method
