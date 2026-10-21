###### Class com.vungle.publisher.env.AndroidDevice (com.vungle.publisher.env.AndroidDevice)
.class public Lcom/vungle/publisher/env/AndroidDevice;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/env/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field static a:I


# instance fields
.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lcom/vungle/publisher/lm;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Landroid/view/WindowManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Ljava/lang/String;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final k:Ljava/lang/String;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const/16 v0, 0x1388

    sput v0, Lcom/vungle/publisher/env/AndroidDevice;->a:I

    return-void
.end method

.method constructor <init>()V
    .registers 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->k:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->c()Lcom/vungle/publisher/inject/w;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/vungle/publisher/inject/w;->a(Lcom/vungle/publisher/env/AndroidDevice;)V

    .line 93
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->h()V

    .line 98
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/webkit/WebView;)V
    .registers 5

    .prologue
    .line 348
    invoke-static {p1}, Lcom/vungle/publisher/zo;->a(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/vungle/publisher/env/AndroidDevice;->h:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "defaultUserAgent"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 350
    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/vungle/publisher/env/AndroidDevice;->c:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->c()V

    .line 109
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->g()V

    .line 110
    return-void
.end method

.method a(Z)V
    .registers 2

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/vungle/publisher/env/AndroidDevice;->l:Z

    .line 257
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 353
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 354
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 139
    const-string v0, "VungleDevice"

    const-string v1, "have advertising id - not setting androidId"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_d
    return-void

    .line 142
    :cond_e
    const-string v0, "VungleDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting android ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iput-object p1, p0, Lcom/vungle/publisher/env/AndroidDevice;->d:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->g()V

    goto :goto_d
.end method

.method b()Z
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method c()V
    .registers 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 114
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->e()V

    .line 116
    :cond_f
    return-void
.end method

.method c(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 292
    .line 294
    :try_start_1
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_6} :catch_29
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_6} :catch_37

    move-result v2

    .line 295
    if-nez v2, :cond_27

    const/4 v0, 0x1

    .line 296
    :goto_a
    if-nez v0, :cond_26

    .line 297
    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Google Play Services not available: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_26} :catch_67
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_c .. :try_end_26} :catch_65

    .line 308
    :cond_26
    :goto_26
    return v0

    :cond_27
    move v0, v1

    .line 295
    goto :goto_a

    .line 300
    :catch_29
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 302
    :goto_2d
    const-string v2, "VungleConfig"

    invoke-static {v1}, Lcom/vungle/publisher/zb;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 304
    :catch_37
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 305
    :goto_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {p1, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26

    .line 304
    :catch_65
    move-exception v1

    goto :goto_3b

    .line 300
    :catch_67
    move-exception v1

    goto :goto_2d
.end method

.method public d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->h()V

    .line 121
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->f()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->b()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 122
    const-string v0, "VungleDevice"

    const-string v1, "have advertising and Android ID"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->e()V

    .line 125
    :cond_19
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->d:Ljava/lang/String;

    return-object v0
.end method

.method e()V
    .registers 3

    .prologue
    .line 129
    const-string v0, "VungleDevice"

    const-string v1, "clearing Android ID"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->d:Ljava/lang/String;

    .line 131
    return-void
.end method

.method f()Z
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method g()V
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 150
    if-nez v0, :cond_12

    .line 151
    iget-object v1, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 152
    :try_start_c
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 153
    monitor-exit v1

    .line 155
    :cond_12
    return-void

    .line 153
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v0
.end method

.method h()V
    .registers 7

    .prologue
    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcom/vungle/publisher/env/AndroidDevice;->a:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 161
    iget-object v2, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_3f

    .line 162
    :try_start_13
    const-string v3, "VungleDevice"

    const-string v4, "waiting for device ID"

    invoke-static {v3, v4}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_1a
    iget-object v3, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_4e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_3c

    move-result-wide v4

    cmp-long v3, v4, v0

    if-gez v3, :cond_4e

    .line 165
    :try_start_2a
    iget-object v3, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget v4, Lcom/vungle/publisher/env/AndroidDevice;->a:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_32} :catch_33
    .catchall {:try_start_2a .. :try_end_32} :catchall_3c

    goto :goto_1a

    .line 167
    :catch_33
    move-exception v3

    .line 168
    :try_start_34
    const-string v3, "VungleDevice"

    const-string v4, "interrupted while awaiting device ID"

    invoke-static {v3, v4}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 171
    :catchall_3c
    move-exception v0

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    .line 181
    :catchall_3f
    move-exception v0

    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->i()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 182
    const-string v1, "VungleDevice"

    const-string v2, "no device ID available"

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    throw v0

    .line 171
    :cond_4e
    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_3c

    .line 172
    :try_start_4f
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 173
    const-string v0, "VungleDevice"

    const-string v1, "obtained device ID"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_4f .. :try_end_5e} :catchall_3f

    .line 181
    :cond_5e
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->i()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 182
    const-string v0, "VungleDevice"

    const-string v1, "no device ID available"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_6b
    return-void

    .line 176
    :cond_6c
    :try_start_6c
    new-instance v0, Lcom/vungle/publisher/env/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vungle/publisher/env/AndroidDevice;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/publisher/env/j;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8d
    .catchall {:try_start_6c .. :try_end_8d} :catchall_3f
