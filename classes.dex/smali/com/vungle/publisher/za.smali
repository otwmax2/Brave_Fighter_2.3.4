###### Class com.vungle.publisher.za (com.vungle.publisher.za)
.class public final Lcom/vungle/publisher/za;
.super Ljava/lang/Object;
.source "vungle"


# direct methods
.method public static a(II)I
    .registers 3

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/vungle/publisher/za;->c(II)I

    move-result v0

    or-int/2addr v0, p0

    return v0
.end method

.method public static a(III)I
    .registers 4

    .prologue
    .line 21
    invoke-static {p2}, Lcom/vungle/publisher/za;->a(I)V

    .line 22
    const/4 v0, 0x1

    if-ne p2, v0, :cond_b

    invoke-static {p0, p1}, Lcom/vungle/publisher/za;->a(II)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-static {p0, p1}, Lcom/vungle/publisher/za;->b(II)I

    move-result v0

    goto :goto_a
.end method

.method public static a(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 43
    if-ltz p0, :cond_5

    const/4 v0, 0x1

    if-le p0, v0, :cond_d

    .line 44
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bit must be 0 or 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_d
    return-void
.end method

.method public static b(II)I
    .registers 3

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/vungle/publisher/za;->c(II)I

    move-result v0

    and-int/2addr v0, p0

    return v0
.end method

.method static b(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 49
    if-ltz p0, :cond_6

    const/16 v0, 0x1f

    if-le p0, v0, :cond_e

    .line 50
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bit index must be 0-31"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_e
    return-void
.end method

.method static c(II)I
    .registers 3

    .prologue
    .line 34
    invoke-static {p0}, Lcom/vungle/publisher/za;->b(I)V

    .line 35
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    .line 36
    if-nez p1, :cond_9

    .line 37
    xor-int/lit8 v0, v0, -0x1

    .line 39
    :cond_9
    return v0
.end method
