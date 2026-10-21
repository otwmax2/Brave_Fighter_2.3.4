###### Class com.google.android.gms.internal.zzfh (com.google.android.gms.internal.zzfh)
.class public abstract Lcom/google/android/gms/internal/zzfh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected zzbjj:Ljava/lang/String;

.field protected zzbjk:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzll;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzll;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzll;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfh;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfh;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzll;->zzun()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzkl;->zzh(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzbjj:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzbjk:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfh;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfh;->zzbc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfh;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzfh;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private zza(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzbjk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzll;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzll;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_d
    return-void
.end method

.method private zzbc(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "internal"

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_80

    :cond_a
    :goto_a
    packed-switch v1, :pswitch_data_aa

    :goto_d
    return-object v0

    :sswitch_e
    const-string v2, "error"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x0

    goto :goto_a

    :sswitch_18
    const-string v2, "playerFailed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x1

    goto :goto_a

    :sswitch_22
    const-string v2, "inProgress"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x2

    goto :goto_a

    :sswitch_2c
    const-string v2, "contentLengthMissing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x3

    goto :goto_a

    :sswitch_36
    const-string v2, "noCacheDir"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x4

    goto :goto_a

    :sswitch_40
    const-string v2, "expireFailed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x5

    goto :goto_a

    :sswitch_4a
    const-string v2, "badUrl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x6

    goto :goto_a

    :sswitch_54
    const-string v2, "downloadTimeout"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x7

    goto :goto_a

    :sswitch_5e
    const-string v2, "sizeExceeded"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v1, 0x8

    goto :goto_a

    :sswitch_69
    const-string v2, "externalAbort"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v1, 0x9

    goto :goto_a

    :pswitch_74
    const-string v0, "internal"

    goto :goto_d

    :pswitch_77
    const-string v0, "io"

    goto :goto_d

    :pswitch_7a
    const-string v0, "network"

    goto :goto_d

    :pswitch_7d
    const-string v0, "policy"

    goto :goto_d

    :sswitch_data_80
    .sparse-switch
        -0x533f68d6 -> :sswitch_4a
        -0x5049c18e -> :sswitch_22
        -0x36c40c47 -> :sswitch_54
        -0x274d4859 -> :sswitch_2c
        -0x26475182 -> :sswitch_18
        -0x151a598c -> :sswitch_5e
        -0x1e989db -> :sswitch_69
        0x5c4d208 -> :sswitch_e
        0x2293ea3c -> :sswitch_40
        0x2b3e368c -> :sswitch_36
    .end sparse-switch

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_77
        :pswitch_77
        :pswitch_7a
        :pswitch_7a
        :pswitch_7d
        :pswitch_7d
    .end packed-switch
.end method


# virtual methods
.method public abstract abort()V
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method protected zza(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnf:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzfh$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzfh$2;-><init>(Lcom/google/android/gms/internal/zzfh;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected zza(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 14

    sget-object v7, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnf:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzfh$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzfh$1;-><init>(Lcom/google/android/gms/internal/zzfh;Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    sget-object v6, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnf:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzfh$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzfh$3;-><init>(Lcom/google/android/gms/internal/zzfh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract zzba(Ljava/lang/String;)Z
.end method

.method protected zzbb(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzfh.AnonymousClass1 (com.google.android.gms.internal.zzfh$1)
.class Lcom/google/android/gms/internal/zzfh$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfh;->zza(Ljava/lang/String;Ljava/lang/String;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbjl:Ljava/lang/String;

.field final synthetic zzbjm:Ljava/lang/String;

.field final synthetic zzbjn:I

.field final synthetic zzbjo:I

.field final synthetic zzbjp:Z

.field final synthetic zzbjq:Lcom/google/android/gms/internal/zzfh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfh;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfh$1;->zzbjq:Lcom/google/android/gms/internal/zzfh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfh$1;->zzbjl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfh$1;->zzbjm:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/zzfh$1;->zzbjn:I

    iput p5, p0, Lcom/google/android/gms/internal/zzfh$1;->zzbjo:I

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzfh$1;->zzbjp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "event"

    const-string v2, "precacheProgress"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "src"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfh$1;->zzbjl:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cachedSrc"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfh$1;->zzbjm:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bytesLoaded"

    iget v2, p0, Lcom/google/android/gms/internal/zzfh$1;->zzbjn:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "totalBytes"

    iget v2, p0, Lcom/google/android/gms/internal/zzfh$1;->zzbjo:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cacheReady"

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfh$1;->zzbjp:Z

    if-eqz v0, :cond_43

    const-string v0, "1"

    :goto_38
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh$1;->zzbjq:Lcom/google/android/gms/internal/zzfh;

    const-string v2, "onPrecacheEvent"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/zzfh;->zza(Lcom/google/android/gms/internal/zzfh;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_43
    const-string v0, "0"

    goto :goto_38
.end method

###### Class com.google.android.gms.internal.zzfh.AnonymousClass2 (com.google.android.gms.internal.zzfh$2)
.class Lcom/google/android/gms/internal/zzfh$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfh;->zza(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbjl:Ljava/lang/String;

.field final synthetic zzbjm:Ljava/lang/String;

.field final synthetic zzbjo:I

.field final synthetic zzbjq:Lcom/google/android/gms/internal/zzfh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfh;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfh$2;->zzbjq:Lcom/google/android/gms/internal/zzfh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfh$2;->zzbjl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfh$2;->zzbjm:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/zzfh$2;->zzbjo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "precacheComplete"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "src"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfh$2;->zzbjl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cachedSrc"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfh$2;->zzbjm:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "totalBytes"

    iget v2, p0, Lcom/google/android/gms/internal/zzfh$2;->zzbjo:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfh$2;->zzbjq:Lcom/google/android/gms/internal/zzfh;

    const-string v2, "onPrecacheEvent"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zzfh;->zza(Lcom/google/android/gms/internal/zzfh;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzfh.AnonymousClass3 (com.google.android.gms.internal.zzfh$3)
.class Lcom/google/android/gms/internal/zzfh$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfh;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbjl:Ljava/lang/String;

.field final synthetic zzbjm:Ljava/lang/String;

.field final synthetic zzbjq:Lcom/google/android/gms/internal/zzfh;

.field final synthetic zzbjr:Ljava/lang/String;

.field final synthetic zzbjs:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfh$3;->zzbjq:Lcom/google/android/gms/internal/zzfh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfh$3;->zzbjl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfh$3;->zzbjm:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzfh$3;->zzbjr:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzfh$3;->zzbjs:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "precacheCanceled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "src"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfh$3;->zzbjl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfh$3;->zzbjm:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "cachedSrc"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfh$3;->zzbjm:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    const-string v1, "type"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfh$3;->zzbjq:Lcom/google/android/gms/internal/zzfh;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfh$3;->zzbjr:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzfh;->zza(Lcom/google/android/gms/internal/zzfh;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reason"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfh$3;->zzbjr:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfh$3;->zzbjs:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string v1, "message"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfh$3;->zzbjs:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfh$3;->zzbjq:Lcom/google/android/gms/internal/zzfh;

    const-string v2, "onPrecacheEvent"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zzfh;->zza(Lcom/google/android/gms/internal/zzfh;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
