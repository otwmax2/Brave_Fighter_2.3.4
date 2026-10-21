###### Class com.google.android.gms.iid.MessengerCompat (com.google.android.gms.iid.MessengerCompat)
.class public Lcom/google/android/gms/iid/MessengerCompat;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/iid/MessengerCompat$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/iid/MessengerCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field acc:Landroid/os/Messenger;

.field acd:Lcom/google/android/gms/iid/zzb;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/iid/MessengerCompat$1;

    invoke-direct {v0}, Lcom/google/android/gms/iid/MessengerCompat$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/iid/MessengerCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->acc:Landroid/os/Messenger;

    :goto_10
    return-void

    :cond_11
    new-instance v0, Lcom/google/android/gms/iid/MessengerCompat$zza;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/iid/MessengerCompat$zza;-><init>(Lcom/google/android/gms/iid/MessengerCompat;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->acd:Lcom/google/android/gms/iid/zzb;

    goto :goto_10
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->acc:Landroid/os/Messenger;

    :goto_10
    return-void

    :cond_11
    invoke-static {p1}, Lcom/google/android/gms/iid/zzb$zza;->zzgq(Landroid/os/IBinder;)Lcom/google/android/gms/iid/zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->acd:Lcom/google/android/gms/iid/zzb;

    goto :goto_10
.end method

.method public static zzc(Landroid/os/Message;)I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Lcom/google/android/gms/iid/MessengerCompat;->zzd(Landroid/os/Message;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Landroid/os/Message;->arg2:I

    goto :goto_a
.end method

.method private static zzd(Landroid/os/Message;)I
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget v0, p0, Landroid/os/Message;->sendingUid:I

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/iid/MessengerCompat;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/iid/MessengerCompat;

    invoke-virtual {p1}, Lcom/google/android/gms/iid/MessengerCompat;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_11} :catch_13

    move-result v0

    goto :goto_3

    :catch_13
    move-exception v1

    goto :goto_3
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->acc:Landroid/os/Messenger;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->acc:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->acd:Lcom/google/android/gms/iid/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/iid/zzb;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_a
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/iid/MessengerCompat;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public send(Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->acc:Landroid/os/Messenger;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->acc:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->acd:Lcom/google/android/gms/iid/zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/iid/zzb;->send(Landroid/os/Message;)V

    goto :goto_9
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->acc:Landroid/os/Messenger;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->acc:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->acd:Lcom/google/android/gms/iid/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/iid/zzb;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_d
.end method

###### Class com.google.android.gms.iid.MessengerCompat.AnonymousClass1 (com.google.android.gms.iid.MessengerCompat$1)
.class final Lcom/google/android/gms/iid/MessengerCompat$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/iid/MessengerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/iid/MessengerCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/iid/MessengerCompat$1;->zzmn(Landroid/os/Parcel;)Lcom/google/android/gms/iid/MessengerCompat;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/iid/MessengerCompat$1;->zzsr(I)[Lcom/google/android/gms/iid/MessengerCompat;

    move-result-object v0

    return-object v0
.end method

.method public zzmn(Landroid/os/Parcel;)Lcom/google/android/gms/iid/MessengerCompat;
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v0, Lcom/google/android/gms/iid/MessengerCompat;

    invoke-direct {v0, v1}, Lcom/google/android/gms/iid/MessengerCompat;-><init>(Landroid/os/IBinder;)V

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public zzsr(I)[Lcom/google/android/gms/iid/MessengerCompat;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/iid/MessengerCompat;

    return-object v0
.end method

###### Class com.google.android.gms.iid.MessengerCompat.zza (com.google.android.gms.iid.MessengerCompat$zza)
.class final Lcom/google/android/gms/iid/MessengerCompat$zza;
.super Lcom/google/android/gms/iid/zzb$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/iid/MessengerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zza"
.end annotation


# instance fields
.field final synthetic ace:Lcom/google/android/gms/iid/MessengerCompat;

.field handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/gms/iid/MessengerCompat;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/iid/MessengerCompat$zza;->ace:Lcom/google/android/gms/iid/MessengerCompat;

    invoke-direct {p0}, Lcom/google/android/gms/iid/zzb$zza;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/iid/MessengerCompat$zza;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public send(Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat$zza;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
