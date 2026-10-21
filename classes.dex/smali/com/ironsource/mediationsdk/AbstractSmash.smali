###### Class com.ironsource.mediationsdk.AbstractSmash (com.ironsource.mediationsdk.AbstractSmash)
.class public abstract Lcom/ironsource/mediationsdk/AbstractSmash;
.super Ljava/lang/Object;
.source "AbstractSmash.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/BaseApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    }
.end annotation


# static fields
.field public static final MAX_ADS_PER_DAY_DEFAULT_VALUE:I = 0x63


# instance fields
.field final MAX_ADS_PER_DAY_KEY:Ljava/lang/String;

.field final MAX_ADS_PER_ITERATION_KEY:Ljava/lang/String;

.field final MAX_ADS_PER_SESSION_KEY:Ljava/lang/String;

.field mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

.field mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

.field mInitTimerTask:Ljava/util/TimerTask;

.field mInstanceName:Ljava/lang/String;

.field mIsInForeground:Z

.field mIsMultipleInstances:Z

.field mIterationShowCounter:I

.field mLoadTimerTask:Ljava/util/TimerTask;

.field mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

.field mMaxAdsPerDay:I

.field mMaxAdsPerIteration:I

.field mMaxAdsPerSession:I

.field mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field mName:Ljava/lang/String;

.field mNameForReflection:Ljava/lang/String;

.field mProviderPriority:I

.field mSessionShowCounter:I

.field mSpId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;)V
    .registers 4
    .param p1, "adapterConfigs"    # Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, "maxAdsPerSession"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->MAX_ADS_PER_SESSION_KEY:Ljava/lang/String;

    .line 69
    const-string v0, "maxAdsPerIteration"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->MAX_ADS_PER_ITERATION_KEY:Ljava/lang/String;

    .line 70
    const-string v0, "maxAdsPerDay"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->MAX_ADS_PER_DAY_KEY:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mNameForReflection:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mInstanceName:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->isMultipleInstances()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mIsMultipleInstances:Z

    .line 78
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 79
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mSpId:Ljava/lang/String;

    .line 80
    iput v1, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mIterationShowCounter:I

    .line 81
    iput v1, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mSessionShowCounter:I

    .line 82
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 83
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mIsInForeground:Z

    .line 88
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mIsMultipleInstances:Z

    if-eqz v0, :cond_44

    .line 89
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mNameForReflection:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mName:Ljava/lang/String;

    .line 92
    :goto_43
    return-void

    .line 91
    :cond_44
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mName:Ljava/lang/String;

    goto :goto_43
.end method


# virtual methods
.method abstract completeIteration()V
.end method

.method protected abstract getAdUnitString()Ljava/lang/String;
.end method

.method public getAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    return-object v0
.end method

