###### Class com.chartboost.sdk.c (com.chartboost.sdk.c)
.class public Lcom/chartboost/sdk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/c$c;,
        Lcom/chartboost/sdk/c$a;,
        Lcom/chartboost/sdk/c$b;
    }
.end annotation


# instance fields
.field final a:Lcom/chartboost/sdk/h;

.field final b:Landroid/os/Handler;

.field public final c:Lcom/chartboost/sdk/d;

.field d:Lcom/chartboost/sdk/Libraries/j;

.field e:Lcom/chartboost/sdk/CBImpressionActivity;

.field f:Lcom/chartboost/sdk/Model/c;

.field g:Ljava/lang/Runnable;

.field final h:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final i:Lcom/chartboost/sdk/impl/ai;

.field private final j:Lcom/chartboost/sdk/Tracking/a;

.field private k:Z

.field private final l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/chartboost/sdk/Libraries/j;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/h;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/d;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 44
    iput-object v2, p0, Lcom/chartboost/sdk/c;->f:Lcom/chartboost/sdk/Model/c;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/c;->k:Z

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/c;->l:Ljava/util/HashSet;

    .line 70
    iput-object p2, p0, Lcom/chartboost/sdk/c;->i:Lcom/chartboost/sdk/impl/ai;

    .line 71
    iput-object p3, p0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/h;

    .line 72
    iput-object p4, p0, Lcom/chartboost/sdk/c;->j:Lcom/chartboost/sdk/Tracking/a;

    .line 73
    iput-object p5, p0, Lcom/chartboost/sdk/c;->b:Landroid/os/Handler;

    .line 74
    iput-object p6, p0, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/d;

    .line 76
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    .line 77
    const-string v0, "CBUIManager.assignHostActivityRef"

    iget-object v1, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    new-instance v0, Lcom/chartboost/sdk/c$b;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/c$b;-><init>(Lcom/chartboost/sdk/c;)V

    iput-object v0, p0, Lcom/chartboost/sdk/c;->g:Ljava/lang/Runnable;

    .line 81
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/s;->a(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 82
    new-instance v0, Lcom/chartboost/sdk/c$a;

    invoke-direct {v0, p0, v2}, Lcom/chartboost/sdk/c$a;-><init>(Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/c$1;)V

    iput-object v0, p0, Lcom/chartboost/sdk/c;->h:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 86
    :goto_43
    return-void

    .line 84
    :cond_44
    iput-object v2, p0, Lcom/chartboost/sdk/c;->h:Landroid/app/Application$ActivityLifecycleCallbacks;

    goto :goto_43
.end method

.method private a(IZ)V
    .registers 5

    .prologue
    .line 175
    if-eqz p2, :cond_c

    .line 176
    iget-object v0, p0, Lcom/chartboost/sdk/c;->l:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 179
    :goto_b
    return-void

    .line 178
    :cond_c
    iget-object v0, p0, Lcom/chartboost/sdk/c;->l:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method private b(Lcom/chartboost/sdk/Libraries/j;Z)V
    .registers 3

    .prologue
    .line 225
    return-void
.end method

.method private c(Lcom/chartboost/sdk/Libraries/j;)Z
    .registers 3

    .prologue
    .line 244
    if-nez p1, :cond_a

    .line 245
    iget-object v0, p0, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 247
    :goto_7
    return v0

    .line 245
    :cond_8
    const/4 v0, 0x0

    goto :goto_7

    .line 247
    :cond_a
    iget-object v0, p0, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/j;->a(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_7
.end method

.method private l(Landroid/app/Activity;)Z
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private m()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 532
    const-string v1, "CBUIManager.closeImpressionImpl"

    invoke-static {v1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/Model/c;

    move-result-object v1

    .line 534
    if-eqz v1, :cond_22

    iget v2, v1, Lcom/chartboost/sdk/Model/c;->l:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_22

    .line 535
    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/c;->q()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 540
    :goto_17
    return v0

    .line 537
    :cond_18
    new-instance v1, Lcom/chartboost/sdk/c$c;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    invoke-static {v1}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    goto :goto_17

    .line 540
    :cond_22
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;
    .registers 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/chartboost/sdk/c;->m:Lcom/chartboost/sdk/Libraries/j;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/chartboost/sdk/c;->m:Lcom/chartboost/sdk/Libraries/j;

    iget v0, v0, Lcom/chartboost/sdk/Libraries/j;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_15

    .line 90
    :cond_e
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/Libraries/j;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/chartboost/sdk/c;->m:Lcom/chartboost/sdk/Libraries/j;

    .line 92
    :cond_15
    iget-object v0, p0, Lcom/chartboost/sdk/c;->m:Lcom/chartboost/sdk/Libraries/j;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lcom/chartboost/sdk/Model/c;)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 315
    new-instance v4, Landroid/content/Intent;

    const-class v0, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-direct {v4, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_3d

    move v0, v1

    .line 319
    :goto_18
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_3f

    move v3, v1

    .line 321
    :goto_27
    const-string v5, "paramFullscreen"

    if-eqz v0, :cond_2e

    if-nez v3, :cond_2e

    move v2, v1

    :cond_2e
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    const-string v0, "isChartboost"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 324
    :try_start_36
    invoke-virtual {p1, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/c;->k:Z
    :try_end_3c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_36 .. :try_end_3c} :catch_41

    .line 332
    :goto_3c
    return-void

    :cond_3d
    move v0, v2

    .line 317
    goto :goto_18

    :cond_3f
    move v3, v2

    .line 319
    goto :goto_27

    .line 326
    :catch_41
    move-exception v0

    .line 327
    const-string v0, "CBUIManager"

    const-string v1, "Please add CBImpressionActivity in AndroidManifest.xml following README.md instructions."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/c;->f:Lcom/chartboost/sdk/Model/c;

    .line 330
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ACTIVITY_MISSING_IN_MANIFEST:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_3c
.end method

.method a(Landroid/app/Activity;Z)V
    .registers 4

    .prologue
    .line 200
    if-nez p1, :cond_3

    .line 203
    :goto_2
    return-void

    .line 202
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/chartboost/sdk/c;->a(IZ)V

    goto :goto_2
.end method

.method a(Lcom/chartboost/sdk/CBImpressionActivity;)V
    .registers 4

    .prologue
    .line 151
    const-string v0, "CBUIManager.setImpressionActivity"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_11

    .line 153
    invoke-virtual {p1}, Lcom/chartboost/sdk/CBImpressionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 154
    iput-object p1, p0, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 156
    :cond_11
    iget-object v0, p0, Lcom/chartboost/sdk/c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/c;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method a(Lcom/chartboost/sdk/Libraries/j;Z)V
    .registers 4

    .prologue
    .line 188
    if-nez p1, :cond_3

    .line 191
    :goto_2
    return-void

    .line 190
    :cond_3
    iget v0, p1, Lcom/chartboost/sdk/Libraries/j;->a:I

    invoke-direct {p0, v0, p2}, Lcom/chartboost/sdk/c;->a(IZ)V

    goto :goto_2
.end method

.method public a(Lcom/chartboost/sdk/Model/c;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 258
    const-string v0, "CBUIManager.queueDisplayView"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->e()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 260
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 312
    :goto_11
    return-void

    .line 264
    :cond_12
    iget-object v0, p0, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v0, :cond_1c

    .line 265
    iget-object v0, p0, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/d;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/c;)V

    goto :goto_11

    .line 270
    :cond_1c
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->g()Z

    move-result v0

    if-nez v0, :cond_28

    .line 271
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_11

    .line 275
    :cond_28
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->a()Landroid/app/Activity;

    move-result-object v0

    .line 276
    if-nez v0, :cond_3b

    .line 277
    const-string v0, "CBUIManager"

    const-string v1, "Failed to display impression as the host activity reference has been lost!"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_11

    .line 281
    :cond_3b
    iget-object v1, p0, Lcom/chartboost/sdk/c;->f:Lcom/chartboost/sdk/Model/c;

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/chartboost/sdk/c;->f:Lcom/chartboost/sdk/Model/c;

    if-eq v1, p1, :cond_49

    .line 283
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_11

    .line 287
    :cond_49
    iput-object p1, p0, Lcom/chartboost/sdk/c;->f:Lcom/chartboost/sdk/Model/c;

    .line 289
    sget-object v1, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v1, :cond_5f

    .line 290
    iget v1, p1, Lcom/chartboost/sdk/Model/c;->n:I

    if-eq v1, v3, :cond_58

    iget v1, p1, Lcom/chartboost/sdk/Model/c;->n:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_75

    .line 292
    :cond_58
    sget-object v1, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/chartboost/sdk/a;->willDisplayVideo(Ljava/lang/String;)V

    .line 298
    :cond_5f
    :goto_5f
    sget-object v1, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v1, :cond_81

    .line 304
    new-instance v1, Lcom/chartboost/sdk/c$c;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 305
    iput-object v0, v1, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    .line 306
    iput-object p1, v1, Lcom/chartboost/sdk/c$c;->d:Lcom/chartboost/sdk/Model/c;

    .line 307
    iget-object v0, p0, Lcom/chartboost/sdk/c;->b:Landroid/os/Handler;

    int-to-long v2, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_11

    .line 293
    :cond_75
    iget v1, p1, Lcom/chartboost/sdk/Model/c;->n:I

    if-nez v1, :cond_5f

    .line 294
    sget-object v1, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/chartboost/sdk/a;->willDisplayInterstitial(Ljava/lang/String;)V

    goto :goto_5f

    .line 311
    :cond_81
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;Lcom/chartboost/sdk/Model/c;)V

    goto :goto_11
.end method

.method a(Lcom/chartboost/sdk/Libraries/j;)Z
    .registers 4

    .prologue
    .line 211
    if-nez p1, :cond_4

    .line 212
    const/4 v0, 0x0

    .line 213
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/c;->l:Ljava/util/HashSet;

    iget v1, p1, Lcom/chartboost/sdk/Libraries/j;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public b()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    return-object v0
.end method

.method b(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 344
    const-string v0, "CBUIManager.onCreateCallback"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 351
    :cond_11
    :goto_11
    return-void

    .line 347
    :cond_12
    new-instance v0, Lcom/chartboost/sdk/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 348
    iput-object p1, v0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    .line 349
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method b(Lcom/chartboost/sdk/Libraries/j;)V
    .registers 3

    .prologue
    .line 336
    const-string v0, "CBUIManager.onStop"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/j;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_11

    .line 338
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 340
    :cond_11
    iget-object v0, p0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->c()V

    .line 341
    return-void
.end method

.method public b(Lcom/chartboost/sdk/Model/c;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 579
    iget v0, p1, Lcom/chartboost/sdk/Model/c;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    .line 580
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/d;

    move-result-object v0

    .line 581
    if-eqz v0, :cond_f

    .line 582
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/d;->b(Lcom/chartboost/sdk/Model/c;)V

    .line 590
    :cond_f
    :goto_f
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->v()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 591
    iget-object v0, p0, Lcom/chartboost/sdk/c;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/c;

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/c;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/chartboost/sdk/Tracking/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :goto_2a
    return-void

    .line 583
    :cond_2b
    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->b:I

    if-ne v0, v2, :cond_f

    iget v0, p1, Lcom/chartboost/sdk/Model/c;->l:I

    if-ne v0, v2, :cond_f

    .line 584
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/d;

    move-result-object v0

    .line 585
    if-eqz v0, :cond_f

    .line 586
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/d;->d(Lcom/chartboost/sdk/Model/c;)V

    goto :goto_f

    .line 593
    :cond_3f
    iget-object v0, p0, Lcom/chartboost/sdk/c;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/c;

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/c;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/chartboost/sdk/Tracking/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a
.end method

.method b(Landroid/app/Activity;Lcom/chartboost/sdk/Model/c;)Z
    .registers 7

    .prologue
    .line 619
    .line 620
    if-eqz p2, :cond_7

    .line 621
    iget v0, p2, Lcom/chartboost/sdk/Model/c;->l:I

    packed-switch v0, :pswitch_data_4a

    .line 651
    :cond_7
    :goto_7
    :pswitch_7
    const/4 v0, 0x1

    :goto_8
    return v0

    .line 626
    :pswitch_9
    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Model/c;)V

    goto :goto_7

    .line 629
    :pswitch_d
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/c;->g()Z

    move-result v0

    if-nez v0, :cond_7

    .line 630
    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v0, :cond_25

    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->doesWrapperUseCustomBackgroundingBehavior()Z

    move-result v0

    if-eqz v0, :cond_25

    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_25

    .line 633
    const/4 v0, 0x0

    goto :goto_8

    .line 636
    :cond_25
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/d;

    move-result-object v0

    .line 637
    if-eqz v0, :cond_7

    .line 638
    const-string v1, "CBUIManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error onActivityStart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/chartboost/sdk/Model/c;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-virtual {v0, p2}, Lcom/chartboost/sdk/d;->d(Lcom/chartboost/sdk/Model/c;)V

    goto :goto_7

    .line 621
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_9
        :pswitch_d
        :pswitch_9
    .end packed-switch
.end method

.method public c()Lcom/chartboost/sdk/d;
    .registers 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->b()Landroid/app/Activity;

    move-result-object v0

    .line 115
    if-nez v0, :cond_8

    .line 116
    const/4 v0, 0x0

    .line 118
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/d;

    goto :goto_7
.end method

.method c(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 360
    const-string v0, "CBUIManager.onCreateImpl"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Libraries/j;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->g()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 363
    iget-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Libraries/j;)V

    .line 364
    iget-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 367
    :cond_22
    iget-object v0, p0, Lcom/chartboost/sdk/c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/c;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 370
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    .line 371
    const-string v0, "CBUIManager.assignHostActivityRef"

    iget-object v1, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    return-void
.end method

.method d()Lcom/chartboost/sdk/Model/c;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/d;

    move-result-object v1

    .line 128
    if-nez v1, :cond_11

    move-object v1, v0

    .line 130
    :goto_8
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bb;->f()Z

    move-result v2

    if-nez v2, :cond_16

    .line 133
    :cond_10
    :goto_10
    return-object v0

    .line 128
    :cond_11
    invoke-virtual {v1}, Lcom/chartboost/sdk/d;->a()Lcom/chartboost/sdk/impl/bb;

    move-result-object v1

    goto :goto_8

    .line 133
    :cond_16
    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bb;->e()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    goto :goto_10
.end method

.method d(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 375
    const-string v0, "CBUIManager.onStartCallback"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 377
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 383
    :cond_11
    :goto_11
    return-void

    .line 380
    :cond_12
    new-instance v0, Lcom/chartboost/sdk/c$c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 381
    iput-object p1, v0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    .line 382
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method e(Landroid/app/Activity;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 393
    const-string v0, "CBUIManager.onStartImpl"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 394
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 395
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_42

    .line 396
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    .line 397
    const-string v0, "CBUIManager.assignHostActivityRef"

    iget-object v3, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    invoke-static {v0, v3}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 398
    iget-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 404
    :goto_23
    iget-object v0, p0, Lcom/chartboost/sdk/c;->b:Landroid/os/Handler;

    iget-object v3, p0, Lcom/chartboost/sdk/c;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 409
    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v0, :cond_49

    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->doesWrapperUseCustomBackgroundingBehavior()Z

    move-result v0

    if-eqz v0, :cond_49

    move v0, v1

    .line 410
    :goto_37
    if-eqz p1, :cond_41

    if-nez v0, :cond_4b

    invoke-direct {p0, p1}, Lcom/chartboost/sdk/c;->l(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 426
    :cond_41
    :goto_41
    return-void

    :cond_42
    move-object v0, p1

    .line 401
    check-cast v0, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/CBImpressionActivity;)V

    goto :goto_23

    :cond_49
    move v0, v2

    .line 409
    goto :goto_37

    .line 413
    :cond_4b
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 415
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v0, :cond_58

    .line 416
    iput-boolean v2, p0, Lcom/chartboost/sdk/c;->k:Z

    .line 419
    :cond_58
    iget-object v0, p0, Lcom/chartboost/sdk/c;->f:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/c;->b(Landroid/app/Activity;Lcom/chartboost/sdk/Model/c;)Z

    move-result v0

    .line 420
    if-eqz v0, :cond_63

    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/c;->f:Lcom/chartboost/sdk/Model/c;

    .line 423
    :cond_63
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_41

    .line 425
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->s()V

    goto :goto_41
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method f()V
    .registers 2

    .prologue
    .line 164
    const-string v0, "CBUIManager.clearImpressionActivity"

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 166
    return-void
.end method

.method f(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 429
    const-string v0, "CBUIManager.onResumeCallback"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 430
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 437
    :cond_11
    :goto_11
    return-void

    .line 432
    :cond_12
    iget-object v0, p0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->e()V

    .line 434
    new-instance v0, Lcom/chartboost/sdk/c$c;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 435
    iput-object p1, v0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    .line 436
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method g(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 455
    const-string v0, "CBUIManager.onPauseCallback"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 456
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 462
    :cond_11
    :goto_11
    return-void

    .line 458
    :cond_12
    new-instance v0, Lcom/chartboost/sdk/c$c;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 459
    iput-object p1, v0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    .line 460
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method g()Z
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Libraries/j;)Z

    move-result v0

    return v0
.end method

.method h()V
    .registers 3

    .prologue
    .line 440
    const-string v0, "CBUIManager.onResumeImpl"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/chartboost/sdk/c;->i:Lcom/chartboost/sdk/impl/ai;

    sget-object v1, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ai;->b(Landroid/content/Context;)Landroid/content/Intent;

    .line 443
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    .line 446
    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Lcom/chartboost/sdk/Chartboost$CBFramework;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 447
    iget-object v1, p0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/h;

    invoke-virtual {v1}, Lcom/chartboost/sdk/h;->b()V

    .line 449
    :cond_1e
    if-eqz v0, :cond_23

    .line 450
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->r()V

    .line 452
    :cond_23
    return-void
.end method

.method h(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 475
    const-string v0, "CBUIManager.onStopCallback"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 476
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 481
    :cond_11
    :goto_11
    return-void

    .line 478
    :cond_12
    new-instance v0, Lcom/chartboost/sdk/c$c;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 479
    iput-object p1, v0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    .line 480
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method i()V
    .registers 3

    .prologue
    .line 465
    const-string v0, "CBUIManager.onPauseImpl"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_f

    .line 468
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->t()V

    .line 471
    :cond_f
    iget-object v0, p0, Lcom/chartboost/sdk/c;->i:Lcom/chartboost/sdk/impl/ai;

    sget-object v1, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ai;->c(Landroid/content/Context;)V

    .line 472
    return-void
.end method

.method i(Landroid/app/Activity;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 491
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    .line 492
    const-string v1, "CBUIManager.onStopImpl"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 493
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/Model/c;

    move-result-object v1

    .line 494
    if-eqz v1, :cond_35

    iget-object v2, v1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez v2, :cond_35

    .line 495
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/d;

    move-result-object v2

    .line 496
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/c;->c(Lcom/chartboost/sdk/Libraries/j;)Z

    move-result v3

    if-eqz v3, :cond_2a

    if-eqz v2, :cond_2a

    .line 497
    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/d;->c(Lcom/chartboost/sdk/Model/c;)V

    .line 498
    iput-object v1, p0, Lcom/chartboost/sdk/c;->f:Lcom/chartboost/sdk/Model/c;

    .line 499
    invoke-direct {p0, v0, v4}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 502
    :cond_2a
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v1, :cond_35

    .line 503
    invoke-virtual {p0, v0, v4}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 506
    :cond_35
    return-void
.end method

.method j(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 545
    const-string v0, "CBUIManager.onDestroyCallback"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 546
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 551
    :cond_11
    :goto_11
    return-void

    .line 548
    :cond_12
    new-instance v0, Lcom/chartboost/sdk/c$c;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 549
    iput-object p1, v0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    .line 550
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method j()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 509
    const-string v1, "CBUIManager.onBackPressedCallback"

    invoke-static {v1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;)V

    .line 510
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v1

    if-nez v1, :cond_d

    .line 523
    :cond_c
    :goto_c
    return v0

    .line 512
    :cond_d
    iget-object v1, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    if-nez v1, :cond_19

    .line 513
    const-string v1, "CBUIManager"

    const-string v2, "The Chartboost methods onCreate(), onStart(), onStop(), and onDestroy() must be called in the corresponding methods of your activity in order for Chartboost to function properly."

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 518
    :cond_19
    iget-boolean v1, p0, Lcom/chartboost/sdk/c;->k:Z

    if-eqz v1, :cond_c

    .line 519
    iput-boolean v0, p0, Lcom/chartboost/sdk/c;->k:Z

    .line 520
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->k()Z

    .line 521
    const/4 v0, 0x1

    goto :goto_c
.end method

.method k(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 554
    const-string v0, "CBUIManager.onDestroyImpl"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 556
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 558
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    .line 559
    if-nez v0, :cond_1d

    iget-object v1, p0, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    if-ne p1, v1, :cond_1d

    iget-object v1, p0, Lcom/chartboost/sdk/c;->f:Lcom/chartboost/sdk/Model/c;

    if-eqz v1, :cond_1d

    .line 564
    iget-object v0, p0, Lcom/chartboost/sdk/c;->f:Lcom/chartboost/sdk/Model/c;

    .line 566
    :cond_1d
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/d;

    move-result-object v1

    .line 567
    if-eqz v1, :cond_28

    if-eqz v0, :cond_28

    .line 568
    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/d;->d(Lcom/chartboost/sdk/Model/c;)V

    .line 570
    :cond_28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/c;->f:Lcom/chartboost/sdk/Model/c;

    .line 571
    return-void
.end method

.method k()Z
    .registers 2

    .prologue
    .line 527
    const-string v0, "CBUIManager.onBackPressedImpl"

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;)V

    .line 528
    invoke-direct {p0}, Lcom/chartboost/sdk/c;->m()Z

    move-result v0

    return v0
.end method

.method l()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 602
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/Model/c;

    move-result-object v1

    .line 603
    if-nez v1, :cond_9

    .line 604
    const/4 v0, 0x0

    .line 607
    :goto_8
    return v0

    .line 605
    :cond_9
    iput-boolean v0, v1, Lcom/chartboost/sdk/Model/c;->z:Z

    .line 606
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Model/c;)V

    goto :goto_8
.end method

###### Class com.chartboost.sdk.c.AnonymousClass1 (com.chartboost.sdk.c$1)
.class synthetic Lcom/chartboost/sdk/c$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.chartboost.sdk.c.a (com.chartboost.sdk.c$a)
.class Lcom/chartboost/sdk/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/c;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/c;)V
    .registers 2

    .prologue
    .line 686
    iput-object p1, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/c$1;)V
    .registers 3

    .prologue
    .line 686
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/c$a;-><init>(Lcom/chartboost/sdk/c;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 689
    const-string v0, "CBUIManager.ActivityCallbackListener.onActivityCreated"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 690
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityCreated callback called"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_15

    .line 692
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->b(Landroid/app/Activity;)V

    .line 693
    :cond_15
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 752
    const-string v0, "CBUIManager.ActivityCallbackListener.onActivityDestroyed"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 753
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_16

    .line 754
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityDestroyed callback called from developer side"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->j(Landroid/app/Activity;)V

    .line 760
    :goto_15
    return-void

    .line 757
    :cond_16
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityDestroyed callback called from CBImpressionactivity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->k(Landroid/app/Activity;)V

    goto :goto_15
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 722
    const-string v0, "CBUIManager.ActivityCallbackListener.onActivityPaused"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 723
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_16

    .line 724
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityPaused callback called from developer side"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->g(Landroid/app/Activity;)V

    .line 731
    :goto_15
    return-void

    .line 727
    :cond_16
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityPaused callback called from CBImpressionactivity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    .line 729
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->i()V

    goto :goto_15
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 709
    const-string v0, "CBUIManager.ActivityCallbackListener.onActivityResumed"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 710
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_16

    .line 711
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityResumed callback called from developer side"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->f(Landroid/app/Activity;)V

    .line 718
    :goto_15
    return-void

    .line 714
    :cond_16
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityResumed callback called from CBImpressionactivity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    .line 716
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->h()V

    goto :goto_15
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 748
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 697
    const-string v0, "CBUIManager.ActivityCallbackListener.onActivityStarted"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 698
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_16

    .line 699
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityStarted callback called from developer side"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->d(Landroid/app/Activity;)V

    .line 705
    :goto_15
    return-void

    .line 702
    :cond_16
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityStarted callback called from CBImpressionactivity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->e(Landroid/app/Activity;)V

    goto :goto_15
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 735
    const-string v0, "CBUIManager.ActivityCallbackListener.onActivityStopped"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 736
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_16

    .line 737
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityStopped callback called from developer side"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->h(Landroid/app/Activity;)V

    .line 743
    :goto_15
    return-void

    .line 740
    :cond_16
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityStopped callback called from CBImpressionactivity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->i(Landroid/app/Activity;)V

    goto :goto_15
.end method

###### Class com.chartboost.sdk.c.b (com.chartboost.sdk.c$b)
.class Lcom/chartboost/sdk/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/c;

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/c;)V
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 664
    iput-object p1, p0, Lcom/chartboost/sdk/c$b;->a:Lcom/chartboost/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    invoke-direct {p0}, Lcom/chartboost/sdk/c$b;->a()Lcom/chartboost/sdk/a;

    move-result-object v2

    .line 666
    iget-object v0, p1, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_1d

    move v0, v1

    :goto_f
    iput v0, p0, Lcom/chartboost/sdk/c$b;->b:I

    .line 667
    iget-object v0, p1, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    if-nez v0, :cond_24

    move v0, v1

    :goto_16
    iput v0, p0, Lcom/chartboost/sdk/c$b;->c:I

    .line 668
    if-nez v2, :cond_2b

    :goto_1a
    iput v1, p0, Lcom/chartboost/sdk/c$b;->d:I

    .line 669
    return-void

    .line 666
    :cond_1d
    iget-object v0, p1, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_f

    .line 667
    :cond_24
    iget-object v0, p1, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->hashCode()I

    move-result v0

    goto :goto_16

    .line 668
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1a
.end method

.method private a()Lcom/chartboost/sdk/a;
    .registers 2

    .prologue
    .line 661
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 672
    const-string v0, "ClearMemoryRunnable.run"

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;)V

    .line 673
    invoke-direct {p0}, Lcom/chartboost/sdk/c$b;->a()Lcom/chartboost/sdk/a;

    move-result-object v0

    .line 674
    iget-object v1, p0, Lcom/chartboost/sdk/c$b;->a:Lcom/chartboost/sdk/c;

    iget-object v1, v1, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/chartboost/sdk/c$b;->a:Lcom/chartboost/sdk/c;

    iget-object v1, v1, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/j;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/chartboost/sdk/c$b;->c:I

    if-ne v1, v2, :cond_25

    .line 675
    iget-object v1, p0, Lcom/chartboost/sdk/c$b;->a:Lcom/chartboost/sdk/c;

    iput-object v3, v1, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    .line 676
    const-string v1, "CBUIManager.clearHostActivityRef"

    invoke-static {v1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;)V

    .line 678
    :cond_25
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/chartboost/sdk/c$b;->d:I

    if-ne v0, v1, :cond_36

    .line 679
    sput-object v3, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    .line 680
    const-string v0, "SdkSettings.clearDelegate"

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;)V

    .line 682
    :cond_36
    return-void
.end method

###### Class com.chartboost.sdk.c.RunnableC0002c (com.chartboost.sdk.c$c)
.class public Lcom/chartboost/sdk/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field b:Landroid/app/Activity;

.field c:Z

.field public d:Lcom/chartboost/sdk/Model/c;

.field final synthetic e:Lcom/chartboost/sdk/c;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/c;I)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 807
    iput-object p1, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    iput-object v1, p0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    .line 804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/c$c;->c:Z

    .line 805
    iput-object v1, p0, Lcom/chartboost/sdk/c$c;->d:Lcom/chartboost/sdk/Model/c;

    .line 808
    iput p2, p0, Lcom/chartboost/sdk/c$c;->a:I

    .line 809
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 814
    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/c$c;->a:I

    packed-switch v0, :pswitch_data_196

    .line 921
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 816
    :pswitch_6
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/c;->c(Landroid/app/Activity;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_5

    .line 918
    :catch_e
    move-exception v0

    .line 919
    const-class v1, Lcom/chartboost/sdk/c$c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/chartboost/sdk/c$c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5

    .line 820
    :pswitch_30
    :try_start_30
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v1, v1, Lcom/chartboost/sdk/c;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 823
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/j;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->g()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 824
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v1, v1, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Libraries/j;)V

    .line 825
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v1, v1, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 828
    :cond_68
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;Z)V

    .line 829
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v2, p0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v1

    iput-object v1, v0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    .line 830
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->b()V

    .line 831
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/h;

    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/h;->a(Landroid/app/Activity;)V

    .line 833
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/c;->e(Landroid/app/Activity;)V

    goto/16 :goto_5

    .line 837
    :pswitch_95
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    .line 838
    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Libraries/j;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 839
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->h()V

    goto/16 :goto_5

    .line 843
    :cond_ac
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Lcom/chartboost/sdk/Chartboost$CBFramework;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 844
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->b()V

    goto/16 :goto_5

    .line 851
    :pswitch_bd
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    .line 852
    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Libraries/j;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 853
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->i()V

    goto/16 :goto_5

    .line 859
    :pswitch_d4
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    .line 860
    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Libraries/j;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 861
    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Libraries/j;)V

    goto/16 :goto_5

    .line 868
    :pswitch_eb
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    if-eqz v0, :cond_fd

    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/j;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 869
    :cond_fd
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    new-instance v1, Lcom/chartboost/sdk/c$b;

    iget-object v2, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    invoke-direct {v1, v2}, Lcom/chartboost/sdk/c$b;-><init>(Lcom/chartboost/sdk/c;)V

    iput-object v1, v0, Lcom/chartboost/sdk/c;->g:Ljava/lang/Runnable;

    .line 870
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->g:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 873
    :cond_10f
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/c;->k(Landroid/app/Activity;)V

    goto/16 :goto_5

    .line 877
    :pswitch_118
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v0, :cond_5

    .line 878
    iget-boolean v0, p0, Lcom/chartboost/sdk/c$c;->c:Z

    if-eqz v0, :cond_131

    .line 879
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    invoke-virtual {v1}, Lcom/chartboost/sdk/c;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBImpressionActivity;->forwardTouchEvents(Landroid/app/Activity;)V

    goto/16 :goto_5

    .line 881
    :cond_131
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBImpressionActivity;->forwardTouchEvents(Landroid/app/Activity;)V

    goto/16 :goto_5

    .line 887
    :pswitch_13b
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->l()Z

    goto/16 :goto_5

    .line 891
    :pswitch_142
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/chartboost/sdk/c$c;->d:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;Lcom/chartboost/sdk/Model/c;)V

    goto/16 :goto_5

    .line 895
    :pswitch_14d
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->d:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 896
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->d:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->u()Lcom/chartboost/sdk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->b()V

    goto/16 :goto_5

    .line 900
    :pswitch_160
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/d;

    move-result-object v0

    .line 901
    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->d:Lcom/chartboost/sdk/Model/c;

    iget v1, v1, Lcom/chartboost/sdk/Model/c;->l:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    if-eqz v0, :cond_5

    .line 902
    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->d:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/d;->b(Lcom/chartboost/sdk/Model/c;)V

    goto/16 :goto_5

    .line 907
    :pswitch_176
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->d:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->n()V

    goto/16 :goto_5

    .line 911
    :pswitch_17d
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/d;

    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->d:Lcom/chartboost/sdk/Model/c;

    iget-object v2, p0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/c;Landroid/app/Activity;)V

    goto/16 :goto_5

    .line 915
    :pswitch_18a
    iget-object v0, p0, Lcom/chartboost/sdk/c$c;->e:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/d;

    iget-object v1, p0, Lcom/chartboost/sdk/c$c;->d:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/d;->d(Lcom/chartboost/sdk/Model/c;)V
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_193} :catch_e

    goto/16 :goto_5

    .line 814
    nop

    :pswitch_data_196
    .packed-switch 0x0
        :pswitch_6
        :pswitch_30
        :pswitch_95
        :pswitch_bd
        :pswitch_d4
        :pswitch_eb
        :pswitch_118
        :pswitch_13b
        :pswitch_5
        :pswitch_142
        :pswitch_14d
        :pswitch_160
        :pswitch_176
        :pswitch_17d
        :pswitch_18a
    .end packed-switch
.end method
