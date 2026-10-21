###### Class com.vungle.publisher.th (com.vungle.publisher.th)
.class public Lcom/vungle/publisher/th;
.super Lcom/vungle/publisher/tr;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/th$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vungle/publisher/tr;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method protected a()Lcom/vungle/publisher/tr$b;
    .registers 2

    .prologue
    .line 22
    sget-object v0, Lcom/vungle/publisher/tr$b;->a:Lcom/vungle/publisher/tr$b;

    return-object v0
.end method

.method protected b()Lcom/vungle/publisher/tr$c;
    .registers 2

    .prologue
    .line 27
    sget-object v0, Lcom/vungle/publisher/tr$c;->a:Lcom/vungle/publisher/tr$c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vungle/publisher/th;->b()Lcom/vungle/publisher/tr$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vungle/publisher/th;->c()Ljava/lang/String;

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

###### Class com.vungle.publisher.th.a (com.vungle.publisher.th$a)
.class public Lcom/vungle/publisher/th$a;
.super Lcom/vungle/publisher/tr$a;
.source "vungle"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/th;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/tr$a",
        "<",
        "Lcom/vungle/publisher/th;",
        ">;",
        "Lrx/functions/Func1",
        "<",
        "Lcom/vungle/publisher/gd",
        "<*>;",
        "Lrx/Observable",
        "<",
        "Lcom/vungle/publisher/th;",
        ">;>;"
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
    .line 38
    invoke-direct {p0}, Lcom/vungle/publisher/tr$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/vungle/publisher/th;
    .registers 2

    .prologue
    .line 42
    new-instance v0, Lcom/vungle/publisher/th;

    invoke-direct {v0}, Lcom/vungle/publisher/th;-><init>()V

    return-object v0
.end method

.method public a(Lcom/vungle/publisher/gd;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/gd",
            "<*>;)",
            "Lrx/Observable",
            "<",
            "Lcom/vungle/publisher/th;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/vungle/publisher/th$a;->c()Lcom/vungle/publisher/tr;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/th;

    .line 48
    invoke-interface {p1}, Lcom/vungle/publisher/gd;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/th;->a(Ljava/lang/String;)V

    .line 49
    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Lcom/vungle/publisher/tr;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/vungle/publisher/th$a;->a()Lcom/vungle/publisher/th;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 35
    check-cast p1, Lcom/vungle/publisher/gd;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/th$a;->a(Lcom/vungle/publisher/gd;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
