###### Class com.unity3d.ads.webview.bridge.WebViewCallback (com.unity3d.ads.webview.bridge.WebViewCallback)
.class public Lcom/unity3d/ads/webview/bridge/WebViewCallback;
.super Ljava/lang/Object;
.source "WebViewCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/unity3d/ads/webview/bridge/WebViewCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _callbackId:Ljava/lang/String;

.field private _invocationId:I

.field private _invoked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    new-instance v0, Lcom/unity3d/ads/webview/bridge/WebViewCallback$1;

    invoke-direct {v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback$1;-><init>()V

    sput-object v0, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->_invoked:Z

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->_invocationId:I

    .line 25
    return-void

    .line 23
    :cond_19
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p2, "invocationId"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->_invocationId:I

    .line 19
    return-void
.end method

.method private varargs invoke(Lcom/unity3d/ads/webview/bridge/CallbackStatus;Ljava/lang/Enum;[Ljava/lang/Object;)V
    .registers 8
    .param p1, "status"    # Lcom/unity3d/ads/webview/bridge/CallbackStatus;
    .param p2, "error"    # Ljava/lang/Enum;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    .line 32
    iget-boolean v2, p0, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->_invoked:Z

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_11

    .line 48
    :cond_10
    :goto_10
    return-void

    .line 34
    :cond_11
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->_invoked:Z

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v1, "paramList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 40
    iget v2, p0, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->_invocationId:I

    invoke-static {v2}, Lcom/unity3d/ads/webview/bridge/Invocation;->getInvocationById(I)Lcom/unity3d/ads/webview/bridge/Invocation;

    move-result-object v0

    .line 42
    .local v0, "invocation":Lcom/unity3d/ads/webview/bridge/Invocation;
    if-nez v0, :cond_49

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t get batch with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->getInvocationId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_10

    .line 47
    :cond_49
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/unity3d/ads/webview/bridge/Invocation;->setInvocationResponse(Lcom/unity3d/ads/webview/bridge/CallbackStatus;Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_10
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 64
    const v0, 0xb26e

    return v0
.end method

.method public varargs error(Ljava/lang/Enum;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Enum;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 51
    sget-object v0, Lcom/unity3d/ads/webview/bridge/CallbackStatus;->ERROR:Lcom/unity3d/ads/webview/bridge/CallbackStatus;

    invoke-direct {p0, v0, p1, p2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke(Lcom/unity3d/ads/webview/bridge/CallbackStatus;Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public getCallbackId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    return-object v0
.end method

.method public getInvocationId()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->_invocationId:I

    return v0
.end method

.method public varargs invoke([Ljava/lang/Object;)V
    .registers 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 28
    sget-object v0, Lcom/unity3d/ads/webview/bridge/CallbackStatus;->OK:Lcom/unity3d/ads/webview/bridge/CallbackStatus;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke(Lcom/unity3d/ads/webview/bridge/CallbackStatus;Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-boolean v0, p0, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->_invoked:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_a
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 71
    iget v0, p0, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->_invocationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    return-void

    .line 70
    :cond_14
    const/4 v0, 0x0

    goto :goto_a
.end method

###### Class com.unity3d.ads.webview.bridge.WebViewCallback.AnonymousClass1 (com.unity3d.ads.webview.bridge.WebViewCallback$1)
.class final Lcom/unity3d/ads/webview/bridge/WebViewCallback$1;
.super Ljava/lang/Object;
.source "WebViewCallback.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/webview/bridge/WebViewCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/unity3d/ads/webview/bridge/WebViewCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 78
    new-instance v0, Lcom/unity3d/ads/webview/bridge/WebViewCallback;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback$1;->createFromParcel(Landroid/os/Parcel;)Lcom/unity3d/ads/webview/bridge/WebViewCallback;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 83
    new-array v0, p1, [Lcom/unity3d/ads/webview/bridge/WebViewCallback;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback$1;->newArray(I)[Lcom/unity3d/ads/webview/bridge/WebViewCallback;

    move-result-object v0

    return-object v0
.end method
