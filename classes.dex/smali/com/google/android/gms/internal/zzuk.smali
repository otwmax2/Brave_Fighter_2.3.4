###### Class com.google.android.gms.internal.zzuk (com.google.android.gms.internal.zzuk)
.class public Lcom/google/android/gms/internal/zzuk;
.super Lcom/google/android/gms/common/internal/zzk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzuk$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzk",
        "<",
        "Lcom/google/android/gms/internal/zzum;",
        ">;"
    }
.end annotation


# instance fields
.field private abB:Lcom/google/android/gms/internal/zzuk$zza;

.field private final cf:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private final mTheme:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 14

    const/16 v3, 0xc

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzg;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuk;->cf:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzuk;->mActivity:Landroid/app/Activity;

    iput p4, p0, Lcom/google/android/gms/internal/zzuk;->mTheme:I

    return-void
.end method


# virtual methods
.method public disconnect()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzk;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuk;->abB:Lcom/google/android/gms/internal/zzuk$zza;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuk;->abB:Lcom/google/android/gms/internal/zzuk$zza;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzuk$zza;->zza(Lcom/google/android/gms/internal/zzuk$zza;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzuk;->abB:Lcom/google/android/gms/internal/zzuk$zza;

    :cond_f
    return-void
.end method

.method public zza(Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
    .registers 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzuk;->zzbmr()V

    new-instance v0, Lcom/google/android/gms/internal/zzuk$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuk;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/zzuk$zza;-><init>(ILandroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuk;->abB:Lcom/google/android/gms/internal/zzuk$zza;

    :try_start_c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzuk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.identity.intents.EXTRA_CALLING_PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuk;->cf:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "com.google.android.gms.identity.intents.EXTRA_ACCOUNT"

    new-instance v2, Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzuk;->cf:Ljava/lang/String;

    const-string v4, "com.google"

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_34
    const-string v1, "com.google.android.gms.identity.intents.EXTRA_THEME"

    iget v2, p0, Lcom/google/android/gms/internal/zzuk;->mTheme:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzuk;->zzbmq()Lcom/google/android/gms/internal/zzum;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuk;->abB:Lcom/google/android/gms/internal/zzuk$zza;

    invoke-interface {v1, v2, p1, v0}, Lcom/google/android/gms/internal/zzum;->zza(Lcom/google/android/gms/internal/zzul;Lcom/google/android/gms/identity/intents/UserAddressRequest;Landroid/os/Bundle;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_44} :catch_45

    :goto_44
    return-void

    :catch_45
    move-exception v0

    const-string v1, "AddressClientImpl"

    const-string v2, "Exception requesting user address"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.gms.identity.intents.EXTRA_ERROR_CODE"

    const/16 v2, 0x22b

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuk;->abB:Lcom/google/android/gms/internal/zzuk$zza;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzuk$zza;->zzj(ILandroid/os/Bundle;)V

    goto :goto_44
.end method

.method public zzarx()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected synthetic zzbb(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzuk;->zzgn(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzum;

    move-result-object v0

    return-object v0
.end method

.method protected zzbmq()Lcom/google/android/gms/internal/zzum;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzk;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzum;

    return-object v0
.end method

.method protected zzbmr()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzk;->zzarv()V

    return-void
.end method

.method protected zzgn(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzum;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzum$zza;->zzgp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzum;

    move-result-object v0

    return-object v0
.end method

.method protected zzra()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.identity.service.BIND"

    return-object v0
.end method

.method protected zzrb()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.identity.intents.internal.IAddressService"

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzuk.zza (com.google.android.gms.internal.zzuk$zza)
.class public final Lcom/google/android/gms/internal/zzuk$zza;
.super Lcom/google/android/gms/internal/zzul$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzuk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final sd:I


# direct methods
.method public constructor <init>(ILandroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzul$zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzuk$zza;->sd:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzuk$zza;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private setActivity(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzuk$zza;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzuk$zza;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzuk$zza;->setActivity(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public zzj(ILandroid/os/Bundle;)V
    .registers 7

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_26

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuk$zza;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/google/android/gms/internal/zzuk$zza;->sd:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_18

    :cond_17
    :goto_17
    return-void

    :cond_18
    const/4 v1, 0x1

    :try_start_19
    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_17

    :catch_1d
    move-exception v0

    const-string v1, "AddressClientImpl"

    const-string v2, "Exception settng pending result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :cond_26
    const/4 v0, 0x0

    if-eqz p2, :cond_31

    const-string v0, "com.google.android.gms.identity.intents.EXTRA_PENDING_INTENT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_31
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_4d

    :try_start_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuk$zza;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/google/android/gms/internal/zzuk$zza;->sd:I

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_43
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3c .. :try_end_43} :catch_44

    goto :goto_17

    :catch_44
    move-exception v0

    const-string v1, "AddressClientImpl"

    const-string v2, "Exception starting pending intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :cond_4d
    :try_start_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuk$zza;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/google/android/gms/internal/zzuk$zza;->sd:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_62
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4d .. :try_end_62} :catch_63

    goto :goto_17

    :catch_63
    move-exception v0

    const-string v1, "AddressClientImpl"

    const-string v2, "Exception setting pending result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method
