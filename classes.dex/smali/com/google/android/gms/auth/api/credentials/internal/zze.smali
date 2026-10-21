###### Class com.google.android.gms.auth.api.credentials.internal.zze (com.google.android.gms.auth.api.credentials.internal.zze)
.class public final Lcom/google/android/gms/auth/api/credentials/internal/zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/api/credentials/CredentialsApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/credentials/internal/zze$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;
    .registers 4

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->cE:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/internal/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/internal/zzg;->zzafj()Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->zzafb()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->zzafb()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    sget-object v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->de:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    goto :goto_18
.end method


# virtual methods
.method public delete(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/auth/api/credentials/Credential;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/zze$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/internal/zze$3;-><init>(Lcom/google/android/gms/auth/api/credentials/internal/zze;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

.method public disableAutoSignIn(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
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

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/zze$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/api/credentials/internal/zze$4;-><init>(Lcom/google/android/gms/auth/api/credentials/internal/zze;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

.method public getHintPickerIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/HintRequest;)Landroid/app/PendingIntent;
    .registers 7

    const-string v0, "client must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "request must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api;)Z

    move-result v0

    const-string v1, "Auth.CREDENTIALS_API must be added to GoogleApiClient to use this API"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/credentials/internal/zze;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/google/android/gms/auth/api/credentials/internal/zzc;->zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/HintRequest;Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x7d0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public request(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/auth/api/credentials/CredentialRequest;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/zze$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/internal/zze$1;-><init>(Lcom/google/android/gms/auth/api/credentials/internal/zze;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

.method public save(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/auth/api/credentials/Credential;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/zze$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/internal/zze$2;-><init>(Lcom/google/android/gms/auth/api/credentials/internal/zze;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.auth.api.credentials.internal.zze.AnonymousClass1 (com.google.android.gms.auth.api.credentials.internal.zze$1)
.class Lcom/google/android/gms/auth/api/credentials/internal/zze$1;
.super Lcom/google/android/gms/auth/api/credentials/internal/zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/credentials/internal/zze;->request(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/credentials/internal/zzf",
        "<",
        "Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic do:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

.field final synthetic dp:Lcom/google/android/gms/auth/api/credentials/internal/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/credentials/internal/zze;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$1;->dp:Lcom/google/android/gms/auth/api/credentials/internal/zze;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$1;->do:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/auth/api/credentials/internal/zzf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/internal/zzk;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/zze$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/credentials/internal/zze$1$1;-><init>(Lcom/google/android/gms/auth/api/credentials/internal/zze$1;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$1;->do:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/auth/api/credentials/internal/zzk;->zza(Lcom/google/android/gms/auth/api/credentials/internal/zzj;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V

    return-void
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/credentials/internal/zze$1;->zzj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzd;->zzi(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/internal/zzd;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.auth.api.credentials.internal.zze.AnonymousClass1.BinderC00621 (com.google.android.gms.auth.api.credentials.internal.zze$1$1)
.class Lcom/google/android/gms/auth/api/credentials/internal/zze$1$1;
.super Lcom/google/android/gms/auth/api/credentials/internal/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/credentials/internal/zze$1;->zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/internal/zzk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/google/android/gms/auth/api/credentials/internal/zze$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/credentials/internal/zze$1;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$1$1;->dq:Lcom/google/android/gms/auth/api/credentials/internal/zze$1;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/credentials/internal/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$1$1;->dq:Lcom/google/android/gms/auth/api/credentials/internal/zze$1;

    new-instance v1, Lcom/google/android/gms/auth/api/credentials/internal/zzd;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/auth/api/credentials/internal/zzd;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/internal/zze$1;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public zzh(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$1$1;->dq:Lcom/google/android/gms/auth/api/credentials/internal/zze$1;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzd;->zzi(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/internal/zzd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/internal/zze$1;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

###### Class com.google.android.gms.auth.api.credentials.internal.zze.AnonymousClass2 (com.google.android.gms.auth.api.credentials.internal.zze$2)
.class Lcom/google/android/gms/auth/api/credentials/internal/zze$2;
.super Lcom/google/android/gms/auth/api/credentials/internal/zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/credentials/internal/zze;->save(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/credentials/internal/zzf",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dp:Lcom/google/android/gms/auth/api/credentials/internal/zze;

.field final synthetic dr:Lcom/google/android/gms/auth/api/credentials/Credential;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/credentials/internal/zze;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$2;->dp:Lcom/google/android/gms/auth/api/credentials/internal/zze;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$2;->dr:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-direct {p0, p2}, Lcom/google/android/gms/auth/api/credentials/internal/zzf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/internal/zzk;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/zze$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/credentials/internal/zze$zza;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    new-instance v1, Lcom/google/android/gms/auth/api/credentials/internal/SaveRequest;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$2;->dr:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/api/credentials/internal/SaveRequest;-><init>(Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/auth/api/credentials/internal/zzk;->zza(Lcom/google/android/gms/auth/api/credentials/internal/zzj;Lcom/google/android/gms/auth/api/credentials/internal/SaveRequest;)V

    return-void
.end method

.method protected zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .registers 2

    return-object p1
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/credentials/internal/zze$2;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.auth.api.credentials.internal.zze.AnonymousClass3 (com.google.android.gms.auth.api.credentials.internal.zze$3)
.class Lcom/google/android/gms/auth/api/credentials/internal/zze$3;
.super Lcom/google/android/gms/auth/api/credentials/internal/zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/credentials/internal/zze;->delete(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/credentials/internal/zzf",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dp:Lcom/google/android/gms/auth/api/credentials/internal/zze;

.field final synthetic dr:Lcom/google/android/gms/auth/api/credentials/Credential;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/credentials/internal/zze;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$3;->dp:Lcom/google/android/gms/auth/api/credentials/internal/zze;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$3;->dr:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-direct {p0, p2}, Lcom/google/android/gms/auth/api/credentials/internal/zzf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/internal/zzk;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/zze$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/credentials/internal/zze$zza;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    new-instance v1, Lcom/google/android/gms/auth/api/credentials/internal/DeleteRequest;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$3;->dr:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/api/credentials/internal/DeleteRequest;-><init>(Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/auth/api/credentials/internal/zzk;->zza(Lcom/google/android/gms/auth/api/credentials/internal/zzj;Lcom/google/android/gms/auth/api/credentials/internal/DeleteRequest;)V

    return-void
.end method

.method protected zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .registers 2

    return-object p1
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/credentials/internal/zze$3;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.auth.api.credentials.internal.zze.AnonymousClass4 (com.google.android.gms.auth.api.credentials.internal.zze$4)
.class Lcom/google/android/gms/auth/api/credentials/internal/zze$4;
.super Lcom/google/android/gms/auth/api/credentials/internal/zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/credentials/internal/zze;->disableAutoSignIn(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/credentials/internal/zzf",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dp:Lcom/google/android/gms/auth/api/credentials/internal/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/credentials/internal/zze;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$4;->dp:Lcom/google/android/gms/auth/api/credentials/internal/zze;

    invoke-direct {p0, p2}, Lcom/google/android/gms/auth/api/credentials/internal/zzf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/internal/zzk;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/zze$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/credentials/internal/zze$zza;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/auth/api/credentials/internal/zzk;->zza(Lcom/google/android/gms/auth/api/credentials/internal/zzj;)V

    return-void
.end method

.method protected zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .registers 2

    return-object p1
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/credentials/internal/zze$4;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.auth.api.credentials.internal.zze.zza (com.google.android.gms.auth.api.credentials.internal.zze$zza)
.class Lcom/google/android/gms/auth/api/credentials/internal/zze$zza;
.super Lcom/google/android/gms/auth/api/credentials/internal/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/credentials/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private ds:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/credentials/internal/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$zza;->ds:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzh(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze$zza;->ds:Lcom/google/android/gms/internal/zzpr$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
