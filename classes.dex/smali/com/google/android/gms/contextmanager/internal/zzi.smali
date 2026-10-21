###### Class com.google.android.gms.contextmanager.internal.zzi (com.google.android.gms.contextmanager.internal.zzi)
.class public interface abstract Lcom/google/android/gms/contextmanager/internal/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/contextmanager/internal/zzi$zza;
    }
.end annotation


# virtual methods
.method public abstract zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;Lcom/google/android/gms/contextmanager/internal/zzg;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;Lcom/google/android/gms/contextmanager/internal/zzg;Landroid/app/PendingIntent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/zzg;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/zzg;Landroid/app/PendingIntent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

###### Class com.google.android.gms.contextmanager.internal.zzi.zza (com.google.android.gms.contextmanager.internal.zzi$zza)
.class public abstract Lcom/google/android/gms/contextmanager/internal/zzi$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/contextmanager/internal/zzi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/contextmanager/internal/zzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/contextmanager/internal/zzi$zza$zza;
    }
.end annotation


# direct methods
.method public static zzei(Landroid/os/IBinder;)Lcom/google/android/gms/contextmanager/internal/zzi;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/contextmanager/internal/zzi;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/contextmanager/internal/zzi;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/contextmanager/internal/zzi$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/contextmanager/internal/zzi$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    sparse-switch p1, :sswitch_data_29c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v9

    goto :goto_9

    :sswitch_11
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/internal/zzh$zza;->zzeh(Landroid/os/IBinder;)Lcom/google/android/gms/contextmanager/internal/zzh;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;

    move-object v5, v0

    :goto_39
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/contextmanager/internal/zzi$zza;->zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    goto :goto_9

    :cond_42
    move-object v5, v8

    goto :goto_39

    :sswitch_44
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/internal/zzh$zza;->zzeh(Landroid/os/IBinder;)Lcom/google/android/gms/contextmanager/internal/zzh;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_84

    sget-object v0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;

    move-object v5, v0

    :goto_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_86

    sget-object v0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;

    move-object v6, v0

    :goto_7b
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/contextmanager/internal/zzi$zza;->zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    goto :goto_9

    :cond_84
    move-object v5, v8

    goto :goto_6c

    :cond_86
    move-object v6, v8

    goto :goto_7b

    :sswitch_88
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/internal/zzh$zza;->zzeh(Landroid/os/IBinder;)Lcom/google/android/gms/contextmanager/internal/zzh;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d1

    sget-object v0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;

    move-object v5, v0

    :goto_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d3

    sget-object v0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;

    move-object v6, v0

    :goto_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/internal/zzg$zza;->zzeg(Landroid/os/IBinder;)Lcom/google/android/gms/contextmanager/internal/zzg;

    move-result-object v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/contextmanager/internal/zzi$zza;->zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;Lcom/google/android/gms/contextmanager/internal/zzg;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    goto/16 :goto_9

    :cond_d1
    move-object v5, v8

    goto :goto_b0

    :cond_d3
    move-object v6, v8

    goto :goto_bf

    :sswitch_d5
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/internal/zzh$zza;->zzeh(Landroid/os/IBinder;)Lcom/google/android/gms/contextmanager/internal/zzh;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/internal/zzg$zza;->zzeg(Landroid/os/IBinder;)Lcom/google/android/gms/contextmanager/internal/zzg;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/contextmanager/internal/zzi$zza;->zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/zzg;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    goto/16 :goto_9

    :sswitch_100
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/internal/zzh$zza;->zzeh(Landroid/os/IBinder;)Lcom/google/android/gms/contextmanager/internal/zzh;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_158

    sget-object v0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;

    move-object v5, v0

    :goto_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15a

    sget-object v0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;

    move-object v6, v0

    :goto_137
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/internal/zzg$zza;->zzeg(Landroid/os/IBinder;)Lcom/google/android/gms/contextmanager/internal/zzg;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14e

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v8, v0

    :cond_14e
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/contextmanager/internal/zzi$zza;->zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;Lcom/google/android/gms/contextmanager/internal/zzg;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    goto/16 :goto_9

    :cond_158
    move-object v5, v8

    goto :goto_128

    :cond_15a
    move-object v6, v8

    goto :goto_137

    :sswitch_15c
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/internal/zzh$zza;->zzeh(Landroid/os/IBinder;)Lcom/google/android/gms/contextmanager/internal/zzh;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/internal/zzg$zza;->zzeg(Landroid/os/IBinder;)Lcom/google/android/gms/contextmanager/internal/zzg;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_196

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v6, v0

    :goto_18c
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/contextmanager/internal/zzi$zza;->zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/zzg;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    goto/16 :goto_9

    :cond_196
    move-object v6, v8

    goto :goto_18c

    :sswitch_198
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/internal/zzh$zza;->zzeh(Landroid/os/IBinder;)Lcom/google/android/gms/contextmanager/internal/zzh;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ca

    sget-object v0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;

    move-object v5, v0

    :goto_1c0
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/contextmanager/internal/zzi$zza;->zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    goto/16 :goto_9

    :cond_1ca
    move-object v5, v8

    goto :goto_1c0

    :sswitch_1cc
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/internal/zzh$zza;->zzeh(Landroid/os/IBinder;)Lcom/google/android/gms/contextmanager/internal/zzh;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1fe

    sget-object v0, Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;

    move-object v5, v0

    :goto_1f4
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/contextmanager/internal/zzi$zza;->zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    goto/16 :goto_9

    :cond_1fe
    move-object v5, v8

    goto :goto_1f4

    :sswitch_200
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/internal/zzh$zza;->zzeh(Landroid/os/IBinder;)Lcom/google/android/gms/contextmanager/internal/zzh;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_232

    sget-object v0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;

    move-object v5, v0

    :goto_228
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/contextmanager/internal/zzi$zza;->zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    goto/16 :goto_9

    :cond_232
    move-object v5, v8

    goto :goto_228

    :sswitch_234
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/internal/zzh$zza;->zzeh(Landroid/os/IBinder;)Lcom/google/android/gms/contextmanager/internal/zzh;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_266

    sget-object v0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;

    move-object v5, v0

    :goto_25c
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/contextmanager/internal/zzi$zza;->zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    goto/16 :goto_9

    :cond_266
    move-object v5, v8

    goto :goto_25c

    :sswitch_268
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/internal/zzh$zza;->zzeh(Landroid/os/IBinder;)Lcom/google/android/gms/contextmanager/internal/zzh;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29a

    sget-object v0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;

    move-object v5, v0

    :goto_290
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/contextmanager/internal/zzi$zza;->zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    goto/16 :goto_9

    :cond_29a
    move-object v5, v8

    goto :goto_290

    :sswitch_data_29c
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_44
        0x3 -> :sswitch_88
        0x4 -> :sswitch_d5
        0x5 -> :sswitch_100
        0x6 -> :sswitch_15c
        0xc -> :sswitch_198
        0xd -> :sswitch_1cc
        0xe -> :sswitch_200
        0xf -> :sswitch_234
        0x10 -> :sswitch_268
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

