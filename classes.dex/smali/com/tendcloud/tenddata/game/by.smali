###### Class com.tendcloud.tenddata.game.by (com.tendcloud.tenddata.game.by)
.class public Lcom/tendcloud/tenddata/game/by;
.super Lcom/tendcloud/tenddata/game/bz;


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "G14"

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bz;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/by;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/by;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/by;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 4

    const-string v0, "aas"

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/by;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/by;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "ruas"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/by;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    move-result-object v0

    const-string v1, "ras"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/by;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/bz;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    return-void
.end method
