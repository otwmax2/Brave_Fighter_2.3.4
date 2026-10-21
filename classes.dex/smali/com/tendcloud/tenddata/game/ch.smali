###### Class com.tendcloud.tenddata.game.ch (com.tendcloud.tenddata.game.ch)
.class public Lcom/tendcloud/tenddata/game/ch;
.super Lcom/tendcloud/tenddata/game/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/ch$a;
    }
.end annotation


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/tendcloud/tenddata/game/ch$a;

.field private m:Ljava/lang/String;

.field private n:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Ljava/lang/String;JLcom/tendcloud/tenddata/game/ch$a;)V
    .registers 9

    const-string v0, "G6"

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bz;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ch;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ch;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/TDGAAccount;->getLevel()I

    move-result v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/ch;->i:I

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/TDGAAccount;->getGameServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ch;->k:Ljava/lang/String;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/ch;->j:Ljava/lang/String;

    iput-object p4, p0, Lcom/tendcloud/tenddata/game/ch;->m:Ljava/lang/String;

    iput-object p7, p0, Lcom/tendcloud/tenddata/game/ch;->l:Lcom/tendcloud/tenddata/game/ch$a;

    iput-wide p5, p0, Lcom/tendcloud/tenddata/game/ch;->n:J

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 7

    const-string v0, "gameSessionID"

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ch;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ch;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "userID"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ch;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "level"

    iget v2, p0, Lcom/tendcloud/tenddata/game/ch;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "gameServer"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ch;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "mission"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ch;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "cause"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ch;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "status"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ch;->l:Lcom/tendcloud/tenddata/game/ch$a;

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/ch$a;->a(Lcom/tendcloud/tenddata/game/ch$a;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "timeConsuming"

    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/ch;->n:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    return-void
.end method

###### Class com.tendcloud.tenddata.game.ch.a (com.tendcloud.tenddata.game.ch$a)
.class public final enum Lcom/tendcloud/tenddata/game/ch$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/tendcloud/tenddata/game/ch$a;

.field public static final enum b:Lcom/tendcloud/tenddata/game/ch$a;

.field public static final enum c:Lcom/tendcloud/tenddata/game/ch$a;

.field private static final synthetic e:[Lcom/tendcloud/tenddata/game/ch$a;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/tendcloud/tenddata/game/ch$a;

    const-string v1, "START"

    invoke-direct {v0, v1, v4, v2}, Lcom/tendcloud/tenddata/game/ch$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/ch$a;->a:Lcom/tendcloud/tenddata/game/ch$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/ch$a;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/ch$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/ch$a;->b:Lcom/tendcloud/tenddata/game/ch$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/ch$a;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3, v5}, Lcom/tendcloud/tenddata/game/ch$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/ch$a;->c:Lcom/tendcloud/tenddata/game/ch$a;

    new-array v0, v5, [Lcom/tendcloud/tenddata/game/ch$a;

    sget-object v1, Lcom/tendcloud/tenddata/game/ch$a;->a:Lcom/tendcloud/tenddata/game/ch$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tendcloud/tenddata/game/ch$a;->b:Lcom/tendcloud/tenddata/game/ch$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tendcloud/tenddata/game/ch$a;->c:Lcom/tendcloud/tenddata/game/ch$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tendcloud/tenddata/game/ch$a;->e:[Lcom/tendcloud/tenddata/game/ch$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tendcloud/tenddata/game/ch$a;->d:I

    return-void
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/ch$a;)I
    .registers 2

    iget v0, p0, Lcom/tendcloud/tenddata/game/ch$a;->d:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/ch$a;
    .registers 2

    const-class v0, Lcom/tendcloud/tenddata/game/ch$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/ch$a;

    return-object v0
.end method

.method public static values()[Lcom/tendcloud/tenddata/game/ch$a;
    .registers 1

    sget-object v0, Lcom/tendcloud/tenddata/game/ch$a;->e:[Lcom/tendcloud/tenddata/game/ch$a;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/game/ch$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/game/ch$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/tendcloud/tenddata/game/ch$a;->d:I

    return v0
.end method
