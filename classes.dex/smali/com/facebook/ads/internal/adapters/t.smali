###### Class com.facebook.ads.internal.adapters.t (com.facebook.ads.internal.adapters.t)
.class public Lcom/facebook/ads/internal/adapters/t;
.super Lcom/facebook/ads/internal/adapters/ab;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/x;


# instance fields
.field private a:Lcom/facebook/ads/internal/adapters/ac;

.field private b:Lcom/inmobi/ads/InMobiNative;

.field private c:Z

.field private d:Landroid/view/View;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/facebook/ads/internal/n/g;

.field private i:Lcom/facebook/ads/internal/n/f;

.field private j:Lcom/facebook/ads/internal/n/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/ab;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/t;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/t;Lcom/facebook/ads/internal/n/f;)Lcom/facebook/ads/internal/n/f;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/t;->i:Lcom/facebook/ads/internal/n/f;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/t;Lcom/facebook/ads/internal/n/g;)Lcom/facebook/ads/internal/n/g;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/t;->h:Lcom/facebook/ads/internal/n/g;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/t;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/t;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/t;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/t;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/t;Lcom/facebook/ads/internal/n/f;)Lcom/facebook/ads/internal/n/f;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/t;->j:Lcom/facebook/ads/internal/n/f;

    return-object p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/t;)Lcom/inmobi/ads/InMobiNative;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t;->b:Lcom/inmobi/ads/InMobiNative;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/t;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/t;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/facebook/ads/internal/adapters/t;)Lcom/facebook/ads/internal/adapters/ac;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t;->a:Lcom/facebook/ads/internal/adapters/ac;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/adapters/t;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/t;->g:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public B()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/n/e;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public C()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public D()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public E()Lcom/facebook/ads/internal/n/c;
    .registers 2

    sget-object v0, Lcom/facebook/ads/internal/n/c;->d:Lcom/facebook/ads/internal/n/c;

    return-object v0
.end method

.method public F()Lcom/facebook/ads/internal/adapters/g;
    .registers 2

    sget-object v0, Lcom/facebook/ads/internal/adapters/g;->d:Lcom/facebook/ads/internal/adapters/g;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/ac;Lcom/facebook/ads/internal/m/c;Ljava/util/Map;Lcom/facebook/ads/internal/n/e$d;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/adapters/ac;",
            "Lcom/facebook/ads/internal/m/c;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/facebook/ads/internal/n/e$d;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/t;->F()Lcom/facebook/ads/internal/adapters/g;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/y;->a(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Loading"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/q/a/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "account_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "placement_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    if-nez v0, :cond_4b

    :cond_3e
    new-instance v0, Lcom/facebook/ads/internal/protocol/a;

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->MEDIATION_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v2, "Mediation Error"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/protocol/a;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-interface {p2, p0, v0}, Lcom/facebook/ads/internal/adapters/ac;->a(Lcom/facebook/ads/internal/adapters/ab;Lcom/facebook/ads/internal/protocol/a;)V

    :goto_4a
    return-void

    :cond_4b
    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/t;->a:Lcom/facebook/ads/internal/adapters/ac;

    invoke-static {p1, v1}, Lcom/inmobi/sdk/InMobiSdk;->init(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/internal/adapters/t$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/adapters/t$1;-><init>(Lcom/facebook/ads/internal/adapters/t;Landroid/content/Context;)V

    new-instance v2, Lcom/inmobi/ads/InMobiNative;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5, v1}, Lcom/inmobi/ads/InMobiNative;-><init>(JLcom/inmobi/ads/InMobiNative$NativeAdListener;)V

    iput-object v2, p0, Lcom/facebook/ads/internal/adapters/t;->b:Lcom/inmobi/ads/InMobiNative;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t;->b:Lcom/inmobi/ads/InMobiNative;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNative;->load()V

    goto :goto_4a
.end method

