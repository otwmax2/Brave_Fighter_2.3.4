###### Class android.support.v4.media.MediaBrowserServiceCompatApi21 (android.support.v4.media.MediaBrowserServiceCompatApi21)
.class Landroid/support/v4/media/MediaBrowserServiceCompatApi21;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static createService()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 36
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21;

    invoke-direct {v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21;-><init>()V

    return-object v0
.end method

.method public static onBind(Ljava/lang/Object;Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p0, "serviceObj"    # Ljava/lang/Object;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    check-cast p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21;

    .end local p0    # "serviceObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static onCreate(Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;)V
    .registers 2
    .param p0, "serviceObj"    # Ljava/lang/Object;
    .param p1, "serviceImpl"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    .prologue
    .line 40
    check-cast p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21;

    .end local p0    # "serviceObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21;->onCreate(Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;)V

    .line 41
    return-void
.end method

###### Class android.support.v4.media.MediaBrowserServiceCompatApi21.MediaBrowserServiceAdaptorApi21 (android.support.v4.media.MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21)
.class Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserServiceAdaptorApi21"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;
    }
.end annotation


# instance fields
.field mBinder:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    const-string v0, "android.media.browse.MediaBrowserService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 120
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21;->mBinder:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;

    .line 122
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onCreate(Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;)V
    .registers 3
    .param p1, "serviceImpl"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    .prologue
    .line 115
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;

    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21;->mBinder:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;

    .line 116
    return-void
.end method

###### Class android.support.v4.media.MediaBrowserServiceCompatApi21.MediaBrowserServiceAdaptorApi21.ServiceBinderProxyApi21 (android.support.v4.media.MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21)
.class Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;
.super Landroid/support/v4/media/IMediaBrowserServiceAdapterApi21$Stub;
.source "MediaBrowserServiceCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceBinderProxyApi21"
.end annotation


# instance fields
.field final mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;)V
    .registers 2
    .param p1, "serviceImpl"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/support/v4/media/IMediaBrowserServiceAdapterApi21$Stub;-><init>()V

    .line 130
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    .line 131
    return-void
.end method


# virtual methods
.method public addSubscription(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Ljava/lang/Object;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;

    invoke-direct {v1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;->addSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V

    .line 146
    return-void
.end method

.method public connect(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "rootHints"    # Landroid/os/Bundle;
    .param p3, "callbacks"    # Ljava/lang/Object;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;

    invoke-direct {v1, p3}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V

    .line 136
    return-void
.end method

.method public disconnect(Ljava/lang/Object;)V
    .registers 4
    .param p1, "callbacks"    # Ljava/lang/Object;

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;

    invoke-direct {v1, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;->disconnect(Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V

    .line 141
    return-void
.end method

.method public getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 3
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 157
    return-void
.end method

.method public removeSubscription(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Ljava/lang/Object;

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;

    invoke-direct {v1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;->removeSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V

    .line 152
    return-void
.end method

###### Class android.support.v4.media.MediaBrowserServiceCompatApi21.ServiceCallbacks (android.support.v4.media.MediaBrowserServiceCompatApi21$ServiceCallbacks)
.class public interface abstract Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceCallbacks"
.end annotation


# virtual methods
.method public abstract asBinder()Landroid/os/IBinder;
.end method

.method public abstract onConnect(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onConnectFailed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onLoadChildren(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

###### Class android.support.v4.media.MediaBrowserServiceCompatApi21.ServiceCallbacksApi21 (android.support.v4.media.MediaBrowserServiceCompatApi21$ServiceCallbacksApi21)
.class public Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi21.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceCallbacksApi21"
.end annotation


# static fields
.field private static sNullParceledListSliceObj:Ljava/lang/Object;


# instance fields
.field private final mCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 64
    new-instance v3, Landroid/media/MediaDescription$Builder;

    invoke-direct {v3}, Landroid/media/MediaDescription$Builder;-><init>()V

    const-string v4, "android.support.v4.media.MediaBrowserCompat.NULL_MEDIA_ITEM"

    invoke-virtual {v3, v4}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v0

    .line 66
    .local v0, "nullDescription":Landroid/media/MediaDescription;
    new-instance v1, Landroid/media/browse/MediaBrowser$MediaItem;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    .line 67
    .local v1, "nullMediaItem":Landroid/media/browse/MediaBrowser$MediaItem;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v2, "nullMediaItemList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {v2}, Landroid/support/v4/media/ParceledListSliceAdapterApi21;->newInstance(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->sNullParceledListSliceObj:Ljava/lang/Object;

    .line 70
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "callbacksObj"    # Ljava/lang/Object;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;

    invoke-direct {v0, p1}, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->mCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;

    .line 76
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->mCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;

    invoke-virtual {v0}, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onConnect(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "root"    # Ljava/lang/String;
    .param p2, "session"    # Ljava/lang/Object;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->mCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->onConnect(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 84
    return-void
.end method

.method public onConnectFailed()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->mCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;

    invoke-virtual {v0}, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->onConnectFailed()V

    .line 88
    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .param p1, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    const/4 v1, 0x0

    .line 92
    .local v1, "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    if-eqz p2, :cond_29

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .restart local v1    # "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    .line 95
    .local v2, "parcel":Landroid/os/Parcel;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    sget-object v4, Landroid/media/browse/MediaBrowser$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_c

    .line 101
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "parcel":Landroid/os/Parcel;
    :cond_29
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-le v4, v5, :cond_3d

    .line 102
    if-nez v1, :cond_38

    const/4 v3, 0x0

    .line 107
    .local v3, "pls":Ljava/lang/Object;
    :goto_32
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->mCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;

    invoke-virtual {v4, p1, v3}, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->onLoadChildren(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    return-void

    .line 102
    .end local v3    # "pls":Ljava/lang/Object;
    :cond_38
    invoke-static {v1}, Landroid/support/v4/media/ParceledListSliceAdapterApi21;->newInstance(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_32

    .line 104
    :cond_3d
    if-nez v1, :cond_42

    sget-object v3, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->sNullParceledListSliceObj:Ljava/lang/Object;

    .restart local v3    # "pls":Ljava/lang/Object;
    :goto_41
    goto :goto_32

    .end local v3    # "pls":Ljava/lang/Object;
    :cond_42
    invoke-static {v1}, Landroid/support/v4/media/ParceledListSliceAdapterApi21;->newInstance(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_41
.end method

###### Class android.support.v4.media.MediaBrowserServiceCompatApi21.ServiceImplApi21 (android.support.v4.media.MediaBrowserServiceCompatApi21$ServiceImplApi21)
.class public interface abstract Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceImplApi21"
.end annotation


# virtual methods
.method public abstract addSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V
.end method

.method public abstract connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V
.end method

.method public abstract disconnect(Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V
.end method

.method public abstract removeSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V
.end method
