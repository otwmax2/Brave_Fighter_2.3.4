###### Class com.ironsource.sdk.data.ProductParameters (com.ironsource.sdk.data.ProductParameters)
.class public Lcom/ironsource/sdk/data/ProductParameters;
.super Ljava/lang/Object;
.source "ProductParameters.java"


# instance fields
.field public final appKey:Ljava/lang/String;

.field public final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "_appKey"    # Ljava/lang/String;
    .param p2, "_userId"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/ironsource/sdk/data/ProductParameters;->appKey:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/ironsource/sdk/data/ProductParameters;->userId:Ljava/lang/String;

    .line 14
    return-void
.end method
