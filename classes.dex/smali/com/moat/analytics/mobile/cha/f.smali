###### Class com.moat.analytics.mobile.cha.f (com.moat.analytics.mobile.cha.f)
.class final Lcom/moat/analytics/mobile/cha/f;
.super Lcom/moat/analytics/mobile/cha/MoatAnalytics;
.source "SourceFile"

# interfaces
.implements Lcom/moat/analytics/mobile/cha/t$b;


# instance fields
.field private ʻ:Z

.field private ʼ:Ljava/lang/String;

.field private ʽ:Lcom/moat/analytics/mobile/cha/MoatOptions;

.field ˊ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field ˋ:Z

.field ˎ:Z

.field ˏ:Z

.field ॱ:Lcom/moat/analytics/mobile/cha/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/MoatAnalytics;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/f;->ˎ:Z

    .line 24
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/f;->ˏ:Z

    .line 25
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/f;->ˋ:Z

    .line 26
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/f;->ʻ:Z

    return-void
.end method

.method private ˏ()V
    .registers 5
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/f;->ॱ:Lcom/moat/analytics/mobile/cha/a;

    if-nez v0, :cond_45

    .line 89
    new-instance v0, Lcom/moat/analytics/mobile/cha/a;

    invoke-static {}, Lcom/moat/analytics/mobile/cha/c;->ˏ()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/moat/analytics/mobile/cha/a$d;->ˏ:I

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/cha/a;-><init>(Landroid/app/Application;I)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/f;->ॱ:Lcom/moat/analytics/mobile/cha/a;

    .line 90
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/f;->ॱ:Lcom/moat/analytics/mobile/cha/a;

    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/f;->ʼ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x3

    const-string v1, "Analytics"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Preparing native display tracking with partner code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/moat/analytics/mobile/cha/f;->ʼ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    const-string v0, "[SUCCESS] "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Prepared for native display tracking with partner code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/f;->ʼ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_45
    return-void
.end method


# virtual methods
.method public final prepareNativeDisplayTracking(Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 50
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/f;->ʼ:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˏ()Lcom/moat/analytics/mobile/cha/t;

    move-result-object v0

    iget v0, v0, Lcom/moat/analytics/mobile/cha/t;->ˎ:I

    sget v1, Lcom/moat/analytics/mobile/cha/t$a;->ॱ:I

    if-ne v0, v1, :cond_d

    .line 59
    :goto_c
    return-void

    .line 55
    :cond_d
    :try_start_d
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/f;->ˏ()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_c

    .line 57
    :catch_11
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto :goto_c
.end method

.method public final start(Landroid/app/Application;)V
    .registers 3

    .prologue
    .line 44
    new-instance v0, Lcom/moat/analytics/mobile/cha/MoatOptions;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/cha/MoatOptions;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/moat/analytics/mobile/cha/f;->start(Lcom/moat/analytics/mobile/cha/MoatOptions;Landroid/app/Application;)V

    .line 45
    return-void
.end method

.method public final start(Lcom/moat/analytics/mobile/cha/MoatOptions;Landroid/app/Application;)V
    .registers 6

    .prologue
    .line 36
    .line 1062
    :try_start_0
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/f;->ʻ:Z

    if-eqz v0, :cond_d

    .line 1063
    const/4 v0, 0x3

    const-string v1, "Analytics"

    const-string v2, "Moat SDK has already been started."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1064
    :goto_c
    return-void

    .line 1066
    :cond_d
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/f;->ʽ:Lcom/moat/analytics/mobile/cha/MoatOptions;

    .line 1067
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˏ()Lcom/moat/analytics/mobile/cha/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/cha/t;->ˎ()V

    .line 1068
    iget-boolean v0, p1, Lcom/moat/analytics/mobile/cha/MoatOptions;->disableLocationServices:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/f;->ˋ:Z

    .line 1069
    if-nez p2, :cond_29

    .line 1070
    new-instance v0, Lcom/moat/analytics/mobile/cha/o;

    const-string v1, "Moat Analytics SDK didn\'t start, application was null"

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_24

    .line 38
    :catch_24
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto :goto_c

    .line 1072
    :cond_29
    :try_start_29
    iget-boolean v0, p1, Lcom/moat/analytics/mobile/cha/MoatOptions;->loggingEnabled:Z

    if-eqz v0, :cond_3a

    invoke-virtual {p2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/r;->ˋ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/f;->ˎ:Z

    .line 1075
    :cond_3a
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/f;->ˊ:Ljava/lang/ref/WeakReference;

    .line 1076
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/f;->ʻ:Z

    .line 1077
    iget-boolean v0, p1, Lcom/moat/analytics/mobile/cha/MoatOptions;->autoTrackGMAInterstitials:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/f;->ˏ:Z

    .line 1078
    invoke-static {p2}, Lcom/moat/analytics/mobile/cha/c;->ॱ(Landroid/app/Application;)V

    .line 1079
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˏ()Lcom/moat/analytics/mobile/cha/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/cha/t;->ˊ(Lcom/moat/analytics/mobile/cha/t$b;)V

    .line 1080
    iget-boolean v0, p1, Lcom/moat/analytics/mobile/cha/MoatOptions;->disableAdIdCollection:Z

    if-nez v0, :cond_5d

    .line 1081
    invoke-static {p2}, Lcom/moat/analytics/mobile/cha/r;->ˎ(Landroid/app/Application;)V

    .line 1083
    :cond_5d
    const-string v0, "[SUCCESS] "

    const-string v1, "Moat Analytics SDK Version 2.4.1 started"

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_64} :catch_24

    goto :goto_c
.end method

.method final ˊ()Z
    .registers 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/f;->ʻ:Z

    return v0
.end method

.method final ˋ()Z
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/f;->ʽ:Lcom/moat/analytics/mobile/cha/MoatOptions;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/f;->ʽ:Lcom/moat/analytics/mobile/cha/MoatOptions;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/cha/MoatOptions;->disableLocationServices:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final ˎ()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Lcom/moat/analytics/mobile/cha/o;->ॱ()V

    .line 108
    invoke-static {}, Lcom/moat/analytics/mobile/cha/n;->ˏ()Lcom/moat/analytics/mobile/cha/n;

    .line 109
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/f;->ʼ:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 111
    :try_start_a
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/f;->ˏ()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    .line 116
    :cond_d
    :goto_d
    return-void

    .line 113
    :catch_e
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto :goto_d
.end method
