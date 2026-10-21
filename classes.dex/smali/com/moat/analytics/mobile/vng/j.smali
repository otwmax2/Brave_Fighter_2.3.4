###### Class com.moat.analytics.mobile.vng.j (com.moat.analytics.mobile.vng.j)
.class Lcom/moat/analytics/mobile/vng/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/vng/j$a;
    }
.end annotation


# instance fields
.field a:Z

.field private b:I

.field private c:Z

.field private d:Z

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/moat/analytics/mobile/vng/b;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:J

.field private final j:Lcom/moat/analytics/mobile/vng/s$a;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/moat/analytics/mobile/vng/j$a;

.field private final m:Landroid/content/BroadcastReceiver;

.field private final n:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Lcom/moat/analytics/mobile/vng/j$a;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/moat/analytics/mobile/vng/j;->b:I

    iput-boolean v1, p0, Lcom/moat/analytics/mobile/vng/j;->c:Z

    iput-boolean v1, p0, Lcom/moat/analytics/mobile/vng/j;->a:Z

    iput-boolean v1, p0, Lcom/moat/analytics/mobile/vng/j;->d:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/moat/analytics/mobile/vng/j$2;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/vng/j$2;-><init>(Lcom/moat/analytics/mobile/vng/j;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->m:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/moat/analytics/mobile/vng/j$3;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/vng/j$3;-><init>(Lcom/moat/analytics/mobile/vng/j;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->n:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->e:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/moat/analytics/mobile/vng/j;->l:Lcom/moat/analytics/mobile/vng/j$a;

    new-instance v0, Lcom/moat/analytics/mobile/vng/s$a;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/s$a;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->j:Lcom/moat/analytics/mobile/vng/s$a;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->g:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->k:Ljava/util/List;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->f:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/moat/analytics/mobile/vng/j;->i:J

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "UPDATE_METADATA"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "UPDATE_VIEW_INFO"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/s;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/moat/analytics/mobile/vng/j;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/s;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/j;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :try_start_74
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->b()Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, "JavaScriptBridge"

    if-eqz v0, :cond_83

    const-string v0, "bridge installed"

    :goto_7f
    invoke-static {v1, v2, p0, v0}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_82
    return-void

    :cond_83
    const-string v0, "bridge not installed"
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_85} :catch_86

    goto :goto_7f

    :catch_86
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_82
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/vng/j;)I
    .registers 2

    iget v0, p0, Lcom/moat/analytics/mobile/vng/j;->b:I

    return v0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/vng/j;I)I
    .registers 2

    iput p1, p0, Lcom/moat/analytics/mobile/vng/j;->b:I

    return p1
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    const/4 v4, 0x6

    const/4 v0, 0x0

    if-nez p1, :cond_1d

    const-string v1, "JavaScriptBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView is null. Can\'t "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1c
    return v0

    :cond_1d
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "JavaScriptBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JavaScript is not enabled in the given WebView. Can\'t "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1c

    :cond_40
    const/4 v0, 0x1

    goto :goto_1c
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/vng/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->f()V

    return-void
.end method

.method private b()Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->h()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->h()Landroid/webkit/WebView;

    move-result-object v1

    const-string v2, "installBridge"

    invoke-direct {p0, v1, v2}, Lcom/moat/analytics/mobile/vng/j;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v0, 0x0

    :goto_14
    return v0

    :cond_15
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/j;->a:Z

    invoke-static {}, Lcom/moat/analytics/mobile/vng/i;->a()Lcom/moat/analytics/mobile/vng/i;

    move-result-object v1

    invoke-static {}, Lcom/moat/analytics/mobile/vng/s;->c()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/moat/analytics/mobile/vng/i;->a(Landroid/content/Context;Lcom/moat/analytics/mobile/vng/j;)V

    goto :goto_14
.end method

.method static synthetic c(Lcom/moat/analytics/mobile/vng/j;)I
    .registers 3

    iget v0, p0, Lcom/moat/analytics/mobile/vng/j;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/moat/analytics/mobile/vng/j;->b:I

    return v0
.end method

