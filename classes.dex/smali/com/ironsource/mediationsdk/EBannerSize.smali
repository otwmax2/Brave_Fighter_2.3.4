###### Class com.ironsource.mediationsdk.EBannerSize (com.ironsource.mediationsdk.EBannerSize)
.class public final enum Lcom/ironsource/mediationsdk/EBannerSize;
.super Ljava/lang/Enum;
.source "EBannerSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ironsource/mediationsdk/EBannerSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/EBannerSize;

.field public static final enum BANNER:Lcom/ironsource/mediationsdk/EBannerSize;

.field public static final enum LARGE:Lcom/ironsource/mediationsdk/EBannerSize;

.field public static final enum RECTANGLE:Lcom/ironsource/mediationsdk/EBannerSize;

.field public static final enum SMART:Lcom/ironsource/mediationsdk/EBannerSize;

.field public static final enum TABLET:Lcom/ironsource/mediationsdk/EBannerSize;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/ironsource/mediationsdk/EBannerSize;

    const-string v1, "BANNER"

    const-string v2, "banner"

    invoke-direct {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/EBannerSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/mediationsdk/EBannerSize;->BANNER:Lcom/ironsource/mediationsdk/EBannerSize;

    .line 9
    new-instance v0, Lcom/ironsource/mediationsdk/EBannerSize;

    const-string v1, "LARGE"

    const-string v2, "large"

    invoke-direct {v0, v1, v4, v2}, Lcom/ironsource/mediationsdk/EBannerSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/mediationsdk/EBannerSize;->LARGE:Lcom/ironsource/mediationsdk/EBannerSize;

    .line 10
    new-instance v0, Lcom/ironsource/mediationsdk/EBannerSize;

    const-string v1, "RECTANGLE"

    const-string v2, "rectangle"

    invoke-direct {v0, v1, v5, v2}, Lcom/ironsource/mediationsdk/EBannerSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/mediationsdk/EBannerSize;->RECTANGLE:Lcom/ironsource/mediationsdk/EBannerSize;

    .line 14
    new-instance v0, Lcom/ironsource/mediationsdk/EBannerSize;

    const-string v1, "TABLET"

    const-string v2, "tablet"

    invoke-direct {v0, v1, v6, v2}, Lcom/ironsource/mediationsdk/EBannerSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/mediationsdk/EBannerSize;->TABLET:Lcom/ironsource/mediationsdk/EBannerSize;

    .line 16
    new-instance v0, Lcom/ironsource/mediationsdk/EBannerSize;

    const-string v1, "SMART"

    const-string v2, "smart"

    invoke-direct {v0, v1, v7, v2}, Lcom/ironsource/mediationsdk/EBannerSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/mediationsdk/EBannerSize;->SMART:Lcom/ironsource/mediationsdk/EBannerSize;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ironsource/mediationsdk/EBannerSize;

    sget-object v1, Lcom/ironsource/mediationsdk/EBannerSize;->BANNER:Lcom/ironsource/mediationsdk/EBannerSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/mediationsdk/EBannerSize;->LARGE:Lcom/ironsource/mediationsdk/EBannerSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/mediationsdk/EBannerSize;->RECTANGLE:Lcom/ironsource/mediationsdk/EBannerSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ironsource/mediationsdk/EBannerSize;->TABLET:Lcom/ironsource/mediationsdk/EBannerSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ironsource/mediationsdk/EBannerSize;->SMART:Lcom/ironsource/mediationsdk/EBannerSize;

    aput-object v1, v0, v7

    sput-object v0, Lcom/ironsource/mediationsdk/EBannerSize;->$VALUES:[Lcom/ironsource/mediationsdk/EBannerSize;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/ironsource/mediationsdk/EBannerSize;->mValue:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/EBannerSize;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/ironsource/mediationsdk/EBannerSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/EBannerSize;

    return-object v0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/EBannerSize;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcom/ironsource/mediationsdk/EBannerSize;->$VALUES:[Lcom/ironsource/mediationsdk/EBannerSize;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/EBannerSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/EBannerSize;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/EBannerSize;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ironsource/mediationsdk/EBannerSize;->mValue:Ljava/lang/String;

    return-object v0
.end method
