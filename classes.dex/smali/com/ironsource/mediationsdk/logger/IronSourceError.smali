###### Class com.ironsource.mediationsdk.logger.IronSourceError (com.ironsource.mediationsdk.logger.IronSourceError)
.class public Lcom/ironsource/mediationsdk/logger/IronSourceError;
.super Ljava/lang/Object;
.source "IronSourceError.java"


# static fields
.field public static final BANNER_INIT_FAILED:I = 0x258

.field public static final BANNER_INIT_IN_PROGRESS:I = 0x259

.field public static final BANNER_LOAD_EXCEPTION:I = 0x25a

.field public static final BANNER_NO_ADS_TO_SHOW:I = 0x25b

.field public static final BANNER_NO_ADS_TO_SHOW2:I = 0x25c

.field public static final BANNER_NO_ADS_TO_SHOW3:I = 0x25d

.field public static final BANNER_TIMEOUT:I = 0x25b

.field public static final ERROR_CAPPED_PER_SESSION:I = 0x20e

.field public static final ERROR_CODE_GENERIC:I = 0x1fe

.field public static final ERROR_CODE_INIT_FAILED:I = 0x1fc

.field public static final ERROR_CODE_INVALID_KEY_VALUE:I = 0x1fa

.field public static final ERROR_CODE_KEY_NOT_SET:I = 0x1f9

.field public static final ERROR_CODE_NO_ADS_TO_RELOAD:I = 0x207

.field public static final ERROR_CODE_NO_ADS_TO_SHOW:I = 0x1fd

.field public static final ERROR_CODE_NO_CONFIGURATION_AVAILABLE:I = 0x1f5

.field public static final ERROR_CODE_USING_CACHED_CONFIGURATION:I = 0x1f6

.field public static final ERROR_NON_EXISTENT_INSTANCE:I = 0x20f

.field public static final ERROR_NO_INTERNET_CONNECTION:I = 0x208

.field public static final ERROR_REACHED_CAP_LIMIT_PER_PLACEMENT:I = 0x20c


# instance fields
.field private mErrorCode:I

.field private mErrorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "key"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceError;->mErrorCode:I

    .line 34
    if-nez p2, :cond_9

    .line 35
    const-string p2, ""

    .line 37
    :cond_9
    iput-object p2, p0, Lcom/ironsource/mediationsdk/logger/IronSourceError;->mErrorMsg:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceError;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceError;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceError;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceError;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
