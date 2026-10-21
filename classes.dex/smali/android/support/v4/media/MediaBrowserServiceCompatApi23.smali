###### Class android.support.v4.media.MediaBrowserServiceCompatApi23 (android.support.v4.media.MediaBrowserServiceCompatApi23)
.class Landroid/support/v4/media/MediaBrowserServiceCompatApi23;
.super Landroid/support/v4/media/MediaBrowserServiceCompatApi21;
.source "MediaBrowserServiceCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ItemCallback;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaBrowserServiceCompatApi21"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;-><init>()V

    .line 45
    return-void
.end method

.method public static createService()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 30
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23;

    invoke-direct {v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23;-><init>()V

    return-object v0
.end method

.method public static onCreate(Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;)V
    .registers 2
    .param p0, "serviceObj"    # Ljava/lang/Object;
    .param p1, "serviceImpl"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;

    .prologue
    .line 34
    check-cast p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23;

    .end local p0    # "serviceObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23;->onCreate(Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;)V

    .line 35
    return-void
.end method

###### Class android.support.v4.media.MediaBrowserServiceCompatApi23.ItemCallback (android.support.v4.media.MediaBrowserServiceCompatApi23$ItemCallback)
.class public interface abstract Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ItemCallback;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ItemCallback"
.end annotation


# virtual methods
.method public abstract onItemLoaded(ILandroid/os/Bundle;Landroid/os/Parcel;)V
.end method

###### Class android.support.v4.media.MediaBrowserServiceCompatApi23.MediaBrowserServiceAdaptorApi23 (android.support.v4.media.MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23)
.class Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23;
.super Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21;
.source "MediaBrowserServiceCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserServiceAdaptorApi23"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;)V
    .registers 3
    .param p1, "serviceImpl"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;

    .prologue
    .line 48
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23;

    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23;->mBinder:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;

    .line 49
    return-void
.end method

###### Class android.support.v4.media.MediaBrowserServiceCompatApi23.MediaBrowserServiceAdaptorApi23.ServiceBinderProxyApi23 (android.support.v4.media.MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23)
.class Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23;
.super Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;
.source "MediaBrowserServiceCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinderProxyApi23"
.end annotation


# instance fields
.field mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;)V
    .registers 2
    .param p1, "serviceImpl"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;)V

    .line 56
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;

    .line 57
    return-void
.end method


# virtual methods
.method public getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 7
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 63
    :try_start_0
    const-class v2, Landroid/service/media/MediaBrowserService;

    const-string v3, "KEY_MEDIA_ITEM"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_f} :catch_23
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_f} :catch_1a

    .line 70
    .local v0, "KEY_MEDIA_ITEM":Ljava/lang/String;
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;

    new-instance v3, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23$1;

    invoke-direct {v3, p0, v0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    invoke-interface {v2, p1, v3}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;->getMediaItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ItemCallback;)V

    .line 83
    .end local v0    # "KEY_MEDIA_ITEM":Ljava/lang/String;
    :goto_19
    return-void

    .line 65
    :catch_1a
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1b
    const-string v2, "MediaBrowserServiceCompatApi21"

    const-string v3, "Failed to get KEY_MEDIA_ITEM via reflection"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 65
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_23
    move-exception v1

    goto :goto_1b
.end method

###### Class android.support.v4.media.MediaBrowserServiceCompatApi23.MediaBrowserServiceAdaptorApi23.ServiceBinderProxyApi23.AnonymousClass1 (android.support.v4.media.MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23$1)
.class Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23$1;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi23.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23;->getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23;

.field final synthetic val$KEY_MEDIA_ITEM:Ljava/lang/String;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 4

    .prologue
    .line 70
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23$1;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23$1;->val$KEY_MEDIA_ITEM:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23$1;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLoaded(ILandroid/os/Bundle;Landroid/os/Parcel;)V
    .registers 6
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;
    .param p3, "itemParcel"    # Landroid/os/Parcel;

    .prologue
    .line 73
    if-eqz p3, :cond_16

    .line 74
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    sget-object v1, Landroid/media/browse/MediaBrowser$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/browse/MediaBrowser$MediaItem;

    .line 77
    .local v0, "item":Landroid/media/browse/MediaBrowser$MediaItem;
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23$1;->val$KEY_MEDIA_ITEM:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->recycle()V

    .line 80
    .end local v0    # "item":Landroid/media/browse/MediaBrowser$MediaItem;
    :cond_16
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23$1;->val$receiver:Landroid/os/ResultReceiver;

    invoke-virtual {v1, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 81
    return-void
.end method

###### Class android.support.v4.media.MediaBrowserServiceCompatApi23.ServiceImplApi23 (android.support.v4.media.MediaBrowserServiceCompatApi23$ServiceImplApi23)
.class public interface abstract Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi23.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceImplApi23"
.end annotation


# virtual methods
.method public abstract getMediaItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ItemCallback;)V
.end method
