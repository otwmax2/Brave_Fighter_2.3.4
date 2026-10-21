###### Class com.moat.analytics.mobile.vng.h (com.moat.analytics.mobile.vng.h)
.class abstract Lcom/moat/analytics/mobile/vng/h;
.super Lcom/moat/analytics/mobile/vng/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/vng/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PlayerOrIMAAd:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/moat/analytics/mobile/vng/c",
        "<TPlayerOrIMAAd;>;"
    }
.end annotation


# instance fields
.field l:I

.field private m:Lcom/moat/analytics/mobile/vng/h$a;

.field private n:I

.field private o:D

.field private p:I

.field private q:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/high16 v0, -0x80000000

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/c;-><init>(Ljava/lang/String;)V

    iput v0, p0, Lcom/moat/analytics/mobile/vng/h;->p:I

    iput v0, p0, Lcom/moat/analytics/mobile/vng/h;->l:I

    iput v0, p0, Lcom/moat/analytics/mobile/vng/h;->n:I

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/moat/analytics/mobile/vng/h;->o:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/moat/analytics/mobile/vng/h;->q:I

    sget-object v0, Lcom/moat/analytics/mobile/vng/h$a;->a:Lcom/moat/analytics/mobile/vng/h$a;

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/h;->m:Lcom/moat/analytics/mobile/vng/h$a;

    return-void
.end method

