###### Class com.google.android.gms.internal.zzkb (com.google.android.gms.internal.zzkb)
.class public Lcom/google/android/gms/internal/zzkb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzkj$zzb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final zzail:Ljava/lang/Object;

.field private zzaju:Lcom/google/android/gms/internal/zzcg;

.field private zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private zzamr:Z

.field private zzasi:Lcom/google/android/gms/internal/zzcn;

.field private zzasj:Lcom/google/android/gms/internal/zzcm;

.field private zzbjj:Ljava/lang/String;

.field private zzcfj:Z

.field private zzcfk:Z

.field private zzcfs:Z

.field private final zzcjq:Ljava/lang/String;

.field private final zzcjr:Lcom/google/android/gms/internal/zzkc;

.field private zzcjs:Ljava/math/BigInteger;

.field private final zzcjt:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzjz;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcju:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzke;",
            ">;"
        }
    .end annotation
.end field

.field private zzcjv:Z

.field private zzcjw:I

.field private zzcjx:Lcom/google/android/gms/internal/zzde;

.field private zzcjy:Lcom/google/android/gms/internal/zzco;

.field private zzcjz:Ljava/lang/String;

.field private zzcka:Ljava/lang/Boolean;

.field private zzckb:Z

.field private zzckc:Z

.field private zzckd:Z

.field private zzcke:Ljava/lang/String;

