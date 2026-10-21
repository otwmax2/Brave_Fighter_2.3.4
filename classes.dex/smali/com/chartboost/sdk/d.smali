###### Class com.chartboost.sdk.d (com.chartboost.sdk.d)
.class public Lcom/chartboost/sdk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/chartboost/sdk/impl/av;

.field b:Lcom/chartboost/sdk/impl/bb;

.field private final c:Lcom/chartboost/sdk/impl/l;

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/av;Lcom/chartboost/sdk/impl/l;Ljava/util/concurrent/atomic/AtomicReference;Landroid/os/Handler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/av;",
            "Lcom/chartboost/sdk/impl/l;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/d;->b:Lcom/chartboost/sdk/impl/bb;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/d;->f:I

    .line 51
    iput-object p1, p0, Lcom/chartboost/sdk/d;->a:Lcom/chartboost/sdk/impl/av;

    .line 52
    iput-object p2, p0, Lcom/chartboost/sdk/d;->c:Lcom/chartboost/sdk/impl/l;

    .line 53
    iput-object p3, p0, Lcom/chartboost/sdk/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 54
    iput-object p4, p0, Lcom/chartboost/sdk/d;->e:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method private e(Lcom/chartboost/sdk/Model/c;)V
    .registers 9

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v2, 0x1

    .line 69
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Lcom/chartboost/sdk/impl/bb;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->e()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    if-eq v0, p1, :cond_1c

    .line 71
    const-string v0, "CBViewController"

    const-string v1, "Impression already visible"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 121
    :cond_1b
    :goto_1b
    return-void

    .line 76
    :cond_1c
    iget v0, p1, Lcom/chartboost/sdk/Model/c;->l:I

    if-eq v0, v6, :cond_40

    move v1, v2

    .line 77
    :goto_21
    iput v6, p1, Lcom/chartboost/sdk/Model/c;->l:I

    .line 79
    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->b()Landroid/app/Activity;

    move-result-object v3

    .line 81
    if-nez v3, :cond_43

    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 82
    :goto_2d
    if-nez v0, :cond_33

    .line 83
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->j()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v0

    .line 84
    :cond_33
    if-eqz v0, :cond_45

    .line 85
    const-string v1, "CBViewController"

    const-string v2, "Unable to create the view while trying th display the impression"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_1b

    .line 76
    :cond_40
    const/4 v0, 0x0

    move v1, v0

    goto :goto_21

    .line 81
    :cond_43
    const/4 v0, 0x0

    goto :goto_2d

    .line 89
    :cond_45
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Lcom/chartboost/sdk/impl/bb;

    if-nez v0, :cond_64

    .line 90
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v4, Lcom/chartboost/sdk/impl/bb;

    invoke-direct {v4, v3, p1}, Lcom/chartboost/sdk/impl/bb;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/Model/c;)V

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/bb;

    iput-object v0, p0, Lcom/chartboost/sdk/d;->b:Lcom/chartboost/sdk/impl/bb;

    .line 91
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Lcom/chartboost/sdk/impl/bb;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    :cond_64
    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v4, v0, Lcom/chartboost/sdk/Model/a;->b:I

    iget-object v0, p0, Lcom/chartboost/sdk/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    invoke-static {v3, v4, v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/app/Activity;ILcom/chartboost/sdk/Model/e;)V

    .line 95
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/s;->a(I)Z

    move-result v0

    if-eqz v0, :cond_9c

    iget v0, p0, Lcom/chartboost/sdk/d;->f:I

    if-ne v0, v5, :cond_9c

    iget v0, p1, Lcom/chartboost/sdk/Model/c;->n:I

    if-eq v0, v2, :cond_8b

    iget v0, p1, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v0, v6, :cond_9c

    .line 96
    :cond_8b
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/d;->f:I

    .line 97
    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/app/Activity;)V

    .line 99
    :cond_9c
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->a()V

    .line 100
    const-string v0, "CBViewController"

    const-string v3, "Displaying the impression"

    invoke-static {v0, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Lcom/chartboost/sdk/impl/bb;

    iput-object v0, p1, Lcom/chartboost/sdk/Model/c;->s:Lcom/chartboost/sdk/impl/bb;

    .line 102
    if-eqz v1, :cond_1b

    .line 103
    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez v0, :cond_c1

    .line 104
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->c()Lcom/chartboost/sdk/impl/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/d;->a:Lcom/chartboost/sdk/impl/av;

    iget-object v3, p1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0, v1, v3}, Lcom/chartboost/sdk/impl/aw;->a(Lcom/chartboost/sdk/impl/av;Lcom/chartboost/sdk/Model/a;)V

    .line 108
    :cond_c1
    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->b:I

    if-ne v0, v2, :cond_c8

    .line 109
    const/4 v2, 0x6

    .line 110
    :cond_c8
    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->o:I

    invoke-static {v0}, Lcom/chartboost/sdk/impl/av;->a(I)Ljava/lang/Integer;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_d6

    .line 112
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 115
    :cond_d6
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->m()V

    .line 116
    new-instance v0, Lcom/chartboost/sdk/c$c;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 117
    iput-object p1, v0, Lcom/chartboost/sdk/c$c;->d:Lcom/chartboost/sdk/Model/c;

    .line 118
    iget-object v1, p0, Lcom/chartboost/sdk/d;->a:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v1, v2, p1, v0, p0}, Lcom/chartboost/sdk/impl/av;->a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;Lcom/chartboost/sdk/d;)V

    .line 119
    iget-object v0, p0, Lcom/chartboost/sdk/d;->c:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->a()V

    goto/16 :goto_1b
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/bb;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Lcom/chartboost/sdk/impl/bb;

    return-object v0
