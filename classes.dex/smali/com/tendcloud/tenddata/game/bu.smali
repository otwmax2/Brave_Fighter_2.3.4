###### Class com.tendcloud.tenddata.game.bu (com.tendcloud.tenddata.game.bu)
.class public final Lcom/tendcloud/tenddata/game/bu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tendcloud/tenddata/game/v;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 7

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "activityPaused"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/tendcloud/tenddata/TalkingDataGA;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_14
    :goto_14
    return-void

    :cond_15
    const-string v1, "activityIdle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tendcloud/tenddata/TalkingDataGA;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_14
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    return-void
.end method
