###### Class com.chartboost.sdk.f (com.chartboost.sdk.f)
.class Lcom/chartboost/sdk/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Z

.field b:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field c:Lcom/chartboost/sdk/Chartboost$CBMediation;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

.field g:Lcom/chartboost/sdk/ChartboostDelegate;

.field h:Landroid/app/Activity;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field private final k:I


# direct methods
.method constructor <init>(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/f;->a:Z

    .line 55
    iput-object v1, p0, Lcom/chartboost/sdk/f;->b:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 56
    iput-object v1, p0, Lcom/chartboost/sdk/f;->c:Lcom/chartboost/sdk/Chartboost$CBMediation;

    .line 57
    iput-object v1, p0, Lcom/chartboost/sdk/f;->d:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/chartboost/sdk/f;->e:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .line 60
    iput-object v1, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/ChartboostDelegate;

    .line 61
    iput-object v1, p0, Lcom/chartboost/sdk/f;->h:Landroid/app/Activity;

    .line 62
    iput-object v1, p0, Lcom/chartboost/sdk/f;->i:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/chartboost/sdk/f;->j:Ljava/lang/String;

    .line 66
    iput p1, p0, Lcom/chartboost/sdk/f;->k:I

    .line 67
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 72
    :try_start_1
    iget v0, p0, Lcom/chartboost/sdk/f;->k:I

    packed-switch v0, :pswitch_data_160

    .line 181
    :cond_6
    :goto_6
    :pswitch_6
    return-void

    .line 74
    :pswitch_7
    iget-boolean v0, p0, Lcom/chartboost/sdk/f;->a:Z

    sput-boolean v0, Lcom/chartboost/sdk/i;->u:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    goto :goto_6

    .line 178
    :catch_c
    move-exception v0

    .line 179
    const-class v1, Lcom/chartboost/sdk/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/chartboost/sdk/f;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_6

    .line 78
    :pswitch_2e
    :try_start_2e
    iget-object v0, p0, Lcom/chartboost/sdk/f;->c:Lcom/chartboost/sdk/Chartboost$CBMediation;

    sput-object v0, Lcom/chartboost/sdk/i;->i:Lcom/chartboost/sdk/Chartboost$CBMediation;

    .line 79
    iget-object v0, p0, Lcom/chartboost/sdk/f;->d:Ljava/lang/String;

    sput-object v0, Lcom/chartboost/sdk/i;->j:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/chartboost/sdk/i;->i:Lcom/chartboost/sdk/Chartboost$CBMediation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/i;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/i;->h:Ljava/lang/String;

    goto :goto_6

    .line 85
    :pswitch_54
    iget-object v0, p0, Lcom/chartboost/sdk/f;->b:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-nez v0, :cond_60

    .line 86
    const-string v0, "ChartboostCommand"

    const-string v1, "Pass a valid CBFramework enum value"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 90
    :cond_60
    iget-object v0, p0, Lcom/chartboost/sdk/f;->b:Lcom/chartboost/sdk/Chartboost$CBFramework;

    sput-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 91
    iget-object v0, p0, Lcom/chartboost/sdk/f;->d:Ljava/lang/String;

    sput-object v0, Lcom/chartboost/sdk/i;->e:Ljava/lang/String;

    .line 92
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/chartboost/sdk/f;->b:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/chartboost/sdk/f;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/i;->f:Ljava/lang/String;

    goto :goto_6

    .line 96
    :pswitch_7e
    iget-object v0, p0, Lcom/chartboost/sdk/f;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 100
    :pswitch_84
    iget-object v0, p0, Lcom/chartboost/sdk/f;->e:Ljava/lang/String;

    sput-object v0, Lcom/chartboost/sdk/i;->a:Ljava/lang/String;

    goto/16 :goto_6

    .line 104
    :pswitch_8a
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 106
    iget-object v0, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    goto/16 :goto_6

    .line 110
    :pswitch_96
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/ChartboostDelegate;

    sput-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    .line 111
    const-string v0, "SdkSettings.assignDelegate"

    iget-object v1, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/ChartboostDelegate;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 115
    :pswitch_a3
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-nez v0, :cond_6

    .line 116
    const-class v8, Lcom/chartboost/sdk/h;

    monitor-enter v8
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_ac} :catch_c

    .line 117
    :try_start_ac
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-nez v0, :cond_145

    .line 118
    iget-object v0, p0, Lcom/chartboost/sdk/f;->h:Landroid/app/Activity;

    if-nez v0, :cond_c3

    .line 119
    const-string v0, "ChartboostCommand"

    const-string v1, "Activity object is null. Please pass a valid activity object"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    monitor-exit v8

    goto/16 :goto_6

    .line 174
    :catchall_c0
    move-exception v0

    monitor-exit v8
    :try_end_c2
    .catchall {:try_start_ac .. :try_end_c2} :catchall_c0

    :try_start_c2
    throw v0
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c3} :catch_c

    .line 122
    :cond_c3
    :try_start_c3
    iget-object v0, p0, Lcom/chartboost/sdk/f;->h:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d5

    .line 123
    const-string v0, "ChartboostCommand"

    const-string v1, "Permissions not set correctly"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    monitor-exit v8

    goto/16 :goto_6

    .line 126
    :cond_d5
    iget-object v0, p0, Lcom/chartboost/sdk/f;->h:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e4

    .line 127
    const-string v0, "ChartboostCommand"

    const-string v2, "Please add CBImpressionActivity in AndroidManifest.xml following README.md instructions."

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_e4
    iget-object v0, p0, Lcom/chartboost/sdk/f;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f4

    iget-object v0, p0, Lcom/chartboost/sdk/f;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 130
    :cond_f4
    const-string v0, "ChartboostCommand"

    const-string v1, "AppId or AppSignature is null. Please pass a valid id\'s"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    monitor-exit v8

    goto/16 :goto_6

    .line 133
    :cond_fe
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v4

    .line 134
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    .line 135
    iget-object v6, v4, Lcom/chartboost/sdk/impl/s;->a:Landroid/os/Handler;

    .line 136
    invoke-static {}, Lcom/chartboost/sdk/impl/o;->a()V
    :try_end_10b
    .catchall {:try_start_c3 .. :try_end_10b} :catchall_c0

    .line 139
    const/4 v2, 0x0

    .line 144
    :try_start_10c
    invoke-static {}, Lcom/chartboost/sdk/impl/ac;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_116
    .catch Ljava/lang/Throwable; {:try_start_10c .. :try_end_116} :catch_148
    .catchall {:try_start_10c .. :try_end_116} :catchall_c0

    .line 145
    const/4 v3, 0x4

    :try_start_117
    invoke-static {v3}, Lcom/chartboost/sdk/impl/ac;->a(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/ExecutorService;
    :try_end_121
    .catch Ljava/lang/Throwable; {:try_start_117 .. :try_end_121} :catch_15e
    .catchall {:try_start_117 .. :try_end_121} :catchall_c0

    .line 159
    :try_start_121
    new-instance v0, Lcom/chartboost/sdk/h;

    iget-object v1, p0, Lcom/chartboost/sdk/f;->h:Landroid/app/Activity;

    iget-object v2, p0, Lcom/chartboost/sdk/f;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/f;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/h;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/s;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    .line 167
    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Lcom/chartboost/sdk/h;)V

    .line 169
    iget-object v1, v0, Lcom/chartboost/sdk/h;->c:Lcom/chartboost/sdk/Libraries/d;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/d;->a()V

    .line 170
    iget-object v1, v0, Lcom/chartboost/sdk/h;->b:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/l;->c()V

    .line 172
    new-instance v1, Lcom/chartboost/sdk/h$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/chartboost/sdk/h$a;-><init>(Lcom/chartboost/sdk/h;I)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    .line 174
    :cond_145
    monitor-exit v8

    goto/16 :goto_6

    .line 146
    :catch_148
    move-exception v0

    move-object v5, v1

    .line 148
    :goto_14a
    if-eqz v5, :cond_14f

    .line 149
    invoke-interface {v5}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 151
    :cond_14f
    if-eqz v1, :cond_154

    .line 152
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 154
    :cond_154
    const-string v1, "ChartboostCommand"

    const-string v2, "Unable to start threads"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    monitor-exit v8
    :try_end_15c
    .catchall {:try_start_121 .. :try_end_15c} :catchall_c0

    goto/16 :goto_6

    .line 146
    :catch_15e
    move-exception v0

    goto :goto_14a

    .line 72
    :pswitch_data_160
    .packed-switch 0x0
        :pswitch_a3
        :pswitch_7
        :pswitch_6
        :pswitch_2e
        :pswitch_54
        :pswitch_7e
        :pswitch_84
        :pswitch_8a
        :pswitch_96
    .end packed-switch
.end method
