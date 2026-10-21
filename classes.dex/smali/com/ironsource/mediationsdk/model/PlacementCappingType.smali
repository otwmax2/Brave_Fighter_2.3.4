###### Class com.ironsource.mediationsdk.model.PlacementCappingType (com.ironsource.mediationsdk.model.PlacementCappingType)
.class public final enum Lcom/ironsource/mediationsdk/model/PlacementCappingType;
.super Ljava/lang/Enum;
.source "PlacementCappingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ironsource/mediationsdk/model/PlacementCappingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/model/PlacementCappingType;

.field public static final enum PER_DAY:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

.field public static final enum PER_HOUR:Lcom/ironsource/mediationsdk/model/PlacementCappingType;


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    const-string v1, "PER_DAY"

    const-string v2, "d"

    invoke-direct {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_DAY:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    new-instance v0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    const-string v1, "PER_HOUR"

    const-string v2, "h"

    invoke-direct {v0, v1, v4, v2}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_HOUR:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    sget-object v1, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_DAY:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_HOUR:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->$VALUES:[Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->value:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    return-object v0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->$VALUES:[Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/model/PlacementCappingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->value:Ljava/lang/String;

    return-object v0
.end method
