###### Class com.google.android.gms.auth.account.WorkAccountApi (com.google.android.gms.auth.account.WorkAccountApi)
.class public interface abstract Lcom/google/android/gms/auth/account/WorkAccountApi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/account/WorkAccountApi$AddAccountResult;
    }
.end annotation


# virtual methods
.method public abstract addWorkAccount(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
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
.end method

.method public abstract removeWorkAccount(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/accounts/Account;)Lcom/google/android/gms/common/api/PendingResult;
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
.end method

.method public abstract setWorkAuthenticatorEnabled(Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
.end method

###### Class com.google.android.gms.auth.account.WorkAccountApi.AddAccountResult (com.google.android.gms.auth.account.WorkAccountApi$AddAccountResult)
.class public interface abstract Lcom/google/android/gms/auth/account/WorkAccountApi$AddAccountResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/account/WorkAccountApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AddAccountResult"
.end annotation


# virtual methods
.method public abstract getAccount()Landroid/accounts/Account;
.end method
