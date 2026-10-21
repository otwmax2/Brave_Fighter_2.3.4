###### Class com.ironsource.sdk.data.AdUnitsState (com.ironsource.sdk.data.AdUnitsState)
.class public Lcom/ironsource/sdk/data/AdUnitsState;
.super Ljava/lang/Object;
.source "AdUnitsState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ironsource/sdk/data/AdUnitsState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDisplayedDemandSourceName:Ljava/lang/String;

.field private mDisplayedProduct:I

.field private mInterstitialAppKey:Ljava/lang/String;

.field private mInterstitialExtraParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialInitSuccess:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialLoadSuccess:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialReportInit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialReportLoad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialUserId:Ljava/lang/String;

.field private mOfferWallExtraParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOfferwallInitSuccess:Z

.field private mOfferwallReportInit:Z

.field private mRVAppKey:Ljava/lang/String;

.field private mRVUserId:Ljava/lang/String;

.field private mShouldRestore:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 131
    new-instance v0, Lcom/ironsource/sdk/data/AdUnitsState$1;

    invoke-direct {v0}, Lcom/ironsource/sdk/data/AdUnitsState$1;-><init>()V

    sput-object v0, Lcom/ironsource/sdk/data/AdUnitsState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-direct {p0}, Lcom/ironsource/sdk/data/AdUnitsState;->initialize()V

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-direct {p0}, Lcom/ironsource/sdk/data/AdUnitsState;->initialize()V

    .line 58
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_5b

    move v3, v1

    :goto_f
    iput-boolean v3, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mShouldRestore:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedProduct:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mRVAppKey:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mRVUserId:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedDemandSourceName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ironsource/sdk/data/AdUnitsState;->getMapFromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_5d

    move v3, v1

    :goto_46
    iput-boolean v3, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallInitSuccess:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_5f

    :goto_4e
    iput-boolean v1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallReportInit:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->getMapFromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferWallExtraParams:Ljava/util/Map;
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_5a} :catch_61

    .line 78
    :goto_5a
    return-void

    :cond_5b
    move v3, v2

    .line 58
    goto :goto_f

    :cond_5d
    move v3, v2

    .line 70
    goto :goto_46

    :cond_5f
    move v1, v2

    .line 71
    goto :goto_4e

    .line 73
    :catch_61
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/ironsource/sdk/data/AdUnitsState;->initialize()V

    goto :goto_5a
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/ironsource/sdk/data/AdUnitsState$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/ironsource/sdk/data/AdUnitsState$1;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/data/AdUnitsState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private getMapFromJsonString(Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 310
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 312
    .local v1, "json":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 314
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 315
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 316
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_21} :catch_22
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_21} :catch_27

    goto :goto_e

    .line 321
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "value":Ljava/lang/String;
    :catch_22
    move-exception v0

    .line 322
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 327
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_26
    :goto_26
    return-object v4

    .line 323
    :catch_27
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_26
.end method

.method private initialize()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 82
    iput-boolean v1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mShouldRestore:Z

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedProduct:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportInit:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportLoad:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialLoadSuccess:Ljava/util/ArrayList;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallReportInit:Z

    .line 91
    iput-boolean v1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallInitSuccess:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferWallExtraParams:Ljava/util/Map;

    .line 96
    return-void
.end method


# virtual methods
.method public adClosed()V
    .registers 2

    .prologue
    .line 272
    const/4 v0, -0x1

    iput v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedProduct:I

    return-void
.end method

.method public adOpened(I)V
    .registers 2
    .param p1, "product"    # I

    .prologue
    .line 269
    iput p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedProduct:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayedDemandSourceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedDemandSourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayedProduct()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedProduct:I

    return v0
.end method

.method public getInterstitialAppKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getInterstitialExtraParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    return-object v0
.end method

.method public getInterstitialUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferWallExtraParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferWallExtraParams:Ljava/util/Map;

    return-object v0
.end method

.method public getOfferwallInitSuccess()Z
    .registers 2

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallInitSuccess:Z

    return v0
.end method

.method public getRVAppKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mRVAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRVUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mRVUserId:Ljava/lang/String;

    return-object v0
.end method

.method public isInterstitialInitSuccess(Ljava/lang/String;)Z
    .registers 4
    .param p1, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isInterstitialLoadSuccess(Ljava/lang/String;)Z
    .registers 4
    .param p1, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialLoadSuccess:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public reportInitInterstitial(Ljava/lang/String;)Z
    .registers 4
    .param p1, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportInit:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public reportInitOfferwall()Z
    .registers 2

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallReportInit:Z

    return v0
.end method

.method public reportLoadInterstitial(Ljava/lang/String;)Z
    .registers 4
    .param p1, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportLoad:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public setDisplayedDemandSourceName(Ljava/lang/String;)V
    .registers 2
    .param p1, "displayedDemandSourceName"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedDemandSourceName:Ljava/lang/String;

    return-void
.end method

