###### Class com.google.android.gms.internal.zzif (com.google.android.gms.internal.zzif)
.class public abstract Lcom/google/android/gms/internal/zzif;
.super Lcom/google/android/gms/internal/zzkg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzif$zza;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final zzail:Ljava/lang/Object;

.field protected final zzbxu:Lcom/google/android/gms/internal/zzig$zza;

.field protected final zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

.field protected zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

.field protected final zzbxy:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjy$zza;Lcom/google/android/gms/internal/zzig$zza;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzkg;-><init>(Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzail:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzbxy:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzif;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzif;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzjy$zza;->zzciu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzif;->zzbxu:Lcom/google/android/gms/internal/zzig$zza;

    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 1

    return-void
.end method

.method protected abstract zzak(I)Lcom/google/android/gms/internal/zzjy;
.end method

.method public zzew()V
    .registers 7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzif;->zzail:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    const-string v0, "AdRendererBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzbxv:Lcom/google/android/gms/internal/zzjy$zza;

    iget v0, v0, Lcom/google/android/gms/internal/zzjy$zza;->errorCode:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_54

    :try_start_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gms/internal/zzif;->zzh(J)V
    :try_end_13
    .catch Lcom/google/android/gms/internal/zzif$zza; {:try_start_c .. :try_end_13} :catch_23
    .catchall {:try_start_c .. :try_end_13} :catchall_54

    :goto_13
    :try_start_13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzif;->zzak(I)Lcom/google/android/gms/internal/zzjy;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzif$2;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzif$2;-><init>(Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/internal/zzjy;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v2

    return-void

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzif$zza;->getErrorCode()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2e

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4c

    :cond_2e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzif$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcx(Ljava/lang/String;)V

    :goto_35
    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    if-nez v0, :cond_57

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    :goto_40
    sget-object v0, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzif$1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzif$1;-><init>(Lcom/google/android/gms/internal/zzif;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    goto :goto_13

    :cond_4c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzif$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_35

    :catchall_54
    move-exception v0

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_13 .. :try_end_56} :catchall_54

    throw v0

    :cond_57
    :try_start_57
    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzif;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v4, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnw:J

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzbxw:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    :try_end_62
    .catchall {:try_start_57 .. :try_end_62} :catchall_54

    goto :goto_40
.end method

.method protected abstract zzh(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzif$zza;
        }
    .end annotation
.end method

.method protected zzm(Lcom/google/android/gms/internal/zzjy;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzbxu:Lcom/google/android/gms/internal/zzig$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzig$zza;->zzb(Lcom/google/android/gms/internal/zzjy;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzif.AnonymousClass1 (com.google.android.gms.internal.zzif$1)
.class Lcom/google/android/gms/internal/zzif$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzif;->zzew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbyl:Lcom/google/android/gms/internal/zzif;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzif;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzif$1;->zzbyl:Lcom/google/android/gms/internal/zzif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzif$1;->zzbyl:Lcom/google/android/gms/internal/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzif;->onStop()V

    return-void
.end method

###### Class com.google.android.gms.internal.zzif.AnonymousClass2 (com.google.android.gms.internal.zzif$2)
.class Lcom/google/android/gms/internal/zzif$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzif;->zzew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzakq:Lcom/google/android/gms/internal/zzjy;

.field final synthetic zzbyl:Lcom/google/android/gms/internal/zzif;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/internal/zzjy;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzif$2;->zzbyl:Lcom/google/android/gms/internal/zzif;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzif$2;->zzakq:Lcom/google/android/gms/internal/zzjy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzif$2;->zzbyl:Lcom/google/android/gms/internal/zzif;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzif;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzif$2;->zzbyl:Lcom/google/android/gms/internal/zzif;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzif$2;->zzakq:Lcom/google/android/gms/internal/zzjy;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzif;->zzm(Lcom/google/android/gms/internal/zzjy;)V

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method

###### Class com.google.android.gms.internal.zzif.zza (com.google.android.gms.internal.zzif$zza)
.class public final Lcom/google/android/gms/internal/zzif$zza;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "zza"
.end annotation


# instance fields
.field private final zzbym:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/google/android/gms/internal/zzif$zza;->zzbym:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzif$zza;->zzbym:I

    return v0
.end method
