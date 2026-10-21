###### Class com.moat.analytics.mobile.vng.s (com.moat.analytics.mobile.vng.s)
.class Lcom/moat/analytics/mobile/vng/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/vng/s$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()D
    .registers 4
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/vng/a;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-static {}, Lcom/moat/analytics/mobile/vng/s;->e()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_1a

    move-result v0

    int-to-double v2, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    :goto_19
    return-wide v0

    :catch_1a
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    const-wide/16 v0, 0x0

    goto :goto_19
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/moat/analytics/mobile/vng/s;->a:Ljava/lang/String;

    return-object p0
.end method

.method static a(Landroid/content/Context;)V
    .registers 2

    :try_start_0
    new-instance v0, Lcom/moat/analytics/mobile/vng/s$1;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/vng/s$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_8
.end method

.method static b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/vng/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method static c()Landroid/content/Context;
    .registers 1

    invoke-static {}, Lcom/moat/analytics/mobile/vng/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/vng/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/k;

    iget-object v0, v0, Lcom/moat/analytics/mobile/vng/k;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/vng/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static e()I
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/vng/a;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    move-result v0

    :goto_11
    return v0

    :catch_12
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_11
.end method

###### Class com.moat.analytics.mobile.vng.s.AnonymousClass1 (com.moat.analytics.mobile.vng.s$1)
.class final Lcom/moat/analytics/mobile/vng/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/s;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/s$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/s$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    if-nez v1, :cond_31

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/s;->a(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x3

    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieved Advertising ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/moat/analytics/mobile/vng/s;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_30
    return-void

    :cond_31
    const/4 v0, 0x3

    const-string v1, "Util"

    const-string v2, "User has limited ad tracking"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    goto :goto_30

    :catch_3a
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_30
.end method

###### Class com.moat.analytics.mobile.vng.s.a (com.moat.analytics.mobile.vng.s$a)
.class Lcom/moat/analytics/mobile/vng/s$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/s$a;->a:Z

    const-string v0, "_unknown_"

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/s$a;->b:Ljava/lang/String;

    const-string v0, "_unknown_"

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/s$a;->c:Ljava/lang/String;

    return-void
.end method

.method private c()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/vng/s;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/moat/analytics/mobile/vng/s$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/s$a;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/s$a;->a:Z

    :goto_21
    return-void

    :cond_22
    const/4 v0, 0x3

    const-string v1, "Util"

    const-string v2, "Can\'t get app name, appContext is null."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_21

    :catch_2b
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_21
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/s$a;->a:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/s$a;->b:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/s$a;->c()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/s$a;->b:Ljava/lang/String;

    goto :goto_6
.end method

.method b()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/s$a;->a:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/s$a;->c:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/s$a;->c()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/s$a;->c:Ljava/lang/String;

    goto :goto_6
.end method