.method public a(Landroid/view/View;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/t;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/t;->c_()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t;->b:Lcom/inmobi/ads/InMobiNative;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/t;->b:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0, v1}, Lcom/inmobi/ads/InMobiNative;->bind(Landroid/view/View;Lcom/inmobi/ads/InMobiNative;)V

    :cond_11
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/ac;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/t;->a:Lcom/facebook/ads/internal/adapters/ac;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t;->a:Lcom/facebook/ads/internal/adapters/ac;

    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/adapters/ac;->b(Lcom/facebook/ads/internal/adapters/ab;)V

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/t;->c_()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t;->a:Lcom/facebook/ads/internal/adapters/ac;

    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/adapters/ac;->c(Lcom/facebook/ads/internal/adapters/ab;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t;->b:Lcom/inmobi/ads/InMobiNative;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNative;->reportAdClickAndOpenLandingPage(Ljava/util/Map;)V

    :cond_11
    return-void
.end method

.method public b_()V
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/t;->c_()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t;->b:Lcom/inmobi/ads/InMobiNative;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->unbind(Landroid/view/View;)V

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/t;->d:Landroid/view/View;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public c_()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t;->b:Lcom/inmobi/ads/InMobiNative;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/t;->c:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public i()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public k()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public l()Lcom/facebook/ads/internal/n/f;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t;->i:Lcom/facebook/ads/internal/n/f;

    return-object v0
.end method

.method public m()Lcom/facebook/ads/internal/n/f;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t;->j:Lcom/facebook/ads/internal/n/f;

    return-object v0
.end method

.method public n()Lcom/facebook/ads/internal/n/h;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t;->e:Ljava/lang/String;

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/t;->b_()V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/t;->b:Lcom/inmobi/ads/InMobiNative;

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/t;->a:Lcom/facebook/ads/internal/adapters/ac;

    return-void
.end method

.method public p()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t;->f:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t;->g:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public t()Lcom/facebook/ads/internal/n/g;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public u()Lcom/facebook/ads/internal/n/f;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 2

    const-string v0, "Ad"

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public z()Lcom/facebook/ads/internal/n/j;
    .registers 2

    sget-object v0, Lcom/facebook/ads/internal/n/j;->a:Lcom/facebook/ads/internal/n/j;

    return-object v0
.end method

###### Class com.facebook.ads.internal.adapters.t.AnonymousClass1 (com.facebook.ads.internal.adapters.t$1)
.class Lcom/facebook/ads/internal/adapters/t$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inmobi/ads/InMobiNative$NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/t;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/ac;Lcom/facebook/ads/internal/m/c;Ljava/util/Map;Lcom/facebook/ads/internal/n/e$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/facebook/ads/internal/adapters/t;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/t;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/t$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissed(Lcom/inmobi/ads/InMobiNative;)V
    .registers 2

    return-void
.end method

.method public onAdDisplayed(Lcom/inmobi/ads/InMobiNative;)V
    .registers 2

    return-void
.end method

.method public onAdLoadFailed(Lcom/inmobi/ads/InMobiNative;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t$1;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/t;->F()Lcom/facebook/ads/internal/adapters/g;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/y;->a(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Failed with InMobi error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/q/a/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/t;->c(Lcom/facebook/ads/internal/adapters/t;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/t;->c(Lcom/facebook/ads/internal/adapters/t;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    new-instance v2, Lcom/facebook/ads/internal/protocol/a;

    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->MEDIATION_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v3

    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/facebook/ads/internal/protocol/a;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/adapters/ac;->a(Lcom/facebook/ads/internal/adapters/ab;Lcom/facebook/ads/internal/protocol/a;)V

    :cond_4c
    return-void
.end method

.method public onAdLoadSucceeded(Lcom/inmobi/ads/InMobiNative;)V
    .registers 8

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiNative;->getAdContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/internal/adapters/t;->a(Lcom/facebook/ads/internal/adapters/t;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    const-string v2, "description"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/internal/adapters/t;->b(Lcom/facebook/ads/internal/adapters/t;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    const-string v2, "cta"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/internal/adapters/t;->c(Lcom/facebook/ads/internal/adapters/t;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "icon"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_50

    const-string v2, "width"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "height"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    new-instance v5, Lcom/facebook/ads/internal/n/f;

    invoke-direct {v5, v0, v2, v3}, Lcom/facebook/ads/internal/n/f;-><init>(Ljava/lang/String;II)V

    invoke-static {v4, v5}, Lcom/facebook/ads/internal/adapters/t;->a(Lcom/facebook/ads/internal/adapters/t;Lcom/facebook/ads/internal/n/f;)Lcom/facebook/ads/internal/n/f;

    :cond_50
    const-string v0, "screenshots"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_74

    const-string v2, "width"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "height"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    new-instance v5, Lcom/facebook/ads/internal/n/f;

    invoke-direct {v5, v0, v2, v3}, Lcom/facebook/ads/internal/n/f;-><init>(Ljava/lang/String;II)V

    invoke-static {v4, v5}, Lcom/facebook/ads/internal/adapters/t;->b(Lcom/facebook/ads/internal/adapters/t;Lcom/facebook/ads/internal/n/f;)Lcom/facebook/ads/internal/n/f;

    :cond_74
    const-string v0, "rating"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_79} :catch_dc

    move-result-object v0

    :try_start_7a
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    new-instance v3, Lcom/facebook/ads/internal/n/g;

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/facebook/ads/internal/n/g;-><init>(DD)V

    invoke-static {v2, v3}, Lcom/facebook/ads/internal/adapters/t;->a(Lcom/facebook/ads/internal/adapters/t;Lcom/facebook/ads/internal/n/g;)Lcom/facebook/ads/internal/n/g;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_8a} :catch_11b

    :goto_8a
    :try_start_8a
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/t;->a(Lcom/facebook/ads/internal/adapters/t;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/t;->a(Lcom/facebook/ads/internal/adapters/t;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/t;->b(Lcom/facebook/ads/internal/adapters/t;)Lcom/inmobi/ads/InMobiNative;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/t;->a(Lcom/facebook/ads/internal/adapters/t;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/inmobi/ads/InMobiNative;->bind(Landroid/view/View;Lcom/inmobi/ads/InMobiNative;)V

    :cond_a6
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/t;->c(Lcom/facebook/ads/internal/adapters/t;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t$1;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/t;->F()Lcom/facebook/ads/internal/adapters/g;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/y;->a(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Loaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/q/a/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/t;->c(Lcom/facebook/ads/internal/adapters/t;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/ac;->a(Lcom/facebook/ads/internal/adapters/ab;)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_db} :catch_dc

    :cond_db
    :goto_db
    return-void

    :catch_dc
    move-exception v0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/t;->c(Lcom/facebook/ads/internal/adapters/t;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t$1;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/t;->F()Lcom/facebook/ads/internal/adapters/g;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/y;->a(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Failed. Internal AN SDK error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/q/a/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/t;->c(Lcom/facebook/ads/internal/adapters/t;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/t$1;->b:Lcom/facebook/ads/internal/adapters/t;

    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v3, "Internal Error"

    invoke-static {v2, v3}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/adapters/ac;->a(Lcom/facebook/ads/internal/adapters/ab;Lcom/facebook/ads/internal/protocol/a;)V

    goto :goto_db

    :catch_11b
    move-exception v0

    goto/16 :goto_8a
.end method

.method public onUserLeftApplication(Lcom/inmobi/ads/InMobiNative;)V
    .registers 2

    return-void
.end method