.method public setInterstitialAppKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "mInterstitialAppKey"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setInterstitialExtraParams(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "mInterstitialExtraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    .line 235
    return-void
.end method

.method public setInterstitialInitSuccess(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "demandSourceName"    # Ljava/lang/String;
    .param p2, "interstitialInitSuccess"    # Z

    .prologue
    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 201
    if-eqz p2, :cond_17

    .line 202
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 203
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_16
    :goto_16
    return-void

    .line 206
    :cond_17
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method public setInterstitialLoadSuccess(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "demandSourceName"    # Ljava/lang/String;
    .param p2, "interstitialLoadSuccess"    # Z

    .prologue
    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 214
    if-eqz p2, :cond_17

    .line 215
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialLoadSuccess:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 216
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialLoadSuccess:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_16
    :goto_16
    return-void

    .line 219
    :cond_17
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialLoadSuccess:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method public setInterstitialUserId(Ljava/lang/String;)V
    .registers 2
    .param p1, "mInterstitialUserId"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setOfferWallExtraParams(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "offerWallExtraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferWallExtraParams:Ljava/util/Map;

    .line 191
    return-void
.end method

.method public setOfferwallInitSuccess(Z)V
    .registers 2
    .param p1, "offerwallInitSuccess"    # Z

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallInitSuccess:Z

    .line 276
    return-void
.end method

.method public setOfferwallReportInit(Z)V
    .registers 2
    .param p1, "offerwallReportInit"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallReportInit:Z

    .line 280
    return-void
.end method

.method public setRVAppKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "mRVAppKey"    # Ljava/lang/String;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mRVAppKey:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setRVUserId(Ljava/lang/String;)V
    .registers 2
    .param p1, "mRVUserId"    # Ljava/lang/String;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mRVUserId:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setReportInitInterstitial(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "demandSourceName"    # Ljava/lang/String;
    .param p2, "shouldReport"    # Z

    .prologue
    .line 238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 239
    if-eqz p2, :cond_17

    .line 240
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportInit:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 241
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportInit:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_16
    :goto_16
    return-void

    .line 244
    :cond_17
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportInit:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method public setReportLoadInterstitial(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "demandSourceName"    # Ljava/lang/String;
    .param p2, "shouldReport"    # Z

    .prologue
    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 252
    if-eqz p2, :cond_17

    .line 253
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportLoad:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 254
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportLoad:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_16
    :goto_16
    return-void

    .line 257
    :cond_17
    iget-object v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportLoad:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method public setShouldRestore(Z)V
    .registers 2
    .param p1, "mShouldRestore"    # Z

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mShouldRestore:Z

    .line 266
    return-void
.end method

.method public shouldRestore()Z
    .registers 2

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mShouldRestore:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v0, "builder":Ljava/lang/StringBuilder;
    :try_start_5
    const-string v1, "shouldRestore:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mShouldRestore:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v1, "displayedProduct:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedProduct:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v1, "ISReportInit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialReportInit:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string v1, "ISInitSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string v1, "ISAppKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const-string v1, "ISUserId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-string v1, "ISExtraParams"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const-string v1, "OWReportInit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallReportInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string v1, "OWInitSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallInitSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    const-string v1, "OWExtraParams"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferWallExtraParams:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_af} :catch_b4

    .line 353
    :goto_af
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 348
    :catch_b4
    move-exception v1

    goto :goto_af
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    :try_start_2
    iget-boolean v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mShouldRestore:Z

    if-eqz v2, :cond_57

    move v2, v0

    :goto_7
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 111
    iget v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedProduct:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mRVAppKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mRVUserId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mDisplayedDemandSourceName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-boolean v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallInitSuccess:Z

    if-eqz v2, :cond_59

    move v2, v0

    :goto_3c
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 123
    iget-boolean v2, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferwallReportInit:Z

    if-eqz v2, :cond_5b

    :goto_44
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 124
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ironsource/sdk/data/AdUnitsState;->mOfferWallExtraParams:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_56} :catch_5d

    .line 128
    :goto_56
    return-void

    :cond_57
    move v2, v1

    .line 110
    goto :goto_7

    :cond_59
    move v2, v1

    .line 122
    goto :goto_3c

    :cond_5b
    move v0, v1

    .line 123
    goto :goto_44

    .line 125
    :catch_5d
    move-exception v0

    goto :goto_56
.end method

###### Class com.ironsource.sdk.data.AdUnitsState.AnonymousClass1 (com.ironsource.sdk.data.AdUnitsState$1)
.class final Lcom/ironsource/sdk/data/AdUnitsState$1;
.super Ljava/lang/Object;
.source "AdUnitsState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/data/AdUnitsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/ironsource/sdk/data/AdUnitsState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ironsource/sdk/data/AdUnitsState;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 135
    new-instance v0, Lcom/ironsource/sdk/data/AdUnitsState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ironsource/sdk/data/AdUnitsState;-><init>(Landroid/os/Parcel;Lcom/ironsource/sdk/data/AdUnitsState$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/data/AdUnitsState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ironsource/sdk/data/AdUnitsState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 140
    new-array v0, p1, [Lcom/ironsource/sdk/data/AdUnitsState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/data/AdUnitsState$1;->newArray(I)[Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    return-object v0
.end method
