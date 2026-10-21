###### Class com.tendcloud.tenddata.game.ca (com.tendcloud.tenddata.game.ca)
.class public final Lcom/tendcloud/tenddata/game/ca;
.super Lcom/tendcloud/tenddata/game/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/ca$a;
    }
.end annotation


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:D

.field private n:Ljava/lang/String;

.field private o:D

.field private p:Ljava/lang/String;

.field private q:Lcom/tendcloud/tenddata/game/ca$a;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Lcom/tendcloud/tenddata/game/ca$a;)V
    .registers 14

    const-string v0, "G9"

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bz;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ca;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ca;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/TDGAAccount;->getLevel()I

    move-result v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/ca;->i:I

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/TDGAAccount;->getGameServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ca;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/ca;->r:Ljava/lang/String;

    iput-object p4, p0, Lcom/tendcloud/tenddata/game/ca;->k:Ljava/lang/String;

    iput-object p5, p0, Lcom/tendcloud/tenddata/game/ca;->l:Ljava/lang/String;

    iput-wide p6, p0, Lcom/tendcloud/tenddata/game/ca;->m:D

    iput-object p8, p0, Lcom/tendcloud/tenddata/game/ca;->n:Ljava/lang/String;

    iput-wide p9, p0, Lcom/tendcloud/tenddata/game/ca;->o:D

    iput-object p11, p0, Lcom/tendcloud/tenddata/game/ca;->p:Ljava/lang/String;

    iput-object p12, p0, Lcom/tendcloud/tenddata/game/ca;->q:Lcom/tendcloud/tenddata/game/ca$a;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 5

    const-string v0, "gameSessionID"

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ca;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ca;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "userID"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ca;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "level"

    iget v2, p0, Lcom/tendcloud/tenddata/game/ca;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "gameServer"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ca;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "mission"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ca;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "orderId"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ca;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "iapId"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ca;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "currencyAmount"

    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/ca;->m:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "virtualCurrencyAmount"

    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/ca;->o:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "currencyType"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ca;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "paymentType"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ca;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "status"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ca;->q:Lcom/tendcloud/tenddata/game/ca$a;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/ca$a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    return-void
.end method

.method public a(Lcom/tendcloud/tenddata/game/ca$a;)V
    .registers 2

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ca;->q:Lcom/tendcloud/tenddata/game/ca$a;

    return-void
.end method

###### Class com.tendcloud.tenddata.game.ca.a (com.tendcloud.tenddata.game.ca$a)
.class public final enum Lcom/tendcloud/tenddata/game/ca$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/tendcloud/tenddata/game/ca$a;

.field public static final enum b:Lcom/tendcloud/tenddata/game/ca$a;

.field private static final synthetic d:[Lcom/tendcloud/tenddata/game/ca$a;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/tendcloud/tenddata/game/ca$a;

    const-string v1, "REQUEST"

    invoke-direct {v0, v1, v3, v2}, Lcom/tendcloud/tenddata/game/ca$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/ca$a;->a:Lcom/tendcloud/tenddata/game/ca$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/ca$a;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2, v4}, Lcom/tendcloud/tenddata/game/ca$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/ca$a;->b:Lcom/tendcloud/tenddata/game/ca$a;

    new-array v0, v4, [Lcom/tendcloud/tenddata/game/ca$a;

    sget-object v1, Lcom/tendcloud/tenddata/game/ca$a;->a:Lcom/tendcloud/tenddata/game/ca$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tendcloud/tenddata/game/ca$a;->b:Lcom/tendcloud/tenddata/game/ca$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/tendcloud/tenddata/game/ca$a;->d:[Lcom/tendcloud/tenddata/game/ca$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tendcloud/tenddata/game/ca$a;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/ca$a;
    .registers 2

    const-class v0, Lcom/tendcloud/tenddata/game/ca$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/ca$a;

    return-object v0
.end method

.method public static values()[Lcom/tendcloud/tenddata/game/ca$a;
    .registers 1

    sget-object v0, Lcom/tendcloud/tenddata/game/ca$a;->d:[Lcom/tendcloud/tenddata/game/ca$a;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/game/ca$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/game/ca$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/tendcloud/tenddata/game/ca$a;->c:I

    return v0
.end method
