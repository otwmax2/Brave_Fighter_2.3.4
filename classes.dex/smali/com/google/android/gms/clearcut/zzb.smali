###### Class com.google.android.gms.clearcut.zzb (com.google.android.gms.clearcut.zzb)
.class public final Lcom/google/android/gms/clearcut/zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/clearcut/zzb$zza;,
        Lcom/google/android/gms/clearcut/zzb$zzd;,
        Lcom/google/android/gms/clearcut/zzb$zzb;,
        Lcom/google/android/gms/clearcut/zzb$zzc;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final bN:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/internal/zzph;",
            ">;"
        }
    .end annotation
.end field

.field public static final bO:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzph;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final pP:Lcom/google/android/gms/clearcut/zzc;


# instance fields
.field private final aQ:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final pQ:I

.field private pR:Ljava/lang/String;

.field private pS:I

.field private pT:Ljava/lang/String;

.field private pU:Ljava/lang/String;

.field private final pV:Z

.field private pW:I

.field private final pX:Lcom/google/android/gms/clearcut/zzc;

.field private final pY:Lcom/google/android/gms/clearcut/zza;

.field private pZ:Lcom/google/android/gms/clearcut/zzb$zzd;

.field private final qa:Lcom/google/android/gms/clearcut/zzb$zzb;

