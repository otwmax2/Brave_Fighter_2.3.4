###### Class com.vungle.publisher.uo (com.vungle.publisher.uo)
.class public Lcom/vungle/publisher/uo;
.super Lcom/vungle/publisher/tr;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/uo$a;
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/cn;

.field b:Lcom/vungle/publisher/jf;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vungle/publisher/tr;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/vungle/publisher/tr$b;
    .registers 2

    .prologue
    .line 26
    sget-object v0, Lcom/vungle/publisher/tr$b;->a:Lcom/vungle/publisher/tr$b;

    return-object v0
.end method

.method protected b()Lcom/vungle/publisher/tr$c;
    .registers 2

    .prologue
    .line 21
    sget-object v0, Lcom/vungle/publisher/tr$c;->f:Lcom/vungle/publisher/tr$c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vungle/publisher/uo;->b()Lcom/vungle/publisher/tr$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vungle/publisher/uo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.uo.a (com.vungle.publisher.uo$a)
.class public Lcom/vungle/publisher/uo$a;
.super Lcom/vungle/publisher/tr$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/uo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/tr$a",
        "<",
        "Lcom/vungle/publisher/uo;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/vungle/publisher/tr$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/vungle/publisher/uo;
    .registers 2

    .prologue
    .line 61
    new-instance v0, Lcom/vungle/publisher/uo;

    invoke-direct {v0}, Lcom/vungle/publisher/uo;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/jf;Ljava/lang/String;)Lcom/vungle/publisher/uo;
    .registers 5

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/vungle/publisher/uo$a;->c()Lcom/vungle/publisher/tr;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/uo;

    .line 53
    iput-object p1, v0, Lcom/vungle/publisher/uo;->a:Lcom/vungle/publisher/cn;

    .line 54
    iput-object p2, v0, Lcom/vungle/publisher/uo;->b:Lcom/vungle/publisher/jf;

    .line 55
    invoke-virtual {v0, p3}, Lcom/vungle/publisher/uo;->a(Ljava/lang/String;)V

    .line 56
    return-object v0
.end method

.method protected synthetic b()Lcom/vungle/publisher/tr;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/vungle/publisher/uo$a;->a()Lcom/vungle/publisher/uo;

    move-result-object v0

    return-object v0
.end method
