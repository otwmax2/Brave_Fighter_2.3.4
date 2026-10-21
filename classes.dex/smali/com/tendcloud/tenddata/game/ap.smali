###### Class com.tendcloud.tenddata.game.ap (com.tendcloud.tenddata.game.ap)
.class Lcom/tendcloud/tenddata/game/ap;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ap;->b:Ljava/lang/String;

    return-void
.end method
