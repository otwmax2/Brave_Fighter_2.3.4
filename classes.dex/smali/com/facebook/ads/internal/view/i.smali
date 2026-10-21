###### Class com.facebook.ads.internal.view.i (com.facebook.ads.internal.view.i)
.class public Lcom/facebook/ads/internal/view/i;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/i$b;,
        Lcom/facebook/ads/internal/view/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/facebook/ads/internal/view/i$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/ads/internal/m/c;

.field private final b:Lcom/facebook/ads/internal/q/a/s;

.field private final c:Lcom/facebook/ads/internal/adapters/j;

.field private d:Lcom/facebook/ads/internal/view/a$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/view/i$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/q/a/s;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/adapters/j;Ljava/lang/String;IIIZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/view/i$a;",
            ">;",
            "Lcom/facebook/ads/internal/m/c;",
            "Lcom/facebook/ads/internal/q/a/s;",
            "Lcom/facebook/ads/internal/view/a$a;",
            "Lcom/facebook/ads/internal/adapters/j;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/i;->a:Lcom/facebook/ads/internal/m/c;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/i;->b:Lcom/facebook/ads/internal/q/a/s;

    iput-object p4, p0, Lcom/facebook/ads/internal/view/i;->d:Lcom/facebook/ads/internal/view/a$a;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i;->j:Ljava/util/List;

    iput p7, p0, Lcom/facebook/ads/internal/view/i;->f:I

    iput-object p5, p0, Lcom/facebook/ads/internal/view/i;->c:Lcom/facebook/ads/internal/adapters/j;

    iput-boolean p10, p0, Lcom/facebook/ads/internal/view/i;->h:Z

    iput-object p6, p0, Lcom/facebook/ads/internal/view/i;->g:Ljava/lang/String;

    iput p9, p0, Lcom/facebook/ads/internal/view/i;->e:I

    iput p8, p0, Lcom/facebook/ads/internal/view/i;->i:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/facebook/ads/internal/view/i$b;
    .registers 10

    new-instance v0, Lcom/facebook/ads/internal/view/h;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/i;->c:Lcom/facebook/ads/internal/adapters/j;

    iget-boolean v3, p0, Lcom/facebook/ads/internal/view/i;->h:Z

    iget-object v4, p0, Lcom/facebook/ads/internal/view/i;->a:Lcom/facebook/ads/internal/m/c;

    iget-object v5, p0, Lcom/facebook/ads/internal/view/i;->d:Lcom/facebook/ads/internal/view/a$a;

    iget-object v6, p0, Lcom/facebook/ads/internal/view/i;->g:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/internal/view/h;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/j;ZLcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/view/a$a;Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/internal/view/i$b;

    invoke-direct {v1, v0}, Lcom/facebook/ads/internal/view/i$b;-><init>(Lcom/facebook/ads/internal/view/h;)V

    return-object v1
.end method

