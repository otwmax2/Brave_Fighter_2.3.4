###### Class com.moat.analytics.mobile.vng.ab (com.moat.analytics.mobile.vng.ab)
.class Lcom/moat/analytics/mobile/vng/ab;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/vng/ab$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/vng/a/b/a;
    .registers 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/moat/analytics/mobile/vng/a/b/a",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    instance-of v0, p0, Landroid/webkit/WebView;

    if-eqz v0, :cond_c

    check-cast p0, Landroid/webkit/WebView;

    invoke-static {p0}, Lcom/moat/analytics/mobile/vng/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/vng/a/b/a;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v4, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    move-object v1, v2

    :goto_1b
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_70

    const/16 v3, 0x64

    if-ge v0, v3, :cond_70

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v6, Lcom/moat/analytics/mobile/vng/ab$a;

    invoke-direct {v6, v0, v2}, Lcom/moat/analytics/mobile/vng/ab$a;-><init>(Landroid/view/ViewGroup;Lcom/moat/analytics/mobile/vng/ab$1;)V

    invoke-virtual {v6}, Lcom/moat/analytics/mobile/vng/ab$a;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_36
    :goto_36
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v7, v0, Landroid/webkit/WebView;

    if-eqz v7, :cond_4b

    if-nez v1, :cond_5e

    move-object v1, v0

    check-cast v1, Landroid/webkit/WebView;

    :cond_4b
    instance-of v7, v0, Landroid/view/ViewGroup;

    if-eqz v7, :cond_36

    check-cast v0, Landroid/view/ViewGroup;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_36

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_5e
    const/4 v1, 0x3

    const-string v6, "WebViewHound"

    const-string v7, "Ambiguous ad container: multiple WebViews reside within it."

    invoke-static {v1, v6, v0, v7}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "[ERROR] "

    const-string v1, "WebAdTracker not created, ambiguous ad container: multiple WebViews reside within it"

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :cond_6e
    move v0, v3

    goto :goto_1b

    :cond_70
    invoke-static {v1}, Lcom/moat/analytics/mobile/vng/a/b/a;->b(Ljava/lang/Object;)Lcom/moat/analytics/mobile/vng/a/b/a;

    move-result-object v0

    goto :goto_b
.end method

###### Class com.moat.analytics.mobile.vng.ab.AnonymousClass1 (com.moat.analytics.mobile.vng.ab$1)
.class synthetic Lcom/moat/analytics/mobile/vng/ab$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.moat.analytics.mobile.vng.ab.a (com.moat.analytics.mobile.vng.ab$a)
.class Lcom/moat/analytics/mobile/vng/ab$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/vng/ab$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/ViewGroup;


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/ab$a;->a:Landroid/view/ViewGroup;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewGroup;Lcom/moat/analytics/mobile/vng/ab$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/ab$a;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/vng/ab$a;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/ab$a;->a:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/moat/analytics/mobile/vng/ab$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/moat/analytics/mobile/vng/ab$a$a;-><init>(Lcom/moat/analytics/mobile/vng/ab$a;Lcom/moat/analytics/mobile/vng/ab$1;)V

    return-object v0
.end method

###### Class com.moat.analytics.mobile.vng.ab.a.C0165a (com.moat.analytics.mobile.vng.ab$a$a)
.class Lcom/moat/analytics/mobile/vng/ab$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/ab$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/ab$a;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/moat/analytics/mobile/vng/ab$a;)V
    .registers 3

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/ab$a$a;->a:Lcom/moat/analytics/mobile/vng/ab$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/moat/analytics/mobile/vng/ab$a$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/moat/analytics/mobile/vng/ab$a;Lcom/moat/analytics/mobile/vng/ab$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/ab$a$a;-><init>(Lcom/moat/analytics/mobile/vng/ab$a;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 3

    iget v0, p0, Lcom/moat/analytics/mobile/vng/ab$a$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/moat/analytics/mobile/vng/ab$a$a;->b:I

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/ab$a$a;->a:Lcom/moat/analytics/mobile/vng/ab$a;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/ab$a;->a(Lcom/moat/analytics/mobile/vng/ab$a;)Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/moat/analytics/mobile/vng/ab$a$a;->b:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lcom/moat/analytics/mobile/vng/ab$a$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/ab$a$a;->a:Lcom/moat/analytics/mobile/vng/ab$a;

    invoke-static {v1}, Lcom/moat/analytics/mobile/vng/ab$a;->a(Lcom/moat/analytics/mobile/vng/ab$a;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/ab$a$a;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented. Under development."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
