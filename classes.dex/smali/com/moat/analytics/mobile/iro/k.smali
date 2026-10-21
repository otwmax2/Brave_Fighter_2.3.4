###### Class com.moat.analytics.mobile.iro.k (com.moat.analytics.mobile.iro.k)
.class final Lcom/moat/analytics/mobile/iro/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static ˏ:Lcom/moat/analytics/mobile/iro/k;


# instance fields
.field private ʼ:Z

.field private ʽ:Landroid/location/Location;

.field private ˊ:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private ˋ:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private ˎ:Landroid/location/LocationManager;

.field private ॱ:Ljava/util/concurrent/ScheduledExecutorService;

.field private ᐝ:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/moat/analytics/mobile/iro/k;->ˏ:Lcom/moat/analytics/mobile/iro/k;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    :try_start_3
    invoke-static {}, Lcom/moat/analytics/mobile/iro/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/iro/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/iro/j;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/iro/j;->ˏ:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/iro/k;->ᐝ:Z

    .line 72
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/iro/k;->ᐝ:Z

    if-eqz v0, :cond_1a

    .line 73
    const/4 v0, 0x3

    const-string v1, "LocationManager"

    const-string v2, "Moat location services disabled"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    :goto_19
    return-void

    .line 75
    :cond_1a
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ॱ:Ljava/util/concurrent/ScheduledExecutorService;

    .line 76
    invoke-static {}, Lcom/moat/analytics/mobile/iro/a;->ˎ()Landroid/app/Application;

    move-result-object v0

    .line 77
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ˎ:Landroid/location/LocationManager;

    .line 78
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ˎ:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_49

    .line 79
    const/4 v0, 0x3

    const-string v1, "LocationManager"

    const-string v2, "Device has no location providers"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_43} :catch_44

    goto :goto_19

    .line 85
    :catch_44
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_19

    .line 81
    :cond_49
    :try_start_49
    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/k;->ˏ()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_44

    goto :goto_19
.end method

.method private ʻ()Landroid/location/Location;
    .registers 5

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 178
    :try_start_1
    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/k;->ˋॱ()Z

    move-result v1

    .line 179
    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/k;->ॱˋ()Z

    move-result v2

    .line 180
    if-eqz v1, :cond_22

    if-eqz v2, :cond_22

    .line 181
    iget-object v1, p0, Lcom/moat/analytics/mobile/iro/k;->ˎ:Landroid/location/LocationManager;

    const-string v2, "gps"

    .line 182
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iget-object v2, p0, Lcom/moat/analytics/mobile/iro/k;->ˎ:Landroid/location/LocationManager;

    const-string v3, "network"

    .line 183
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 181
    invoke-static {v1, v2}, Lcom/moat/analytics/mobile/iro/k;->ˊ(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    .line 195
    :cond_21
    :goto_21
    return-object v0

    .line 185
    :cond_22
    if-eqz v1, :cond_2d

    .line 186
    iget-object v1, p0, Lcom/moat/analytics/mobile/iro/k;->ˎ:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_21

    .line 188
    :cond_2d
    if-eqz v2, :cond_21

    .line 189
    iget-object v1, p0, Lcom/moat/analytics/mobile/iro/k;->ˎ:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_36
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_36} :catch_38

    move-result-object v0

    goto :goto_21

    .line 193
    :catch_38
    move-exception v1

    invoke-static {v1}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_21
.end method

.method private ʼ()V
    .registers 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ˊ:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ˊ:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 261
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ˊ:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ˊ:Ljava/util/concurrent/ScheduledFuture;

    .line 264
    :cond_15
    return-void
.end method

