###### Class com.facebook.ads.internal.q.a.q (com.facebook.ads.internal.q.a.q)
.class public Lcom/facebook/ads/internal/q/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/q/a/q$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private b:I

.field private c:Landroid/view/Window;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/facebook/ads/internal/q/a/q$a;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/facebook/ads/internal/q/a/q$a;->a:Lcom/facebook/ads/internal/q/a/q$a;

    iput-object v0, p0, Lcom/facebook/ads/internal/q/a/q;->d:Lcom/facebook/ads/internal/q/a/q$a;

    new-instance v0, Lcom/facebook/ads/internal/q/a/q$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/q/a/q$1;-><init>(Lcom/facebook/ads/internal/q/a/q;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/q/a/q;->e:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/facebook/ads/internal/q/a/q;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/internal/q/a/q;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method private a(IZ)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/internal/q/a/q;->c:Landroid/view/Window;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/internal/q/a/q;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p2, :cond_18

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_12
    iget-object v1, p0, Lcom/facebook/ads/internal/q/a/q;->c:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_4

    :cond_18
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_12
.end method

.method static synthetic a(Lcom/facebook/ads/internal/q/a/q;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/q/a/q;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 8

    sget-object v0, Lcom/facebook/ads/internal/q/a/q$a;->a:Lcom/facebook/ads/internal/q/a/q$a;

    iget-object v1, p0, Lcom/facebook/ads/internal/q/a/q;->d:Lcom/facebook/ads/internal/q/a/q$a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/q/a/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    const/16 v0, 0xf00

    if-nez p1, :cond_11

    const/16 v0, 0xf07

    :cond_11
    iget-object v1, p0, Lcom/facebook/ads/internal/q/a/q;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_27

    if-eqz p1, :cond_27

    iget-object v2, p0, Lcom/facebook/ads/internal/q/a/q;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/q/a/q;->e:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_27
    iget-object v1, p0, Lcom/facebook/ads/internal/q/a/q;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_a
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/q/a/q;->c:Landroid/view/Window;

    return-void
.end method

.method public a(Landroid/view/Window;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/q/a/q;->c:Landroid/view/Window;

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/q/a/q$a;)V
    .registers 8

    const/high16 v5, 0x8000000

    const/high16 v4, 0x4000000

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/facebook/ads/internal/q/a/q;->d:Lcom/facebook/ads/internal/q/a/q$a;

    sget-object v0, Lcom/facebook/ads/internal/q/a/q$2;->a:[I

    iget-object v1, p0, Lcom/facebook/ads/internal/q/a/q;->d:Lcom/facebook/ads/internal/q/a/q$a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/q/a/q$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    invoke-direct {p0, v4, v2}, Lcom/facebook/ads/internal/q/a/q;->a(IZ)V

    invoke-direct {p0, v5, v2}, Lcom/facebook/ads/internal/q/a/q;->a(IZ)V

    iget-object v0, p0, Lcom/facebook/ads/internal/q/a/q;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_20
    return-void

    :pswitch_21
    invoke-direct {p0, v4, v3}, Lcom/facebook/ads/internal/q/a/q;->a(IZ)V

    invoke-direct {p0, v5, v3}, Lcom/facebook/ads/internal/q/a/q;->a(IZ)V

    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/q/a/q;->a(Z)V

    goto :goto_20

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_21
    .end packed-switch
.end method

.method public onSystemUiVisibilityChange(I)V
    .registers 3

    iget v0, p0, Lcom/facebook/ads/internal/q/a/q;->b:I

    xor-int/2addr v0, p1

    iput p1, p0, Lcom/facebook/ads/internal/q/a/q;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_11

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/q/a/q;->a(Z)V

    :cond_11
    return-void
.end method

###### Class com.facebook.ads.internal.q.a.q.AnonymousClass1 (com.facebook.ads.internal.q.a.q$1)
.class Lcom/facebook/ads/internal/q/a/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/q/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/q/a/q;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/q/a/q;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/q/a/q$1;->a:Lcom/facebook/ads/internal/q/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/q/a/q$1;->a:Lcom/facebook/ads/internal/q/a/q;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/q/a/q;->a(Lcom/facebook/ads/internal/q/a/q;Z)V

    return-void
.end method

###### Class com.facebook.ads.internal.q.a.q.AnonymousClass2 (com.facebook.ads.internal.q.a.q$2)
.class synthetic Lcom/facebook/ads/internal/q/a/q$2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/q/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/facebook/ads/internal/q/a/q$a;->values()[Lcom/facebook/ads/internal/q/a/q$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/internal/q/a/q$2;->a:[I

    :try_start_9
    sget-object v0, Lcom/facebook/ads/internal/q/a/q$2;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/q/a/q$a;->b:Lcom/facebook/ads/internal/q/a/q$a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/q/a/q$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method

###### Class com.facebook.ads.internal.q.a.q.a (com.facebook.ads.internal.q.a.q$a)
.class public final enum Lcom/facebook/ads/internal/q/a/q$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/q/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/q/a/q$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/q/a/q$a;

.field public static final enum b:Lcom/facebook/ads/internal/q/a/q$a;

.field private static final synthetic c:[Lcom/facebook/ads/internal/q/a/q$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/internal/q/a/q$a;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/q/a/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/q/a/q$a;->a:Lcom/facebook/ads/internal/q/a/q$a;

    new-instance v0, Lcom/facebook/ads/internal/q/a/q$a;

    const-string v1, "FULL_SCREEN"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/internal/q/a/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/q/a/q$a;->b:Lcom/facebook/ads/internal/q/a/q$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/ads/internal/q/a/q$a;

    sget-object v1, Lcom/facebook/ads/internal/q/a/q$a;->a:Lcom/facebook/ads/internal/q/a/q$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/q/a/q$a;->b:Lcom/facebook/ads/internal/q/a/q$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/ads/internal/q/a/q$a;->c:[Lcom/facebook/ads/internal/q/a/q$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/q/a/q$a;
    .registers 2

    const-class v0, Lcom/facebook/ads/internal/q/a/q$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/q/a/q$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/q/a/q$a;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/q/a/q$a;->c:[Lcom/facebook/ads/internal/q/a/q$a;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/q/a/q$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/q/a/q$a;

    return-object v0
.end method