.field private final zzaoa:Lcom/google/android/gms/common/util/zze;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/zzb;->bN:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/clearcut/zzb$1;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/zzb$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/zzb;->bO:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "ClearcutLogger.API"

    sget-object v2, Lcom/google/android/gms/clearcut/zzb;->bO:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/clearcut/zzb;->bN:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/clearcut/zzb;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzpg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpg;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/zzb;->pP:Lcom/google/android/gms/clearcut/zzc;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/clearcut/zzc;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/clearcut/zzb$zzd;Lcom/google/android/gms/clearcut/zza;Lcom/google/android/gms/clearcut/zzb$zzb;)V
    .registers 14

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/clearcut/zzb;->pS:I

    iput v1, p0, Lcom/google/android/gms/clearcut/zzb;->pW:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_44

    :goto_f
    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->aQ:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/clearcut/zzb;->zzbl(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/zzb;->pQ:I

    iput p2, p0, Lcom/google/android/gms/clearcut/zzb;->pS:I

    iput-object p3, p0, Lcom/google/android/gms/clearcut/zzb;->pR:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/clearcut/zzb;->pT:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/clearcut/zzb;->pU:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/clearcut/zzb;->pV:Z

    iput-object p7, p0, Lcom/google/android/gms/clearcut/zzb;->pX:Lcom/google/android/gms/clearcut/zzc;

    iput-object p8, p0, Lcom/google/android/gms/clearcut/zzb;->zzaoa:Lcom/google/android/gms/common/util/zze;

    if-eqz p9, :cond_46

    :goto_2d
    iput-object p9, p0, Lcom/google/android/gms/clearcut/zzb;->pZ:Lcom/google/android/gms/clearcut/zzb$zzd;

    iput-object p10, p0, Lcom/google/android/gms/clearcut/zzb;->pY:Lcom/google/android/gms/clearcut/zza;

    iput v1, p0, Lcom/google/android/gms/clearcut/zzb;->pW:I

    iput-object p11, p0, Lcom/google/android/gms/clearcut/zzb;->qa:Lcom/google/android/gms/clearcut/zzb$zzb;

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb;->pV:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->pT:Ljava/lang/String;

    if-nez v0, :cond_4c

    const/4 v0, 0x1

    :goto_3e
    const-string v1, "can\'t be anonymous with an upload account"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    :cond_43
    return-void

    :cond_44
    move-object v0, p1

    goto :goto_f

    :cond_46
    new-instance p9, Lcom/google/android/gms/clearcut/zzb$zzd;

    invoke-direct {p9}, Lcom/google/android/gms/clearcut/zzb$zzd;-><init>()V

    goto :goto_2d

    :cond_4c
    move v0, v1

    goto :goto_3e
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v6, 0x0

    sget-object v7, Lcom/google/android/gms/clearcut/zzb;->pP:Lcom/google/android/gms/clearcut/zzc;

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzavi()Lcom/google/android/gms/common/util/zze;

    move-result-object v8

    sget-object v10, Lcom/google/android/gms/clearcut/zza;->pO:Lcom/google/android/gms/clearcut/zza;

    new-instance v11, Lcom/google/android/gms/internal/zzpl;

    invoke-direct {v11, p1}, Lcom/google/android/gms/internal/zzpl;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v9, v5

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/clearcut/zzb;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/clearcut/zzc;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/clearcut/zzb$zzd;Lcom/google/android/gms/clearcut/zza;Lcom/google/android/gms/clearcut/zzb$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/clearcut/zzb;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/clearcut/zzb;->pS:I

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->pR:Ljava/lang/String;

    return-object v0
.end method

.method private static zzb(Ljava/util/ArrayList;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v0, v1, 0x1

    aput v4, v2, v1

    move v1, v0

    goto :goto_10

    :cond_26
    move-object v0, v2

    goto :goto_3
.end method

.method private zzbl(Landroid/content/Context;)I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_11

    :goto_10
    return v0

    :catch_11
    move-exception v1

    const-string v1, "ClearcutLogger"

    const-string v2, "This can\'t happen."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method static synthetic zzc(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->pT:Ljava/lang/String;

    return-object v0
.end method

.method private static zzc(Ljava/util/ArrayList;)[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_3
.end method

.method static synthetic zzd(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->pU:Ljava/lang/String;

    return-object v0
.end method

.method private static zzd(Ljava/util/ArrayList;)[[B
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)[[B"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    new-array v0, v0, [[B

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    goto :goto_3
.end method

.method static synthetic zze(Lcom/google/android/gms/clearcut/zzb;)I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zze(Ljava/util/ArrayList;)[I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/clearcut/zzb;->zzb(Ljava/util/ArrayList;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/common/util/zze;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->zzaoa:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method

.method static synthetic zzf(Ljava/util/ArrayList;)[Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/clearcut/zzb;->zzc(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/clearcut/zzb;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zzg(Ljava/util/ArrayList;)[[B
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/clearcut/zzb;->zzd(Ljava/util/ArrayList;)[[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->pY:Lcom/google/android/gms/clearcut/zza;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zzb$zzd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->pZ:Lcom/google/android/gms/clearcut/zzb$zzd;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/clearcut/zzb;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb;->pV:Z

    return v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->aQ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/clearcut/zzb;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/clearcut/zzb;->pQ:I

    return v0
.end method

.method static synthetic zzm(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zzb$zzb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->qa:Lcom/google/android/gms/clearcut/zzb$zzb;

    return-object v0
.end method

.method static synthetic zzn(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->pX:Lcom/google/android/gms/clearcut/zzc;

    return-object v0
.end method


# virtual methods
.method public zzl([B)Lcom/google/android/gms/clearcut/zzb$zza;
    .registers 4

    new-instance v0, Lcom/google/android/gms/clearcut/zzb$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/clearcut/zzb$zza;-><init>(Lcom/google/android/gms/clearcut/zzb;[BLcom/google/android/gms/clearcut/zzb$1;)V

    return-object v0
.end method

###### Class com.google.android.gms.clearcut.zzb.AnonymousClass1 (com.google.android.gms.clearcut.zzb$1)
.class final Lcom/google/android/gms/clearcut/zzb$1;
.super Lcom/google/android/gms/common/api/Api$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/clearcut/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Api$zza",
        "<",
        "Lcom/google/android/gms/internal/zzph;",
        "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
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
.method public synthetic zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;
    .registers 14

    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/clearcut/zzb$1;->zze(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/zzph;

    move-result-object v0

    return-object v0
.end method

.method public zze(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/zzph;
    .registers 13

    new-instance v0, Lcom/google/android/gms/internal/zzph;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzph;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-object v0
.end method

###### Class com.google.android.gms.clearcut.zzb.zza (com.google.android.gms.clearcut.zzb$zza)
.class public Lcom/google/android/gms/clearcut/zzb$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/clearcut/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zza"
.end annotation


# instance fields
.field private pR:Ljava/lang/String;

.field private pS:I

.field private pT:Ljava/lang/String;

.field private pU:Ljava/lang/String;

.field private pW:I

.field private final qb:Lcom/google/android/gms/clearcut/zzb$zzc;

.field private qc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private qd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private qe:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private qf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private qg:Z

.field private final qh:Lcom/google/android/gms/internal/zzapg$zzd;

.field private qi:Z

.field final synthetic qj:Lcom/google/android/gms/clearcut/zzb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/clearcut/zzb;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/clearcut/zzb$zza;-><init>(Lcom/google/android/gms/clearcut/zzb;[BLcom/google/android/gms/clearcut/zzb$zzc;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/clearcut/zzb;[BLcom/google/android/gms/clearcut/zzb$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/clearcut/zzb$zza;-><init>(Lcom/google/android/gms/clearcut/zzb;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/clearcut/zzb;[BLcom/google/android/gms/clearcut/zzb$zzc;)V
    .registers 8

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zza(Lcom/google/android/gms/clearcut/zzb;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pS:I

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zzb(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pR:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zzc(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pT:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zzd(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pU:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zze(Lcom/google/android/gms/clearcut/zzb;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pW:I

    iput-object v1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qc:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qd:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qe:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qf:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qg:Z

    new-instance v0, Lcom/google/android/gms/internal/zzapg$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzapg$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qh:Lcom/google/android/gms/internal/zzapg$zzd;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qi:Z

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzc(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pT:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzd(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pU:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qh:Lcom/google/android/gms/internal/zzapg$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzf(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzapg$zzd;->biF:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qh:Lcom/google/android/gms/internal/zzapg$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzf(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzapg$zzd;->biG:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qh:Lcom/google/android/gms/internal/zzapg$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzh(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zza;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzg(Lcom/google/android/gms/clearcut/zzb;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/clearcut/zza;->zzbk(Landroid/content/Context;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzapg$zzd;->biX:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qh:Lcom/google/android/gms/internal/zzapg$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzi(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zzb$zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qh:Lcom/google/android/gms/internal/zzapg$zzd;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzapg$zzd;->biF:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/clearcut/zzb$zzd;->zzae(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzapg$zzd;->biR:J

    if-eqz p2, :cond_8e

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qh:Lcom/google/android/gms/internal/zzapg$zzd;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzapg$zzd;->biM:[B

    :cond_8e
    iput-object p3, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qb:Lcom/google/android/gms/clearcut/zzb$zzc;

    return-void
.end method


# virtual methods
.method public zzamv()Lcom/google/android/gms/clearcut/LogEventParcelable;
    .registers 14

    const/4 v12, 0x0

    new-instance v11, Lcom/google/android/gms/clearcut/LogEventParcelable;

    new-instance v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/zzb;->zzk(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v2}, Lcom/google/android/gms/clearcut/zzb;->zzl(Lcom/google/android/gms/clearcut/zzb;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pS:I

    iget-object v4, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pR:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pT:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pU:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v7}, Lcom/google/android/gms/clearcut/zzb;->zzj(Lcom/google/android/gms/clearcut/zzb;)Z

    move-result v7

    iget v8, p0, Lcom/google/android/gms/clearcut/zzb$zza;->pW:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qh:Lcom/google/android/gms/internal/zzapg$zzd;

    iget-object v4, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qb:Lcom/google/android/gms/clearcut/zzb$zzc;

    invoke-static {v12}, Lcom/google/android/gms/clearcut/zzb;->zze(Ljava/util/ArrayList;)[I

    move-result-object v6

    invoke-static {v12}, Lcom/google/android/gms/clearcut/zzb;->zzf(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Lcom/google/android/gms/clearcut/zzb;->zze(Ljava/util/ArrayList;)[I

    move-result-object v8

    invoke-static {v12}, Lcom/google/android/gms/clearcut/zzb;->zzg(Ljava/util/ArrayList;)[[B

    move-result-object v9

    iget-boolean v10, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qg:Z

    move-object v1, v11

    move-object v2, v0

    move-object v5, v12

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/clearcut/LogEventParcelable;-><init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/internal/zzapg$zzd;Lcom/google/android/gms/clearcut/zzb$zzc;Lcom/google/android/gms/clearcut/zzb$zzc;[I[Ljava/lang/String;[I[[BZ)V

    return-object v11
.end method

.method public zze(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qi:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qi:Z

    invoke-virtual {p0}, Lcom/google/android/gms/clearcut/zzb$zza;->zzamv()Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qk:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/zzb;->zzm(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zzb$zzb;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->asm:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->asi:I

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/clearcut/zzb$zzb;->zzg(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qj:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zzn(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zzc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/clearcut/zzb$zza;->zzamv()Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/clearcut/zzc;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    :goto_33
    return-object v0

    :cond_34
    sget-object v0, Lcom/google/android/gms/common/api/Status;->sg:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/android/gms/common/api/PendingResults;->immediatePendingResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    goto :goto_33
.end method

.method public zzew(I)Lcom/google/android/gms/clearcut/zzb$zza;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qh:Lcom/google/android/gms/internal/zzapg$zzd;

    iput p1, v0, Lcom/google/android/gms/internal/zzapg$zzd;->biI:I

    return-object p0
.end method

.method public zzex(I)Lcom/google/android/gms/clearcut/zzb$zza;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->qh:Lcom/google/android/gms/internal/zzapg$zzd;

    iput p1, v0, Lcom/google/android/gms/internal/zzapg$zzd;->zzahl:I

    return-object p0
.end method

###### Class com.google.android.gms.clearcut.zzb.InterfaceC0069zzb (com.google.android.gms.clearcut.zzb$zzb)
.class public interface abstract Lcom/google/android/gms/clearcut/zzb$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/clearcut/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zzb"
.end annotation


# virtual methods
.method public abstract zzg(Ljava/lang/String;I)Z
.end method

###### Class com.google.android.gms.clearcut.zzb.zzc (com.google.android.gms.clearcut.zzb$zzc)
.class public interface abstract Lcom/google/android/gms/clearcut/zzb$zzc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/clearcut/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zzc"
.end annotation


# virtual methods
.method public abstract zzamw()[B
.end method

###### Class com.google.android.gms.clearcut.zzb.zzd (com.google.android.gms.clearcut.zzb$zzd)
.class public Lcom/google/android/gms/clearcut/zzb$zzd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/clearcut/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzd"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzae(J)J
    .registers 6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method
