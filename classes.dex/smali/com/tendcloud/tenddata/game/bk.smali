###### Class com.tendcloud.tenddata.game.bk (com.tendcloud.tenddata.game.bk)
.class Lcom/tendcloud/tenddata/game/bk;
.super Lcom/tendcloud/tenddata/game/aq;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/aq;-><init>()V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bk;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bk;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/bk;->a(Ljava/lang/String;)V

    return-void
.end method
