###### Class com.google.android.gms.auth.account.zza (com.google.android.gms.auth.account.zza)
.class public interface abstract Lcom/google/android/gms/auth/account/zza;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/account/zza$zza;
    }
.end annotation


# virtual methods
.method public abstract zzay(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zzc(Landroid/accounts/Account;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

###### Class com.google.android.gms.auth.account.zza.AbstractBinderC0059zza (com.google.android.gms.auth.account.zza$zza)
.class public abstract Lcom/google/android/gms/auth/account/zza$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/auth/account/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/account/zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/account/zza$zza$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.auth.account.IWorkAccountCallback"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/auth/account/zza$zza;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static zzbw(Landroid/os/IBinder;)Lcom/google/android/gms/auth/account/zza;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.auth.account.IWorkAccountCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/auth/account/zza;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/auth/account/zza;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/auth/account/zza$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/account/zza$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_3a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    :sswitch_9
    const-string v0, "com.google.android.gms.auth.account.IWorkAccountCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v0, "com.google.android.gms.auth.account.IWorkAccountCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    :goto_22
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/account/zza$zza;->zzc(Landroid/accounts/Account;)V

    goto :goto_8

    :cond_26
    const/4 v0, 0x0

    goto :goto_22

    :sswitch_28
    const-string v0, "com.google.android.gms.auth.account.IWorkAccountCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    move v0, v1

    :goto_34
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/account/zza$zza;->zzay(Z)V

    goto :goto_8

    :cond_38
    const/4 v0, 0x0

    goto :goto_34

    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_28
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

###### Class com.google.android.gms.auth.account.zza.AbstractBinderC0059zza.C0060zza (com.google.android.gms.auth.account.zza$zza$zza)
.class Lcom/google/android/gms/auth/account/zza$zza$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/account/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/account/zza$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private zzahn:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/account/zza$zza$zza;->zzahn:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/auth/account/zza$zza$zza;->zzahn:Landroid/os/IBinder;

    return-object v0
.end method

.method public zzay(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_5
    const-string v2, "com.google.android.gms.auth.account.IWorkAccountCallback"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_1b

    :goto_c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/auth/account/zza$zza$zza;->zzahn:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1d

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1b
    const/4 v0, 0x0

    goto :goto_c

    :catchall_1d
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public zzc(Landroid/accounts/Account;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_4
    const-string v0, "com.google.android.gms.auth.account.IWorkAccountCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_13
    iget-object v0, p0, Lcom/google/android/gms/auth/account/zza$zza$zza;->zzahn:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_24

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1f
    const/4 v0, 0x0

    :try_start_20
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_13

    :catchall_24
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
