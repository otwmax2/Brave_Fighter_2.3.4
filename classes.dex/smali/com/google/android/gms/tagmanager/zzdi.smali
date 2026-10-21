###### Class com.google.android.gms.tagmanager.zzdi (com.google.android.gms.tagmanager.zzdi)
.class public Lcom/google/android/gms/tagmanager/zzdi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzdi$zza;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzcsg:Lcom/google/android/gms/analytics/Tracker;

.field private zzcsi:Lcom/google/android/gms/analytics/GoogleAnalytics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdi;->mContext:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized zzoq(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdi;->zzcsi:Lcom/google/android/gms/analytics/GoogleAnalytics;

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdi;->zzcsi:Lcom/google/android/gms/analytics/GoogleAnalytics;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdi;->zzcsi:Lcom/google/android/gms/analytics/GoogleAnalytics;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzdi$zza;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/zzdi$zza;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLogger(Lcom/google/android/gms/analytics/Logger;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdi;->zzcsi:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdi;->zzcsg:Lcom/google/android/gms/analytics/Tracker;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public zzop(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzoq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdi;->zzcsg:Lcom/google/android/gms/analytics/Tracker;

    return-object v0
.end method

###### Class com.google.android.gms.tagmanager.zzdi.zza (com.google.android.gms.tagmanager.zzdi$zza)
.class Lcom/google/android/gms/tagmanager/zzdi$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzdi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zzyf(I)I
    .registers 2

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_c

    :goto_4
    :pswitch_4
    return v0

    :pswitch_5
    const/4 v0, 0x2

    goto :goto_4

    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    :pswitch_9
    const/4 v0, 0x0

    goto :goto_4

    nop

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 3

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/zzbn;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    return-void
.end method

.method public getLogLevel()I
    .registers 2

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzbn;->getLogLevel()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi$zza;->zzyf(I)I

    move-result v0

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbn;->zzcx(Ljava/lang/String;)V

    return-void
.end method

.method public setLogLevel(I)V
    .registers 3

    const-string v0, "GA uses GTM logger. Please use TagManager.setLogLevel(int) instead."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V

    return-void
.end method

.method public verbose(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbn;->v(Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V

    return-void
.end method
