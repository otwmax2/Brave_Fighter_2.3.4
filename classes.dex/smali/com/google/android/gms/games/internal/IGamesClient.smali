###### Class com.google.android.gms.games.internal.IGamesClient (com.google.android.gms.games.internal.IGamesClient)
.class public interface abstract Lcom/google/android/gms/games/internal/IGamesClient;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/IGamesClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract zzbhy()Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

###### Class com.google.android.gms.games.internal.IGamesClient.Stub (com.google.android.gms.games.internal.IGamesClient$Stub)
.class public abstract Lcom/google/android/gms/games/internal/IGamesClient$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/games/internal/IGamesClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/IGamesClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/IGamesClient$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.games.internal.IGamesClient"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/games/internal/IGamesClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static zzgi(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesClient;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.games.internal.IGamesClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/games/internal/IGamesClient;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesClient;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/games/internal/IGamesClient$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/IGamesClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_2a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const-string v1, "com.google.android.gms.games.internal.IGamesClient"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v1, "com.google.android.gms.games.internal.IGamesClient"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesClient$Stub;->zzbhy()Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_24

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v0}, Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    :cond_24
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    nop

    :sswitch_data_2a
    .sparse-switch
        0x3e9 -> :sswitch_f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

###### Class com.google.android.gms.games.internal.IGamesClient.Stub.Proxy (com.google.android.gms.games.internal.IGamesClient$Stub$Proxy)
.class Lcom/google/android/gms/games/internal/IGamesClient$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/internal/IGamesClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/IGamesClient$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private zzahn:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/IGamesClient$Stub$Proxy;->zzahn:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesClient$Stub$Proxy;->zzahn:Landroid/os/IBinder;

    return-object v0
.end method

.method public zzbhy()Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_8
    const-string v0, "com.google.android.gms.games.internal.IGamesClient"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/internal/IGamesClient$Stub$Proxy;->zzahn:Landroid/os/IBinder;

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;->CREATOR:Lcom/google/android/gms/games/internal/PopupLocationInfoParcelableCreator;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/games/internal/PopupLocationInfoParcelableCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    :goto_26
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_26

    :catchall_2f
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
