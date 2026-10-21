###### Class com.vungle.publisher.rg (com.vungle.publisher.rg)
.class public Lcom/vungle/publisher/rg;
.super Lcom/vungle/publisher/ml;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/rg$a;
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/iz$b;

.field b:Lcom/vungle/publisher/qg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/rr;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/rv$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/bz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/env/i;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/jn$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private h:Lcom/vungle/publisher/p;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/vungle/publisher/x;

.field private n:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/vungle/publisher/ml;-><init>()V

    .line 51
    iput-boolean v1, p0, Lcom/vungle/publisher/rg;->i:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/rg;->j:Z

    .line 53
    iput-boolean v1, p0, Lcom/vungle/publisher/rg;->k:Z

    .line 54
    iput-boolean v1, p0, Lcom/vungle/publisher/rg;->l:Z

    .line 76
    return-void
.end method

.method private a(Ljava/util/Map;)Lcom/vungle/publisher/hf;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vungle/publisher/hf;"
        }
    .end annotation

    .prologue
    .line 276
    const-string v0, "event"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    new-instance v1, Lcom/vungle/publisher/hf;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/hf;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic a(Lcom/vungle/publisher/rg;Lcom/vungle/publisher/p;)Lcom/vungle/publisher/p;
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vungle/publisher/rg;->h:Lcom/vungle/publisher/p;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/publisher/rg;Lcom/vungle/publisher/x;)Lcom/vungle/publisher/x;
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vungle/publisher/rg;->m:Lcom/vungle/publisher/x;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/publisher/rg;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vungle/publisher/rg;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/publisher/rg;Z)Z
    .registers 2

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/vungle/publisher/rg;->i:Z

    return p1
.end method