.method public getAllSettingsForProvider(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mNameForReflection:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAllSettingsForProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method getInstanceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mInstanceName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAdsPerDay()I
    .registers 2

    .prologue
    .line 190
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mMaxAdsPerDay:I

    return v0
.end method

.method getMaxAdsPerIteration()I
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mMaxAdsPerIteration:I

    return v0
.end method

.method getMaxAdsPerSession()I
    .registers 2

    .prologue
    .line 182
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mMaxAdsPerSession:I

    return v0
.end method

.method getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getNameForReflection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mNameForReflection:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderPriority()I
    .registers 2

    .prologue
    .line 198
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mProviderPriority:I

    return v0
.end method

.method public getSubProviderId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mSpId:Ljava/lang/String;

    return-object v0
.end method

.method isCappedPerDay()Z
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method isCappedPerSession()Z
    .registers 3

    .prologue
    .line 103
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mSessionShowCounter:I

    iget v1, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mMaxAdsPerSession:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method isExhausted()Z
    .registers 3

    .prologue
    .line 99
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mIterationShowCounter:I

    iget v1, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mMaxAdsPerIteration:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method isMediationAvailable()Z
    .registers 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractSmash;->isExhausted()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractSmash;->isCappedPerSession()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractSmash;->isCappedPerDay()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_9

    .line 228
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->onPause(Landroid/app/Activity;)V

    .line 230
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mIsInForeground:Z

    .line 231
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_9

    .line 220
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->onResume(Landroid/app/Activity;)V

    .line 222
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mIsInForeground:Z

    .line 223
    return-void
.end method

.method preShow()V
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mIterationShowCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mIterationShowCounter:I

    .line 116
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mSessionShowCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mSessionShowCounter:I

    .line 118
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractSmash;->isCappedPerSession()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 119
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 122
    :cond_17
    :goto_17
    return-void

    .line 120
    :cond_18
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractSmash;->isExhausted()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 121
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->EXHAUSTED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    goto :goto_17
.end method

.method setAdapterForSmash(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .registers 2
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 96
    return-void
.end method

.method public setAge(I)V
    .registers 6
    .param p1, "age"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_32

    .line 237
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":setAge(age:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 238
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setAge(I)V

    .line 240
    :cond_32
    return-void
.end method

.method setConsent(Z)V
    .registers 6
    .param p1, "consent"    # Z

    .prologue
    .line 274
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_40

    .line 275
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getAdUnitString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "| setConsent(consent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 276
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setConsent(Z)V

    .line 279
    :cond_40
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 6
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_32

    .line 245
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":setGender(gender:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 246
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setGender(Ljava/lang/String;)V

    .line 248
    :cond_32
    return-void
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .registers 6
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_32

    .line 253
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":setMediationSegment(segment:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 254
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setMediationSegment(Ljava/lang/String;)V

    .line 256
    :cond_32
    return-void
.end method

.method declared-synchronized setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V
    .registers 6
    .param p1, "state"    # Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .prologue
    .line 204
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4c

    if-ne v0, p1, :cond_7

    .line 213
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 208
    :cond_7
    :try_start_7
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 209
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Smart Loading - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 211
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq p1, v0, :cond_42

    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne p1, v0, :cond_5

    .line 212
    :cond_42
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getAdUnitString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_4c

    goto :goto_5

    .line 204
    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setPluginData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "pluginType"    # Ljava/lang/String;
    .param p2, "pluginFrameworkVersion"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_9

    .line 148
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setPluginData(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_9
    return-void
.end method

.method setProviderPriority(I)V
    .registers 2
    .param p1, "providerPriority"    # I

    .prologue
    .line 270
    iput p1, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mProviderPriority:I

    .line 271
    return-void
.end method

.method abstract startInitTimer()V
.end method

.method abstract startLoadTimer()V
.end method

.method stopInitTimer()V
    .registers 3

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mInitTimerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_c

    .line 127
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mInitTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mInitTimerTask:Ljava/util/TimerTask;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 133
    :cond_c
    :goto_c
    return-void

    .line 130
    :catch_d
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method stopLoadTimer()V
    .registers 3

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mLoadTimerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_c

    .line 138
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mLoadTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ironsource/mediationsdk/AbstractSmash;->mLoadTimerTask:Ljava/util/TimerTask;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 144
    :cond_c
    :goto_c
    return-void

    .line 141
    :catch_d
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

###### Class com.ironsource.mediationsdk.AbstractSmash.MEDIATION_STATE (com.ironsource.mediationsdk.AbstractSmash$MEDIATION_STATE)
.class public final enum Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
.super Ljava/lang/Enum;
.source "AbstractSmash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/AbstractSmash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MEDIATION_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field public static final enum AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field public static final enum CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field public static final enum CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field public static final enum EXHAUSTED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field public static final enum INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field public static final enum INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field public static final enum INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field public static final enum LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field public static final enum NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field public static final enum NOT_INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    new-instance v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v1, "NOT_INITIATED"

    invoke-direct {v0, v1, v4, v4}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 23
    new-instance v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v1, "INIT_FAILED"

    invoke-direct {v0, v1, v5, v5}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 24
    new-instance v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v1, "INITIATED"

    invoke-direct {v0, v1, v6, v6}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 25
    new-instance v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1, v7, v7}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 26
    new-instance v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v1, "NOT_AVAILABLE"

    invoke-direct {v0, v1, v8, v8}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 27
    new-instance v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v1, "EXHAUSTED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->EXHAUSTED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 28
    new-instance v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v1, "CAPPED_PER_SESSION"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 29
    new-instance v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v1, "INIT_PENDING"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 30
    new-instance v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v1, "LOAD_PENDING"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 31
    new-instance v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v1, "CAPPED_PER_DAY"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 21
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->EXHAUSTED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->$VALUES:[Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->mValue:I

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    return-object v0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->$VALUES:[Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->mValue:I

    return v0
.end method
