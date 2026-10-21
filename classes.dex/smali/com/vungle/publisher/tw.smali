###### Class com.vungle.publisher.tw (com.vungle.publisher.tw)
.class public Lcom/vungle/publisher/tw;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/tw$a;
    }
.end annotation


# instance fields
.field a:J

.field private b:Ljava/net/HttpURLConnection;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/ts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/tw;I)I
    .registers 2

    .prologue
    .line 14
    iput p1, p0, Lcom/vungle/publisher/tw;->c:I

    return p1
.end method

.method static synthetic a(Lcom/vungle/publisher/tw;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcom/vungle/publisher/tw;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/publisher/tw;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcom/vungle/publisher/tw;->b:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/publisher/tw;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcom/vungle/publisher/tw;->e:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/net/HttpURLConnection;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/tw;->b:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method a(I)V
    .registers 2

    .prologue
    .line 43
    iput p1, p0, Lcom/vungle/publisher/tw;->c:I

    .line 44
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/vungle/publisher/tw;->c:I

    return v0
.end method

###### Class com.vungle.publisher.tw.a (com.vungle.publisher.tw$a)
.class public Lcom/vungle/publisher/tw$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/tw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/tw;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/HttpURLConnection;ILjava/util/List;J)Lcom/vungle/publisher/tw;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/ts;",
            ">;J)",
            "Lcom/vungle/publisher/tw;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vungle/publisher/tw$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/tw;

    .line 73
    invoke-static {v0, p1}, Lcom/vungle/publisher/tw;->a(Lcom/vungle/publisher/tw;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    .line 74
    invoke-static {v0, p3}, Lcom/vungle/publisher/tw;->a(Lcom/vungle/publisher/tw;Ljava/util/List;)Ljava/util/List;

    .line 75
    invoke-static {v0, p2}, Lcom/vungle/publisher/tw;->a(Lcom/vungle/publisher/tw;I)I

    .line 76
    if-nez p1, :cond_1a

    const/4 v1, 0x0

    :goto_14
    invoke-static {v0, v1}, Lcom/vungle/publisher/tw;->a(Lcom/vungle/publisher/tw;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    iput-wide p4, v0, Lcom/vungle/publisher/tw;->a:J

    .line 78
    return-object v0

    .line 76
    :cond_1a
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_14
.end method