.end method

.method a(Lcom/chartboost/sdk/Model/c;)V
    .registers 3

    .prologue
    .line 62
    iget v0, p1, Lcom/chartboost/sdk/Model/c;->l:I

    if-eqz v0, :cond_7

    .line 63
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/d;->e(Lcom/chartboost/sdk/Model/c;)V

    .line 65
    :cond_7
    return-void
.end method

.method a(Lcom/chartboost/sdk/Model/c;Landroid/app/Activity;)V
    .registers 7

    .prologue
    const/4 v3, -0x1

    .line 161
    new-instance v0, Lcom/chartboost/sdk/c$c;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 162
    iput-object p1, v0, Lcom/chartboost/sdk/c$c;->d:Lcom/chartboost/sdk/Model/c;

    .line 163
    iget-object v1, p0, Lcom/chartboost/sdk/d;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->l()V

    .line 166
    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v1, v0, Lcom/chartboost/sdk/Model/a;->b:I

    iget-object v0, p0, Lcom/chartboost/sdk/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    invoke-static {p2, v1, v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(Landroid/app/Activity;ILcom/chartboost/sdk/Model/e;)V

    .line 167
    iget v0, p0, Lcom/chartboost/sdk/d;->f:I

    if-eq v0, v3, :cond_43

    iget v0, p1, Lcom/chartboost/sdk/Model/c;->n:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_34

    iget v0, p1, Lcom/chartboost/sdk/Model/c;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_43

    .line 168
    :cond_34
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/sdk/d;->f:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 169
    iput v3, p0, Lcom/chartboost/sdk/d;->f:I

    .line 171
    :cond_43
    return-void
.end method

.method a(Lcom/chartboost/sdk/c;)V
    .registers 5

    .prologue
    .line 205
    const-string v0, "CBViewController"

    const-string v1, "Attempting to close impression activity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Lcom/chartboost/sdk/c;->b()Landroid/app/Activity;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_1e

    instance-of v1, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v1, :cond_1e

    .line 208
    const-string v1, "CBViewController"

    const-string v2, "Closing impression activity"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Lcom/chartboost/sdk/c;->f()V

    .line 210
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 212
    :cond_1e
    return-void
.end method

.method public b(Lcom/chartboost/sdk/Model/c;)V
    .registers 4

    .prologue
    .line 128
    const-string v0, "CBViewController"

    const-string v1, "Dismissing impression"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->b()Landroid/app/Activity;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/chartboost/sdk/d$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/chartboost/sdk/d$1;-><init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Model/c;Landroid/app/Activity;)V

    .line 150
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/c;->t:Z

    if-eqz v0, :cond_1a

    .line 151
    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/Model/c;->a(Ljava/lang/Runnable;)V

    .line 155
    :goto_19
    return-void

    .line 153
    :cond_1a
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_19
.end method

