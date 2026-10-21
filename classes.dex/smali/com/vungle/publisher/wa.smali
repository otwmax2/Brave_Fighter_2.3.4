###### Class com.vungle.publisher.wa (com.vungle.publisher.wa)
.class public Lcom/vungle/publisher/wa;
.super Lcom/vungle/publisher/vs;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/wa$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/Float;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vungle/publisher/vs;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-super {p0}, Lcom/vungle/publisher/vs;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 37
    const-string v1, "checkpoint"

    iget-object v2, p0, Lcom/vungle/publisher/wa;->a:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v1, "urls"

    iget-object v2, p0, Lcom/vungle/publisher/wa;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/vungle/publisher/wa;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vungle/publisher/wa;->a:Ljava/lang/Float;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vungle/publisher/wa;->b:Ljava/util/List;

    return-object v0
.end method

###### Class com.vungle.publisher.wa.a (com.vungle.publisher.wa$a)
.class public Lcom/vungle/publisher/wa$a;
.super Lcom/vungle/publisher/vy;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/wa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/vy",
        "<",
        "Lcom/vungle/publisher/wa;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vungle/publisher/vy;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/vungle/publisher/wa;
    .registers 2

    .prologue
    .line 67
    new-instance v0, Lcom/vungle/publisher/wa;

    invoke-direct {v0}, Lcom/vungle/publisher/wa;-><init>()V

    return-object v0
.end method

.method protected a(Lorg/json/JSONObject;)Lcom/vungle/publisher/wa;
    .registers 5

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    if-eqz p1, :cond_25

    .line 51
    invoke-virtual {p0}, Lcom/vungle/publisher/wa$a;->a()Lcom/vungle/publisher/wa;

    move-result-object v0

    .line 52
    const-string v1, "checkpoint"

    invoke-static {p1, v1}, Lcom/vungle/publisher/ra;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/wa;->a:Ljava/lang/Float;

    .line 53
    const-string v1, "checkpoint"

    iget-object v2, v0, Lcom/vungle/publisher/wa;->a:Ljava/lang/Float;

    invoke-virtual {p0, p1, v1, v2}, Lcom/vungle/publisher/wa$a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    const-string v1, "urls"

    invoke-static {p1, v1}, Lcom/vungle/publisher/ra;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/wa;->b:Ljava/util/List;

    .line 55
    const-string v1, "urls"

    iget-object v2, v0, Lcom/vungle/publisher/wa;->b:Ljava/util/List;

    invoke-virtual {p0, p1, v1, v2}, Lcom/vungle/publisher/wa$a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    :cond_25
    return-object v0
.end method

.method protected a(I)[Lcom/vungle/publisher/wa;
    .registers 3

    .prologue
    .line 62
    new-array v0, p1, [Lcom/vungle/publisher/wa;

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/vungle/publisher/wa$a;->a()Lcom/vungle/publisher/wa;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/wa$a;->a(I)[Lcom/vungle/publisher/wa;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c(Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/wa$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/wa;

    move-result-object v0

    return-object v0
.end method