.method private c()V
    .registers 5

    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->a()Lcom/moat/analytics/mobile/vng/w;

    move-result-object v0

    :try_start_4
    iget-object v0, v0, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    sget-object v1, Lcom/moat/analytics/mobile/vng/w$d;->a:Lcom/moat/analytics/mobile/vng/w$d;

    if-ne v0, v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/j;->d:Z

    if-nez v0, :cond_1a

    const/4 v0, 0x3

    const-string v1, "JavaScriptBridge"

    const-string v2, "Ready for communication (setting environment variables)."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/j;->d:Z

    :cond_1a
    const-string v0, "javascript:(function(e,k){function l(){function f(a){var b=a.c,c=a.a,f=a.b;a=a.f;var d=[];if(c)b[c]&&d.push(b[c].fn[0]);else for(key in b)if(b[key])for(var g=0,e=b[key].fn.length;g<e;g++)d.push(b[key].fn[g]);g=0;for(e=d.length;g<e;g++){var h=d[g];if(\'function\'===typeof h)try{f?h(f):h()}catch(k){}a&&delete b[c]}}function d(a,b,c){\'function\'===typeof a&&(b===kuea&&c[b]?c[b].fn.push(a):c[b]={ts:+new Date,fn:[a]})}kuea=+new Date;iymv={};briz=!1;ewat=+new Date;bnkr=[];bjmk={};dptk={};uqaj={};ryup={};yhgt={};csif={};this.g=function(a){this.namespace=a.namespace;this.version=a.version;this.appName=a.appName;this.deviceOS=a.deviceOS;this.isNative=a.isNative;this.versionHash=a.versionHash;this.aqzx=a.aqzx;this.appId=a.appId};this.nvsj=function(a){briz||(d(a,ewat,iymv),briz=!0)};this.bpsy=function(a,b){var c=b||kuea;c!==kuea&&bjmk[c]||d(a,c,bjmk)};this.qmrv=function(a,b){var c=b||kuea;c!==kuea&&uqaj[c]||d(a,c,uqaj)};this.lgpr=function(a,b){d(a,b||kuea,yhgt)};this.hgen=function(a,b){d(a,b||kuea,csif)};this.xrnk=function(a){delete yhgt[a||kuea]};this.vgft=function(a){return dptk[a||kuea]||!1};this.lkpu=function(a){return ryup[a||kuea]||!1};this.crts=function(a){var b={c:iymv,b:a,a:ewat};briz?f(b):bnkr.push(a)};this.mqjh=function(a){var b=a||kuea;dptk[b]=!0;var c={c:bjmk,f:!0};b!==kuea&&(c.b=a,c.a=a);f(c)};this.egpw=function(a){var b=a||kuea;ryup[b]=!0;var c={c:uqaj,f:!0};b!==kuea&&(c.b=a,c.a=a);f(c)};this.sglu=function(a){var b={c:yhgt,b:a.event||a,f:!1};(a.adKey||kuea)!==kuea&&(b.a=a.adKey);f(b);return 0<Object.keys(yhgt).length};this.ucbx=function(a){f({a:a.adKey||kuea,c:csif,b:a.event,f:!1})}}\'undefined\'===typeof e.MoatMAK&&(e.MoatMAK=new l,e.MoatMAK.g(k),e.__zMoatInit__=!0)})(window,%s);"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->g()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->h()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_37} :catch_38

    goto :goto_a

    :catch_38
    move-exception v0

    const-string v1, "JavaScriptBridge"

    const-string v2, "Failed to initialize communication (did not set environment variables)."

    invoke-static {v1, p0, v2, v0}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method private d()V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->a()Lcom/moat/analytics/mobile/vng/w;

    move-result-object v0

    iget-object v0, v0, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    sget-object v1, Lcom/moat/analytics/mobile/vng/w$d;->a:Lcom/moat/analytics/mobile/vng/w$d;

    if-ne v0, v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_23

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->g()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/j;->c:Z

    if-eqz v0, :cond_66

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->h()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_66

    :cond_23
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->e:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3b

    const/4 v0, 0x3

    const-string v1, "JavaScriptBridge"

    const-string v2, "WebView ref became null, stopping tracking loop"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2f
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->f()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_a

    :catch_33
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->f()V

    goto :goto_a

    :cond_3b
    const/4 v1, 0x3

    :try_start_3c
    const-string v2, "JavaScriptBridge"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView became null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->h()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_63

    const-string v0, ""

    :goto_51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", stopping tracking loop"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, p0, v0}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2f

    :cond_63
    const-string v0, "based on null url"

    goto :goto_51

    :cond_66
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->h()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_73

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/j;->c:Z

    :cond_73
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7d
    :goto_7d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/b;

    if-eqz v0, :cond_97

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/b;->d()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_a9

    :cond_97
    const/4 v2, 0x3

    const-string v3, "JavaScriptBridge"

    const-string v4, "Tracker has no subject"

    invoke-static {v2, v3, p0, v4}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_a5

    iget-boolean v2, v0, Lcom/moat/analytics/mobile/vng/b;->c:Z

    if-nez v2, :cond_a9

    :cond_a5
    invoke-virtual {p0, v0}, Lcom/moat/analytics/mobile/vng/j;->c(Lcom/moat/analytics/mobile/vng/b;)Z

    goto :goto_7d

    :cond_a9
    iget-boolean v2, v0, Lcom/moat/analytics/mobile/vng/b;->d:Z

    if-eqz v2, :cond_7d

    const-string v2, "javascript: MoatMAK.mqjh(\"%s\")"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/moat/analytics/mobile/vng/b;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/moat/analytics/mobile/vng/j;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/b;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "javascript: MoatMAK.sglu(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_e1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->h()Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Lcom/moat/analytics/mobile/vng/j$1;

    invoke-direct {v3, p0}, Lcom/moat/analytics/mobile/vng/j$1;-><init>(Lcom/moat/analytics/mobile/vng/j;)V

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_7d

    :cond_e1
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->h()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_e8} :catch_33

    goto :goto_7d
