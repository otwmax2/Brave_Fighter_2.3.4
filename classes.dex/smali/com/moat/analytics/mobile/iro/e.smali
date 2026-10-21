###### Class com.moat.analytics.mobile.iro.e (com.moat.analytics.mobile.iro.e)
.class final Lcom/moat/analytics/mobile/iro/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ˊ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static ˏ:Lcom/moat/analytics/mobile/iro/WebAdTracker;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/iro/e;->ˊ:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ˊ(Landroid/app/Activity;)V
    .registers 6

    .prologue
    .line 32
    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/iro/t;->ˋ()Lcom/moat/analytics/mobile/iro/t;

    move-result-object v0

    .line 33
    iget v0, v0, Lcom/moat/analytics/mobile/iro/t;->ˋ:I

    sget v1, Lcom/moat/analytics/mobile/iro/t$c;->ˊ:I

    if-ne v0, v1, :cond_b

    .line 59
    :cond_a
    :goto_a
    return-void

    .line 1062
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1063
    const/4 v1, 0x3

    const-string v2, "GMAInterstitialHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Activity name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, p0, v3}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1064
    const-string v1, "com.google.android.gms.ads.AdActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 37
    if-eqz v0, :cond_91

    .line 39
    sget-object v0, Lcom/moat/analytics/mobile/iro/e;->ˊ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_40

    sget-object v0, Lcom/moat/analytics/mobile/iro/e;->ˊ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_a

    .line 40
    :cond_40
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 41
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_a

    .line 42
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/iro/v;->ˋ(Landroid/view/ViewGroup;Z)Lcom/moat/analytics/mobile/iro/base/functional/Optional;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/moat/analytics/mobile/iro/base/functional/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 44
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/moat/analytics/mobile/iro/e;->ˊ:Ljava/lang/ref/WeakReference;

    .line 45
    invoke-virtual {v0}, Lcom/moat/analytics/mobile/iro/base/functional/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 1068
    const/4 v1, 0x3

    const-string v2, "GMAInterstitialHelper"

    sget-object v3, Lcom/moat/analytics/mobile/iro/e;->ˊ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Starting to track GMA interstitial"

    invoke-static {v1, v2, v3, v4}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1069
    invoke-static {}, Lcom/moat/analytics/mobile/iro/MoatFactory;->create()Lcom/moat/analytics/mobile/iro/MoatFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/moat/analytics/mobile/iro/MoatFactory;->createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/iro/WebAdTracker;

    move-result-object v0

    .line 1070
    sput-object v0, Lcom/moat/analytics/mobile/iro/e;->ˏ:Lcom/moat/analytics/mobile/iro/WebAdTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/iro/WebAdTracker;->startTracking()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_81} :catch_82

    goto :goto_a

    .line 57
    :catch_82
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_a

    .line 47
    :cond_87
    const/4 v0, 0x3

    :try_start_88
    const-string v1, "GMAInterstitialHelper"

    const-string v2, "Sorry, no WebView in this activity"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1074
    :cond_91
    sget-object v0, Lcom/moat/analytics/mobile/iro/e;->ˏ:Lcom/moat/analytics/mobile/iro/WebAdTracker;

    if-eqz v0, :cond_ab

    .line 1075
    const/4 v0, 0x3

    const-string v1, "GMAInterstitialHelper"

    sget-object v2, Lcom/moat/analytics/mobile/iro/e;->ˊ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Stopping to track GMA interstitial"

    invoke-static {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1076
    sget-object v0, Lcom/moat/analytics/mobile/iro/e;->ˏ:Lcom/moat/analytics/mobile/iro/WebAdTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/iro/WebAdTracker;->stopTracking()V

    .line 1077
    const/4 v0, 0x0

    sput-object v0, Lcom/moat/analytics/mobile/iro/e;->ˏ:Lcom/moat/analytics/mobile/iro/WebAdTracker;

    .line 54
    :cond_ab
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/iro/e;->ˊ:Ljava/lang/ref/WeakReference;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_b3} :catch_82

    goto/16 :goto_a
.end method
