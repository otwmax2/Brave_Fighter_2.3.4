###### Class com.ironsource.mediationsdk.config.ConfigValidationResult (com.ironsource.mediationsdk.config.ConfigValidationResult)
.class public Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
.super Ljava/lang/Object;
.source "ConfigValidationResult.java"


# instance fields
.field private mIronSourceError:Lcom/ironsource/mediationsdk/logger/IronSourceError;

.field private mIsValid:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->mIsValid:Z

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->mIronSourceError:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 15
    return-void
.end method


# virtual methods
.method public getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->mIronSourceError:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    return-object v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->mIsValid:Z

    return v0
.end method

.method public setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->mIsValid:Z

    .line 20
    iput-object p1, p0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->mIronSourceError:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 21
    return-void
.end method

.method public setValid()V
    .registers 2

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->mIsValid:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->mIronSourceError:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "valid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->mIsValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_1b
    return-object v0

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "valid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->mIsValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IronSourceError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->mIronSourceError:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method
