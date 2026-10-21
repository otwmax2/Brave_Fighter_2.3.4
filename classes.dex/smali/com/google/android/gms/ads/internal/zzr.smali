###### Class com.google.android.gms.ads.internal.zzr (com.google.android.gms.ads.internal.zzr)
.class public Lcom/google/android/gms/ads/internal/zzr;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/zzr$zza;
    }
.end annotation


# instance fields
.field private final zzamz:Lcom/google/android/gms/ads/internal/zzr$zza;

.field private zzana:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzanb:Z

.field private zzanc:Z

.field private zzand:J

.field private final zzw:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zza;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/ads/internal/zzr$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/zzr$zza;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zzr;-><init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/ads/internal/zzr$zza;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/ads/internal/zzr$zza;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzanb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzanc:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzand:J

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzr;->zzamz:Lcom/google/android/gms/ads/internal/zzr$zza;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/zzr$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/zzr$1;-><init>(Lcom/google/android/gms/ads/internal/zzr;Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzr;->zzw:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzr;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzana:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzr;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzr;->zzanb:Z

    return p1
.end method


# virtual methods
.method public cancel()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzanb:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzamz:Lcom/google/android/gms/ads/internal/zzr$zza;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzr;->zzw:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzr$zza;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzanc:Z

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzanb:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzamz:Lcom/google/android/gms/ads/internal/zzr$zza;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzr;->zzw:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzr$zza;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public resume()V
    .registers 5

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzr;->zzanc:Z

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzanb:Z

    if-eqz v0, :cond_10

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzr;->zzanb:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzana:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/zzr;->zzand:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/ads/internal/zzr;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V

    :cond_10
    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzanb:Z

    if-eqz v0, :cond_a

    const-string v0, "An ad refresh is already scheduled."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzr;->zzana:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzanb:Z

    iput-wide p2, p0, Lcom/google/android/gms/ads/internal/zzr;->zzand:J

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzanc:Z

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x41

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Scheduling ad refresh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds from now."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcx(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzamz:Lcom/google/android/gms/ads/internal/zzr$zza;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzr;->zzw:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/ads/internal/zzr$zza;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9
.end method

.method public zzfc()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzanb:Z

    return v0
.end method

.method public zzg(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .registers 4

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/ads/internal/zzr;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V

    return-void
.end method

###### Class com.google.android.gms.ads.internal.zzr.AnonymousClass1 (com.google.android.gms.ads.internal.zzr$1)
.class Lcom/google/android/gms/ads/internal/zzr$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzr;-><init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/ads/internal/zzr$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzane:Ljava/lang/ref/WeakReference;

.field final synthetic zzanf:Lcom/google/android/gms/ads/internal/zzr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzr;Ljava/lang/ref/WeakReference;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzr$1;->zzanf:Lcom/google/android/gms/ads/internal/zzr;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzr$1;->zzane:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr$1;->zzanf:Lcom/google/android/gms/ads/internal/zzr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/zzr;->zza(Lcom/google/android/gms/ads/internal/zzr;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr$1;->zzane:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/zza;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzr$1;->zzanf:Lcom/google/android/gms/ads/internal/zzr;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzr;->zza(Lcom/google/android/gms/ads/internal/zzr;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zza;->zzd(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    :cond_19
    return-void
.end method

###### Class com.google.android.gms.ads.internal.zzr.zza (com.google.android.gms.ads.internal.zzr$zza)
.class public Lcom/google/android/gms/ads/internal/zzr$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zzr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzr$zza;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public postDelayed(Ljava/lang/Runnable;J)Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr$zza;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr$zza;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