.field private zzckf:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzkl;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcjs:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcjt:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcju:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzkb;->zzcjv:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzkb;->zzcfj:Z

    iput v1, p0, Lcom/google/android/gms/internal/zzkb;->zzcjw:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzkb;->zzamr:Z

    iput-object v2, p0, Lcom/google/android/gms/internal/zzkb;->zzcjx:Lcom/google/android/gms/internal/zzde;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzkb;->zzcfk:Z

    iput-object v2, p0, Lcom/google/android/gms/internal/zzkb;->zzasi:Lcom/google/android/gms/internal/zzcn;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzkb;->zzcjy:Lcom/google/android/gms/internal/zzco;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzkb;->zzasj:Lcom/google/android/gms/internal/zzcm;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzkb;->zzcka:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzkb;->zzckb:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzkb;->zzckc:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzkb;->zzcfs:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzkb;->zzckd:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcke:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzkb;->zzckf:J

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzkl;->zztg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcjq:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zzkc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzcjq:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzkc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcjr:Lcom/google/android/gms/internal/zzkc;

    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcnq:Z

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/internal/zzsj;->Mg:Lcom/google/android/gms/internal/zzsj$zzb;

    const-string v3, "com.google.android.gms.ads.dynamite"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsj;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzsj$zzb;Ljava/lang/String;)Lcom/google/android/gms/internal/zzsj;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsj;->zzbcw()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_21
    .catch Lcom/google/android/gms/internal/zzsj$zza; {:try_start_e .. :try_end_21} :catch_23

    move-result-object v0

    goto :goto_d

    :catch_23
    move-exception v1

    const-string v2, "Cannot load resource from dynamite apk or local jar"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcjq:Ljava/lang/String;

    return-object v0
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzkd;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 10

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "app"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzcjr:Lcom/google/android/gms/internal/zzkc;

    invoke-virtual {v1, p1, p3}, Lcom/google/android/gms/internal/zzkc;->zzf(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcju:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzcju:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzke;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzke;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_22

    :catchall_3e
    move-exception v0

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v0

    :cond_41
    :try_start_41
    const-string v0, "slots"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcjt:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_51
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjz;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :cond_65
    const-string v0, "ads"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcjt:Ljava/util/HashSet;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/zzkd;->zza(Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcjt:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit v2
    :try_end_75
    .catchall {:try_start_41 .. :try_end_75} :catchall_3e

    return-object v3
.end method

.method public zza(Lcom/google/android/gms/internal/zzjz;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcjt:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzke;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcju:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public zza(Ljava/lang/Thread;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/zziq;->zza(Landroid/content/Context;Ljava/lang/Thread;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zziq;

    return-void
.end method

.method public zzaa(Landroid/content/Context;)Lcom/google/android/gms/internal/zzco;
    .registers 12

    const/4 v2, 0x0

    sget-object v1, Lcom/google/android/gms/internal/zzdc;->zzazf:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzavm()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkb;->zzsj()Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1b
    move-object v1, v2

    :goto_1c
    return-object v1

    :cond_1d
    iget-object v3, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v3

    :try_start_20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_28

    if-nez p1, :cond_2b

    :cond_28
    monitor-exit v3

    move-object v1, v2

    goto :goto_1c

    :cond_2b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzasi:Lcom/google/android/gms/internal/zzcn;

    if-nez v1, :cond_42

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    new-instance v2, Lcom/google/android/gms/internal/zzcn;

    if-nez v1, :cond_3d

    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    move-object v1, v0

    :cond_3d
    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/internal/zzcn;-><init>(Landroid/app/Application;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzkb;->zzasi:Lcom/google/android/gms/internal/zzcn;

    :cond_42
    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzasj:Lcom/google/android/gms/internal/zzcm;

    if-nez v1, :cond_4d

    new-instance v1, Lcom/google/android/gms/internal/zzcm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcm;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzasj:Lcom/google/android/gms/internal/zzcm;

    :cond_4d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzcjy:Lcom/google/android/gms/internal/zzco;

    if-nez v1, :cond_67

    new-instance v1, Lcom/google/android/gms/internal/zzco;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkb;->zzasi:Lcom/google/android/gms/internal/zzcn;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzkb;->zzasj:Lcom/google/android/gms/internal/zzcm;

    new-instance v5, Lcom/google/android/gms/internal/zziq;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzkb;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzkb;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/internal/zziq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-direct {v1, v2, v4, v5}, Lcom/google/android/gms/internal/zzco;-><init>(Lcom/google/android/gms/internal/zzcn;Lcom/google/android/gms/internal/zzcm;Lcom/google/android/gms/internal/zziq;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzcjy:Lcom/google/android/gms/internal/zzco;

    :cond_67
    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzcjy:Lcom/google/android/gms/internal/zzco;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzco;->zzhz()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzcjy:Lcom/google/android/gms/internal/zzco;

    monitor-exit v3

    goto :goto_1c

    :catchall_70
    move-exception v1

    monitor-exit v3
    :try_end_72
    .catchall {:try_start_20 .. :try_end_72} :catchall_70

    throw v1
.end method

.method public zzae(Z)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcfk:Z

    if-eq v0, p1, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzkj;->zze(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    :cond_c
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzkb;->zzcfk:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzkb;->zzaa(Landroid/content/Context;)Lcom/google/android/gms/internal/zzco;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzco;->isAlive()Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "start fetching content..."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkh;->zzcx(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzco;->zzhz()V

    :cond_24
    monitor-exit v1

    return-void

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public zzaf(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzkb;->zzckd:Z

    return-void
.end method

.method public zzag(Z)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzkb;->zzckb:Z

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkb;->zzamr:Z

    if-nez v0, :cond_6b

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkb;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzkb;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzkj;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzkj$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzkj;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzkj$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzkj;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/zzkj$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzkj;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/zzkj$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzkj;->zze(Landroid/content/Context;Lcom/google/android/gms/internal/zzkj$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzkj;->zzf(Landroid/content/Context;Lcom/google/android/gms/internal/zzkj$zzb;)Ljava/util/concurrent/Future;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzkb;->zza(Ljava/lang/Thread;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v0

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzkl;->zzh(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzbjj:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzavt()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    if-nez v0, :cond_47

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzkb;->zzckc:Z

    :cond_47
    new-instance v0, Lcom/google/android/gms/internal/zzcg;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzkb;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/zzkl;->zzc(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzfw;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/zzcg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzfw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzaju:Lcom/google/android/gms/internal/zzcg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkb;->zzsx()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzga()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkb;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zzt(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzkb;->zzamr:Z

    :cond_6b
    monitor-exit v1

    return-void

    :catchall_6d
    move-exception v0

    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_6d

    throw v0
.end method

.method public zzb(Ljava/lang/Boolean;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzkb;->zzcka:Ljava/lang/Boolean;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzb(Ljava/lang/Throwable;Z)V
    .registers 7

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zziq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkb;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/zziq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zziq;->zza(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public zzb(Ljava/util/HashSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzjz;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcjt:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public zzc(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcfj:Z

    if-eq p2, v0, :cond_f

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzkb;->zzcfj:Z

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzkj;->zzc(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit v1

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public zzcn(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_17

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcjz:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkb;->zzcjz:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzkj;->zzg(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit v1

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_16

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public zzd(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcfs:Z

    if-eq p2, v0, :cond_f

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzkb;->zzcfs:Z

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzkj;->zzf(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit v1

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public zze(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .registers 7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzkb;->zzckf:J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p2, :cond_21

    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcke:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iput-object p2, p0, Lcom/google/android/gms/internal/zzkb;->zzcke:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzkb;->zzckf:J

    invoke-static {p1, p2, v2, v3}, Lcom/google/android/gms/internal/zzkj;->zza(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit v1

    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_20

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_24

    throw v0
.end method

.method public zzg(Landroid/os/Bundle;)V
    .registers 5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    const-string v0, "use_https"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    const-string v0, "use_https"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_11
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcfj:Z

    const-string v0, "webview_cache_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    const-string v0, "webview_cache_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_21
    iput v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcjw:I

    const-string v0, "content_url_opted_out"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "content_url_opted_out"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzkb;->zzae(Z)V

    :cond_34
    const-string v0, "content_url_hashes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "content_url_hashes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcjz:Ljava/lang/String;

    :cond_44
    const-string v0, "auto_collect_location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    const-string v0, "auto_collect_location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_52
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcfs:Z

    const-string v0, "app_settings_json"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    const-string v0, "app_settings_json"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_62
    iput-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcke:Ljava/lang/String;

    const-string v0, "app_settings_last_update_ms"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    const-string v0, "app_settings_last_update_ms"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_72
    iput-wide v0, p0, Lcom/google/android/gms/internal/zzkb;->zzckf:J

    monitor-exit v2

    return-void

    :cond_76
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcfj:Z

    goto :goto_11

    :cond_79
    iget v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcjw:I

    goto :goto_21

    :cond_7c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcfs:Z

    goto :goto_52

    :cond_7f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcke:Ljava/lang/String;

    goto :goto_62

    :cond_82
    const-wide/16 v0, 0x0

    goto :goto_72

    :catchall_85
    move-exception v0

    monitor-exit v2
    :try_end_87
    .catchall {:try_start_3 .. :try_end_87} :catchall_85

    throw v0
.end method

.method public zzsj()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcfk:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzsk()Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcjs:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkb;->zzcjs:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzkb;->zzcjs:Ljava/math/BigInteger;

    monitor-exit v1

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public zzsl()Lcom/google/android/gms/internal/zzkc;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcjr:Lcom/google/android/gms/internal/zzkc;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzsm()Lcom/google/android/gms/internal/zzde;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcjx:Lcom/google/android/gms/internal/zzde;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzsn()Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcjv:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzkb;->zzcjv:Z

    monitor-exit v1

    return v0

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public zzso()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcfj:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkb;->zzckc:Z

    if-eqz v0, :cond_e

    :cond_b
    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public zzsp()Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzbjj:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzsq()Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcjz:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzsr()Ljava/lang/Boolean;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcka:Ljava/lang/Boolean;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzss()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcfs:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzst()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkb;->zzckd:Z

    return v0
.end method

.method public zzsu()Lcom/google/android/gms/internal/zzka;
    .registers 7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/zzka;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkb;->zzcke:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzkb;->zzckf:J

    invoke-direct {v0, v2, v4, v5}, Lcom/google/android/gms/internal/zzka;-><init>(Ljava/lang/String;J)V

    monitor-exit v1

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public zzsv()Lcom/google/android/gms/internal/zzcg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzaju:Lcom/google/android/gms/internal/zzcg;

    return-object v0
.end method

.method public zzsw()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkb;->zzckb:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method zzsx()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzdd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkb;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzdd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfv()Lcom/google/android/gms/internal/zzdf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdf;->zza(Lcom/google/android/gms/internal/zzdd;)Lcom/google/android/gms/internal/zzde;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkb;->zzcjx:Lcom/google/android/gms/internal/zzde;
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    const-string v1, "Cannot initialize CSI reporter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15
.end method
