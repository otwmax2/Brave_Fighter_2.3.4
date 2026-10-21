###### Class com.chartboost.sdk.CBImpressionActivity (com.chartboost.sdk.CBImpressionActivity)
.class public Lcom/chartboost/sdk/CBImpressionActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# instance fields
.field final a:Lcom/chartboost/sdk/Tracking/a;

.field final b:Landroid/os/Handler;

.field final c:Lcom/chartboost/sdk/c;

.field private d:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    :goto_10
    iput-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->a:Lcom/chartboost/sdk/Tracking/a;

    .line 38
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    :goto_1e
    iput-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->b:Landroid/os/Handler;

    .line 39
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    :goto_2c
    iput-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    .line 41
    iput-object v1, p0, Lcom/chartboost/sdk/CBImpressionActivity;->d:Landroid/app/Activity;

    return-void

    :cond_31
    move-object v0, v1

    .line 37
    goto :goto_10

    :cond_33
    move-object v0, v1

    .line 38
    goto :goto_1e

    :cond_35
    move-object v0, v1

    .line 39
    goto :goto_2c
.end method

.method private a()V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/high16 v2, 0x1000000

    .line 75
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/s;->a(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 76
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 80
    :cond_15
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 203
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/s;->a(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 204
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/CBImpressionActivity$1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/CBImpressionActivity$1;-><init>(Lcom/chartboost/sdk/CBImpressionActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    :cond_16
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->d:Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 46
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->d:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 48
    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public forwardTouchEvents(Landroid/app/Activity;)V
    .registers 2
    .param p1, "host"    # Landroid/app/Activity;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/chartboost/sdk/CBImpressionActivity;->d:Landroid/app/Activity;

    .line 53
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 4

    .prologue
    .line 179
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 181
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/s;->a(I)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 182
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 183
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_48

    .line 185
    const-string v0, "CBImpressionActivity"

    const-string v1, "The activity passed down is not hardware accelerated, so Chartboost cannot show ads"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_45

    .line 189
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->HARDWARE_ACCELERATION_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 191
    :cond_45
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->finish()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    .line 198
    :cond_48
    :goto_48
    return-void

    .line 193
    :catch_49
    move-exception v0

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onAttachedToWindow"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_48
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->k()Z

    move-result v0

    if-nez v0, :cond_f

    .line 167
    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 174
    :cond_f
    :goto_f
    return-void

    .line 169
    :catch_10
    move-exception v0

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onBackPressed"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isChartboost"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_16
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->a:Lcom/chartboost/sdk/Tracking/a;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->b:Landroid/os/Handler;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-nez v0, :cond_2d

    .line 59
    :cond_22
    const-string v0, "CBImpressionActivity"

    const-string v1, "This activity cannot be called from outside chartboost SDK"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->finish()V

    .line 71
    :goto_2c
    return-void

    .line 63
    :cond_2d
    invoke-direct {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->a()V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBImpressionActivity;->requestWindowFeature(I)Z

    .line 66
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 67
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/CBImpressionActivity;)V

    .line 68
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBImpressionActivity;->setContentView(Landroid/view/View;)V

    .line 69
    invoke-direct {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->b()V

    .line 70
    const-string v0, "CBImpressionActivity"

    const-string v1, "Impression Activity onCreate() called"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/chartboost/sdk/i;->s:Z

    if-nez v0, :cond_d

    .line 150
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->k(Landroid/app/Activity;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_11

    .line 154
    :cond_d
    :try_start_d
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 161
    :goto_10
    return-void

    .line 154
    :catchall_11
    move-exception v0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    throw v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_16

    .line 156
    :catch_16
    move-exception v0

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onDestroy"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 117
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 118
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_15

    sget-boolean v0, Lcom/chartboost/sdk/i;->s:Z

    if-nez v0, :cond_15

    .line 119
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    .line 120
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->i()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 127
    :cond_15
    :goto_15
    return-void

    .line 122
    :catch_16
    move-exception v0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onPause"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_15
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 100
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 101
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_15

    sget-boolean v0, Lcom/chartboost/sdk/i;->s:Z

    if-nez v0, :cond_15

    .line 102
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    .line 103
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->h()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_19

    .line 111
    :cond_15
    :goto_15
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/app/Activity;)V

    .line 112
    return-void

    .line 105
    :catch_19
    move-exception v0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onResume"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_15
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 85
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 86
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/chartboost/sdk/i;->s:Z

    if-nez v0, :cond_10

    .line 87
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->e(Landroid/app/Activity;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 95
    :cond_10
    :goto_10
    return-void

    .line 89
    :catch_11
    move-exception v0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onStart"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 132
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 133
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/chartboost/sdk/i;->s:Z

    if-nez v0, :cond_10

    .line 134
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->i(Landroid/app/Activity;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 143
    :cond_10
    :goto_10
    return-void

    .line 136
    :catch_11
    move-exception v0

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onStop"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

###### Class com.chartboost.sdk.CBImpressionActivity.AnonymousClass1 (com.chartboost.sdk.CBImpressionActivity$1)
.class Lcom/chartboost/sdk/CBImpressionActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/CBImpressionActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/CBImpressionActivity;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/CBImpressionActivity;)V
    .registers 2

    .prologue
    .line 204
    iput-object p1, p0, Lcom/chartboost/sdk/CBImpressionActivity$1;->a:Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 209
    :try_start_0
    const-string v0, "VideoInit"

    const-string v1, "preparing activity for video surface"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/chartboost/sdk/CBImpressionActivity$1;->a:Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 211
    iget-object v1, p0, Lcom/chartboost/sdk/CBImpressionActivity$1;->a:Lcom/chartboost/sdk/CBImpressionActivity;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/CBImpressionActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 215
    :goto_1a
    return-void

    .line 212
    :catch_1b
    move-exception v0

    .line 213
    const-class v1, Lcom/chartboost/sdk/CBImpressionActivity;

    const-string v2, "postCreateSurfaceView Runnable.run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1a
.end method
