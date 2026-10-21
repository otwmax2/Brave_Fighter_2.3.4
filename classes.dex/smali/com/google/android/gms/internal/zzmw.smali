###### Class com.google.android.gms.internal.zzmw (com.google.android.gms.internal.zzmw)
.class public Lcom/google/android/gms/internal/zzmw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/account/WorkAccountApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzmw$zzc;,
        Lcom/google/android/gms/internal/zzmw$zzb;,
        Lcom/google/android/gms/internal/zzmw$zza;
    }
.end annotation


# static fields
.field private static final cy:Lcom/google/android/gms/common/api/Status;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/zzmw;->cy:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zzafa()Lcom/google/android/gms/common/api/Status;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzmw;->cy:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method


# virtual methods
.method public addWorkAccount(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/auth/account/WorkAccountApi$AddAccountResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzmw$2;

    sget-object v1, Lcom/google/android/gms/auth/account/WorkAccount;->API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/gms/internal/zzmw$2;-><init>(Lcom/google/android/gms/internal/zzmw;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

.method public removeWorkAccount(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/accounts/Account;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/accounts/Account;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzmw$3;

    sget-object v1, Lcom/google/android/gms/auth/account/WorkAccount;->API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/gms/internal/zzmw$3;-><init>(Lcom/google/android/gms/internal/zzmw;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/accounts/Account;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

.method public setWorkAuthenticatorEnabled(Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/zzmw$1;

    sget-object v1, Lcom/google/android/gms/auth/account/WorkAccount;->API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/gms/internal/zzmw$1;-><init>(Lcom/google/android/gms/internal/zzmw;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    return-void
.end method

###### Class com.google.android.gms.internal.zzmw.AnonymousClass1 (com.google.android.gms.internal.zzmw$1)
.class Lcom/google/android/gms/internal/zzmw$1;
.super Lcom/google/android/gms/internal/zzpr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmw;->setWorkAuthenticatorEnabled(Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzpr$zza",
        "<",
        "Lcom/google/android/gms/common/api/Result;",
        "Lcom/google/android/gms/internal/zzmx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic cA:Lcom/google/android/gms/internal/zzmw;

.field final synthetic cz:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmw;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmw$1;->cA:Lcom/google/android/gms/internal/zzmw;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzmw$1;->cz:Z

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/zzpr$zza;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzmx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmw$1;->zza(Lcom/google/android/gms/internal/zzmx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzmx;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmx;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/account/zzb;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzmw$1;->cz:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/account/zzb;->zzaz(Z)V

    return-void
.end method

.method protected zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzmw.AnonymousClass2 (com.google.android.gms.internal.zzmw$2)
.class Lcom/google/android/gms/internal/zzmw$2;
.super Lcom/google/android/gms/internal/zzpr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmw;->addWorkAccount(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzpr$zza",
        "<",
        "Lcom/google/android/gms/auth/account/WorkAccountApi$AddAccountResult;",
        "Lcom/google/android/gms/internal/zzmx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic cA:Lcom/google/android/gms/internal/zzmw;

.field final synthetic co:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmw;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmw$2;->cA:Lcom/google/android/gms/internal/zzmw;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzmw$2;->co:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/zzpr$zza;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzmx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmw$2;->zza(Lcom/google/android/gms/internal/zzmx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzmx;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmx;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/account/zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzmw$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzmw$2$1;-><init>(Lcom/google/android/gms/internal/zzmw$2;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmw$2;->co:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/auth/account/zzb;->zza(Lcom/google/android/gms/auth/account/zza;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmw$2;->zzf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/account/WorkAccountApi$AddAccountResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/account/WorkAccountApi$AddAccountResult;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzmw$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzmw$zzb;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/accounts/Account;)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzmw.AnonymousClass2.AnonymousClass1 (com.google.android.gms.internal.zzmw$2$1)
.class Lcom/google/android/gms/internal/zzmw$2$1;
.super Lcom/google/android/gms/internal/zzmw$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmw$2;->zza(Lcom/google/android/gms/internal/zzmx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cB:Lcom/google/android/gms/internal/zzmw$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmw$2;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmw$2$1;->cB:Lcom/google/android/gms/internal/zzmw$2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmw$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzc(Landroid/accounts/Account;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmw$2$1;->cB:Lcom/google/android/gms/internal/zzmw$2;

    new-instance v2, Lcom/google/android/gms/internal/zzmw$zzb;

    if-eqz p1, :cond_f

    sget-object v0, Lcom/google/android/gms/common/api/Status;->sg:Lcom/google/android/gms/common/api/Status;

    :goto_8
    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/zzmw$zzb;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/accounts/Account;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzmw$2;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/zzmw;->zzafa()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    goto :goto_8
.end method

###### Class com.google.android.gms.internal.zzmw.AnonymousClass3 (com.google.android.gms.internal.zzmw$3)
.class Lcom/google/android/gms/internal/zzmw$3;
.super Lcom/google/android/gms/internal/zzpr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmw;->removeWorkAccount(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/accounts/Account;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzpr$zza",
        "<",
        "Lcom/google/android/gms/common/api/Result;",
        "Lcom/google/android/gms/internal/zzmx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic cA:Lcom/google/android/gms/internal/zzmw;

.field final synthetic cl:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmw;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/accounts/Account;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmw$3;->cA:Lcom/google/android/gms/internal/zzmw;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzmw$3;->cl:Landroid/accounts/Account;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/zzpr$zza;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzmx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmw$3;->zza(Lcom/google/android/gms/internal/zzmx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzmx;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmx;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/account/zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzmw$3$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzmw$3$1;-><init>(Lcom/google/android/gms/internal/zzmw$3;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmw$3;->cl:Landroid/accounts/Account;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/auth/account/zzb;->zza(Lcom/google/android/gms/auth/account/zza;Landroid/accounts/Account;)V

    return-void
.end method

.method protected zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzmw$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzmw$zzc;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzmw.AnonymousClass3.AnonymousClass1 (com.google.android.gms.internal.zzmw$3$1)
.class Lcom/google/android/gms/internal/zzmw$3$1;
.super Lcom/google/android/gms/internal/zzmw$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmw$3;->zza(Lcom/google/android/gms/internal/zzmx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cC:Lcom/google/android/gms/internal/zzmw$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmw$3;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmw$3$1;->cC:Lcom/google/android/gms/internal/zzmw$3;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmw$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzay(Z)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmw$3$1;->cC:Lcom/google/android/gms/internal/zzmw$3;

    new-instance v2, Lcom/google/android/gms/internal/zzmw$zzc;

    if-eqz p1, :cond_f

    sget-object v0, Lcom/google/android/gms/common/api/Status;->sg:Lcom/google/android/gms/common/api/Status;

    :goto_8
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzmw$zzc;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzmw$3;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/zzmw;->zzafa()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    goto :goto_8
.end method

###### Class com.google.android.gms.internal.zzmw.zza (com.google.android.gms.internal.zzmw$zza)
.class Lcom/google/android/gms/internal/zzmw$zza;
.super Lcom/google/android/gms/auth/account/zza$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/auth/account/zza$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzay(Z)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public zzc(Landroid/accounts/Account;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

###### Class com.google.android.gms.internal.zzmw.zzb (com.google.android.gms.internal.zzmw$zzb)
.class Lcom/google/android/gms/internal/zzmw$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/account/WorkAccountApi$AddAccountResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field private final aP:Landroid/accounts/Account;

.field private final cc:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/accounts/Account;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmw$zzb;->cc:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzmw$zzb;->aP:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmw$zzb;->aP:Landroid/accounts/Account;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmw$zzb;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzmw.zzc (com.google.android.gms.internal.zzmw$zzc)
.class Lcom/google/android/gms/internal/zzmw$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzc"
.end annotation


# instance fields
.field private final cc:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmw$zzc;->cc:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmw$zzc;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