.end method

.method i()Z
    .registers 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->b()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->l:Z

    return v0
.end method

.method public k()Ljava/lang/Float;
    .registers 5

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 263
    :try_start_1
    iget-object v1, p0, Lcom/vungle/publisher/env/AndroidDevice;->e:Lcom/vungle/publisher/lm;

    invoke-virtual {v1}, Lcom/vungle/publisher/lm;->b()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    .line 268
    :goto_b
    return-object v0

    .line 265
    :catch_c
    move-exception v1

    .line 266
    const-string v2, "VungleDevice"

    const-string v3, "error getting volume info"

    invoke-static {v2, v3, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public l()Z
    .registers 5

    .prologue
    .line 273
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/vungle/publisher/env/AndroidDevice;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/vungle/publisher/zj;->a(Landroid/content/Context;)Z

    move-result v1

    .line 277
    if-eqz v1, :cond_21

    if-eqz v0, :cond_21

    .line 278
    const-string v2, "VungleDevice"

    const-string v3, "external storage writable"

    invoke-static {v2, v3}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :goto_1b
    if-eqz v1, :cond_29

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    :goto_20
    return v0

    .line 281
    :cond_21
    const-string v2, "VungleDevice"

    const-string v3, "external storage not writable"

    invoke-static {v2, v3}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 283
    :cond_29
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 288
    const-string v0, "VungleDevice"

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/env/AndroidDevice;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public n()V
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->i:Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;->d(Lcom/vungle/publisher/env/AndroidDevice;)V

    .line 323
    return-void
.end method

.method public o()Ljava/lang/String;
    .registers 4

    .prologue
    .line 343
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->h:Landroid/content/SharedPreferences;

    const-string v1, "defaultUserAgent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/Long;
    .registers 7

    .prologue
    .line 360
    const/4 v1, 0x0

    .line 362
    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->j:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 364
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_5f

    .line 365
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->g:Landroid/content/Context;

    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 366
    if-eqz v0, :cond_5f

    .line 367
    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v2

    .line 368
    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->getCacheQuotaBytes(Ljava/util/UUID;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_53

    move-result-object v1

    move-object v0, v1

    .line 371
    :goto_30
    :try_start_30
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_44

    .line 372
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 380
    :goto_43
    return-object v0

    .line 375
    :cond_44
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_51} :catch_5d

    move-result-object v0

    goto :goto_43

    .line 377
    :catch_53
    move-exception v0

    move-object v0, v1

    .line 378
    :goto_55
    const-string v1, "VungleDevice"

    const-string v2, "error getting available bytes"

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    .line 377
    :catch_5d
    move-exception v1

    goto :goto_55

    :cond_5f
    move-object v0, v1

    goto :goto_30
.end method

.method public q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 385
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method public r()I
    .registers 2

    .prologue
    .line 389
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public s()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 394
    .line 396
    :try_start_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_39

    .line 397
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->g:Landroid/content/Context;

    const-string v2, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 398
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    .line 399
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z
    :try_end_1f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_1f} :catch_4b

    move-result v1

    .line 407
    :cond_20
    :goto_20
    const-string v0, "VungleDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInstallNonMarketAppsEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return v1

    .line 402
    :cond_39
    :try_start_39
    iget-object v2, p0, Lcom/vungle/publisher/env/AndroidDevice;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_39 .. :try_end_44} :catch_4b

    move-result v2

    if-ne v2, v0, :cond_49

    :goto_47
    move v1, v0

    goto :goto_20

    :cond_49
    move v0, v1

    goto :goto_47

    .line 404
    :catch_4b
    move-exception v0

    .line 405
    const-string v2, "VungleDevice"

    const-string v3, "isInstallNonMarketAppsEnabled Settings not found"

    invoke-static {v2, v3, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method public t()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 414
    sget-boolean v0, Lcom/vungle/publisher/env/w;->a:Z

    if-eqz v0, :cond_31

    .line 415
    const-string v0, "amazon.hardware.fire_tv"

    .line 416
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "amazon.hardware.fire_tv"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 431
    :goto_18
    const-string v1, "VungleDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTV: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return v0

    .line 418
    :cond_31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_4c

    .line 421
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->g:Landroid/content/Context;

    const-string v3, "uimode"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 422
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4a

    move v0, v1

    goto :goto_18

    :cond_4a
    move v0, v2

    goto :goto_18

    .line 424
    :cond_4c
    const-string v0, "com.google.android.tv"

    .line 425
    const-string v0, "android.hardware.touchscreen"

    .line 427
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.google.android.tv"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_74

    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->g:Landroid/content/Context;

    .line 428
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.touchscreen"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_75

    :cond_74
    move v2, v1

    :cond_75
    move v0, v2

    goto :goto_18
.end method

.method public u()Lcom/google/gson/JsonObject;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 438
    .line 440
    sget-boolean v0, Lcom/vungle/publisher/env/w;->a:Z

    if-eqz v0, :cond_3b

    .line 441
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->g:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 443
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v3

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 445
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 446
    if-eqz v1, :cond_db

    if-eqz v2, :cond_39

    .line 447
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    .line 448
    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_db

    :cond_39
    :goto_39
    move-object v2, v1

    .line 452
    goto :goto_19

    .line 455
    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 456
    const v1, 0xa803b8

    if-ge v0, v1, :cond_a1

    .line 457
    const-string v0, "VungleDevice"

    const-string v1, "Play services version less than 11.0.11 !"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3b .. :try_end_56} :catch_cb

    move-object v0, v3

    :goto_57
    move-object v2, v0

    .line 477
    :cond_58
    :goto_58
    if-eqz v2, :cond_a0

    .line 478
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 479
    const-string v0, "accuracy"

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v0, "latitude"

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v0, "longitude"

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v0, "speed"

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v0, "timestamp"

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 485
    :cond_a0
    return-object v3

    .line 460
    :cond_a1
    :try_start_a1
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;
    :try_end_aa
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a1 .. :try_end_aa} :catch_c2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_a1 .. :try_end_aa} :catch_d5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a1 .. :try_end_aa} :catch_cb

    move-result-object v0

    .line 463
    const-wide/16 v4, 0x64

    :try_start_ad
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v4, v5, v1}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;
    :try_end_b5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_ad .. :try_end_b5} :catch_d7
    .catch Ljava/lang/InterruptedException; {:try_start_ad .. :try_end_b5} :catch_b6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_ad .. :try_end_b5} :catch_d9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_ad .. :try_end_b5} :catch_c2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_ad .. :try_end_b5} :catch_d5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ad .. :try_end_b5} :catch_cb

    goto :goto_57

    .line 464
    :catch_b6
    move-exception v0

    .line 465
    :goto_b7
    :try_start_b7
    const-string v1, "VungleDevice"

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_b7 .. :try_end_c0} :catch_c2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_b7 .. :try_end_c0} :catch_d5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b7 .. :try_end_c0} :catch_cb

    :goto_c0
    move-object v0, v3

    goto :goto_57

    .line 468
    :catch_c2
    move-exception v0

    .line 469
    :goto_c3
    :try_start_c3
    const-string v0, "VungleDevice"

    const-string v1, "Location Play services FusedLocationProviderClient classes not present, cant get Loc data"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ca
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c3 .. :try_end_ca} :catch_cb

    goto :goto_c0

    .line 472
    :catch_cb
    move-exception v0

    .line 473
    const-string v0, "VungleDevice"

    const-string v1, "Play services not present, No Loc data !"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_58

    .line 468
    :catch_d5
    move-exception v0

    goto :goto_c3

    .line 464
    :catch_d7
    move-exception v0

    goto :goto_b7

    :catch_d9
    move-exception v0

    goto :goto_b7

    :cond_db
    move-object v1, v2

    goto/16 :goto_39
.end method

###### Class com.vungle.publisher.env.AndroidDevice.DeviceIdStrategy (com.vungle.publisher.env.AndroidDevice$DeviceIdStrategy)
.class public abstract Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/env/AndroidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DeviceIdStrategy"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract d(Lcom/vungle/publisher/env/AndroidDevice;)V
.end method
