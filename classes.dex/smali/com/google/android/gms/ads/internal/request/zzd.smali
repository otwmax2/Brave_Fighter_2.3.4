###### Class com.google.android.gms.ads.internal.request.zzd (com.google.android.gms.ads.internal.request.zzd)
.class public abstract Lcom/google/android/gms/ads/internal/request/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/request/zzc$zza;
.implements Lcom/google/android/gms/internal/zzkn;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/request/zzd$zzb;,
        Lcom/google/android/gms/ads/internal/request/zzd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/request/zzc$zza;",
        "Lcom/google/android/gms/internal/zzkn",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzail:Ljava/lang/Object;

.field private final zzcan:Lcom/google/android/gms/internal/zzle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzle",
            "<",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcao:Lcom/google/android/gms/ads/internal/request/zzc$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzle;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzle",
            "<",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            ">;",
            "Lcom/google/android/gms/ads/internal/request/zzc$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzail:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzcan:Lcom/google/android/gms/internal/zzle;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzcao:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzqx()V

    return-void
.end method

.method zza(Lcom/google/android/gms/ads/internal/request/zzk;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_2
    new-instance v2, Lcom/google/android/gms/ads/internal/request/zzg;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/request/zzg;-><init>(Lcom/google/android/gms/ads/internal/request/zzc$zza;)V

    invoke-interface {p1, p2, v2}, Lcom/google/android/gms/ads/internal/request/zzk;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzl;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_a} :catch_24
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_a} :catch_32
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_a} :catch_40

    :goto_a
    return v0

    :catch_b
    move-exception v2

    const-string v3, "Could not fetch ad response from ad request service."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/zzkb;->zzb(Ljava/lang/Throwable;Z)V

    :goto_18
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzcao:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    new-instance v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v2, v1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/internal/request/zzc$zza;->zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    move v0, v1

    goto :goto_a

    :catch_24
    move-exception v2

    const-string v3, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/zzkb;->zzb(Ljava/lang/Throwable;Z)V

    goto :goto_18

    :catch_32
    move-exception v2

    const-string v3, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/zzkb;->zzb(Ljava/lang/Throwable;Z)V

    goto :goto_18

    :catch_40
    move-exception v2

    const-string v3, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/zzkb;->zzb(Ljava/lang/Throwable;Z)V

    goto :goto_18
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzcao:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/request/zzc$zza;->zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzqx()V

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public zzpw()Ljava/lang/Void;
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzqy()Lcom/google/android/gms/ads/internal/request/zzk;

    move-result-object v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzcao:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/request/zzc$zza;->zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzqx()V

    :goto_15
    return-object v3

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzcan:Lcom/google/android/gms/internal/zzle;

    new-instance v2, Lcom/google/android/gms/ads/internal/request/zzd$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/request/zzd$1;-><init>(Lcom/google/android/gms/ads/internal/request/zzd;Lcom/google/android/gms/ads/internal/request/zzk;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzd$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/request/zzd$2;-><init>(Lcom/google/android/gms/ads/internal/request/zzd;)V

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzle;->zza(Lcom/google/android/gms/internal/zzle$zzc;Lcom/google/android/gms/internal/zzle$zza;)V

    goto :goto_15
.end method

.method public synthetic zzpz()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzpw()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzqx()V
.end method

.method public abstract zzqy()Lcom/google/android/gms/ads/internal/request/zzk;
.end method

###### Class com.google.android.gms.ads.internal.request.zzd.AnonymousClass1 (com.google.android.gms.ads.internal.request.zzd$1)
.class Lcom/google/android/gms/ads/internal/request/zzd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzle$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/zzd;->zzpw()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzle$zzc",
        "<",
        "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzcap:Lcom/google/android/gms/ads/internal/request/zzk;

.field final synthetic zzcaq:Lcom/google/android/gms/ads/internal/request/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/zzd;Lcom/google/android/gms/ads/internal/request/zzk;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd$1;->zzcaq:Lcom/google/android/gms/ads/internal/request/zzd;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzd$1;->zzcap:Lcom/google/android/gms/ads/internal/request/zzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzc(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$1;->zzcaq:Lcom/google/android/gms/ads/internal/request/zzd;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$1;->zzcap:Lcom/google/android/gms/ads/internal/request/zzk;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/request/zzd;->zza(Lcom/google/android/gms/ads/internal/request/zzk;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$1;->zzcaq:Lcom/google/android/gms/ads/internal/request/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzqx()V

    :cond_f
    return-void
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/request/zzd$1;->zzc(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    return-void
.end method

###### Class com.google.android.gms.ads.internal.request.zzd.AnonymousClass2 (com.google.android.gms.ads.internal.request.zzd$2)
.class Lcom/google/android/gms/ads/internal/request/zzd$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzle$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/zzd;->zzpw()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcaq:Lcom/google/android/gms/ads/internal/request/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/zzd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd$2;->zzcaq:Lcom/google/android/gms/ads/internal/request/zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$2;->zzcaq:Lcom/google/android/gms/ads/internal/request/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzqx()V

    return-void
.end method

###### Class com.google.android.gms.ads.internal.request.zzd.zza (com.google.android.gms.ads.internal.request.zzd$zza)
.class public final Lcom/google/android/gms/ads/internal/request/zzd$zza;
.super Lcom/google/android/gms/ads/internal/request/zzd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/request/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzle;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzle",
            "<",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            ">;",
            "Lcom/google/android/gms/ads/internal/request/zzc$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/ads/internal/request/zzd;-><init>(Lcom/google/android/gms/internal/zzle;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zza;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public synthetic zzpz()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzpw()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public zzqx()V
    .registers 1

    return-void
.end method

.method public zzqy()Lcom/google/android/gms/ads/internal/request/zzk;
    .registers 4

    new-instance v1, Lcom/google/android/gms/internal/zzcv;

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzaxw:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzcv;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zza;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/zzis;->zzrg()Lcom/google/android/gms/internal/zzis;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzit;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzis;)Lcom/google/android/gms/internal/zzit;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.ads.internal.request.zzd.zzb (com.google.android.gms.ads.internal.request.zzd$zzb)
.class public Lcom/google/android/gms/ads/internal/request/zzd$zzb;
.super Lcom/google/android/gms/ads/internal/request/zzd;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzd$zzb;
.implements Lcom/google/android/gms/common/internal/zzd$zzc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/request/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final zzail:Ljava/lang/Object;

.field private zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private zzcan:Lcom/google/android/gms/internal/zzle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzle",
            "<",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcao:Lcom/google/android/gms/ads/internal/request/zzc$zza;

.field protected zzcar:Lcom/google/android/gms/ads/internal/request/zze;

.field private zzcas:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzle;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Lcom/google/android/gms/internal/zzle",
            "<",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            ">;",
            "Lcom/google/android/gms/ads/internal/request/zzc$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3, p4}, Lcom/google/android/gms/ads/internal/request/zzd;-><init>(Lcom/google/android/gms/internal/zzle;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzail:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcan:Lcom/google/android/gms/internal/zzle;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcao:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzayw:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcas:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgc()Lcom/google/android/gms/internal/zzks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzks;->zztr()Landroid/os/Looper;

    move-result-object v2

    :goto_2b
    new-instance v0, Lcom/google/android/gms/ads/internal/request/zze;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v5, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcnp:I

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/request/zze;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzd$zzb;Lcom/google/android/gms/common/internal/zzd$zzc;I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcar:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->connect()V

    return-void

    :cond_3d
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_2b
.end method


# virtual methods
.method protected connect()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcar:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zze;->zzart()V

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzpz()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 8
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Cannot connect to remote service, fallback to local instance."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzqz()Lcom/google/android/gms/internal/zzkn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkn;->zzpz()Ljava/lang/Object;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "gms_connection_failed_fallback_to_local"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzkl;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 3

    const-string v0, "Disconnected from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic zzpz()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzpw()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public zzqx()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcar:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zze;->isConnected()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcar:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zze;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcar:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zze;->disconnect()V

    :cond_18
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcas:Z

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgc()Lcom/google/android/gms/internal/zzks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzks;->zzts()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcas:Z

    :cond_29
    monitor-exit v1

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public zzqy()Lcom/google/android/gms/ads/internal/request/zzk;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcar:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zze;->zzrc()Lcom/google/android/gms/ads/internal/request/zzk;
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_8} :catch_b
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_8} :catch_12
    .catchall {:try_start_3 .. :try_end_8} :catchall_f

    move-result-object v0

    :try_start_9
    monitor-exit v1

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    :goto_c
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_a

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    throw v0

    :catch_12
    move-exception v0

    goto :goto_c
.end method

.method zzqz()Lcom/google/android/gms/internal/zzkn;
    .registers 5

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzd$zza;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcan:Lcom/google/android/gms/internal/zzle;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzcao:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/request/zzd$zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzle;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V

    return-object v0
.end method
