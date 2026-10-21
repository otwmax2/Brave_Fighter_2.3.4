###### Class com.ironsource.sdk.controller.ProductParametersCollection (com.ironsource.sdk.controller.ProductParametersCollection)
.class public Lcom/ironsource/sdk/controller/ProductParametersCollection;
.super Ljava/lang/Object;
.source "ProductParametersCollection.java"


# instance fields
.field private mProductParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/ironsource/sdk/data/SSAEnums$ProductType;",
            "Lcom/ironsource/sdk/data/ProductParameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ProductParametersCollection;->mProductParameters:Ljava/util/Map;

    .line 18
    return-void
.end method


# virtual methods
.method public getProductParameters(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/data/ProductParameters;
    .registers 4
    .param p1, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "productParameters":Lcom/ironsource/sdk/data/ProductParameters;
    if-eqz p1, :cond_b

    .line 29
    iget-object v1, p0, Lcom/ironsource/sdk/controller/ProductParametersCollection;->mProductParameters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "productParameters":Lcom/ironsource/sdk/data/ProductParameters;
    check-cast v0, Lcom/ironsource/sdk/data/ProductParameters;

    .line 31
    .restart local v0    # "productParameters":Lcom/ironsource/sdk/data/ProductParameters;
    :cond_b
    return-object v0
.end method

.method public setProductParameters(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/sdk/data/ProductParameters;
    .registers 6
    .param p1, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Lcom/ironsource/sdk/data/ProductParameters;

    invoke-direct {v0, p2, p3}, Lcom/ironsource/sdk/data/ProductParameters;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .local v0, "productParameters":Lcom/ironsource/sdk/data/ProductParameters;
    iget-object v1, p0, Lcom/ironsource/sdk/controller/ProductParametersCollection;->mProductParameters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-object v0
.end method
