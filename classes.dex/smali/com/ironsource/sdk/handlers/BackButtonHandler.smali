###### Class com.ironsource.sdk.handlers.BackButtonHandler (com.ironsource.sdk.handlers.BackButtonHandler)
.class public Lcom/ironsource/sdk/handlers/BackButtonHandler;
.super Ljava/lang/Object;
.source "BackButtonHandler.java"


# static fields
.field public static mInstance:Lcom/ironsource/sdk/handlers/BackButtonHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ironsource/sdk/handlers/BackButtonHandler;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/ironsource/sdk/handlers/BackButtonHandler;->mInstance:Lcom/ironsource/sdk/handlers/BackButtonHandler;

    if-nez v0, :cond_a

    .line 17
    new-instance v0, Lcom/ironsource/sdk/handlers/BackButtonHandler;

    invoke-direct {v0}, Lcom/ironsource/sdk/handlers/BackButtonHandler;-><init>()V

    .line 19
    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lcom/ironsource/sdk/handlers/BackButtonHandler;->mInstance:Lcom/ironsource/sdk/handlers/BackButtonHandler;

    goto :goto_9
.end method


# virtual methods
.method public handleBackButton(Landroid/app/Activity;)Z
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 27
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getBackButtonState()Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    move-result-object v2

    .line 29
    .local v2, "state":Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;
    sget-object v5, Lcom/ironsource/sdk/handlers/BackButtonHandler$1;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$BackButtonState:[I

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2c

    .line 51
    :goto_14
    :pswitch_14
    return v4

    .line 38
    :pswitch_15
    :try_start_15
    invoke-static {p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object v1

    .line 39
    .local v1, "ssaPubAgt":Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    invoke-virtual {v1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getWebViewController()Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v3

    .line 40
    .local v3, "webViewController":Lcom/ironsource/sdk/controller/IronSourceWebView;
    if-eqz v3, :cond_24

    .line 42
    const-string v5, "back"

    invoke-virtual {v3, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->nativeNavigationPressed(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_26

    .line 44
    :cond_24
    const/4 v4, 0x1

    goto :goto_14

    .line 45
    .end local v1    # "ssaPubAgt":Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    .end local v3    # "webViewController":Lcom/ironsource/sdk/controller/IronSourceWebView;
    :catch_26
    move-exception v0

    .line 46
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    .line 29
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_14
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

###### Class com.ironsource.sdk.handlers.BackButtonHandler.AnonymousClass1 (com.ironsource.sdk.handlers.BackButtonHandler$1)
.class synthetic Lcom/ironsource/sdk/handlers/BackButtonHandler$1;
.super Ljava/lang/Object;
.source "BackButtonHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/handlers/BackButtonHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ironsource$sdk$data$SSAEnums$BackButtonState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 29
    invoke-static {}, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->values()[Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/sdk/handlers/BackButtonHandler$1;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$BackButtonState:[I

    :try_start_9
    sget-object v0, Lcom/ironsource/sdk/handlers/BackButtonHandler$1;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$BackButtonState:[I

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->None:Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/ironsource/sdk/handlers/BackButtonHandler$1;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$BackButtonState:[I

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->Device:Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/ironsource/sdk/handlers/BackButtonHandler$1;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$BackButtonState:[I

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->Controller:Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method
