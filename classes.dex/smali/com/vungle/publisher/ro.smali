###### Class com.vungle.publisher.ro (com.vungle.publisher.ro)
.class public Lcom/vungle/publisher/ro;
.super Landroid/widget/RelativeLayout;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ro$a;,
        Lcom/vungle/publisher/ro$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/vungle/publisher/ro$1;)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/vungle/publisher/ro;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/ro;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 16
    iput-object p1, p0, Lcom/vungle/publisher/ro;->a:Landroid/widget/ImageView;

    return-object p1
.end method


# virtual methods
.method public setCloseVisibility(Lcom/vungle/publisher/ro$b;)V
    .registers 5
    .param p1, "visibility"    # Lcom/vungle/publisher/ro$b;

    .prologue
    const/4 v2, 0x0

    .line 33
    sget-object v0, Lcom/vungle/publisher/ro$1;->a:[I

    invoke-virtual {p1}, Lcom/vungle/publisher/ro$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 46
    :goto_c
    return-void

    .line 35
    :pswitch_d
    iget-object v0, p0, Lcom/vungle/publisher/ro;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    invoke-virtual {p0, v2}, Lcom/vungle/publisher/ro;->setVisibility(I)V

    goto :goto_c

    .line 39
    :pswitch_16
    iget-object v0, p0, Lcom/vungle/publisher/ro;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    invoke-virtual {p0, v2}, Lcom/vungle/publisher/ro;->setVisibility(I)V

    goto :goto_c

    .line 43
    :pswitch_20
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ro;->setVisibility(I)V

    goto :goto_c

    .line 33
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_d
        :pswitch_16
        :pswitch_20
    .end packed-switch
.end method

###### Class com.vungle.publisher.ro.AnonymousClass1 (com.vungle.publisher.ro$1)
.class synthetic Lcom/vungle/publisher/ro$1;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ro;
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

    .prologue
    .line 33
    invoke-static {}, Lcom/vungle/publisher/ro$b;->values()[Lcom/vungle/publisher/ro$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vungle/publisher/ro$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/vungle/publisher/ro$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/ro$b;->a:Lcom/vungle/publisher/ro$b;

    invoke-virtual {v1}, Lcom/vungle/publisher/ro$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/vungle/publisher/ro$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/ro$b;->b:Lcom/vungle/publisher/ro$b;

    invoke-virtual {v1}, Lcom/vungle/publisher/ro$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/vungle/publisher/ro$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/ro$b;->c:Lcom/vungle/publisher/ro$b;

    invoke-virtual {v1}, Lcom/vungle/publisher/ro$b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method

###### Class com.vungle.publisher.ro.a (com.vungle.publisher.ro$a)
.class public Lcom/vungle/publisher/ro$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/mv;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/zo;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/vungle/publisher/ro;
    .registers 5

    .prologue
    .line 62
    new-instance v1, Lcom/vungle/publisher/ro;

    iget-object v0, p0, Lcom/vungle/publisher/ro$a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/vungle/publisher/ro;-><init>(Landroid/content/Context;Lcom/vungle/publisher/ro$1;)V

    .line 63
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vungle/publisher/ro$a;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-static {v1, v0}, Lcom/vungle/publisher/ro;->a(Lcom/vungle/publisher/ro;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 65
    iget-object v2, p0, Lcom/vungle/publisher/ro$a;->c:Lcom/vungle/publisher/zo;

    sget-object v3, Lcom/vungle/publisher/image/AssetBitmapFactory$a;->a:Lcom/vungle/publisher/image/AssetBitmapFactory$a;

    invoke-virtual {v2, v0, v3}, Lcom/vungle/publisher/zo;->a(Landroid/widget/ImageView;Lcom/vungle/publisher/image/AssetBitmapFactory$a;)V

    .line 66
    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ro;->addView(Landroid/view/View;)V

    .line 67
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 68
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70
    sget-object v0, Lcom/vungle/publisher/ro$b;->c:Lcom/vungle/publisher/ro$b;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ro;->setCloseVisibility(Lcom/vungle/publisher/ro$b;)V

    .line 71
    return-object v1
.end method

.method public a(Lcom/vungle/publisher/ro;)V
    .registers 5

    .prologue
    .line 76
    :try_start_0
    invoke-virtual {p1}, Lcom/vungle/publisher/ro;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    iget-object v1, p0, Lcom/vungle/publisher/ro$a;->b:Lcom/vungle/publisher/mv;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/mv;->a(I)F

    move-result v1

    float-to-int v1, v1

    .line 78
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 79
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 83
    :goto_13
    return-void

    .line 80
    :catch_14
    move-exception v0

    .line 81
    const-string v0, "VungleAd"

    const-string v1, "could not set close region dimensions. did you add it to a view yet?"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

###### Class com.vungle.publisher.ro.b (com.vungle.publisher.ro$b)
.class public final enum Lcom/vungle/publisher/ro$b;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/ro$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/ro$b;

.field public static final enum b:Lcom/vungle/publisher/ro$b;

.field public static final enum c:Lcom/vungle/publisher/ro$b;

.field private static final synthetic d:[Lcom/vungle/publisher/ro$b;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/vungle/publisher/ro$b;

    const-string v1, "visible"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/ro$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/ro$b;->a:Lcom/vungle/publisher/ro$b;

    .line 23
    new-instance v0, Lcom/vungle/publisher/ro$b;

    const-string v1, "invisible"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/ro$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/ro$b;->b:Lcom/vungle/publisher/ro$b;

    .line 24
    new-instance v0, Lcom/vungle/publisher/ro$b;

    const-string v1, "gone"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/ro$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/ro$b;->c:Lcom/vungle/publisher/ro$b;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vungle/publisher/ro$b;

    sget-object v1, Lcom/vungle/publisher/ro$b;->a:Lcom/vungle/publisher/ro$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/publisher/ro$b;->b:Lcom/vungle/publisher/ro$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/ro$b;->c:Lcom/vungle/publisher/ro$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vungle/publisher/ro$b;->d:[Lcom/vungle/publisher/ro$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/ro$b;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/vungle/publisher/ro$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ro$b;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/ro$b;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/vungle/publisher/ro$b;->d:[Lcom/vungle/publisher/ro$b;

    invoke-virtual {v0}, [Lcom/vungle/publisher/ro$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/ro$b;

    return-object v0
.end method