###### Class com.google.android.gms.contextmanager.internal.zzi.zza.C0086zza (com.google.android.gms.contextmanager.internal.zzi$zza$zza)
.class Lcom/google/android/gms/contextmanager/internal/zzi$zza$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/contextmanager/internal/zzi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/contextmanager/internal/zzi$zza;
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

    iput-object p1, p0, Lcom/google/android/gms/contextmanager/internal/zzi$zza$zza;->zzahn:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/zzi$zza$zza;->zzahn:Landroid/os/IBinder;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;)V
    .registers 11
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
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_3b

    invoke-interface {p1}, Lcom/google/android/gms/contextmanager/internal/zzh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p5, :cond_3d

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p5, v1, v0}, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_29
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/zzi$zza$zza;->zzahn:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_42

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3b
    const/4 v0, 0x0

    goto :goto_13

    :cond_3d
    const/4 v0, 0x0

    :try_start_3e
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_29

    :catchall_42
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;)V
    .registers 11
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
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_3b

    invoke-interface {p1}, Lcom/google/android/gms/contextmanager/internal/zzh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p5, :cond_3d

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p5, v1, v0}, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_29
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/zzi$zza$zza;->zzahn:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_42

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3b
    const/4 v0, 0x0

    goto :goto_13

    :cond_3d
    const/4 v0, 0x0

    :try_start_3e
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_29

    :catchall_42
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;)V
    .registers 11
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
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_3b

    invoke-interface {p1}, Lcom/google/android/gms/contextmanager/internal/zzh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p5, :cond_3d

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p5, v1, v0}, Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_29
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/zzi$zza$zza;->zzahn:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_42

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3b
    const/4 v0, 0x0

    goto :goto_13

    :cond_3d
    const/4 v0, 0x0

    :try_start_3e
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_29

    :catchall_42
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;)V
    .registers 11
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
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_3b

    invoke-interface {p1}, Lcom/google/android/gms/contextmanager/internal/zzh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p5, :cond_3d

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p5, v1, v0}, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_29
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/zzi$zza$zza;->zzahn:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_42

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3b
    const/4 v0, 0x0

    goto :goto_13

    :cond_3d
    const/4 v0, 0x0

    :try_start_3e
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_29

    :catchall_42
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;)V
    .registers 12
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
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_44

    invoke-interface {p1}, Lcom/google/android/gms/contextmanager/internal/zzh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p5, :cond_46

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p5, v1, v0}, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_29
    if-eqz p6, :cond_53

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p6, v1, v0}, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_33
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/zzi$zza$zza;->zzahn:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_4b

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_44
    const/4 v0, 0x0

    goto :goto_13

    :cond_46
    const/4 v0, 0x0

    :try_start_47
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_29

    :catchall_4b
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_53
    const/4 v0, 0x0

    :try_start_54
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_4b

    goto :goto_33
