###### Class com.ironsource.sdk.data.AdUnitsReady (com.ironsource.sdk.data.AdUnitsReady)
.class public Lcom/ironsource/sdk/data/AdUnitsReady;
.super Lcom/ironsource/sdk/data/SSAObj;
.source "AdUnitsReady.java"


# static fields
.field private static FIRST_CAMPAIGN_CREDITS:Ljava/lang/String;

.field private static NUM_OF_AD_UNITS:Ljava/lang/String;

.field private static PRODUCT_TYPE:Ljava/lang/String;

.field private static TOTAL_NUMBER_CREDITS:Ljava/lang/String;

.field private static TYPE:Ljava/lang/String;


# instance fields
.field private mFirstCampaignCredits:Ljava/lang/String;

.field private mNumOfAdUnits:Ljava/lang/String;

.field private mNumOfAdUnitsExist:Z

.field private mProductType:Ljava/lang/String;

.field private mTotalNumberCredits:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    const-string v0, "type"

    sput-object v0, Lcom/ironsource/sdk/data/AdUnitsReady;->TYPE:Ljava/lang/String;

    .line 7
    const-string v0, "numOfAdUnits"

    sput-object v0, Lcom/ironsource/sdk/data/AdUnitsReady;->NUM_OF_AD_UNITS:Ljava/lang/String;

    .line 8
    const-string v0, "firstCampaignCredits"

    sput-object v0, Lcom/ironsource/sdk/data/AdUnitsReady;->FIRST_CAMPAIGN_CREDITS:Ljava/lang/String;

    .line 9
    const-string v0, "totalNumberCredits"

    sput-object v0, Lcom/ironsource/sdk/data/AdUnitsReady;->TOTAL_NUMBER_CREDITS:Ljava/lang/String;

    .line 10
    const-string v0, "productType"

    sput-object v0, Lcom/ironsource/sdk/data/AdUnitsReady;->PRODUCT_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/ironsource/sdk/data/AdUnitsReady;->TYPE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 23
    sget-object v0, Lcom/ironsource/sdk/data/AdUnitsReady;->TYPE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->setType(Ljava/lang/String;)V

    .line 26
    :cond_14
    sget-object v0, Lcom/ironsource/sdk/data/AdUnitsReady;->NUM_OF_AD_UNITS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 27
    sget-object v0, Lcom/ironsource/sdk/data/AdUnitsReady;->NUM_OF_AD_UNITS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->setNumOfAdUnits(Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->setNumOfAdUnitsExist(Z)V

    .line 33
    :goto_29
    sget-object v0, Lcom/ironsource/sdk/data/AdUnitsReady;->FIRST_CAMPAIGN_CREDITS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 34
    sget-object v0, Lcom/ironsource/sdk/data/AdUnitsReady;->FIRST_CAMPAIGN_CREDITS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->setFirstCampaignCredits(Ljava/lang/String;)V

    .line 37
    :cond_3a
    sget-object v0, Lcom/ironsource/sdk/data/AdUnitsReady;->TOTAL_NUMBER_CREDITS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 38
    sget-object v0, Lcom/ironsource/sdk/data/AdUnitsReady;->TOTAL_NUMBER_CREDITS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->setTotalNumberCredits(Ljava/lang/String;)V

    .line 41
    :cond_4b
    sget-object v0, Lcom/ironsource/sdk/data/AdUnitsReady;->PRODUCT_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 42
    sget-object v0, Lcom/ironsource/sdk/data/AdUnitsReady;->PRODUCT_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->setProductType(Ljava/lang/String;)V

    .line 44
    :cond_5c
    return-void

    .line 30
    :cond_5d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->setNumOfAdUnitsExist(Z)V

    goto :goto_29
.end method

.method private setNumOfAdUnitsExist(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/ironsource/sdk/data/AdUnitsReady;->mNumOfAdUnitsExist:Z

    .line 80
    return-void
.end method


# virtual methods
.method public getFirstCampaignCredits()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsReady;->mFirstCampaignCredits:Ljava/lang/String;

    return-object v0
.end method

.method public getNumOfAdUnits()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsReady;->mNumOfAdUnits:Ljava/lang/String;

    return-object v0
.end method

.method public getProductType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsReady;->mProductType:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalNumberCredits()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsReady;->mTotalNumberCredits:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsReady;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isNumOfAdUnitsExist()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/ironsource/sdk/data/AdUnitsReady;->mNumOfAdUnitsExist:Z

    return v0
.end method

.method public setFirstCampaignCredits(Ljava/lang/String;)V
    .registers 2
    .param p1, "firstCampaignCredits"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsReady;->mFirstCampaignCredits:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setNumOfAdUnits(Ljava/lang/String;)V
    .registers 2
    .param p1, "numOfAdUnits"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsReady;->mNumOfAdUnits:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setProductType(Ljava/lang/String;)V
    .registers 2
    .param p1, "productType"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsReady;->mProductType:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setTotalNumberCredits(Ljava/lang/String;)V
    .registers 2
    .param p1, "totalNumberCredits"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsReady;->mTotalNumberCredits:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsReady;->mType:Ljava/lang/String;

    .line 52
    return-void
.end method
