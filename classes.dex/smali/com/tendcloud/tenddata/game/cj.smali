###### Class com.tendcloud.tenddata.game.cj (com.tendcloud.tenddata.game.cj)
.class public Lcom/tendcloud/tenddata/game/cj;
.super Lcom/tendcloud/tenddata/game/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/cj$a;
    }
.end annotation


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/tendcloud/tenddata/game/cj$a;

.field private j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tendcloud/tenddata/game/cj$a;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/tendcloud/tenddata/game/cj;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/cj$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/cj$a;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tendcloud/tenddata/game/cj;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/cj$a;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/cj$a;I)V
    .registers 6

    const-string v0, "G17"

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bz;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cj;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/cj;->i:Lcom/tendcloud/tenddata/game/cj$a;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/cj;->g:Ljava/lang/String;

    iput p4, p0, Lcom/tendcloud/tenddata/game/cj;->j:I

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 4

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cj;->g:Ljava/lang/String;

    if-nez v0, :cond_2b

    const-string v0, "msgSign"

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cj;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "action"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cj;->i:Lcom/tendcloud/tenddata/game/cj$a;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/cj$a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    :goto_1b
    iget v0, p0, Lcom/tendcloud/tenddata/game/cj;->j:I

    if-lez v0, :cond_2a

    const-string v0, "duration"

    iget v1, p0, Lcom/tendcloud/tenddata/game/cj;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    :cond_2a
    return-void

    :cond_2b
    const-string v0, "msgSign"

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cj;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "action"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cj;->i:Lcom/tendcloud/tenddata/game/cj$a;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/cj$a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "url"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cj;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    goto :goto_1b
.end method

###### Class com.tendcloud.tenddata.game.cj.a (com.tendcloud.tenddata.game.cj$a)
.class public final enum Lcom/tendcloud/tenddata/game/cj$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/cj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/tendcloud/tenddata/game/cj$a;

.field public static final enum b:Lcom/tendcloud/tenddata/game/cj$a;

.field public static final enum c:Lcom/tendcloud/tenddata/game/cj$a;

.field public static final enum d:Lcom/tendcloud/tenddata/game/cj$a;

.field public static final enum e:Lcom/tendcloud/tenddata/game/cj$a;

.field public static final enum f:Lcom/tendcloud/tenddata/game/cj$a;

.field public static final enum g:Lcom/tendcloud/tenddata/game/cj$a;

.field public static final enum h:Lcom/tendcloud/tenddata/game/cj$a;

.field private static final synthetic j:[Lcom/tendcloud/tenddata/game/cj$a;


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

    new-instance v0, Lcom/tendcloud/tenddata/game/cj$a;

    const-string v1, "ARRIVED"

    invoke-direct {v0, v1, v4, v4}, Lcom/tendcloud/tenddata/game/cj$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/cj$a;->a:Lcom/tendcloud/tenddata/game/cj$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/cj$a;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v5, v5}, Lcom/tendcloud/tenddata/game/cj$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/cj$a;->b:Lcom/tendcloud/tenddata/game/cj$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/cj$a;

    const-string v1, "SHOW"

    invoke-direct {v0, v1, v6, v6}, Lcom/tendcloud/tenddata/game/cj$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/cj$a;->c:Lcom/tendcloud/tenddata/game/cj$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/cj$a;

    const-string v1, "UNSHOWN"

    invoke-direct {v0, v1, v7, v7}, Lcom/tendcloud/tenddata/game/cj$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/cj$a;->d:Lcom/tendcloud/tenddata/game/cj$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/cj$a;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v8, v8}, Lcom/tendcloud/tenddata/game/cj$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/cj$a;->e:Lcom/tendcloud/tenddata/game/cj$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/cj$a;

    const-string v1, "INAPP_SHOW"

    const/4 v2, 0x5

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/cj$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/cj$a;->f:Lcom/tendcloud/tenddata/game/cj$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/cj$a;

    const-string v1, "INAPP_DURATION"

    const/4 v2, 0x6

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/cj$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/cj$a;->g:Lcom/tendcloud/tenddata/game/cj$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/cj$a;

    const-string v1, "INAPP_UNSHOW"

    const/4 v2, 0x7

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/cj$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/cj$a;->h:Lcom/tendcloud/tenddata/game/cj$a;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/tendcloud/tenddata/game/cj$a;

    sget-object v1, Lcom/tendcloud/tenddata/game/cj$a;->a:Lcom/tendcloud/tenddata/game/cj$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tendcloud/tenddata/game/cj$a;->b:Lcom/tendcloud/tenddata/game/cj$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tendcloud/tenddata/game/cj$a;->c:Lcom/tendcloud/tenddata/game/cj$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tendcloud/tenddata/game/cj$a;->d:Lcom/tendcloud/tenddata/game/cj$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tendcloud/tenddata/game/cj$a;->e:Lcom/tendcloud/tenddata/game/cj$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/tendcloud/tenddata/game/cj$a;->f:Lcom/tendcloud/tenddata/game/cj$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tendcloud/tenddata/game/cj$a;->g:Lcom/tendcloud/tenddata/game/cj$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tendcloud/tenddata/game/cj$a;->h:Lcom/tendcloud/tenddata/game/cj$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tendcloud/tenddata/game/cj$a;->j:[Lcom/tendcloud/tenddata/game/cj$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tendcloud/tenddata/game/cj$a;->i:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/cj$a;
    .registers 2

    const-class v0, Lcom/tendcloud/tenddata/game/cj$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/cj$a;

    return-object v0
.end method

.method public static values()[Lcom/tendcloud/tenddata/game/cj$a;
    .registers 1

    sget-object v0, Lcom/tendcloud/tenddata/game/cj$a;->j:[Lcom/tendcloud/tenddata/game/cj$a;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/game/cj$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/game/cj$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/tendcloud/tenddata/game/cj$a;->i:I

    return v0
.end method
