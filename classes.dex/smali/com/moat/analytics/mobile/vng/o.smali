###### Class com.moat.analytics.mobile.vng.o (com.moat.analytics.mobile.vng.o)
.class Lcom/moat/analytics/mobile/vng/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static a:Lcom/moat/analytics/mobile/vng/o;


# instance fields
.field private b:Ljava/util/concurrent/ScheduledExecutorService;

.field private c:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private e:Landroid/location/LocationManager;

.field private f:Z

.field private g:Landroid/location/Location;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/moat/analytics/mobile/vng/o;->a:Lcom/moat/analytics/mobile/vng/o;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    invoke-static {}, Lcom/moat/analytics/mobile/vng/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/vng/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/k;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/vng/k;->c:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/o;->f:Z

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/o;->f:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x3

    const-string v1, "LocationManager"

    const-string v2, "Moat location services disabled"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Lcom/moat/analytics/mobile/vng/a;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->e:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->e:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_49

    const/4 v0, 0x3

    const-string v1, "LocationManager"

    const-string v2, "Device has no location providers"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_43} :catch_44

    goto :goto_19

    :catch_44
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_19

    :cond_49
    :try_start_49
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/o;->e()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_44

    goto :goto_19
.end method

.method static a()Lcom/moat/analytics/mobile/vng/o;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/vng/o;->a:Lcom/moat/analytics/mobile/vng/o;

    if-nez v0, :cond_b

    new-instance v0, Lcom/moat/analytics/mobile/vng/o;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/o;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/vng/o;->a:Lcom/moat/analytics/mobile/vng/o;

    :cond_b
    sget-object v0, Lcom/moat/analytics/mobile/vng/o;->a:Lcom/moat/analytics/mobile/vng/o;

    return-object v0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/vng/o;)V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/o;->e()V

    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/vng/o;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/o;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 5

    const/4 v0, 0x3

    :try_start_1
    const-string v1, "LocationManager"

    const-string v2, "stopping location fetch"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/o;->h()V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/o;->i()V

    if-eqz p1, :cond_14

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/o;->k()V

    :goto_13
    return-void

    :cond_14
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/o;->j()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    goto :goto_13

    :catch_18
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_13
.end method