.end method

.method public zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;Lcom/google/android/gms/contextmanager/internal/zzg;)V
    .registers 13
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
    const-string v1, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_4e

    invoke-interface {p1}, Lcom/google/android/gms/contextmanager/internal/zzh;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p5, :cond_50

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    invoke-virtual {p5, v2, v1}, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2a
    if-eqz p6, :cond_5d

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    invoke-virtual {p6, v2, v1}, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_34
    if-eqz p7, :cond_3a

    invoke-interface {p7}, Lcom/google/android/gms/contextmanager/internal/zzg;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_3a
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/zzi$zza$zza;->zzahn:Landroid/os/IBinder;

    const/4 v1, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_47
    .catchall {:try_start_9 .. :try_end_47} :catchall_55

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_4e
    move-object v1, v0

    goto :goto_14

    :cond_50
    const/4 v1, 0x0

    :try_start_51
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_2a

    :catchall_55
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_5d
    const/4 v1, 0x0

    :try_start_5e
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_55

    goto :goto_34
.end method

.method public zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;Lcom/google/android/gms/contextmanager/internal/zzg;Landroid/app/PendingIntent;)V
    .registers 14
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
    const-string v1, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_58

    invoke-interface {p1}, Lcom/google/android/gms/contextmanager/internal/zzh;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p5, :cond_5a

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    invoke-virtual {p5, v2, v1}, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2a
    if-eqz p6, :cond_67

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    invoke-virtual {p6, v2, v1}, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_34
    if-eqz p7, :cond_3a

    invoke-interface {p7}, Lcom/google/android/gms/contextmanager/internal/zzg;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_3a
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    if-eqz p8, :cond_6c

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p8, v2, v0}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_47
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/zzi$zza$zza;->zzahn:Landroid/os/IBinder;

    const/4 v1, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_51
    .catchall {:try_start_9 .. :try_end_51} :catchall_5f

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_58
    move-object v1, v0

    goto :goto_14

    :cond_5a
    const/4 v1, 0x0

    :try_start_5b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_2a

    :catchall_5f
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_67
    const/4 v1, 0x0

    :try_start_68
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34

    :cond_6c
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_70
    .catchall {:try_start_68 .. :try_end_70} :catchall_5f

    goto :goto_47
.end method

.method public zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;)V
    .registers 11
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
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_3b

    invoke-interface {p1}, Lcom/google/android/gms/contextmanager/internal/zzh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p5, :cond_3d

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p5, v1, v0}, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_29
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/zzi$zza$zza;->zzahn:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_42

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3b
    const/4 v0, 0x0

    goto :goto_13

    :cond_3d
    const/4 v0, 0x0

    :try_start_3e
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_29

    :catchall_42
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;)V
    .registers 11
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
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_3a

    invoke-interface {p1}, Lcom/google/android/gms/contextmanager/internal/zzh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p5, :cond_3c

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p5, v1, v0}, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_29
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/zzi$zza$zza;->zzahn:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_41

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3a
    const/4 v0, 0x0

    goto :goto_13

    :cond_3c
    const/4 v0, 0x0

    :try_start_3d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_29

    :catchall_41
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/zzg;)V
    .registers 11
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
    const-string v1, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_3a

    invoke-interface {p1}, Lcom/google/android/gms/contextmanager/internal/zzh;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p5, :cond_26

    invoke-interface {p5}, Lcom/google/android/gms/contextmanager/internal/zzg;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_26
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/zzi$zza$zza;->zzahn:Landroid/os/IBinder;

    const/4 v1, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_3c

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3a
    move-object v1, v0

    goto :goto_14

    :catchall_3c
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/contextmanager/internal/zzh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/contextmanager/internal/zzg;Landroid/app/PendingIntent;)V
    .registers 12
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
    const-string v1, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_44

    invoke-interface {p1}, Lcom/google/android/gms/contextmanager/internal/zzh;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p5, :cond_26

    invoke-interface {p5}, Lcom/google/android/gms/contextmanager/internal/zzg;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_26
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    if-eqz p6, :cond_46

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p6, v2, v0}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_33
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/zzi$zza$zza;->zzahn:Landroid/os/IBinder;

    const/4 v1, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_3d
    .catchall {:try_start_9 .. :try_end_3d} :catchall_4b

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_44
    move-object v1, v0

    goto :goto_14

    :cond_46
    const/4 v0, 0x0

    :try_start_47
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_33

    :catchall_4b
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
