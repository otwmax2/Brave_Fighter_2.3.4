###### Class android.support.v4.net.TrafficStatsCompat (android.support.v4.net.TrafficStatsCompat)
.class public final Landroid/support/v4/net/TrafficStatsCompat;
.super Ljava/lang/Object;
.source "TrafficStatsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/net/TrafficStatsCompat$1;,
        Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;,
        Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;,
        Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    .line 125
    new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    .line 129
    :goto_d
    return-void

    .line 127
    :cond_e
    new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearThreadStatsTag()V
    .registers 1

    .prologue
    .line 136
    sget-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->clearThreadStatsTag()V

    .line 137
    return-void
.end method

.method public static getThreadStatsTag()I
    .registers 1

    .prologue
    .line 145
    sget-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->getThreadStatsTag()I

    move-result v0

    return v0
.end method

.method public static incrementOperationCount(I)V
    .registers 2
    .param p0, "operationCount"    # I

    .prologue
    .line 156
    sget-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->incrementOperationCount(I)V

    .line 157
    return-void
.end method

.method public static incrementOperationCount(II)V
    .registers 3
    .param p0, "tag"    # I
    .param p1, "operationCount"    # I

    .prologue
    .line 167
    sget-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->incrementOperationCount(II)V

    .line 168
    return-void
.end method

.method public static setThreadStatsTag(I)V
    .registers 2
    .param p0, "tag"    # I

    .prologue
    .line 182
    sget-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->setThreadStatsTag(I)V

    .line 183
    return-void
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .registers 2
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 194
    sget-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->tagSocket(Ljava/net/Socket;)V

    .line 195
    return-void
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .registers 2
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 201
    sget-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->untagSocket(Ljava/net/Socket;)V

    .line 202
    return-void
.end method

###### Class android.support.v4.net.TrafficStatsCompat.AnonymousClass1 (android.support.v4.net.TrafficStatsCompat$1)
.class synthetic Landroid/support/v4/net/TrafficStatsCompat$1;
.super Ljava/lang/Object;
.source "TrafficStatsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/TrafficStatsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class android.support.v4.net.TrafficStatsCompat.BaseTrafficStatsCompatImpl (android.support.v4.net.TrafficStatsCompat$BaseTrafficStatsCompatImpl)
.class Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;
.super Ljava/lang/Object;
.source "TrafficStatsCompat.java"

# interfaces
.implements Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/TrafficStatsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseTrafficStatsCompatImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;
    }
.end annotation


# instance fields
.field private mThreadSocketTags:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;

    invoke-direct {v0, p0}, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;-><init>(Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;)V

    iput-object v0, p0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;->mThreadSocketTags:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public clearThreadStatsTag()V
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;->mThreadSocketTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;->statsTag:I

    .line 55
    return-void
.end method

.method public getThreadStatsTag()I
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;->mThreadSocketTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;

    iget v0, v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;->statsTag:I

    return v0
.end method

.method public incrementOperationCount(I)V
    .registers 2
    .param p1, "operationCount"    # I

    .prologue
    .line 64
    return-void
.end method

.method public incrementOperationCount(II)V
    .registers 3
    .param p1, "tag"    # I
    .param p2, "operationCount"    # I

    .prologue
    .line 68
    return-void
.end method

.method public setThreadStatsTag(I)V
    .registers 3
    .param p1, "tag"    # I

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;->mThreadSocketTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;

    iput p1, v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;->statsTag:I

    .line 73
    return-void
.end method

.method public tagSocket(Ljava/net/Socket;)V
    .registers 2
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 77
    return-void
.end method

.method public untagSocket(Ljava/net/Socket;)V
    .registers 2
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 81
    return-void
.end method

###### Class android.support.v4.net.TrafficStatsCompat.BaseTrafficStatsCompatImpl.AnonymousClass1 (android.support.v4.net.TrafficStatsCompat$BaseTrafficStatsCompatImpl$1)
.class Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;
.super Ljava/lang/ThreadLocal;
.source "TrafficStatsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;


# direct methods
.method constructor <init>(Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;->this$0:Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;
    .registers 3

    .prologue
    .line 48
    new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;-><init>(Landroid/support/v4/net/TrafficStatsCompat$1;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;->initialValue()Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;

    move-result-object v0

    return-object v0
.end method

###### Class android.support.v4.net.TrafficStatsCompat.BaseTrafficStatsCompatImpl.SocketTags (android.support.v4.net.TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags)
.class Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;
.super Ljava/lang/Object;
.source "TrafficStatsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketTags"
.end annotation


# instance fields
.field public statsTag:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;->statsTag:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/net/TrafficStatsCompat$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/support/v4/net/TrafficStatsCompat$1;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;-><init>()V

    return-void
.end method

###### Class android.support.v4.net.TrafficStatsCompat.IcsTrafficStatsCompatImpl (android.support.v4.net.TrafficStatsCompat$IcsTrafficStatsCompatImpl)
.class Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;
.super Ljava/lang/Object;
.source "TrafficStatsCompat.java"

# interfaces
.implements Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/TrafficStatsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IcsTrafficStatsCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearThreadStatsTag()V
    .registers 1

    .prologue
    .line 87
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompatIcs;->clearThreadStatsTag()V

    .line 88
    return-void
.end method

.method public getThreadStatsTag()I
    .registers 2

    .prologue
    .line 92
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompatIcs;->getThreadStatsTag()I

    move-result v0

    return v0
.end method

.method public incrementOperationCount(I)V
    .registers 2
    .param p1, "operationCount"    # I

    .prologue
    .line 97
    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatIcs;->incrementOperationCount(I)V

    .line 98
    return-void
.end method

.method public incrementOperationCount(II)V
    .registers 3
    .param p1, "tag"    # I
    .param p2, "operationCount"    # I

    .prologue
    .line 102
    invoke-static {p1, p2}, Landroid/support/v4/net/TrafficStatsCompatIcs;->incrementOperationCount(II)V

    .line 103
    return-void
.end method

.method public setThreadStatsTag(I)V
    .registers 2
    .param p1, "tag"    # I

    .prologue
    .line 107
    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatIcs;->setThreadStatsTag(I)V

    .line 108
    return-void
.end method

.method public tagSocket(Ljava/net/Socket;)V
    .registers 2
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatIcs;->tagSocket(Ljava/net/Socket;)V

    .line 113
    return-void
.end method

.method public untagSocket(Ljava/net/Socket;)V
    .registers 2
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatIcs;->untagSocket(Ljava/net/Socket;)V

    .line 118
    return-void
.end method

###### Class android.support.v4.net.TrafficStatsCompat.TrafficStatsCompatImpl (android.support.v4.net.TrafficStatsCompat$TrafficStatsCompatImpl)
.class interface abstract Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;
.super Ljava/lang/Object;
.source "TrafficStatsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/TrafficStatsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TrafficStatsCompatImpl"
.end annotation


# virtual methods
.method public abstract clearThreadStatsTag()V
.end method

.method public abstract getThreadStatsTag()I
.end method

.method public abstract incrementOperationCount(I)V
.end method

.method public abstract incrementOperationCount(II)V
.end method

.method public abstract setThreadStatsTag(I)V
.end method

.method public abstract tagSocket(Ljava/net/Socket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract untagSocket(Ljava/net/Socket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method
