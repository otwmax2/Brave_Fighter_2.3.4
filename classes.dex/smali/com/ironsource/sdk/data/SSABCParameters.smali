###### Class com.ironsource.sdk.data.SSABCParameters (com.ironsource.sdk.data.SSABCParameters)
.class public Lcom/ironsource/sdk/data/SSABCParameters;
.super Lcom/ironsource/sdk/data/SSAObj;
.source "SSABCParameters.java"


# instance fields
.field private CONNECTION_RETRIES:Ljava/lang/String;

.field private mConnectionRetries:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/ironsource/sdk/data/SSAObj;-><init>()V

    .line 5
    const-string v0, "connectionRetries"

    iput-object v0, p0, Lcom/ironsource/sdk/data/SSABCParameters;->CONNECTION_RETRIES:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 5
    const-string v0, "connectionRetries"

    iput-object v0, p0, Lcom/ironsource/sdk/data/SSABCParameters;->CONNECTION_RETRIES:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSABCParameters;->CONNECTION_RETRIES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/SSABCParameters;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 17
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSABCParameters;->CONNECTION_RETRIES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/SSABCParameters;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/SSABCParameters;->setConnectionRetries(Ljava/lang/String;)V

    .line 19
    :cond_18
    return-void
.end method


# virtual methods
.method public getConnectionRetries()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSABCParameters;->mConnectionRetries:Ljava/lang/String;

    return-object v0
.end method

.method public setConnectionRetries(Ljava/lang/String;)V
    .registers 2
    .param p1, "connectionRetries"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSABCParameters;->mConnectionRetries:Ljava/lang/String;

    .line 27
    return-void
.end method
