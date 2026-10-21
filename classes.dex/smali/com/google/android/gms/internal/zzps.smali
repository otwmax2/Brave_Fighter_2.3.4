###### Class com.google.android.gms.internal.zzps (com.google.android.gms.internal.zzps)
.class public abstract Lcom/google/android/gms/internal/zzps;
.super Lcom/google/android/gms/internal/zzqo;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzps$zza;
    }
.end annotation


# instance fields
.field protected mStarted:Z

.field protected final rX:Lcom/google/android/gms/common/GoogleApiAvailability;

.field protected sB:Z

.field private sC:Lcom/google/android/gms/common/ConnectionResult;

.field private sD:I

.field private final sE:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzqp;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzps;-><init>(Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqo;-><init>(Lcom/google/android/gms/internal/zzqp;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzps;->sD:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzps;->sE:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzps;->rX:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzps;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzps;->sC:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzps;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzps;->sD:I

    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    const/16 v4, 0x12

    const/16 v2, 0xd

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_4a

    :cond_9
    :goto_9
    move v0, v1

    :cond_a
    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzps;->zzaoq()V

    :goto_f
    return-void

    :pswitch_10
    iget-object v2, p0, Lcom/google/android/gms/internal/zzps;->rX:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzps;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_47

    :goto_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzps;->sC:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    if-ne v1, v4, :cond_a

    if-ne v2, v4, :cond_a

    goto :goto_f

    :pswitch_27
    const/4 v3, -0x1

    if-eq p2, v3, :cond_a

    if-nez p2, :cond_9

    if-eqz p3, :cond_45

    const-string v0, "<<ResolutionFailureErrorDetail>>"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :goto_34
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzps;->sC:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_9

    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzps;->sC:Lcom/google/android/gms/common/ConnectionResult;

    iget v1, p0, Lcom/google/android/gms/internal/zzps;->sD:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzps;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto :goto_f

    :cond_45
    move v0, v2

    goto :goto_34

    :cond_47
    move v0, v1

    goto :goto_1c

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_10
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget v1, p0, Lcom/google/android/gms/internal/zzps;->sD:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzps;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzps;->zzaoq()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzqo;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_30

    const-string v0, "resolving_error"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzps;->sB:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzps;->sB:Z

    if-eqz v0, :cond_30

    const-string v0, "failed_client_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzps;->sD:I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const-string v0, "failed_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "failed_resolution"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzps;->sC:Lcom/google/android/gms/common/ConnectionResult;

    :cond_30
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzqo;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "resolving_error"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzps;->sB:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzps;->sB:Z

    if-eqz v0, :cond_2b

    const-string v0, "failed_client_id"

    iget v1, p0, Lcom/google/android/gms/internal/zzps;->sD:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "failed_status"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzps;->sC:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "failed_resolution"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzps;->sC:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2b
    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzqo;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzps;->mStarted:Z

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzqo;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzps;->mStarted:Z

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/common/ConnectionResult;I)V
.end method

.method protected abstract zzaol()V
.end method

.method protected zzaoq()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzps;->sD:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzps;->sB:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzps;->sC:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzps;->zzaol()V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzps;->sB:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzps;->sB:Z

    iput p2, p0, Lcom/google/android/gms/internal/zzps;->sD:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzps;->sC:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzps;->sE:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzps$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzps$zza;-><init>(Lcom/google/android/gms/internal/zzps;Lcom/google/android/gms/internal/zzps$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

###### Class com.google.android.gms.internal.zzps.AnonymousClass1 (com.google.android.gms.internal.zzps$1)
.class synthetic Lcom/google/android/gms/internal/zzps$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.internal.zzps.zza (com.google.android.gms.internal.zzps$zza)
.class Lcom/google/android/gms/internal/zzps$zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic sF:Lcom/google/android/gms/internal/zzps;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzps;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzps;Lcom/google/android/gms/internal/zzps$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzps$zza;-><init>(Lcom/google/android/gms/internal/zzps;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzps;->mStarted:Z

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzps;->zza(Lcom/google/android/gms/internal/zzps;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzps;->va:Lcom/google/android/gms/internal/zzqp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzps;->zza(Lcom/google/android/gms/internal/zzps;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzps;->zzb(Lcom/google/android/gms/internal/zzps;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->zzb(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzqp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzps;->rX:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzps;->zza(Lcom/google/android/gms/internal/zzps;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzps;->rX:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzps;->va:Lcom/google/android/gms/internal/zzqp;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzps;->zza(Lcom/google/android/gms/internal/zzps;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzqp;IILandroid/content/DialogInterface$OnCancelListener;)Z

    goto :goto_6

    :cond_6a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzps;->zza(Lcom/google/android/gms/internal/zzps;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_a0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzps;->rX:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzps;->rX:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzps;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzps$zza$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzps$zza$1;-><init>(Lcom/google/android/gms/internal/zzps$zza;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqj$zza;)Lcom/google/android/gms/internal/zzqj;

    goto/16 :goto_6

    :cond_a0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzps;->zza(Lcom/google/android/gms/internal/zzps;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzps;->zzb(Lcom/google/android/gms/internal/zzps;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzps;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto/16 :goto_6
.end method

###### Class com.google.android.gms.internal.zzps.zza.AnonymousClass1 (com.google.android.gms.internal.zzps$zza$1)
.class Lcom/google/android/gms/internal/zzps$zza$1;
.super Lcom/google/android/gms/internal/zzqj$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzps$zza;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sG:Landroid/app/Dialog;

.field final synthetic sH:Lcom/google/android/gms/internal/zzps$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzps$zza;Landroid/app/Dialog;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzps$zza$1;->sH:Lcom/google/android/gms/internal/zzps$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzps$zza$1;->sG:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqj$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzaor()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzps$zza$1;->sH:Lcom/google/android/gms/internal/zzps$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzps$zza;->sF:Lcom/google/android/gms/internal/zzps;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzps;->zzaoq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzps$zza$1;->sG:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzps$zza$1;->sG:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_14
    return-void
.end method
