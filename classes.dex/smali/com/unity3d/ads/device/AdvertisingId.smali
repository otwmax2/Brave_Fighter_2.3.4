###### Class com.unity3d.ads.device.AdvertisingId (com.unity3d.ads.device.AdvertisingId)
.class public Lcom/unity3d/ads/device/AdvertisingId;
.super Ljava/lang/Object;
.source "AdvertisingId.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;,
        Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;
    }
.end annotation


# static fields
.field private static final ADVERTISING_ID_SERVICE_NAME:Ljava/lang/String; = "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

.field private static instance:Lcom/unity3d/ads/device/AdvertisingId;


# instance fields
.field private advertisingIdentifier:Ljava/lang/String;

.field private limitedAdvertisingTracking:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/device/AdvertisingId;->instance:Lcom/unity3d/ads/device/AdvertisingId;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/device/AdvertisingId;->advertisingIdentifier:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/device/AdvertisingId;->limitedAdvertisingTracking:Z

    .line 156
    return-void
.end method

.method private fetchAdvertisingId(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 50
    new-instance v1, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;-><init>(Lcom/unity3d/ads/device/AdvertisingId;Lcom/unity3d/ads/device/AdvertisingId$1;)V

    .line 51
    .local v1, "connection":Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v3, "localIntent":Landroid/content/Intent;
    const-string v4, "com.google.android.gms"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p1, v3, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 55
    :try_start_19
    invoke-virtual {v1}, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->create(Landroid/os/IBinder;)Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;

    move-result-object v0

    .line 56
    .local v0, "advertisingInfo":Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;
    invoke-interface {v0}, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/unity3d/ads/device/AdvertisingId;->advertisingIdentifier:Ljava/lang/String;

    .line 57
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;->getEnabled(Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/unity3d/ads/device/AdvertisingId;->limitedAdvertisingTracking:Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2e} :catch_32
    .catchall {:try_start_19 .. :try_end_2e} :catchall_3c

    .line 61
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 64
    .end local v0    # "advertisingInfo":Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;
    :cond_31
    :goto_31
    return-void

    .line 58
    :catch_32
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/Exception;
    :try_start_33
    const-string v4, "Couldn\'t get advertising info"

    invoke-static {v4, v2}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_3c

    .line 61
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_31

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_3c
    move-exception v4

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v4
.end method

.method public static getAdvertisingTrackingId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 41
    invoke-static {}, Lcom/unity3d/ads/device/AdvertisingId;->getInstance()Lcom/unity3d/ads/device/AdvertisingId;

    move-result-object v0

    iget-object v0, v0, Lcom/unity3d/ads/device/AdvertisingId;->advertisingIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method private static getInstance()Lcom/unity3d/ads/device/AdvertisingId;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/unity3d/ads/device/AdvertisingId;->instance:Lcom/unity3d/ads/device/AdvertisingId;

    if-nez v0, :cond_b

    .line 31
    new-instance v0, Lcom/unity3d/ads/device/AdvertisingId;

    invoke-direct {v0}, Lcom/unity3d/ads/device/AdvertisingId;-><init>()V

    sput-object v0, Lcom/unity3d/ads/device/AdvertisingId;->instance:Lcom/unity3d/ads/device/AdvertisingId;

    .line 33
    :cond_b
    sget-object v0, Lcom/unity3d/ads/device/AdvertisingId;->instance:Lcom/unity3d/ads/device/AdvertisingId;

    return-object v0
.end method

.method public static getLimitedAdTracking()Z
    .registers 1

    .prologue
    .line 45
    invoke-static {}, Lcom/unity3d/ads/device/AdvertisingId;->getInstance()Lcom/unity3d/ads/device/AdvertisingId;

    move-result-object v0

    iget-boolean v0, v0, Lcom/unity3d/ads/device/AdvertisingId;->limitedAdvertisingTracking:Z

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-static {}, Lcom/unity3d/ads/device/AdvertisingId;->getInstance()Lcom/unity3d/ads/device/AdvertisingId;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/unity3d/ads/device/AdvertisingId;->fetchAdvertisingId(Landroid/content/Context;)V

    .line 38
    return-void
.end method

###### Class com.unity3d.ads.device.AdvertisingId.AnonymousClass1 (com.unity3d.ads.device.AdvertisingId$1)
.class synthetic Lcom/unity3d/ads/device/AdvertisingId$1;
.super Ljava/lang/Object;
.source "AdvertisingId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/device/AdvertisingId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.unity3d.ads.device.AdvertisingId.GoogleAdvertisingInfo (com.unity3d.ads.device.AdvertisingId$GoogleAdvertisingInfo)
.class interface abstract Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;
.super Ljava/lang/Object;
.source "AdvertisingId.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/device/AdvertisingId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "GoogleAdvertisingInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;
    }
