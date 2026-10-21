###### Class com.ironsource.sdk.controller.InterstitialActivity (com.ironsource.sdk.controller.InterstitialActivity)
.class public Lcom/ironsource/sdk/controller/InterstitialActivity;
.super Lcom/ironsource/sdk/controller/ControllerActivity;
.source "InterstitialActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/sdk/controller/InterstitialActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/ironsource/sdk/controller/ControllerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    sget-object v0, Lcom/ironsource/sdk/controller/InterstitialActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 25
    invoke-super {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->onPause()V

    .line 26
    sget-object v0, Lcom/ironsource/sdk/controller/InterstitialActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 19
    invoke-super {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->onResume()V

    .line 20
    sget-object v0, Lcom/ironsource/sdk/controller/InterstitialActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method