.method private n()V
    .registers 5

    new-instance v0, Lcom/moat/analytics/mobile/vng/h$1;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/vng/h$1;-><init>(Lcom/moat/analytics/mobile/vng/h;)V

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/h;->h:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected a(Lcom/moat/analytics/mobile/vng/MoatAdEvent;)Lorg/json/JSONObject;
    .registers 6

    const/high16 v3, -0x80000000

    iget-object v0, p1, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->b:Ljava/lang/Integer;

    sget-object v1, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p1, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->b:Ljava/lang/Integer;

    :goto_e
    iget-object v1, p1, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_28

    iget-object v1, p1, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p1, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->d:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    sget-object v2, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    if-ne v1, v2, :cond_30

    iget v1, p0, Lcom/moat/analytics/mobile/vng/h;->n:I

    if-lez v1, :cond_30

    :cond_28
    iget v0, p0, Lcom/moat/analytics/mobile/vng/h;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->b:Ljava/lang/Integer;

    :cond_30
    iget-object v1, p1, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->d:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    sget-object v2, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    if-ne v1, v2, :cond_54

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v3, :cond_4c

    iget v1, p0, Lcom/moat/analytics/mobile/vng/h;->l:I

    if-eq v1, v3, :cond_4c

    iget v1, p0, Lcom/moat/analytics/mobile/vng/h;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/moat/analytics/mobile/vng/h;->a(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_68

    :cond_4c
    sget-object v0, Lcom/moat/analytics/mobile/vng/h$a;->d:Lcom/moat/analytics/mobile/vng/h$a;

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/h;->m:Lcom/moat/analytics/mobile/vng/h$a;

    sget-object v0, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    iput-object v0, p1, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->d:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    :cond_54
    :goto_54
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/vng/c;->a(Lcom/moat/analytics/mobile/vng/MoatAdEvent;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_59
    :try_start_59
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/h;->j()Ljava/lang/Integer;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_60

    move-result-object v0

    :goto_5d
    iput-object v0, p1, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->b:Ljava/lang/Integer;

    goto :goto_e

    :catch_60
    move-exception v0

    iget v0, p0, Lcom/moat/analytics/mobile/vng/h;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5d

    :cond_68
    sget-object v0, Lcom/moat/analytics/mobile/vng/h$a;->e:Lcom/moat/analytics/mobile/vng/h$a;

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/h;->m:Lcom/moat/analytics/mobile/vng/h$a;

    goto :goto_54
.end method

.method public a(Ljava/util/Map;Ljava/lang/Object;Landroid/view/View;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;TPlayerOrIMAAd;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/h;->e:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/h;->n()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_c

    :cond_7
    :goto_7
    invoke-super {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/vng/c;->a(Ljava/util/Map;Ljava/lang/Object;Landroid/view/View;)Z

    move-result v0

    return v0

    :catch_c
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_7
.end method

.method protected abstract j()Ljava/lang/Integer;
.end method

.method protected abstract k()Z
.end method

.method protected abstract l()Ljava/lang/Integer;
.end method

.method m()Z
    .registers 13

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/h;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/h;->i()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    :goto_10
    return v3

    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/h;->j()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v0, p0, Lcom/moat/analytics/mobile/vng/h;->n:I

    if-ltz v0, :cond_1f

    if-ltz v4, :cond_10

    :cond_1f
    iput v4, p0, Lcom/moat/analytics/mobile/vng/h;->n:I

    if-nez v4, :cond_25

    move v3, v2

    goto :goto_10

    :cond_25
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/h;->l()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/h;->k()Z

    move-result v5

    int-to-double v6, v0

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    div-double/2addr v6, v8

    invoke-static {}, Lcom/moat/analytics/mobile/vng/s;->a()D

    move-result-wide v8

    const/4 v1, 0x0

    iget v10, p0, Lcom/moat/analytics/mobile/vng/h;->p:I

    if-le v4, v10, :cond_40

    iput v4, p0, Lcom/moat/analytics/mobile/vng/h;->p:I

    :cond_40
    iget v10, p0, Lcom/moat/analytics/mobile/vng/h;->l:I

    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_48

    iput v0, p0, Lcom/moat/analytics/mobile/vng/h;->l:I

    :cond_48
    if-eqz v5, :cond_d3

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/h;->m:Lcom/moat/analytics/mobile/vng/h$a;

    sget-object v5, Lcom/moat/analytics/mobile/vng/h$a;->a:Lcom/moat/analytics/mobile/vng/h$a;

    if-ne v0, v5, :cond_90

    sget-object v1, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_START:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    sget-object v0, Lcom/moat/analytics/mobile/vng/h$a;->c:Lcom/moat/analytics/mobile/vng/h$a;

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/h;->m:Lcom/moat/analytics/mobile/vng/h$a;

    :cond_56
    :goto_56
    if-eqz v1, :cond_e1

    move v0, v2

    :goto_59
    if-nez v0, :cond_77

    iget-wide v6, p0, Lcom/moat/analytics/mobile/vng/h;->o:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_77

    iget-wide v6, p0, Lcom/moat/analytics/mobile/vng/h;->o:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpl-double v5, v6, v10

    if-lez v5, :cond_77

    sget-object v0, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_VOLUME_CHANGE:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    move-object v1, v0

    move v0, v2

    :cond_77
    if-eqz v0, :cond_89

    new-instance v0, Lcom/moat/analytics/mobile/vng/MoatAdEvent;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v0, v1, v4, v5}, Lcom/moat/analytics/mobile/vng/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/vng/MoatAdEventType;Ljava/lang/Integer;Ljava/lang/Double;)V

    invoke-virtual {p0, v0}, Lcom/moat/analytics/mobile/vng/h;->dispatchEvent(Lcom/moat/analytics/mobile/vng/MoatAdEvent;)V

    :cond_89
    iput-wide v8, p0, Lcom/moat/analytics/mobile/vng/h;->o:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/moat/analytics/mobile/vng/h;->q:I

    move v3, v2

    goto :goto_10

    :cond_90
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/h;->m:Lcom/moat/analytics/mobile/vng/h$a;

    sget-object v5, Lcom/moat/analytics/mobile/vng/h$a;->b:Lcom/moat/analytics/mobile/vng/h$a;

    if-ne v0, v5, :cond_ab

    sget-object v1, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_PLAYING:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    sget-object v0, Lcom/moat/analytics/mobile/vng/h$a;->c:Lcom/moat/analytics/mobile/vng/h$a;

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/h;->m:Lcom/moat/analytics/mobile/vng/h$a;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_9c} :catch_9d

    goto :goto_56

    :catch_9d
    move-exception v0

    iget v0, p0, Lcom/moat/analytics/mobile/vng/h;->q:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/moat/analytics/mobile/vng/h;->q:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_e4

    move v0, v2

    :goto_a8
    move v3, v0

    goto/16 :goto_10

    :cond_ab
    int-to-double v10, v4

    div-double v6, v10, v6

    :try_start_ae
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    add-int/lit8 v0, v0, -0x1

    const/4 v5, -0x1

    if-le v0, v5, :cond_e6

    const/4 v5, 0x3

    if-ge v0, v5, :cond_e6

    sget-object v5, Lcom/moat/analytics/mobile/vng/h;->f:[Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    aget-object v0, v5, v0

    iget-object v5, p0, Lcom/moat/analytics/mobile/vng/h;->g:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e6

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/h;->g:Ljava/util/Map;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d1
    move-object v1, v0

    goto :goto_56

    :cond_d3
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/h;->m:Lcom/moat/analytics/mobile/vng/h$a;

    sget-object v5, Lcom/moat/analytics/mobile/vng/h$a;->b:Lcom/moat/analytics/mobile/vng/h$a;

    if-eq v0, v5, :cond_56

    sget-object v1, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_PAUSED:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    sget-object v0, Lcom/moat/analytics/mobile/vng/h$a;->b:Lcom/moat/analytics/mobile/vng/h$a;

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/h;->m:Lcom/moat/analytics/mobile/vng/h$a;
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_df} :catch_9d

    goto/16 :goto_56

    :cond_e1
    move v0, v3

    goto/16 :goto_59

    :cond_e4
    move v0, v3

    goto :goto_a8

    :cond_e6
    move-object v0, v1

    goto :goto_d1
.end method

.method public stopTracking()V
    .registers 4

    :try_start_0
    new-instance v0, Lcom/moat/analytics/mobile/vng/MoatAdEvent;

    sget-object v1, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/vng/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/vng/MoatAdEventType;)V

    invoke-virtual {p0, v0}, Lcom/moat/analytics/mobile/vng/h;->dispatchEvent(Lcom/moat/analytics/mobile/vng/MoatAdEvent;)V

    const-string v0, "[SUCCESS] "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stopTracking succeeded for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    :goto_2e
    return-void

    :catch_2f
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_2e
.end method