# virtual methods
.method a(Landroid/webkit/WebView;)V
    .registers 5

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/vungle/publisher/rg;->k:Z

    if-nez v0, :cond_18

    .line 188
    :try_start_4
    iget-object v0, p0, Lcom/vungle/publisher/rg;->c:Lcom/vungle/publisher/rr;

    iget-object v1, p0, Lcom/vungle/publisher/rg;->a:Lcom/vungle/publisher/iz$b;

    invoke-virtual {v0, p1, v1}, Lcom/vungle/publisher/rr;->a(Landroid/webkit/WebView;Lcom/vungle/publisher/iz$b;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_b} :catch_19

    .line 192
    :goto_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/rg;->k:Z

    .line 193
    iget-object v0, p0, Lcom/vungle/publisher/rg;->b:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/sq;

    invoke-direct {v1}, Lcom/vungle/publisher/sq;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 195
    :cond_18
    return-void

    .line 189
    :catch_19
    move-exception v0

    .line 190
    const-string v1, "VungleAd"

    const-string v2, "failed to inject JSON tokens"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method a(Landroid/webkit/WebView;Landroid/net/Uri;)V
    .registers 5

    .prologue
    .line 155
    invoke-virtual {p0, p2}, Lcom/vungle/publisher/rg;->a(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 157
    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 158
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/publisher/rg;->j:Z

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/rg;->l:Z

    .line 162
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 166
    iget-object v0, p0, Lcom/vungle/publisher/rg;->b:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/sp;

    invoke-direct {v1}, Lcom/vungle/publisher/sp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 168
    :cond_2a
    return-void
.end method

.method a(Landroid/webkit/WebView;Lcom/vungle/publisher/rv;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Lcom/vungle/publisher/rv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    const-string v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received MRAID event from js: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/vungle/publisher/rg$1;->a:[I

    invoke-virtual {p2}, Lcom/vungle/publisher/rv;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_154

    .line 262
    const-string v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown MRAID Javascript command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_3b
    :pswitch_3b
    iget-object v0, p0, Lcom/vungle/publisher/rg;->c:Lcom/vungle/publisher/rr;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/rr;->c(Landroid/webkit/WebView;)V

    .line 265
    :goto_40
    return-void

    .line 202
    :pswitch_41
    iget-object v0, p0, Lcom/vungle/publisher/rg;->b:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/sj;

    invoke-direct {v1}, Lcom/vungle/publisher/sj;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    goto :goto_3b

    .line 205
    :pswitch_4c
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/rg;->a(Landroid/webkit/WebView;)V

    goto :goto_40

    .line 209
    :pswitch_50
    const-string v0, "sdkCloseButton"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/publisher/ro$b;->valueOf(Ljava/lang/String;)Lcom/vungle/publisher/ro$b;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/vungle/publisher/rg;->b:Lcom/vungle/publisher/qg;

    new-instance v2, Lcom/vungle/publisher/st;

    invoke-direct {v2, v0}, Lcom/vungle/publisher/st;-><init>(Lcom/vungle/publisher/ro$b;)V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    goto :goto_3b

    .line 213
    :pswitch_67
    const-string v0, "useCustomPrivacy"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/publisher/zk;->c(Ljava/lang/String;)Z

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/vungle/publisher/rg;->b:Lcom/vungle/publisher/qg;

    new-instance v2, Lcom/vungle/publisher/su;

    invoke-direct {v2, v0}, Lcom/vungle/publisher/su;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    goto :goto_3b

    .line 217
    :pswitch_7e
    const-string v0, "url"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 219
    invoke-virtual {p0, p1, v0}, Lcom/vungle/publisher/rg;->a(Landroid/webkit/WebView;Landroid/net/Uri;)V

    goto :goto_3b

    .line 222
    :pswitch_8e
    iget-object v1, p0, Lcom/vungle/publisher/rg;->b:Lcom/vungle/publisher/qg;

    new-instance v2, Lcom/vungle/publisher/aq;

    const-string v0, "url"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/vungle/publisher/aq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    goto :goto_3b

    .line 225
    :pswitch_a1
    const-string v0, "allowOrientationChange"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/publisher/zk;->c(Ljava/lang/String;)Z

    move-result v1

    .line 226
    const-string v0, "forceOrientation"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/publisher/zk;->e(Ljava/lang/String;)Lcom/vungle/publisher/ry;

    move-result-object v0

    .line 227
    iget-object v2, p0, Lcom/vungle/publisher/rg;->b:Lcom/vungle/publisher/qg;

    new-instance v3, Lcom/vungle/publisher/sr;

    invoke-direct {v3, v0, v1}, Lcom/vungle/publisher/sr;-><init>(Lcom/vungle/publisher/ry;Z)V

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    goto/16 :goto_3b

    .line 230
    :pswitch_c5
    iget-object v0, p0, Lcom/vungle/publisher/rg;->b:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/sg;

    invoke-direct {p0, p3}, Lcom/vungle/publisher/rg;->a(Ljava/util/Map;)Lcom/vungle/publisher/hf;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vungle/publisher/sg;-><init>(Lcom/vungle/publisher/hf;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    goto/16 :goto_3b

    .line 234
    :pswitch_d5
    const-string v0, "value"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    iget-object v1, p0, Lcom/vungle/publisher/rg;->b:Lcom/vungle/publisher/qg;

    new-instance v2, Lcom/vungle/publisher/si;

    invoke-direct {p0, p3}, Lcom/vungle/publisher/rg;->a(Ljava/util/Map;)Lcom/vungle/publisher/hf;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/vungle/publisher/si;-><init>(Lcom/vungle/publisher/jf;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    goto/16 :goto_3b

    .line 238
    :pswitch_ed
    const-string v0, "code"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lcom/vungle/publisher/rg;->b:Lcom/vungle/publisher/qg;

    new-instance v2, Lcom/vungle/publisher/sm;

    invoke-direct {v2, v0}, Lcom/vungle/publisher/sm;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    goto/16 :goto_3b

    .line 242
    :pswitch_101
    iget-object v0, p0, Lcom/vungle/publisher/rg;->b:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/ax;

    invoke-direct {v1}, Lcom/vungle/publisher/ax;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    goto/16 :goto_3b

    .line 252
    :pswitch_10d
    :try_start_10d
    const-string v0, "selector"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/publisher/ut;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/vungle/publisher/rg;->e:Lcom/vungle/publisher/bz;

    invoke-static {p0, p1, v0}, Lcom/vungle/publisher/rh;->a(Lcom/vungle/publisher/rg;Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/vungle/publisher/bz;->a(Ljava/lang/Runnable;J)V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_124} :catch_126

    goto/16 :goto_3b

    .line 255
    :catch_126
    move-exception v0

    move-object v1, v0

    .line 256
    const-string v2, "VungleAd"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid mraid video selector: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v0, "selector"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    iget-object v0, p0, Lcom/vungle/publisher/rg;->b:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/sn;

    invoke-direct {v1}, Lcom/vungle/publisher/sn;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    goto/16 :goto_3b

    .line 200
    :pswitch_data_154
    .packed-switch 0x1
        :pswitch_41
        :pswitch_4c
        :pswitch_50
        :pswitch_67
        :pswitch_7e
        :pswitch_8e
        :pswitch_a1
        :pswitch_c5
        :pswitch_d5
        :pswitch_d5
        :pswitch_ed
        :pswitch_101
        :pswitch_3b
        :pswitch_10d
    .end packed-switch
.end method

.method synthetic a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/vungle/publisher/rg;->c:Lcom/vungle/publisher/rr;

    invoke-virtual {v0, p1, p2}, Lcom/vungle/publisher/rr;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/vungle/publisher/rg;->j:Z

    return v0
.end method

.method a(Landroid/net/Uri;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 173
    iget-object v0, p0, Lcom/vungle/publisher/rg;->g:Lcom/vungle/publisher/jn$a;

    iget-object v3, p0, Lcom/vungle/publisher/rg;->n:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/vungle/publisher/jn$a;->a(Ljava/lang/Object;Z)Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/jn;

    .line 174
    sget-object v3, Lcom/vungle/publisher/ru;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    if-eqz v0, :cond_1f

    .line 175
    invoke-virtual {v0}, Lcom/vungle/publisher/jn;->w()Z

    move-result v0

    if-nez v0, :cond_25

    :cond_1f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_4d

    .line 178
    :cond_25
    const-string v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "navigating to external location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/vungle/publisher/rg;->b:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/so;

    invoke-direct {v1, p1}, Lcom/vungle/publisher/so;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 180
    const/4 v0, 0x1

    .line 182
    :goto_4c
    return v0

    :cond_4d
    move v0, v1

    goto :goto_4c
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/vungle/publisher/rg;->l:Z

    return v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid page finished loading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-boolean v0, p0, Lcom/vungle/publisher/rg;->j:Z

    if-eqz v0, :cond_32

    .line 103
    const-string v0, "VungleAd"

    const-string v1, "mraid webview finished loading"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/vungle/publisher/rg;->c:Lcom/vungle/publisher/rr;

    iget-object v1, p0, Lcom/vungle/publisher/rg;->h:Lcom/vungle/publisher/p;

    iget-boolean v2, p0, Lcom/vungle/publisher/rg;->i:Z

    iget-object v3, p0, Lcom/vungle/publisher/rg;->m:Lcom/vungle/publisher/x;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/vungle/publisher/rr;->a(Landroid/webkit/WebView;Lcom/vungle/publisher/p;ZLcom/vungle/publisher/x;)V

    .line 116
    :goto_2e
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/ml;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 117
    return-void

    .line 107
    :cond_32
    iget-boolean v0, p0, Lcom/vungle/publisher/rg;->l:Z

    if-eqz v0, :cond_4b

    const-string v0, "about:blank"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 109
    const-string v0, "VungleAd"

    const-string v1, "clear history"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/publisher/rg;->l:Z

    .line 111
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 113
    :cond_4b
    iget-object v0, p0, Lcom/vungle/publisher/rg;->b:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/st;

    sget-object v2, Lcom/vungle/publisher/ro$b;->a:Lcom/vungle/publisher/ro$b;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/st;-><init>(Lcom/vungle/publisher/ro$b;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/vungle/publisher/rg;->b:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/sr;

    sget-object v2, Lcom/vungle/publisher/ry;->c:Lcom/vungle/publisher/ry;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/vungle/publisher/sr;-><init>(Lcom/vungle/publisher/ry;Z)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    goto :goto_2e
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/ml;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 96
    const-string v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid page started loading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received error in WebViewClient: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    iget-object v0, p0, Lcom/vungle/publisher/rg;->b:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/sm;

    const-string v2, "100"

    invoke-direct {v1, v2}, Lcom/vungle/publisher/sm;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Lcom/vungle/publisher/ml;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 87
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    .line 88
    const-string v1, "VungleAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received ssl error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/vungle/publisher/rg;->b:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/sm;

    const-string v2, "101"

    invoke-direct {v1, v2}, Lcom/vungle/publisher/sm;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/ml;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 91
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 10
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 121
    const-string v0, "VungleAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mraid attempted to navigate to url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :try_start_19
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_62

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 134
    const-string v4, "mraid"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 136
    :try_start_2d
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 137
    invoke-static {v2}, Lcom/vungle/publisher/zk;->a(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4d} :catch_4e

    goto :goto_3a

    .line 142
    :catch_4e
    move-exception v0

    .line 143
    const-string v2, "VungleAd"

    const-string v3, "exception while overriding mraid url"

    invoke-static {v2, v3, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    iget-object v0, p0, Lcom/vungle/publisher/rg;->b:Lcom/vungle/publisher/qg;

    new-instance v2, Lcom/vungle/publisher/sn;

    invoke-direct {v2}, Lcom/vungle/publisher/sn;-><init>()V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    :goto_60
    move v0, v1

    .line 148
    :goto_61
    return v0

    .line 125
    :catch_62
    move-exception v0

    .line 126
    const-string v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    iget-object v0, p0, Lcom/vungle/publisher/rg;->b:Lcom/vungle/publisher/qg;

    new-instance v2, Lcom/vungle/publisher/sn;

    invoke-direct {v2}, Lcom/vungle/publisher/sn;-><init>()V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    move v0, v1

    .line 128
    goto :goto_61

    .line 140
    :cond_87
    :try_start_87
    iget-object v0, p0, Lcom/vungle/publisher/rg;->d:Lcom/vungle/publisher/rv$a;

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/rv$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/rv;

    move-result-object v0

    .line 141
    invoke-virtual {p0, p1, v0, v4}, Lcom/vungle/publisher/rg;->a(Landroid/webkit/WebView;Lcom/vungle/publisher/rv;Ljava/util/Map;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_90} :catch_4e

    goto :goto_60

    .line 148
    :cond_91
    invoke-virtual {p0, v2}, Lcom/vungle/publisher/rg;->a(Landroid/net/Uri;)Z

    move-result v0

    goto :goto_61
.end method

###### Class com.vungle.publisher.rg.AnonymousClass1 (com.vungle.publisher.rg$1)
.class synthetic Lcom/vungle/publisher/rg$1;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/rg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 200
    invoke-static {}, Lcom/vungle/publisher/rv;->values()[Lcom/vungle/publisher/rv;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vungle/publisher/rg$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/vungle/publisher/rg$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/rv;->a:Lcom/vungle/publisher/rv;

    invoke-virtual {v1}, Lcom/vungle/publisher/rv;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_d7

    :goto_14
    :try_start_14
    sget-object v0, Lcom/vungle/publisher/rg$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/rv;->j:Lcom/vungle/publisher/rv;

    invoke-virtual {v1}, Lcom/vungle/publisher/rv;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_d4

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/vungle/publisher/rg$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/rv;->c:Lcom/vungle/publisher/rv;

    invoke-virtual {v1}, Lcom/vungle/publisher/rv;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_d1

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/vungle/publisher/rg$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/rv;->r:Lcom/vungle/publisher/rv;

    invoke-virtual {v1}, Lcom/vungle/publisher/rv;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_ce

    :goto_35
    :try_start_35
    sget-object v0, Lcom/vungle/publisher/rg$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/rv;->d:Lcom/vungle/publisher/rv;

    invoke-virtual {v1}, Lcom/vungle/publisher/rv;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_cb

    :goto_40
    :try_start_40
    sget-object v0, Lcom/vungle/publisher/rg$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/rv;->p:Lcom/vungle/publisher/rv;

    invoke-virtual {v1}, Lcom/vungle/publisher/rv;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_c9

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/vungle/publisher/rg$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/rv;->f:Lcom/vungle/publisher/rv;

    invoke-virtual {v1}, Lcom/vungle/publisher/rv;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_c7

    :goto_56
    :try_start_56
    sget-object v0, Lcom/vungle/publisher/rg$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/rv;->l:Lcom/vungle/publisher/rv;

    invoke-virtual {v1}, Lcom/vungle/publisher/rv;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_c5

    :goto_62
    :try_start_62
    sget-object v0, Lcom/vungle/publisher/rg$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/rv;->m:Lcom/vungle/publisher/rv;

    invoke-virtual {v1}, Lcom/vungle/publisher/rv;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_c3

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/vungle/publisher/rg$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/rv;->n:Lcom/vungle/publisher/rv;

    invoke-virtual {v1}, Lcom/vungle/publisher/rv;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_c1

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/vungle/publisher/rg$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/rv;->o:Lcom/vungle/publisher/rv;

    invoke-virtual {v1}, Lcom/vungle/publisher/rv;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_bf

    :goto_86
    :try_start_86
    sget-object v0, Lcom/vungle/publisher/rg$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/rv;->k:Lcom/vungle/publisher/rv;

    invoke-virtual {v1}, Lcom/vungle/publisher/rv;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_bd

    :goto_92
    :try_start_92
    sget-object v0, Lcom/vungle/publisher/rg$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/rv;->s:Lcom/vungle/publisher/rv;

    invoke-virtual {v1}, Lcom/vungle/publisher/rv;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_bb

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/vungle/publisher/rg$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/rv;->q:Lcom/vungle/publisher/rv;

    invoke-virtual {v1}, Lcom/vungle/publisher/rv;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_b9

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/vungle/publisher/rg$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/rv;->t:Lcom/vungle/publisher/rv;

    invoke-virtual {v1}, Lcom/vungle/publisher/rv;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_b7

    :goto_b6
    return-void

    :catch_b7
    move-exception v0

    goto :goto_b6

    :catch_b9
    move-exception v0

    goto :goto_aa

    :catch_bb
    move-exception v0

    goto :goto_9e

    :catch_bd
    move-exception v0

    goto :goto_92

    :catch_bf
    move-exception v0

    goto :goto_86

    :catch_c1
    move-exception v0

    goto :goto_7a

    :catch_c3
    move-exception v0

    goto :goto_6e

    :catch_c5
    move-exception v0

    goto :goto_62

    :catch_c7
    move-exception v0

    goto :goto_56

    :catch_c9
    move-exception v0

    goto :goto_4b

    :catch_cb
    move-exception v0

    goto/16 :goto_40

    :catch_ce
    move-exception v0

    goto/16 :goto_35

    :catch_d1
    move-exception v0

    goto/16 :goto_2a

    :catch_d4
    move-exception v0

    goto/16 :goto_1f

    :catch_d7
    move-exception v0

    goto/16 :goto_14
.end method

###### Class com.vungle.publisher.rg.a (com.vungle.publisher.rg$a)
.class public Lcom/vungle/publisher/rg$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/rg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/rg;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/iz$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/vungle/publisher/p;ZLcom/vungle/publisher/x;)Lcom/vungle/publisher/rg;
    .registers 7

    .prologue
    .line 292
    iget-object v0, p0, Lcom/vungle/publisher/rg$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/rg;

    .line 293
    invoke-static {v0, p4}, Lcom/vungle/publisher/rg;->a(Lcom/vungle/publisher/rg;Lcom/vungle/publisher/x;)Lcom/vungle/publisher/x;

    .line 294
    iget-object v1, p0, Lcom/vungle/publisher/rg$a;->b:Lcom/vungle/publisher/iz$a;

    invoke-virtual {v1, p1}, Lcom/vungle/publisher/iz$a;->b(Ljava/lang/String;)Lcom/vungle/publisher/iz$b;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/rg;->a:Lcom/vungle/publisher/iz$b;

    .line 295
    invoke-static {v0, p2}, Lcom/vungle/publisher/rg;->a(Lcom/vungle/publisher/rg;Lcom/vungle/publisher/p;)Lcom/vungle/publisher/p;

    .line 296
    invoke-static {v0, p3}, Lcom/vungle/publisher/rg;->a(Lcom/vungle/publisher/rg;Z)Z

    .line 297
    invoke-static {v0, p1}, Lcom/vungle/publisher/rg;->a(Lcom/vungle/publisher/rg;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    return-object v0
.end method
