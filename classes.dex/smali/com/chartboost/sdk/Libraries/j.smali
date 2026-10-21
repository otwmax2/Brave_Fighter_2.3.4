###### Class com.chartboost.sdk.Libraries.j (com.chartboost.sdk.Libraries.j)
.class public final Lcom/chartboost/sdk/Libraries/j;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    const-string v0, "WeakActivity.WeakActivity"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/Libraries/j;->a:I

    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Z
    .registers 4

    .prologue
    .line 19
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/chartboost/sdk/Libraries/j;->a:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lcom/chartboost/sdk/Libraries/j;->a:I

    return v0
.end method
