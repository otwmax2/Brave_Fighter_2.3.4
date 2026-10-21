###### Class com.google.android.gms.ads.internal.reward.client.zzc (com.google.android.gms.ads.internal.reward.client.zzc)
.class public interface abstract Lcom/google/android/gms/ads/internal/reward/client/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/reward/client/zzc$zza;
    }
.end annotation


# virtual methods
.method public abstract zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/internal/zzgn;I)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

###### Class com.google.android.gms.ads.internal.reward.client.zzc.zza (com.google.android.gms.ads.internal.reward.client.zzc$zza)
.class public abstract Lcom/google/android/gms/ads/internal/reward/client/zzc$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/ads/internal/reward/client/zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/reward/client/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/reward/client/zzc$zza$zza;
    }
.end annotation


# direct methods
.method public static zzbg(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/reward/client/zzc;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/ads/internal/reward/client/zzc;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/ads/internal/reward/client/zzc;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/ads/internal/reward/client/zzc$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/reward/client/zzc$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_34

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const-string v1, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v1, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zzd$zza;->zzfc(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzgn$zza;->zzaj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzgn;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/reward/client/zzc$zza;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/internal/zzgn;I)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_8

    nop

    :sswitch_data_34
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

###### Class com.google.android.gms.ads.internal.reward.client.zzc.zza.C0051zza (com.google.android.gms.ads.internal.reward.client.zzc$zza$zza)
.class Lcom/google/android/gms/ads/internal/reward/client/zzc$zza$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/reward/client/zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/reward/client/zzc$zza;
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

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/reward/client/zzc$zza$zza;->zzahn:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzc$zza$zza;->zzahn:Landroid/os/IBinder;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/internal/zzgn;I)Landroid/os/IBinder;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_9
    const-string v1, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_38

    invoke-interface {p1}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    if-eqz p2, :cond_1d

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzgn;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_1d
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzc$zza$zza;->zzahn:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_3a

    move-result-object v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :cond_38
    move-object v1, v0

    goto :goto_14

    :catchall_3a
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
