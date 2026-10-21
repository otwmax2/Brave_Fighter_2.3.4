###### Class com.vungle.publisher.hf (com.vungle.publisher.hf)
.class public Lcom/vungle/publisher/hf;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/jf;


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/vungle/publisher/hf;->a:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 17
    instance-of v0, p1, Lcom/vungle/publisher/hf;

    if-eqz v0, :cond_f

    .line 18
    iget-object v0, p0, Lcom/vungle/publisher/hf;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 20
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vungle/publisher/hf;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8
    iget-object v0, p0, Lcom/vungle/publisher/hf;->a:Ljava/lang/String;

    return-object v0
.end method