.method public a(Lcom/facebook/ads/internal/view/i$b;I)V
    .registers 8

    const/4 v3, 0x0

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/facebook/ads/internal/view/i;->f:I

    const/4 v1, -0x2

    invoke-direct {v2, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    if-nez p2, :cond_52

    iget v0, p0, Lcom/facebook/ads/internal/view/i;->e:I

    :goto_d
    iget-object v1, p0, Lcom/facebook/ads/internal/view/i;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt p2, v1, :cond_55

    iget v1, p0, Lcom/facebook/ads/internal/view/i;->e:I

    :goto_19
    invoke-virtual {v2, v0, v3, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/i$a;

    iget-object v1, p1, Lcom/facebook/ads/internal/view/i$b;->a:Lcom/facebook/ads/internal/view/h;

    iget-object v3, v0, Lcom/facebook/ads/internal/view/i$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/facebook/ads/internal/view/h;->setImageUrl(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/facebook/ads/internal/view/i$b;->a:Lcom/facebook/ads/internal/view/h;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p1, Lcom/facebook/ads/internal/view/i$b;->a:Lcom/facebook/ads/internal/view/h;

    iget-object v2, v0, Lcom/facebook/ads/internal/view/i$a;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/facebook/ads/internal/view/i$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/ads/internal/view/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/facebook/ads/internal/view/i$b;->a:Lcom/facebook/ads/internal/view/h;

    iget-object v2, v0, Lcom/facebook/ads/internal/view/i$a;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/facebook/ads/internal/view/i$a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i$a;->a()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/ads/internal/view/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i;->a:Lcom/facebook/ads/internal/m/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/i;->b:Lcom/facebook/ads/internal/q/a/s;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/i;->g:Ljava/lang/String;

    iget-object v4, p1, Lcom/facebook/ads/internal/view/i$b;->a:Lcom/facebook/ads/internal/view/h;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/ads/internal/view/i$a;->a(Lcom/facebook/ads/internal/view/i$a;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/q/a/s;Ljava/lang/String;Lcom/facebook/ads/internal/view/h;)V

    return-void

    :cond_52
    iget v0, p0, Lcom/facebook/ads/internal/view/i;->i:I

    goto :goto_d

    :cond_55
    iget v1, p0, Lcom/facebook/ads/internal/view/i;->i:I

    goto :goto_19
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/facebook/ads/internal/view/i$b;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/internal/view/i;->a(Lcom/facebook/ads/internal/view/i$b;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/internal/view/i;->a(Landroid/view/ViewGroup;I)Lcom/facebook/ads/internal/view/i$b;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.ads.internal.view.i.a (com.facebook.ads.internal.view.i$a)
.class public Lcom/facebook/ads/internal/view/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field private final f:I

.field private final g:I

.field private h:Lcom/facebook/ads/internal/r/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/i$a;->i:Z

    iput p1, p0, Lcom/facebook/ads/internal/view/i$a;->f:I

    iput p2, p0, Lcom/facebook/ads/internal/view/i$a;->g:I

    iput-object p3, p0, Lcom/facebook/ads/internal/view/i$a;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/ads/internal/view/i$a;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/ads/internal/view/i$a;->b:Ljava/lang/String;

    iput-object p6, p0, Lcom/facebook/ads/internal/view/i$a;->c:Ljava/lang/String;

    iput-object p7, p0, Lcom/facebook/ads/internal/view/i$a;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/i$a;)Lcom/facebook/ads/internal/r/a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$a;->h:Lcom/facebook/ads/internal/r/a;

    return-object v0
.end method

.method private a(Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/q/a/s;Ljava/lang/String;Lcom/facebook/ads/internal/view/h;)V
    .registers 9

    const/16 v3, 0x64

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/i$a;->i:Z

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$a;->h:Lcom/facebook/ads/internal/r/a;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$a;->h:Lcom/facebook/ads/internal/r/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/r/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/i$a;->h:Lcom/facebook/ads/internal/r/a;

    :cond_13
    new-instance v0, Lcom/facebook/ads/internal/r/a;

    const/16 v1, 0xa

    new-instance v2, Lcom/facebook/ads/internal/view/i$a$1;

    invoke-direct {v2, p0, p3, p2, p1}, Lcom/facebook/ads/internal/view/i$a$1;-><init>(Lcom/facebook/ads/internal/view/i$a;Ljava/lang/String;Lcom/facebook/ads/internal/q/a/s;Lcom/facebook/ads/internal/m/c;)V

    invoke-direct {v0, p4, v1, v2}, Lcom/facebook/ads/internal/r/a;-><init>(Landroid/view/View;ILcom/facebook/ads/internal/r/a$a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/i$a;->h:Lcom/facebook/ads/internal/r/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$a;->h:Lcom/facebook/ads/internal/r/a;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/internal/r/a;->a(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$a;->h:Lcom/facebook/ads/internal/r/a;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/internal/r/a;->b(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$a;->h:Lcom/facebook/ads/internal/r/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/r/a;->a()V

    goto :goto_6
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/i$a;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/q/a/s;Ljava/lang/String;Lcom/facebook/ads/internal/view/h;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/view/i$a;->a(Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/q/a/s;Ljava/lang/String;Lcom/facebook/ads/internal/view/h;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/i$a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/i$a;->i:Z

    return p1
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "cardind"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/facebook/ads/internal/view/i$a;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cardcnt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/facebook/ads/internal/view/i$a;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

###### Class com.facebook.ads.internal.view.i.a.AnonymousClass1 (com.facebook.ads.internal.view.i$a$1)
.class Lcom/facebook/ads/internal/view/i$a$1;
.super Lcom/facebook/ads/internal/r/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/i$a;->a(Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/q/a/s;Ljava/lang/String;Lcom/facebook/ads/internal/view/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/ads/internal/q/a/s;

.field final synthetic c:Lcom/facebook/ads/internal/m/c;

.field final synthetic d:Lcom/facebook/ads/internal/view/i$a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i$a;Ljava/lang/String;Lcom/facebook/ads/internal/q/a/s;Lcom/facebook/ads/internal/m/c;)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i$a$1;->d:Lcom/facebook/ads/internal/view/i$a;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/i$a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/i$a$1;->b:Lcom/facebook/ads/internal/q/a/s;

    iput-object p4, p0, Lcom/facebook/ads/internal/view/i$a$1;->c:Lcom/facebook/ads/internal/m/c;

    invoke-direct {p0}, Lcom/facebook/ads/internal/r/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$a$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$a$1;->d:Lcom/facebook/ads/internal/view/i$a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i$a;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i$a$1;->d:Lcom/facebook/ads/internal/view/i$a;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/i$a;->a(Lcom/facebook/ads/internal/view/i$a;)Lcom/facebook/ads/internal/r/a;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i$a$1;->d:Lcom/facebook/ads/internal/view/i$a;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/i$a;->a(Lcom/facebook/ads/internal/view/i$a;)Lcom/facebook/ads/internal/r/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/r/a;->a(Ljava/util/Map;)V

    :cond_1f
    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/i$a$1;->b:Lcom/facebook/ads/internal/q/a/s;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/q/a/s;->e()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/q/a/j;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i$a$1;->c:Lcom/facebook/ads/internal/m/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/i$a$1;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/m/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_35
    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$a$1;->d:Lcom/facebook/ads/internal/view/i$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/view/i$a;->a(Lcom/facebook/ads/internal/view/i$a;Z)Z

    return-void
.end method

###### Class com.facebook.ads.internal.view.i.b (com.facebook.ads.internal.view.i$b)
.class public Lcom/facebook/ads/internal/view/i$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/facebook/ads/internal/view/h;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/view/h;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i$b;->a:Lcom/facebook/ads/internal/view/h;

    return-void
.end method
