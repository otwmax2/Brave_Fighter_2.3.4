###### Class com.google.android.gms.plus.Plus (com.google.android.gms.plus.Plus)
.class public final Lcom/google/android/gms/plus/Plus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/Plus$zza;,
        Lcom/google/android/gms/plus/Plus$PlusOptions;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/plus/Plus$PlusOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final AccountApi:Lcom/google/android/gms/plus/Account;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PeopleApi:Lcom/google/android/gms/plus/People;

.field public static final SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_PLUS_PROFILE:Lcom/google/android/gms/common/api/Scope;

.field public static final asp:Lcom/google/android/gms/plus/zzb;

.field public static final asq:Lcom/google/android/gms/plus/zza;

.field public static final bN:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/plus/internal/zze;",
            ">;"
        }
    .end annotation
.end field

.field static final bO:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/plus/internal/zze;",
            "Lcom/google/android/gms/plus/Plus$PlusOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->bN:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/plus/Plus$1;

    invoke-direct {v0}, Lcom/google/android/gms/plus/Plus$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->bO:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Plus.API"

    sget-object v2, Lcom/google/android/gms/plus/Plus;->bO:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/plus/Plus;->bN:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/plus.login"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/plus.me"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_PROFILE:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/internal/zzvk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzvk;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->PeopleApi:Lcom/google/android/gms/plus/People;

    new-instance v0, Lcom/google/android/gms/internal/zzvh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzvh;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    new-instance v0, Lcom/google/android/gms/internal/zzvj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzvj;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->asp:Lcom/google/android/gms/plus/zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzvi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzvi;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->asq:Lcom/google/android/gms/plus/zza;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzf(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/plus/internal/zze;
    .registers 4

    if-eqz p0, :cond_2e

    const/4 v0, 0x1

    :goto_3
    const-string v1, "GoogleApiClient parameter is required."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    const-string v1, "GoogleApiClient must be connected."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api;)Z

    move-result v0

    const-string v1, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z

    move-result v0

    if-eqz p1, :cond_30

    if-nez v0, :cond_30

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient has an optional Plus.API and is not connected to Plus. Use GoogleApiClient.hasConnectedApi(Plus.API) to guard this call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_3

    :cond_30
    if-eqz v0, :cond_3b

    sget-object v0, Lcom/google/android/gms/plus/Plus;->bN:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/zze;

    :goto_3a
    return-object v0

    :cond_3b
    const/4 v0, 0x0

    goto :goto_3a
.end method

###### Class com.google.android.gms.plus.Plus.AnonymousClass1 (com.google.android.gms.plus.Plus$1)
.class final Lcom/google/android/gms/plus/Plus$1;
.super Lcom/google/android/gms/common/api/Api$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/Plus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Api$zza",
        "<",
        "Lcom/google/android/gms/plus/internal/zze;",
        "Lcom/google/android/gms/plus/Plus$PlusOptions;",
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
.method public getPriority()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public bridge synthetic zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;
    .registers 14

    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/plus/Plus$PlusOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/plus/Plus$1;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/plus/Plus$PlusOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/plus/internal/zze;

    move-result-object v0

    return-object v0
.end method

.method public zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/plus/Plus$PlusOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/plus/internal/zze;
    .registers 17

    if-nez p4, :cond_8

    new-instance p4, Lcom/google/android/gms/plus/Plus$PlusOptions;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/google/android/gms/plus/Plus$PlusOptions;-><init>(Lcom/google/android/gms/plus/Plus$1;)V

    :cond_8
    new-instance v9, Lcom/google/android/gms/plus/internal/zze;

    new-instance v0, Lcom/google/android/gms/plus/internal/PlusSession;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzg;->zzaru()Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzg;->zzasg()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/util/zzv;->zzd(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p4, Lcom/google/android/gms/plus/Plus$PlusOptions;->ass:Ljava/util/Set;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-direct {v8}, Lcom/google/android/gms/plus/internal/PlusCommonExtras;-><init>()V

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/plus/internal/PlusSession;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/plus/internal/zze;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/plus/internal/PlusSession;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-object v9
.end method

###### Class com.google.android.gms.plus.Plus.PlusOptions (com.google.android.gms.plus.Plus$PlusOptions)
.class public final Lcom/google/android/gms/plus/Plus$PlusOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/Plus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlusOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;
    }
.end annotation


# instance fields
.field final asr:Ljava/lang/String;

.field final ass:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions;->asr:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions;->ass:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/plus/Plus$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/plus/Plus$PlusOptions;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->asr:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions;->asr:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->ass:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions;->ass:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;Lcom/google/android/gms/plus/Plus$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/Plus$PlusOptions;-><init>(Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;)V

    return-void
.end method

.method public static builder()Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;
    .registers 1

    new-instance v0, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;-><init>()V

    return-object v0
.end method

###### Class com.google.android.gms.plus.Plus.PlusOptions.Builder (com.google.android.gms.plus.Plus$PlusOptions$Builder)
.class public final Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/Plus$PlusOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field asr:Ljava/lang/String;

.field final ass:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->ass:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public varargs addActivityTypes([Ljava/lang/String;)Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;
    .registers 5

    const-string v0, "activityTypes may not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->ass:Ljava/util/Set;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_13
    return-object p0
.end method

.method public build()Lcom/google/android/gms/plus/Plus$PlusOptions;
    .registers 3

    new-instance v0, Lcom/google/android/gms/plus/Plus$PlusOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/plus/Plus$PlusOptions;-><init>(Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;Lcom/google/android/gms/plus/Plus$1;)V

    return-object v0
.end method

.method public setServerClientId(Ljava/lang/String;)Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->asr:Ljava/lang/String;

    return-object p0
.end method

###### Class com.google.android.gms.plus.Plus.zza (com.google.android.gms.plus.Plus$zza)
.class public abstract Lcom/google/android/gms/plus/Plus$zza;
.super Lcom/google/android/gms/internal/zzpr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/Plus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/internal/zzpr$zza",
        "<TR;",
        "Lcom/google/android/gms/plus/internal/zze;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/plus/Plus;->bN:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzpr$zza;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method