###### Class com.moat.analytics.mobile.vng.h.AnonymousClass1 (com.moat.analytics.mobile.vng.h$1)
.class Lcom/moat/analytics/mobile/vng/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/h;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/h;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/h;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/h$1;->a:Lcom/moat/analytics/mobile/vng/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/h$1;->a:Lcom/moat/analytics/mobile/vng/h;

    iget-object v0, v0, Lcom/moat/analytics/mobile/vng/h;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/h$1;->a:Lcom/moat/analytics/mobile/vng/h;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/h;->i()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/h$1;->a:Lcom/moat/analytics/mobile/vng/h;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/h;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/h$1;->a:Lcom/moat/analytics/mobile/vng/h;

    iget-object v0, v0, Lcom/moat/analytics/mobile/vng/h;->h:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2b
    return-void

    :cond_2c
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/h$1;->a:Lcom/moat/analytics/mobile/vng/h;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/h;->h()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    goto :goto_2b

    :catch_32
    move-exception v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/h$1;->a:Lcom/moat/analytics/mobile/vng/h;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/vng/h;->h()V

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_2b

    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/h$1;->a:Lcom/moat/analytics/mobile/vng/h;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/h;->h()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_32

    goto :goto_2b
.end method

###### Class com.moat.analytics.mobile.vng.h.a (com.moat.analytics.mobile.vng.h$a)
.class public final enum Lcom/moat/analytics/mobile/vng/h$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/moat/analytics/mobile/vng/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/moat/analytics/mobile/vng/h$a;

.field public static final enum b:Lcom/moat/analytics/mobile/vng/h$a;

.field public static final enum c:Lcom/moat/analytics/mobile/vng/h$a;

.field public static final enum d:Lcom/moat/analytics/mobile/vng/h$a;

.field public static final enum e:Lcom/moat/analytics/mobile/vng/h$a;

.field private static final synthetic f:[Lcom/moat/analytics/mobile/vng/h$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/moat/analytics/mobile/vng/h$a;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/vng/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/h$a;->a:Lcom/moat/analytics/mobile/vng/h$a;

    new-instance v0, Lcom/moat/analytics/mobile/vng/h$a;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v3}, Lcom/moat/analytics/mobile/vng/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/h$a;->b:Lcom/moat/analytics/mobile/vng/h$a;

    new-instance v0, Lcom/moat/analytics/mobile/vng/h$a;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v4}, Lcom/moat/analytics/mobile/vng/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/h$a;->c:Lcom/moat/analytics/mobile/vng/h$a;

    new-instance v0, Lcom/moat/analytics/mobile/vng/h$a;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v5}, Lcom/moat/analytics/mobile/vng/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/h$a;->d:Lcom/moat/analytics/mobile/vng/h$a;

    new-instance v0, Lcom/moat/analytics/mobile/vng/h$a;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v6}, Lcom/moat/analytics/mobile/vng/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/h$a;->e:Lcom/moat/analytics/mobile/vng/h$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/moat/analytics/mobile/vng/h$a;

    sget-object v1, Lcom/moat/analytics/mobile/vng/h$a;->a:Lcom/moat/analytics/mobile/vng/h$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/moat/analytics/mobile/vng/h$a;->b:Lcom/moat/analytics/mobile/vng/h$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/moat/analytics/mobile/vng/h$a;->c:Lcom/moat/analytics/mobile/vng/h$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/moat/analytics/mobile/vng/h$a;->d:Lcom/moat/analytics/mobile/vng/h$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/moat/analytics/mobile/vng/h$a;->e:Lcom/moat/analytics/mobile/vng/h$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/moat/analytics/mobile/vng/h$a;->f:[Lcom/moat/analytics/mobile/vng/h$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moat/analytics/mobile/vng/h$a;
    .registers 2

    const-class v0, Lcom/moat/analytics/mobile/vng/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/h$a;

    return-object v0
.end method

.method public static values()[Lcom/moat/analytics/mobile/vng/h$a;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/vng/h$a;->f:[Lcom/moat/analytics/mobile/vng/h$a;

    invoke-virtual {v0}, [Lcom/moat/analytics/mobile/vng/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/moat/analytics/mobile/vng/h$a;

    return-object v0
.end method