.end method

.method private d(Lcom/moat/analytics/mobile/vng/b;)V
    .registers 5

    const/4 v0, 0x3

    const-string v1, "JavaScriptBridge"

    const-string v2, "Stopping view update loop"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_11

    invoke-static {}, Lcom/moat/analytics/mobile/vng/i;->a()Lcom/moat/analytics/mobile/vng/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/moat/analytics/mobile/vng/i;->a(Lcom/moat/analytics/mobile/vng/b;)V

    :cond_11
    return-void
.end method

.method static synthetic d(Lcom/moat/analytics/mobile/vng/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->e()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_16

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->k:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x19

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_16
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private e()V
    .registers 4

    const/4 v0, 0x3

    const-string v1, "JavaScriptBridge"

    const-string v2, "Stopping metadata reporting loop"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/i;->a()Lcom/moat/analytics/mobile/vng/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/vng/i;->a(Lcom/moat/analytics/mobile/vng/j;)V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/s;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/j;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static synthetic e(Lcom/moat/analytics/mobile/vng/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->c()V

    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .registers 6

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/j;->a:Z

    if-nez v0, :cond_1f

    const/4 v0, 0x6

    const-string v1, "JavaScriptBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bridge is not installed in the given WebView. Can\'t "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method static synthetic f(Lcom/moat/analytics/mobile/vng/j;)J
    .registers 3

    iget-wide v0, p0, Lcom/moat/analytics/mobile/vng/j;->i:J

    return-wide v0
.end method

.method private f()V
    .registers 4

    const/4 v0, 0x3

    const-string v1, "JavaScriptBridge"

    const-string v2, "Cleaning up"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->e()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/b;

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/vng/j;->d(Lcom/moat/analytics/mobile/vng/b;)V

    goto :goto_15

    :cond_2b
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/s;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/j;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->h()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method static synthetic g(Lcom/moat/analytics/mobile/vng/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->d()V

    return-void
.end method

.method private g()Z
    .registers 2

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->h()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private h()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .registers 9

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "3f2ae9c1894282b5e0222f0d06bbf457191f816f"

    const-string v0, "VNG"

    const-string v0, "2.2.0"

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->j:Lcom/moat/analytics/mobile/vng/s$a;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/s$a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->j:Lcom/moat/analytics/mobile/vng/s$a;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/s$a;->b()Ljava/lang/String;

    move-result-object v3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/moat/analytics/mobile/vng/s;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->l:Lcom/moat/analytics/mobile/vng/j$a;

    sget-object v6, Lcom/moat/analytics/mobile/vng/j$a;->a:Lcom/moat/analytics/mobile/vng/j$a;

    if-ne v0, v6, :cond_63

    const-string v0, "0"

    :goto_29
    const-string v6, "versionHash"

    const-string v7, "3f2ae9c1894282b5e0222f0d06bbf457191f816f"

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "appName"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "namespace"

    const-string v6, "VNG"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "version"

    const-string v6, "2.2.0"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "deviceOS"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "isNative"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appId"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_59

    const-string v0, "aqzx"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_62
    return-object v0

    :cond_63
    const-string v0, "1"
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_65} :catch_66

    goto :goto_29

    :catch_66
    move-exception v0

    const-string v0, "{}"

    goto :goto_62
.end method


# virtual methods
.method a()V
    .registers 4

    const/4 v0, 0x3

    const-string v1, "JavaScriptBridge"

    const-string v2, "webViewReady"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->e()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/vng/j;->f(Ljava/lang/String;)V

    goto :goto_18

    :cond_28
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method a(Lcom/moat/analytics/mobile/vng/b;)V
    .registers 6

    if-eqz p1, :cond_24

    const/4 v0, 0x3

    const-string v1, "JavaScriptBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding tracker"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/moat/analytics/mobile/vng/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->f:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 5

    const-string v0, "javascript: MoatMAK.crts(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/j;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/vng/j;->f(Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/vng/j;->d(Ljava/lang/String;)V

    goto :goto_17
.end method

.method a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/j;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->g()Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "javascript:%s.dispatchEvent(%s);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/vng/j;->f(Ljava/lang/String;)V

    :goto_24
    return-void

    :cond_25
    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/j;->g:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_24
.end method

.method b(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x3

    const-string v1, "JavaScriptBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "markUserInteractionEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javascript: MoatMAK.ucbx(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/j;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/vng/j;->f(Ljava/lang/String;)V

    :goto_30
    return-void

    :cond_31
    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/vng/j;->d(Ljava/lang/String;)V

    goto :goto_30
.end method

.method b(Lcom/moat/analytics/mobile/vng/b;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->g()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->h()Landroid/webkit/WebView;

    move-result-object v2

    const-string v3, "startTracking"

    invoke-direct {p0, v2, v3}, Lcom/moat/analytics/mobile/vng/j;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "startTracking"

    invoke-direct {p0, v2}, Lcom/moat/analytics/mobile/vng/j;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    invoke-virtual {p1}, Lcom/moat/analytics/mobile/vng/b;->d()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_41

    iget-boolean v2, p1, Lcom/moat/analytics/mobile/vng/b;->c:Z

    if-nez v2, :cond_39

    const/4 v1, 0x3

    const-string v2, "JavaScriptBridge"

    const-string v3, "Tracker subject is null, won\'t start tracking"

    invoke-static {v1, v2, p0, v3}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2f} :catch_30

    goto :goto_1c

    :catch_30
    move-exception v1

    const-string v2, "JavaScriptBridge"

    const-string v3, "Failed to initialize impression start."

    invoke-static {v2, p0, v3, v1}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c

    :cond_39
    const/4 v2, 0x3

    :try_start_3a
    const-string v3, "JavaScriptBridge"

    const-string v4, "Tracker subject is null at start"

    invoke-static {v2, v3, p0, v4}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_41
    const/4 v2, 0x3

    const-string v3, "JavaScriptBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting tracking on tracker"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/moat/analytics/mobile/vng/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "javascript: MoatMAK.mqjh(\"%s\")"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/moat/analytics/mobile/vng/b;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/moat/analytics/mobile/vng/j;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/i;->a()Lcom/moat/analytics/mobile/vng/i;

    move-result-object v2

    invoke-static {}, Lcom/moat/analytics/mobile/vng/s;->c()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/moat/analytics/mobile/vng/i;->a(Landroid/content/Context;Lcom/moat/analytics/mobile/vng/b;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_78} :catch_30

    move v0, v1

    goto :goto_1c
.end method

.method c(Ljava/lang/String;)V
    .registers 12

    const/16 v5, 0xa

    const/16 v9, 0xc8

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    const-string v2, "JavaScriptBridge"

    const-string v4, "flushDispatchQueue"

    invoke-static {v0, v2, p0, v4}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v0, v9, :cond_6b

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move v2, v1

    :goto_21
    if-ge v2, v5, :cond_32

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_21

    :cond_32
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    div-int/lit16 v0, v0, 0xc8

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit16 v0, v0, 0xc8

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/j;->g:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v0, v1

    :goto_4b
    if-ge v0, v2, :cond_55

    iget-object v5, p0, Lcom/moat/analytics/mobile/vng/j;->g:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_55
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/moat/analytics/mobile/vng/j;->g:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_59

    :cond_6b
    move v0, v1

    :goto_6c
    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/j;->g:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c8

    if-ge v0, v9, :cond_c8

    add-int/lit8 v0, v0, 0x1

    const-string v5, "javascript:%s.dispatchMany([%s])"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v3

    :goto_80
    iget-object v4, p0, Lcom/moat/analytics/mobile/vng/j;->g:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a2

    if-ge v0, v9, :cond_a2

    add-int/lit8 v4, v0, 0x1

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0x7d0

    if-le v7, v8, :cond_b5

    move v0, v4

    :cond_a2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/moat/analytics/mobile/vng/j;->f(Ljava/lang/String;)V

    goto :goto_6c

    :cond_b5
    iget-object v7, p0, Lcom/moat/analytics/mobile/vng/j;->g:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    if-eqz v2, :cond_c2

    move v2, v1

    :goto_bd
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v4

    goto :goto_80

    :cond_c2
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bd

    :cond_c8
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method c(Lcom/moat/analytics/mobile/vng/b;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->g()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->h()Landroid/webkit/WebView;

    move-result-object v2

    const-string v3, "stopTracking"

    invoke-direct {p0, v2, v3}, Lcom/moat/analytics/mobile/vng/j;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    const-string v2, "stopTracking"

    invoke-direct {p0, v2}, Lcom/moat/analytics/mobile/vng/j;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    const/4 v1, 0x3

    :try_start_1d
    const-string v2, "JavaScriptBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ending tracking on tracker"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/moat/analytics/mobile/vng/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, p0, v3}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "javascript: MoatMAK.egpw(\"%s\")"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/moat/analytics/mobile/vng/b;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/vng/j;->f(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_48} :catch_57

    :goto_48
    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/j;->l:Lcom/moat/analytics/mobile/vng/j$a;

    sget-object v2, Lcom/moat/analytics/mobile/vng/j$a;->b:Lcom/moat/analytics/mobile/vng/j$a;

    if-ne v1, v2, :cond_62

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/j;->d(Lcom/moat/analytics/mobile/vng/b;)V

    :goto_51
    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/j;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :catch_57
    move-exception v1

    const-string v2, "JavaScriptBridge"

    const-string v3, "Failed to end impression."

    invoke-static {v2, p0, v3, v1}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_48

    :cond_60
    move v0, v1

    goto :goto_48

    :cond_62
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->f()V

    goto :goto_51
.end method

.method protected finalize()V
    .registers 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, 0x3

    const-string v1, "JavaScriptBridge"

    const-string v2, "finalize"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/j;->f()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_e
.end method

###### Class com.moat.analytics.mobile.vng.j.AnonymousClass1 (com.moat.analytics.mobile.vng.j$1)
.class Lcom/moat/analytics/mobile/vng/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/j;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/j;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/j;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 8

    const/4 v5, 0x3

    if-eqz p1, :cond_13

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    :cond_13
    const-string v1, "JavaScriptBridge"

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received value is:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_46

    const-string v0, "null"

    :goto_26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v2, v0}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/j;->a(Lcom/moat/analytics/mobile/vng/j;)I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_40

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/j;->b(Lcom/moat/analytics/mobile/vng/j;)V

    :cond_40
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/j;->c(Lcom/moat/analytics/mobile/vng/j;)I

    :goto_45
    return-void

    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(String)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_5a
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/j;->a(Lcom/moat/analytics/mobile/vng/j;)I

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, "JavaScriptBridge"

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    const-string v2, "Javascript has found ad"

    invoke-static {v5, v0, v1, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/j;->d(Lcom/moat/analytics/mobile/vng/j;)V

    :cond_78
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/vng/j;->a(Lcom/moat/analytics/mobile/vng/j;I)I

    goto :goto_45

    :cond_7f
    const-string v0, "JavaScriptBridge"

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received unusual value from Javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v0, v1, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_45
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/vng/j$1;->a(Ljava/lang/String;)V

    return-void
.end method

###### Class com.moat.analytics.mobile.vng.j.AnonymousClass2 (com.moat.analytics.mobile.vng.j$2)
.class Lcom/moat/analytics/mobile/vng/j$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/j;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/j;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/j$2;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j$2;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/j;->e(Lcom/moat/analytics/mobile/vng/j;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_1c

    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/j$2;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-static {v2}, Lcom/moat/analytics/mobile/vng/j;->f(Lcom/moat/analytics/mobile/vng/j;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j$2;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/j;->d(Lcom/moat/analytics/mobile/vng/j;)V

    :cond_1b
    return-void

    :catch_1c
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_5
.end method

###### Class com.moat.analytics.mobile.vng.j.AnonymousClass3 (com.moat.analytics.mobile.vng.j$3)
.class Lcom/moat/analytics/mobile/vng/j$3;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/j;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/j;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/j$3;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j$3;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/j;->g(Lcom/moat/analytics/mobile/vng/j;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_5
.end method

###### Class com.moat.analytics.mobile.vng.j.a (com.moat.analytics.mobile.vng.j$a)
.class final enum Lcom/moat/analytics/mobile/vng/j$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/moat/analytics/mobile/vng/j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/moat/analytics/mobile/vng/j$a;

.field public static final enum b:Lcom/moat/analytics/mobile/vng/j$a;

.field public static final enum c:Lcom/moat/analytics/mobile/vng/j$a;

.field private static final synthetic d:[Lcom/moat/analytics/mobile/vng/j$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/moat/analytics/mobile/vng/j$a;

    const-string v1, "WEBVIEW"

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/vng/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/j$a;->a:Lcom/moat/analytics/mobile/vng/j$a;

    new-instance v0, Lcom/moat/analytics/mobile/vng/j$a;

    const-string v1, "NATIVE_DISPLAY"

    invoke-direct {v0, v1, v3}, Lcom/moat/analytics/mobile/vng/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/j$a;->b:Lcom/moat/analytics/mobile/vng/j$a;

    new-instance v0, Lcom/moat/analytics/mobile/vng/j$a;

    const-string v1, "NATIVE_VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/moat/analytics/mobile/vng/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/j$a;->c:Lcom/moat/analytics/mobile/vng/j$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/moat/analytics/mobile/vng/j$a;

    sget-object v1, Lcom/moat/analytics/mobile/vng/j$a;->a:Lcom/moat/analytics/mobile/vng/j$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/moat/analytics/mobile/vng/j$a;->b:Lcom/moat/analytics/mobile/vng/j$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/moat/analytics/mobile/vng/j$a;->c:Lcom/moat/analytics/mobile/vng/j$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/moat/analytics/mobile/vng/j$a;->d:[Lcom/moat/analytics/mobile/vng/j$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/moat/analytics/mobile/vng/j$a;
    .registers 2

    const-class v0, Lcom/moat/analytics/mobile/vng/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/j$a;

    return-object v0
.end method

.method public static values()[Lcom/moat/analytics/mobile/vng/j$a;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/vng/j$a;->d:[Lcom/moat/analytics/mobile/vng/j$a;

    invoke-virtual {v0}, [Lcom/moat/analytics/mobile/vng/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/moat/analytics/mobile/vng/j$a;

    return-object v0
.end method