.method private ʽ()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 241
    const/4 v2, 0x3

    :try_start_3
    const-string v3, "LocationManager"

    const-string v4, "Stopping to update location"

    invoke-static {v2, v3, p0, v4}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2307
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 3302
    invoke-static {}, Lcom/moat/analytics/mobile/iro/a;->ˎ()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 3303
    invoke-static {v3, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_40

    move v2, v1

    .line 2307
    :goto_1b
    if-nez v2, :cond_30

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 4302
    invoke-static {}, Lcom/moat/analytics/mobile/iro/a;->ˎ()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 4303
    invoke-static {v3, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_42

    move v2, v1

    .line 2308
    :goto_2e
    if-eqz v2, :cond_31

    :cond_30
    move v0, v1

    .line 242
    :cond_31
    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ˎ:Landroid/location/LocationManager;

    if-eqz v0, :cond_3f

    .line 243
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ˎ:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/iro/k;->ʼ:Z
    :try_end_3f
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3f} :catch_44

    .line 250
    :cond_3f
    :goto_3f
    return-void

    :cond_40
    move v2, v0

    .line 3303
    goto :goto_1b

    :cond_42
    move v2, v0

    .line 4303
    goto :goto_2e

    .line 248
    :catch_44
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_3f
.end method

.method private static ˊ(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .registers 4

    .prologue
    .line 312
    invoke-static {p0}, Lcom/moat/analytics/mobile/iro/k;->ˋ(Landroid/location/Location;)Z

    move-result v0

    .line 313
    invoke-static {p1}, Lcom/moat/analytics/mobile/iro/k;->ˋ(Landroid/location/Location;)Z

    move-result v1

    .line 314
    if-nez v0, :cond_e

    .line 315
    if-nez v1, :cond_d

    .line 316
    const/4 p1, 0x0

    .line 326
    :cond_d
    :goto_d
    return-object p1

    .line 322
    :cond_e
    if-nez v1, :cond_12

    move-object p1, p0

    .line 323
    goto :goto_d

    .line 326
    :cond_12
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    move-object p1, p0

    goto :goto_d
.end method

.method static synthetic ˊ(Lcom/moat/analytics/mobile/iro/k;)V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/k;->ˏ()V

    return-void
.end method

.method private ˊॱ()V
    .registers 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ˋ:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ˋ:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 254
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ˋ:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ˋ:Ljava/util/concurrent/ScheduledFuture;

    .line 257
    :cond_15
    return-void
.end method

.method private ˋ(Z)V
    .registers 5

    .prologue
    .line 160
    const/4 v0, 0x3

    :try_start_1
    const-string v1, "LocationManager"

    const-string v2, "stopping location fetch"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/k;->ʽ()V

    .line 162
    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/k;->ˊॱ()V

    .line 163
    if-eqz p1, :cond_14

    .line 164
    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/k;->ˏॱ()V

    .line 172
    :goto_13
    return-void

    .line 167
    :cond_14
    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/k;->ʼ()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    goto :goto_13

    .line 170
    :catch_18
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_13
.end method

.method private static ˋ(Landroid/location/Location;)Z
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 332
    const/4 v1, 0x1

    .line 334
    if-nez p0, :cond_7

    .line 346
    :cond_6
    :goto_6
    return v0

    .line 337
    :cond_7
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_17

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_6

    .line 340
    :cond_17
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_6

    .line 7350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-float v2, v2

    .line 343
    const/high16 v3, 0x44160000    # 600.0f

    cmpl-float v2, v2, v3

    if-gez v2, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method private ˋॱ()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 290
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 5302
    invoke-static {}, Lcom/moat/analytics/mobile/iro/a;->ˎ()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 5303
    invoke-static {v3, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2a

    move v2, v0

    .line 290
    :goto_13
    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/moat/analytics/mobile/iro/k;->ˎ:Landroid/location/LocationManager;

    const-string v3, "gps"

    .line 291
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/moat/analytics/mobile/iro/k;->ˎ:Landroid/location/LocationManager;

    const-string v3, "gps"

    .line 292
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :goto_29
    return v0

    :cond_2a
    move v2, v1

    .line 5303
    goto :goto_13

    :cond_2c
    move v0, v1

    .line 292
    goto :goto_29
.end method

.method static ˎ()Lcom/moat/analytics/mobile/iro/k;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/moat/analytics/mobile/iro/k;->ˏ:Lcom/moat/analytics/mobile/iro/k;

    if-nez v0, :cond_b

    .line 63
    new-instance v0, Lcom/moat/analytics/mobile/iro/k;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/iro/k;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/iro/k;->ˏ:Lcom/moat/analytics/mobile/iro/k;

    .line 65
    :cond_b
    sget-object v0, Lcom/moat/analytics/mobile/iro/k;->ˏ:Lcom/moat/analytics/mobile/iro/k;

    return-object v0
.end method

.method static ˎ(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 354
    if-ne p0, p1, :cond_4

    .line 360
    :cond_3
    :goto_3
    return v0

    .line 357
    :cond_4
    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 360
    :cond_14
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private ˏ()V
    .registers 5

    .prologue
    .line 135
    :try_start_0
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/iro/k;->ᐝ:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ˎ:Landroid/location/LocationManager;

    if-nez v0, :cond_9

    .line 156
    :cond_8
    :goto_8
    return-void

    .line 138
    :cond_9
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/iro/k;->ʼ:Z

    if-eqz v0, :cond_15

    .line 139
    const/4 v0, 0x3

    const-string v1, "LocationManager"

    const-string v2, "already updating location"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    :cond_15
    const/4 v0, 0x3

    const-string v1, "LocationManager"

    const-string v2, "starting location fetch"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ʽ:Landroid/location/Location;

    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/k;->ʻ()Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/iro/k;->ˊ(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ʽ:Landroid/location/Location;

    .line 145
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ʽ:Landroid/location/Location;

    if-eqz v0, :cond_51

    .line 146
    const/4 v0, 0x3

    const-string v1, "LocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Have a valid location, won\'t fetch = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/moat/analytics/mobile/iro/k;->ʽ:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/k;->ˏॱ()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4c

    goto :goto_8

    .line 154
    :catch_4c
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_8

    .line 151
    :cond_51
    :try_start_51
    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/k;->ᐝ()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_4c

    goto :goto_8
.end method

.method private ˏॱ()V
    .registers 7

    .prologue
    const/high16 v0, 0x44160000    # 600.0f

    .line 267
    const/4 v1, 0x3

    const-string v2, "LocationManager"

    const-string v3, "Resetting fetch timer"

    invoke-static {v1, v2, p0, v3}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/k;->ʼ()V

    .line 270
    iget-object v1, p0, Lcom/moat/analytics/mobile/iro/k;->ʽ:Landroid/location/Location;

    if-eqz v1, :cond_26

    .line 271
    iget-object v1, p0, Lcom/moat/analytics/mobile/iro/k;->ʽ:Landroid/location/Location;

    .line 4350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-float v1, v2

    .line 272
    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 274
    :cond_26
    float-to-long v0, v0

    .line 276
    iget-object v2, p0, Lcom/moat/analytics/mobile/iro/k;->ॱ:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/moat/analytics/mobile/iro/k$1;

    invoke-direct {v3, p0}, Lcom/moat/analytics/mobile/iro/k$1;-><init>(Lcom/moat/analytics/mobile/iro/k;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ˊ:Ljava/util/concurrent/ScheduledFuture;

    .line 286
    return-void
.end method

.method static synthetic ॱ(Lcom/moat/analytics/mobile/iro/k;)V
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/iro/k;->ˋ(Z)V

    return-void
.end method

.method private ॱˋ()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5307
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 6302
    invoke-static {}, Lcom/moat/analytics/mobile/iro/a;->ˎ()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 6303
    invoke-static {v3, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_40

    move v2, v0

    .line 5307
    :goto_13
    if-nez v2, :cond_28

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 7302
    invoke-static {}, Lcom/moat/analytics/mobile/iro/a;->ˎ()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 7303
    invoke-static {v3, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_42

    move v2, v0

    .line 5308
    :goto_26
    if-eqz v2, :cond_44

    :cond_28
    move v2, v0

    .line 296
    :goto_29
    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/moat/analytics/mobile/iro/k;->ˎ:Landroid/location/LocationManager;

    const-string v3, "network"

    .line 297
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/moat/analytics/mobile/iro/k;->ˎ:Landroid/location/LocationManager;

    const-string v3, "network"

    .line 298
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    :goto_3f
    return v0

    :cond_40
    move v2, v1

    .line 6303
    goto :goto_13

    :cond_42
    move v2, v1

    .line 7303
    goto :goto_26

    :cond_44
    move v2, v1

    .line 5308
    goto :goto_29

    :cond_46
    move v0, v1

    .line 298
    goto :goto_3f
.end method

.method private ᐝ()V
    .registers 8

    .prologue
    .line 201
    :try_start_0
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/iro/k;->ʼ:Z

    if-nez v0, :cond_64

    .line 202
    const/4 v0, 0x3

    const-string v1, "LocationManager"

    const-string v2, "Attempting to start update"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/k;->ˋॱ()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 204
    const/4 v0, 0x3

    const-string v1, "LocationManager"

    const-string v2, "start updating gps location"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ˎ:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 207
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    .line 206
    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/iro/k;->ʼ:Z

    .line 210
    :cond_2c
    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/k;->ॱˋ()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 211
    const/4 v0, 0x3

    const-string v1, "LocationManager"

    const-string v2, "start updating network location"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ˎ:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 214
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    .line 213
    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/iro/k;->ʼ:Z

    .line 217
    :cond_4c
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/iro/k;->ʼ:Z

    if-eqz v0, :cond_64

    .line 220
    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/k;->ˊॱ()V

    .line 221
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ॱ:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/moat/analytics/mobile/iro/k$5;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/iro/k$5;-><init>(Lcom/moat/analytics/mobile/iro/k;)V

    const-wide/16 v2, 0x3c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ˋ:Ljava/util/concurrent/ScheduledFuture;
    :try_end_64
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_64} :catch_65

    .line 236
    :cond_64
    :goto_64
    return-void

    .line 234
    :catch_65
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_64
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .registers 6

    .prologue
    .line 110
    const/4 v0, 0x3

    :try_start_1
    const-string v1, "LocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received an updated location = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-float v0, v0

    .line 112
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_50

    const/high16 v1, 0x44160000    # 600.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_50

    .line 114
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ʽ:Landroid/location/Location;

    invoke-static {v0, p1}, Lcom/moat/analytics/mobile/iro/k;->ˊ(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ʽ:Landroid/location/Location;

    .line 115
    const/4 v0, 0x3

    const-string v1, "LocationManager"

    const-string v2, "fetchCompleted"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/iro/k;->ˋ(Z)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_50} :catch_51

    .line 121
    :cond_50
    :goto_50
    return-void

    .line 119
    :catch_51
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_50
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 130
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 127
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 124
    return-void
.end method

.method final ˊ()V
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/iro/k;->ˋ(Z)V

    .line 103
    return-void
.end method

.method final ˋ()V
    .registers 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/k;->ˏ()V

    .line 99
    return-void
.end method

.method final ॱ()Landroid/location/Location;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/iro/k;->ᐝ:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ˎ:Landroid/location/LocationManager;

    if-nez v0, :cond_a

    .line 91
    :cond_8
    const/4 v0, 0x0

    .line 93
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/k;->ʽ:Landroid/location/Location;

    goto :goto_9
.end method

###### Class com.moat.analytics.mobile.iro.k.AnonymousClass1 (com.moat.analytics.mobile.iro.k$1)
.class final Lcom/moat/analytics/mobile/iro/k$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/iro/k;->ˏॱ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ˋ:Lcom/moat/analytics/mobile/iro/k;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/iro/k;)V
    .registers 2

    .prologue
    .line 276
    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/k$1;->ˋ:Lcom/moat/analytics/mobile/iro/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 279
    const/4 v0, 0x3

    :try_start_1
    const-string v1, "LocationManager"

    const-string v2, "fetchTimerCompleted"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/k$1;->ˋ:Lcom/moat/analytics/mobile/iro/k;

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/k;->ˊ(Lcom/moat/analytics/mobile/iro/k;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_e

    .line 284
    :goto_d
    return-void

    .line 282
    :catch_e
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_d
.end method

###### Class com.moat.analytics.mobile.iro.k.AnonymousClass5 (com.moat.analytics.mobile.iro.k$5)
.class final Lcom/moat/analytics/mobile/iro/k$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/iro/k;->ᐝ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ॱ:Lcom/moat/analytics/mobile/iro/k;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/iro/k;)V
    .registers 2

    .prologue
    .line 221
    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/k$5;->ॱ:Lcom/moat/analytics/mobile/iro/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 224
    const/4 v0, 0x3

    :try_start_1
    const-string v1, "LocationManager"

    const-string v2, "fetchTimedOut"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/k$5;->ॱ:Lcom/moat/analytics/mobile/iro/k;

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/k;->ॱ(Lcom/moat/analytics/mobile/iro/k;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_e

    .line 229
    :goto_d
    return-void

    .line 227
    :catch_e
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_d
.end method
