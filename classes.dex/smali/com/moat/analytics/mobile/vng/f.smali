###### Class com.moat.analytics.mobile.vng.f (com.moat.analytics.mobile.vng.f)
.class Lcom/moat/analytics/mobile/vng/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/moat/analytics/mobile/vng/WebAdTracker;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/f;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .registers 4

    sget-object v0, Lcom/moat/analytics/mobile/vng/f;->a:Lcom/moat/analytics/mobile/vng/WebAdTracker;

    if-eqz v0, :cond_1a

    const/4 v0, 0x3

    const-string v1, "GMAInterstitialHelper"

    sget-object v2, Lcom/moat/analytics/mobile/vng/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Stopping to track GMA interstitial"

    invoke-static {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/moat/analytics/mobile/vng/f;->a:Lcom/moat/analytics/mobile/vng/WebAdTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/vng/WebAdTracker;->stopTracking()V

    const/4 v0, 0x0

    sput-object v0, Lcom/moat/analytics/mobile/vng/f;->a:Lcom/moat/analytics/mobile/vng/WebAdTracker;

    :cond_1a
    return-void
.end method

.method static a(Landroid/app/Activity;)V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->a()Lcom/moat/analytics/mobile/vng/w;

    move-result-object v0

    iget-object v0, v0, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    sget-object v1, Lcom/moat/analytics/mobile/vng/w$d;->a:Lcom/moat/analytics/mobile/vng/w$d;

    if-ne v0, v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-static {p0}, Lcom/moat/analytics/mobile/vng/f;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_58

    sget-object v0, Lcom/moat/analytics/mobile/vng/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/moat/analytics/mobile/vng/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_a

    :cond_21
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_a

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/ab;->a(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/vng/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/a/b/a;->c()Z

    move-result v1

    if-eqz v1, :cond_4f

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/moat/analytics/mobile/vng/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/a/b/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/f;->a(Landroid/webkit/WebView;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4a

    goto :goto_a

    :catch_4a
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_a

    :cond_4f
    const/4 v0, 0x3

    :try_start_50
    const-string v1, "GMAInterstitialHelper"

    const-string v2, "Sorry, no WebView in this activity"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    :cond_58
    invoke-static {}, Lcom/moat/analytics/mobile/vng/f;->a()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/f;->b:Ljava/lang/ref/WeakReference;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_63} :catch_4a

    goto :goto_a
.end method

.method private static a(Landroid/webkit/WebView;)V
    .registers 5

    const/4 v0, 0x3

    const-string v1, "GMAInterstitialHelper"

    sget-object v2, Lcom/moat/analytics/mobile/vng/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Starting to track GMA interstitial"

    invoke-static {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/MoatFactory;->create()Lcom/moat/analytics/mobile/vng/MoatFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/vng/MoatFactory;->createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/vng/WebAdTracker;

    move-result-object v0

    sput-object v0, Lcom/moat/analytics/mobile/vng/f;->a:Lcom/moat/analytics/mobile/vng/WebAdTracker;

    sget-object v0, Lcom/moat/analytics/mobile/vng/f;->a:Lcom/moat/analytics/mobile/vng/WebAdTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/vng/WebAdTracker;->startTracking()V

    return-void
.end method

.method private static b(Landroid/app/Activity;)Z
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "GMAInterstitialHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, p0, v3}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.ads.AdActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method
