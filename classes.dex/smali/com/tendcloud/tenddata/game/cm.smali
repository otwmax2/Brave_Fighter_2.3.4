###### Class com.tendcloud.tenddata.game.cm (com.tendcloud.tenddata.game.cm)
.class public Lcom/tendcloud/tenddata/game/cm;
.super Lcom/tendcloud/tenddata/game/bz;


# instance fields
.field private g:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "G18"

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bz;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/cm;->g:I

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    const-string v0, "isTest"

    iget v1, p0, Lcom/tendcloud/tenddata/game/cm;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cm;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tendcloud/tenddata/game/bz;

    return-void
.end method
