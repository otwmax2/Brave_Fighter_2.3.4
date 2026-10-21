###### Class com.facebook.ads.internal.view.hscroll.a (com.facebook.ads.internal.view.hscroll.a)
.class public Lcom/facebook/ads/internal/view/hscroll/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/a;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(I[I)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public a(I)[I
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public b(I)Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
