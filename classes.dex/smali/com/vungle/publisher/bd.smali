###### Class com.vungle.publisher.bd (com.vungle.publisher.bd)
.class public Lcom/vungle/publisher/bd;
.super Lcom/vungle/publisher/ph;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/bd$a;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/vungle/publisher/ph;-><init>()V

    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 15
    iget v0, p0, Lcom/vungle/publisher/bd;->c:F

    return v0
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 19
    iget v0, p0, Lcom/vungle/publisher/bd;->b:I

    iget v1, p0, Lcom/vungle/publisher/bd;->a:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

###### Class com.vungle.publisher.bd.a (com.vungle.publisher.bd$a)
.class public Lcom/vungle/publisher/bd$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/lm;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/vungle/publisher/bd;
    .registers 4

    .prologue
    .line 31
    new-instance v0, Lcom/vungle/publisher/bd;

    invoke-direct {v0}, Lcom/vungle/publisher/bd;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/vungle/publisher/bd$a;->a:Lcom/vungle/publisher/lm;

    invoke-virtual {v1}, Lcom/vungle/publisher/lm;->a()I

    move-result v1

    iput v1, v0, Lcom/vungle/publisher/bd;->b:I

    .line 33
    iget-object v1, p0, Lcom/vungle/publisher/bd$a;->a:Lcom/vungle/publisher/lm;

    invoke-virtual {v1}, Lcom/vungle/publisher/lm;->b()F

    move-result v1

    iput v1, v0, Lcom/vungle/publisher/bd;->c:F

    .line 34
    iput p1, v0, Lcom/vungle/publisher/bd;->a:I

    .line 35
    return-object v0
.end method