.method private static a(Landroid/location/Location;)Z
    .registers 7

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_17

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_6

    :cond_17
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_6

    invoke-static {p0}, Lcom/moat/analytics/mobile/vng/o;->b(Landroid/location/Location;)F

    move-result v2

    const/high16 v3, 0x44160000    # 600.0f

    cmpl-float v2, v2, v3

    if-gez v2, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method static a(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    :cond_14
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/moat/analytics/mobile/vng/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static b(Landroid/location/Location;)F
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-float v0, v0

    return v0
.end method

.method private static b(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .registers 4

    invoke-static {p0}, Lcom/moat/analytics/mobile/vng/o;->a(Landroid/location/Location;)Z

    move-result v0

    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/o;->a(Landroid/location/Location;)Z

    move-result v1

    if-nez v0, :cond_10

    if-nez v1, :cond_e

    const/4 p0, 0x0

    :cond_d
    :goto_d
    return-object p0

    :cond_e
    move-object p0, p1

    goto :goto_d

    :cond_10
    if-eqz v1, :cond_d

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_d

    move-object p0, p1

    goto :goto_d
.end method

.method private e()V
    .registers 6

    :try_start_0
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/o;->f:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->e:Landroid/location/LocationManager;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/o;->h:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x3

    const-string v1, "LocationManager"

    const-string v2, "already updating location"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_15
    const/4 v0, 0x3

    const-string v1, "LocationManager"

    const-string v2, "starting location fetch"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/o;->b()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_49

    const/4 v1, 0x3

    const-string v2, "LocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Have a valid location, won\'t fetch = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, p0, v0}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/o;->k()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_8

    :catch_44
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_8

    :cond_49
    :try_start_49
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/o;->g()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_44

    goto :goto_8
.end method

.method private f()Landroid/location/Location;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/o;->l()Z

    move-result v1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/o;->m()Z

    move-result v2

    if-eqz v1, :cond_22

    if-eqz v2, :cond_22

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/o;->e:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/o;->e:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/moat/analytics/mobile/vng/o;->b(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    :cond_21
    :goto_21
    return-object v0

    :cond_22
    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/o;->e:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_21

    :cond_2d
    if-eqz v2, :cond_21

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/o;->e:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_36
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_36} :catch_38

    move-result-object v0

    goto :goto_21

    :catch_38
    move-exception v1

    invoke-static {v1}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_21
.end method

.method private g()V
    .registers 8

    :try_start_0
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/o;->h:Z

    if-nez v0, :cond_64

    const/4 v0, 0x3

    const-string v1, "LocationManager"

    const-string v2, "Attempting to start update"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/o;->l()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x3

    const-string v1, "LocationManager"

    const-string v2, "start updating gps location"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->e:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/o;->h:Z

    :cond_2c
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/o;->m()Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x3

    const-string v1, "LocationManager"

    const-string v2, "start updating network location"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->e:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/o;->h:Z

    :cond_4c
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/o;->h:Z

    if-eqz v0, :cond_64

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/o;->i()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/moat/analytics/mobile/vng/o$1;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/vng/o$1;-><init>(Lcom/moat/analytics/mobile/vng/o;)V

    const-wide/16 v2, 0x3c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->d:Ljava/util/concurrent/ScheduledFuture;
    :try_end_64
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_64} :catch_65

    :cond_64
    :goto_64
    return-void

    :catch_65
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_64
.end method

.method private h()V
    .registers 4

    const/4 v0, 0x3

    :try_start_1
    const-string v1, "LocationManager"

    const-string v2, "Stopping to update location"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/o;->n()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->e:Landroid/location/LocationManager;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->e:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/o;->h:Z
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_1a
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->d:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->d:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->d:Ljava/util/concurrent/ScheduledFuture;

    :cond_15
    return-void
.end method

.method private j()V
    .registers 3

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->c:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->c:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->c:Ljava/util/concurrent/ScheduledFuture;

    :cond_15
    return-void
.end method

.method private k()V
    .registers 6

    const/high16 v0, 0x44160000    # 600.0f

    const/4 v1, 0x3

    const-string v2, "LocationManager"

    const-string v3, "Resetting fetch timer"

    invoke-static {v1, v2, p0, v3}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/o;->j()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/o;->b()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-static {v1}, Lcom/moat/analytics/mobile/vng/o;->b(Landroid/location/Location;)F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_1d
    float-to-long v0, v0

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/o;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/moat/analytics/mobile/vng/o$2;

    invoke-direct {v3, p0}, Lcom/moat/analytics/mobile/vng/o$2;-><init>(Lcom/moat/analytics/mobile/vng/o;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private l()Z
    .registers 3

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->e:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->e:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private m()Z
    .registers 3

    invoke-static {}, Lcom/moat/analytics/mobile/vng/o;->n()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->e:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->e:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private static n()Z
    .registers 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method b()Landroid/location/Location;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/moat/analytics/mobile/vng/o;->f:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/o;->e:Landroid/location/LocationManager;

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/o;->g:Landroid/location/Location;

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/o;->f()Landroid/location/Location;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/moat/analytics/mobile/vng/o;->b(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/moat/analytics/mobile/vng/o;->g:Landroid/location/Location;

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->g:Landroid/location/Location;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_19

    goto :goto_9

    :catch_19
    move-exception v1

    invoke-static {v1}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_9
.end method

.method c()V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/o;->e()V

    return-void
.end method

.method d()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/vng/o;->a(Z)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6

    const/4 v0, 0x3

    :try_start_1
    const-string v1, "LocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received an updated location = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/o;->b(Landroid/location/Location;)F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4b

    const/high16 v1, 0x44160000    # 600.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4b

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->g:Landroid/location/Location;

    invoke-static {v0, p1}, Lcom/moat/analytics/mobile/vng/o;->b(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/o;->g:Landroid/location/Location;

    const/4 v0, 0x3

    const-string v1, "LocationManager"

    const-string v2, "fetchCompleted"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/vng/o;->a(Z)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4b} :catch_4c

    :cond_4b
    :goto_4b
    return-void

    :catch_4c
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_4b
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

###### Class com.moat.analytics.mobile.vng.o.AnonymousClass1 (com.moat.analytics.mobile.vng.o$1)
.class Lcom/moat/analytics/mobile/vng/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/o;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/o;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/o;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/o$1;->a:Lcom/moat/analytics/mobile/vng/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x3

    :try_start_1
    const-string v1, "LocationManager"

    const-string v2, "fetchTimedOut"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/o$1;->a:Lcom/moat/analytics/mobile/vng/o;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/vng/o;->a(Lcom/moat/analytics/mobile/vng/o;Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_e
.end method

###### Class com.moat.analytics.mobile.vng.o.AnonymousClass2 (com.moat.analytics.mobile.vng.o$2)
.class Lcom/moat/analytics/mobile/vng/o$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/o;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/o;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/o;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/o$2;->a:Lcom/moat/analytics/mobile/vng/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x3

    :try_start_1
    const-string v1, "LocationManager"

    const-string v2, "fetchTimerCompleted"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/o$2;->a:Lcom/moat/analytics/mobile/vng/o;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/o;->a(Lcom/moat/analytics/mobile/vng/o;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_d
.end method
