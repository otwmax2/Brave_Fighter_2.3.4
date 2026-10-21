###### Class com.tendcloud.tenddata.game.bb (com.tendcloud.tenddata.game.bb)
.class public final Lcom/tendcloud/tenddata/game/bb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/bb$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/tendcloud/tenddata/game/bb$a;

.field private g:I


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/bb$a;I)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bb;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/bb;->f:Lcom/tendcloud/tenddata/game/bb$a;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/bb;->d:Ljava/lang/String;

    iput p4, p0, Lcom/tendcloud/tenddata/game/bb;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bb;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/bb;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/bb;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->b:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->c:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->a:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->e:Ljava/lang/String;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->d:Ljava/lang/String;

    return-object v0
.end method

.method f()Lcom/tendcloud/tenddata/game/bb$a;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bb;->f:Lcom/tendcloud/tenddata/game/bb$a;

    return-object v0
.end method

.method g()I
    .registers 2

    iget v0, p0, Lcom/tendcloud/tenddata/game/bb;->g:I

    return v0
.end method

###### Class com.tendcloud.tenddata.game.bb.a (com.tendcloud.tenddata.game.bb$a)
.class public final enum Lcom/tendcloud/tenddata/game/bb$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/tendcloud/tenddata/game/bb$a;

.field public static final enum b:Lcom/tendcloud/tenddata/game/bb$a;

.field public static final enum c:Lcom/tendcloud/tenddata/game/bb$a;

.field public static final enum d:Lcom/tendcloud/tenddata/game/bb$a;

.field public static final enum e:Lcom/tendcloud/tenddata/game/bb$a;

.field public static final enum f:Lcom/tendcloud/tenddata/game/bb$a;

.field public static final enum g:Lcom/tendcloud/tenddata/game/bb$a;

.field public static final enum h:Lcom/tendcloud/tenddata/game/bb$a;

.field private static final synthetic j:[Lcom/tendcloud/tenddata/game/bb$a;


# instance fields
.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/tendcloud/tenddata/game/bb$a;

    const-string v1, "ARRIVED"

    invoke-direct {v0, v1, v4, v4}, Lcom/tendcloud/tenddata/game/bb$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bb$a;->a:Lcom/tendcloud/tenddata/game/bb$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/bb$a;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v5, v5}, Lcom/tendcloud/tenddata/game/bb$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bb$a;->b:Lcom/tendcloud/tenddata/game/bb$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/bb$a;

    const-string v1, "SHOW"

    invoke-direct {v0, v1, v6, v6}, Lcom/tendcloud/tenddata/game/bb$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bb$a;->c:Lcom/tendcloud/tenddata/game/bb$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/bb$a;

    const-string v1, "UNSHOWN"

    invoke-direct {v0, v1, v7, v7}, Lcom/tendcloud/tenddata/game/bb$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bb$a;->d:Lcom/tendcloud/tenddata/game/bb$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/bb$a;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v8, v8}, Lcom/tendcloud/tenddata/game/bb$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bb$a;->e:Lcom/tendcloud/tenddata/game/bb$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/bb$a;

    const-string v1, "INAPP_SHOW"

    const/4 v2, 0x5

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/bb$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bb$a;->f:Lcom/tendcloud/tenddata/game/bb$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/bb$a;

    const-string v1, "INAPP_DURATION"

    const/4 v2, 0x6

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/bb$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bb$a;->g:Lcom/tendcloud/tenddata/game/bb$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/bb$a;

    const-string v1, "INAPP_UNSHOW"

    const/4 v2, 0x7

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/bb$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bb$a;->h:Lcom/tendcloud/tenddata/game/bb$a;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/tendcloud/tenddata/game/bb$a;

    sget-object v1, Lcom/tendcloud/tenddata/game/bb$a;->a:Lcom/tendcloud/tenddata/game/bb$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tendcloud/tenddata/game/bb$a;->b:Lcom/tendcloud/tenddata/game/bb$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tendcloud/tenddata/game/bb$a;->c:Lcom/tendcloud/tenddata/game/bb$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tendcloud/tenddata/game/bb$a;->d:Lcom/tendcloud/tenddata/game/bb$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tendcloud/tenddata/game/bb$a;->e:Lcom/tendcloud/tenddata/game/bb$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/tendcloud/tenddata/game/bb$a;->f:Lcom/tendcloud/tenddata/game/bb$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tendcloud/tenddata/game/bb$a;->g:Lcom/tendcloud/tenddata/game/bb$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tendcloud/tenddata/game/bb$a;->h:Lcom/tendcloud/tenddata/game/bb$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tendcloud/tenddata/game/bb$a;->j:[Lcom/tendcloud/tenddata/game/bb$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tendcloud/tenddata/game/bb$a;->i:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/bb$a;
    .registers 2

    const-class v0, Lcom/tendcloud/tenddata/game/bb$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/bb$a;

    return-object v0
.end method

.method public static values()[Lcom/tendcloud/tenddata/game/bb$a;
    .registers 1

    sget-object v0, Lcom/tendcloud/tenddata/game/bb$a;->j:[Lcom/tendcloud/tenddata/game/bb$a;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/game/bb$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/game/bb$a;

    return-object v0
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/tendcloud/tenddata/game/bb$a;->i:I

    return v0
.end method
