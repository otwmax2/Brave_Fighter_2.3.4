###### Class com.vungle.publisher.wd (com.vungle.publisher.wd)
.class public Lcom/vungle/publisher/wd;
.super Lcom/vungle/publisher/wc;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/wd$a;
    }
.end annotation


# instance fields
.field m:Z

.field n:Lorg/json/JSONObject;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vungle/publisher/wc;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public n()Z
    .registers 2

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/vungle/publisher/wd;->m:Z

    return v0
.end method

.method public o()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vungle/publisher/wd;->n:Lorg/json/JSONObject;

    return-object v0
.end method

###### Class com.vungle.publisher.wd.a (com.vungle.publisher.wd$a)
.class public Lcom/vungle/publisher/wd$a;
.super Lcom/vungle/publisher/wc$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/wd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/wc$a",
        "<",
        "Lcom/vungle/publisher/wd;",
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
    .line 37
    invoke-direct {p0}, Lcom/vungle/publisher/wc$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lorg/json/JSONObject;)Lcom/vungle/publisher/wc;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/wd$a;->d(Lorg/json/JSONObject;)Lcom/vungle/publisher/wd;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)[Lcom/vungle/publisher/wd;
    .registers 3

    .prologue
    .line 49
    new-array v0, p1, [Lcom/vungle/publisher/wd;

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/vungle/publisher/wd$a;->c()Lcom/vungle/publisher/wd;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/wd$a;->a(I)[Lcom/vungle/publisher/wd;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lcom/vungle/publisher/wd;
    .registers 2

    .prologue
    .line 54
    new-instance v0, Lcom/vungle/publisher/wd;

    invoke-direct {v0}, Lcom/vungle/publisher/wd;-><init>()V

    return-object v0
.end method

.method public synthetic c(Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/wd$a;->d(Lorg/json/JSONObject;)Lcom/vungle/publisher/wd;

    move-result-object v0

    return-object v0
.end method

.method public d(Lorg/json/JSONObject;)Lcom/vungle/publisher/wd;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/vungle/publisher/wc$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/wc;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/wd;

    .line 42
    iput-object p1, v0, Lcom/vungle/publisher/wd;->n:Lorg/json/JSONObject;

    .line 43
    invoke-virtual {v0}, Lcom/vungle/publisher/wd;->j()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    :goto_f
    iput-boolean v1, v0, Lcom/vungle/publisher/wd;->m:Z

    .line 44
    return-object v0

    .line 43
    :cond_12
    const/4 v1, 0x0

    goto :goto_f
.end method