.method c(Lcom/chartboost/sdk/Model/c;)V
    .registers 5

    .prologue
    .line 175
    const-string v0, "CBViewController"

    const-string v1, "Removing impression silently"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->i()V

    .line 180
    :try_start_a
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    .line 181
    iget-object v1, p0, Lcom/chartboost/sdk/d;->b:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_1d

    .line 186
    :goto_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/d;->b:Lcom/chartboost/sdk/impl/bb;

    .line 187
    return-void

    .line 182
    :catch_1d
    move-exception v0

    .line 183
    const-string v1, "CBViewController"

    const-string v2, "Exception removing impression silently"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "removeImpressionSilently"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_19
.end method

.method public d(Lcom/chartboost/sdk/Model/c;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 191
    const-string v0, "CBViewController"

    const-string v1, "Removing impression"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x5

    iput v0, p1, Lcom/chartboost/sdk/Model/c;->l:I

    .line 193
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->h()V

    .line 194
    iput-object v5, p0, Lcom/chartboost/sdk/d;->b:Lcom/chartboost/sdk/impl/bb;

    .line 195
    iget-object v0, p0, Lcom/chartboost/sdk/d;->c:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->b()V

    .line 197
    iget-object v0, p0, Lcom/chartboost/sdk/d;->e:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/c$a;

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->v()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 200
    iget-object v0, p0, Lcom/chartboost/sdk/d;->e:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/c$a;

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    :cond_3f
    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/c;)V

    .line 202
    return-void
.end method

###### Class com.chartboost.sdk.d.AnonymousClass1 (com.chartboost.sdk.d$1)
.class Lcom/chartboost/sdk/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/d;->b(Lcom/chartboost/sdk/Model/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Model/c;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/chartboost/sdk/d;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Model/c;Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 131
    iput-object p1, p0, Lcom/chartboost/sdk/d$1;->c:Lcom/chartboost/sdk/d;

    iput-object p2, p0, Lcom/chartboost/sdk/d$1;->a:Lcom/chartboost/sdk/Model/c;

    iput-object p3, p0, Lcom/chartboost/sdk/d$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 133
    iget-object v1, p0, Lcom/chartboost/sdk/d$1;->a:Lcom/chartboost/sdk/Model/c;

    const/4 v2, 0x4

    iput v2, v1, Lcom/chartboost/sdk/Model/c;->l:I

    .line 135
    iget-object v1, p0, Lcom/chartboost/sdk/d$1;->a:Lcom/chartboost/sdk/Model/c;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->b:I

    if-ne v1, v0, :cond_f

    .line 136
    const/4 v0, 0x6

    .line 137
    :cond_f
    iget-object v1, p0, Lcom/chartboost/sdk/d$1;->a:Lcom/chartboost/sdk/Model/c;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->o:I

    invoke-static {v1}, Lcom/chartboost/sdk/impl/av;->a(I)Ljava/lang/Integer;

    move-result-object v1

    .line 138
    if-eqz v1, :cond_1f

    .line 139
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 143
    :cond_1f
    new-instance v1, Lcom/chartboost/sdk/c$c;

    iget-object v2, p0, Lcom/chartboost/sdk/d$1;->a:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 144
    iget-object v2, p0, Lcom/chartboost/sdk/d$1;->a:Lcom/chartboost/sdk/Model/c;

    iput-object v2, v1, Lcom/chartboost/sdk/c$c;->d:Lcom/chartboost/sdk/Model/c;

    .line 145
    iget-object v2, p0, Lcom/chartboost/sdk/d$1;->b:Landroid/app/Activity;

    iput-object v2, v1, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    .line 146
    iget-object v2, p0, Lcom/chartboost/sdk/d$1;->c:Lcom/chartboost/sdk/d;

    iget-object v2, v2, Lcom/chartboost/sdk/d;->a:Lcom/chartboost/sdk/impl/av;

    iget-object v3, p0, Lcom/chartboost/sdk/d$1;->a:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v2, v0, v3, v1}, Lcom/chartboost/sdk/impl/av;->a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method