.end annotation


# virtual methods
.method public abstract getEnabled(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

###### Class com.unity3d.ads.device.AdvertisingId.GoogleAdvertisingInfo.GoogleAdvertisingInfoBinder (com.unity3d.ads.device.AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder)
.class public abstract Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;
.super Landroid/os/Binder;
.source "AdvertisingId.java"

# interfaces
.implements Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GoogleAdvertisingInfoBinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 105
    return-void
.end method

.method public static create(Landroid/os/IBinder;)Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;
    .registers 3
    .param p0, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 v0, 0x0

    .line 82
    :goto_3
    return-object v0

    .line 78
    :cond_4
    const-string v1, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "localIInterface":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;

    if-eqz v1, :cond_13

    .line 80
    check-cast v0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;

    goto :goto_3

    .line 82
    :cond_13
    new-instance v0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;

    .end local v0    # "localIInterface":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 87
    packed-switch p1, :pswitch_data_36

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 89
    :pswitch_a
    const-string v4, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->getId()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "str1":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 95
    .end local v2    # "str1":Ljava/lang/String;
    :pswitch_1a
    const-string v5, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_34

    move v0, v3

    .line 97
    .local v0, "bool1":Z
    :goto_26
    invoke-virtual {p0, v0}, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->getEnabled(Z)Z

    move-result v1

    .line 98
    .local v1, "bool2":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v1, :cond_30

    move v4, v3

    :cond_30
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "bool1":Z
    .end local v1    # "bool2":Z
    :cond_34
    move v0, v4

    .line 96
    goto :goto_26

    .line 87
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_a
        :pswitch_1a
    .end packed-switch
.end method

###### Class com.unity3d.ads.device.AdvertisingId.GoogleAdvertisingInfo.GoogleAdvertisingInfoBinder.GoogleAdvertisingInfoImplementation (com.unity3d.ads.device.AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation)
.class Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;
.super Ljava/lang/Object;
.source "AdvertisingId.java"

# interfaces
.implements Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoogleAdvertisingInfoImplementation"
.end annotation


# instance fields
.field private final _binder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;->_binder:Landroid/os/IBinder;

    .line 111
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;->_binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getEnabled(Z)Z
    .registers 9
    .param p1, "paramBoolean"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 138
    .local v1, "localParcel1":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 141
    .local v2, "localParcel2":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 142
    if-eqz p1, :cond_2c

    move v4, v0

    :goto_12
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-object v4, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;->_binder:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 144
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 145
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_30

    move-result v4

    if-eqz v4, :cond_2e

    .line 147
    .local v0, "bool":Z
    :goto_25
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 150
    return v0

    .end local v0    # "bool":Z
    :cond_2c
    move v4, v3

    .line 142
    goto :goto_12

    :cond_2e
    move v0, v3

    .line 145
    goto :goto_25

    .line 147
    :catchall_30
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getId()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 121
    .local v0, "localParcel1":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 124
    .local v1, "localParcel2":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 125
    iget-object v3, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;->_binder:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 127
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    move-result-object v2

    .line 129
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 132
    return-object v2

    .line 129
    .end local v2    # "str":Ljava/lang/String;
    :catchall_22
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

###### Class com.unity3d.ads.device.AdvertisingId.GoogleAdvertisingServiceConnection (com.unity3d.ads.device.AdvertisingId$GoogleAdvertisingServiceConnection)
.class Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;
.super Ljava/lang/Object;
.source "AdvertisingId.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/device/AdvertisingId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoogleAdvertisingServiceConnection"
.end annotation


# instance fields
.field private final _binderQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field _consumed:Z

.field final synthetic this$0:Lcom/unity3d/ads/device/AdvertisingId;


# direct methods
.method private constructor <init>(Lcom/unity3d/ads/device/AdvertisingId;)V
    .registers 3

    .prologue
    .line 156
    iput-object p1, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;->this$0:Lcom/unity3d/ads/device/AdvertisingId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;->_consumed:Z

    .line 159
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;->_binderQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/ads/device/AdvertisingId;Lcom/unity3d/ads/device/AdvertisingId$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/unity3d/ads/device/AdvertisingId;
    .param p2, "x1"    # Lcom/unity3d/ads/device/AdvertisingId$1;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;-><init>(Lcom/unity3d/ads/device/AdvertisingId;)V

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;->_consumed:Z

    if-eqz v0, :cond_a

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 179
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;->_consumed:Z

    .line 180
    iget-object v0, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;->_binderQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingServiceConnection;->_binderQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 168
    :goto_5
    return-void

    .line 165
    :catch_6
    move-exception v0

    .line 166
    .local v0, "localInterruptedException":Ljava/lang/InterruptedException;
    const-string v1, "Couldn\'t put service to binder que"

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 173
    return-void
.end method
