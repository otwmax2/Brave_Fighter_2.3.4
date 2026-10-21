###### Class com.moat.analytics.mobile.vng.g (com.moat.analytics.mobile.vng.g)
.class Lcom/moat/analytics/mobile/vng/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/vng/g$a;
    }
.end annotation


# instance fields
.field a:Landroid/webkit/WebView;

.field b:Lcom/moat/analytics/mobile/vng/j;

.field final c:Ljava/lang/String;

.field private final d:Lcom/moat/analytics/mobile/vng/g$a;

.field private e:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/moat/analytics/mobile/vng/g$a;)V
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/moat/analytics/mobile/vng/g;->d:Lcom/moat/analytics/mobile/vng/g$a;

    iput-boolean v8, p0, Lcom/moat/analytics/mobile/vng/g;->e:Z

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "_moatTracker%d"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x4197d78400000000L    # 1.0E8

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/g;->c:Ljava/lang/String;

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/g;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/g;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_57

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_57
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_60

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_60
    sget-object v0, Lcom/moat/analytics/mobile/vng/j$a;->b:Lcom/moat/analytics/mobile/vng/j$a;

    sget-object v1, Lcom/moat/analytics/mobile/vng/g$a;->b:Lcom/moat/analytics/mobile/vng/g$a;

    if-ne p2, v1, :cond_68

    sget-object v0, Lcom/moat/analytics/mobile/vng/j$a;->c:Lcom/moat/analytics/mobile/vng/j$a;

    :cond_68
    new-instance v1, Lcom/moat/analytics/mobile/vng/j;

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/g;->a:Landroid/webkit/WebView;

    invoke-direct {v1, v2, v0}, Lcom/moat/analytics/mobile/vng/j;-><init>(Landroid/webkit/WebView;Lcom/moat/analytics/mobile/vng/j$a;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/vng/g;->b:Lcom/moat/analytics/mobile/vng/j;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/json/JSONObject;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 12

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "<html><head></head><body><div id=\"%s\" style=\"width: %dpx; height: %dpx;\"></div><script>(function initMoatTracking(apiname, pcode, ids, duration) {var events = [];window[pcode + \'_moatElToTrack\'] = document.getElementById(\'%s\');var moatapi = {\'dropTime\':%d,\'adData\': {\'ids\': ids, \'duration\': duration, \'url\': \'n/a\'},\'dispatchEvent\': function(ev) {if (this.sendEvent) {if (events) { events.push(ev); ev = events; events = false; }this.sendEvent(ev);} else {events.push(ev);}},\'dispatchMany\': function(evs){for (var i=0, l=evs.length; i<l; i++) {this.dispatchEvent(evs[i]);}}};Object.defineProperty(window, apiname, {\'value\': moatapi});var s = document.createElement(\'script\');s.src = \'https://z.moatads.com/\' + pcode + \'/moatvideo.js?\' + apiname + \'#\' + apiname;document.body.appendChild(s);})(\'%s\', \'%s\', %s, %s);</script></body></html>"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "mianahwvc"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    const-string v4, "mianahwvc"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p0, v2, v3

    const/4 v3, 0x6

    aput-object p1, v2, v3

    const/4 v3, 0x7

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    aput-object p5, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/vng/g;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/g;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/vng/g;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/vng/g;->e:Z

    return p1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<!DOCTYPE html>\n<html>\n<head lang=\"en\">\n   <meta charset=\"UTF-8\">\n   <title></title>\n</head>\n<body style=\"margin:0;padding:0;\">\n    <script src=\"https://z.moatads.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/moatad.js\" type=\"text/javascript\"></script>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</body>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/moat/analytics/mobile/vng/g;->b:Lcom/moat/analytics/mobile/vng/j;

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/g;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/moat/analytics/mobile/vng/g;->a:Landroid/webkit/WebView;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/g;->d:Lcom/moat/analytics/mobile/vng/g$a;

    sget-object v1, Lcom/moat/analytics/mobile/vng/g$a;->a:Lcom/moat/analytics/mobile/vng/g$a;

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/g;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/moat/analytics/mobile/vng/g$1;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/vng/g$1;-><init>(Lcom/moat/analytics/mobile/vng/g;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/g;->a:Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/g;->d:Lcom/moat/analytics/mobile/vng/g$a;

    sget-object v1, Lcom/moat/analytics/mobile/vng/g$a;->b:Lcom/moat/analytics/mobile/vng/g$a;

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/g;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/moat/analytics/mobile/vng/g$2;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/vng/g$2;-><init>(Lcom/moat/analytics/mobile/vng/g;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iget-object v6, p0, Lcom/moat/analytics/mobile/vng/g;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/g;->c:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/moat/analytics/mobile/vng/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/json/JSONObject;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/html"

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    return-void
.end method

###### Class com.moat.analytics.mobile.vng.g.AnonymousClass1 (com.moat.analytics.mobile.vng.g$1)
.class Lcom/moat/analytics/mobile/vng/g$1;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/g;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/g;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/g;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/g$1;->a:Lcom/moat/analytics/mobile/vng/g;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/g$1;->a:Lcom/moat/analytics/mobile/vng/g;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/g;->a(Lcom/moat/analytics/mobile/vng/g;)Z

    move-result v0

    if-nez v0, :cond_15

    :try_start_8
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/g$1;->a:Lcom/moat/analytics/mobile/vng/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/vng/g;->a(Lcom/moat/analytics/mobile/vng/g;Z)Z

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/g$1;->a:Lcom/moat/analytics/mobile/vng/g;

    iget-object v0, v0, Lcom/moat/analytics/mobile/vng/g;->b:Lcom/moat/analytics/mobile/vng/j;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/j;->a()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_15
.end method

###### Class com.moat.analytics.mobile.vng.g.AnonymousClass2 (com.moat.analytics.mobile.vng.g$2)
.class Lcom/moat/analytics/mobile/vng/g$2;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/g;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/g;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/g;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/g$2;->a:Lcom/moat/analytics/mobile/vng/g;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/g$2;->a:Lcom/moat/analytics/mobile/vng/g;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/g;->a(Lcom/moat/analytics/mobile/vng/g;)Z

    move-result v0

    if-nez v0, :cond_20

    :try_start_8
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/g$2;->a:Lcom/moat/analytics/mobile/vng/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/vng/g;->a(Lcom/moat/analytics/mobile/vng/g;Z)Z

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/g$2;->a:Lcom/moat/analytics/mobile/vng/g;

    iget-object v0, v0, Lcom/moat/analytics/mobile/vng/g;->b:Lcom/moat/analytics/mobile/vng/j;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/j;->a()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/g$2;->a:Lcom/moat/analytics/mobile/vng/g;

    iget-object v0, v0, Lcom/moat/analytics/mobile/vng/g;->b:Lcom/moat/analytics/mobile/vng/j;

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/g$2;->a:Lcom/moat/analytics/mobile/vng/g;

    iget-object v1, v1, Lcom/moat/analytics/mobile/vng/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/vng/j;->c(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_20} :catch_21

    :cond_20
    :goto_20
    return-void

    :catch_21
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_20
.end method

###### Class com.moat.analytics.mobile.vng.g.a (com.moat.analytics.mobile.vng.g$a)
.class final enum Lcom/moat/analytics/mobile/vng/g$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/moat/analytics/mobile/vng/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/moat/analytics/mobile/vng/g$a;

.field public static final enum b:Lcom/moat/analytics/mobile/vng/g$a;

.field private static final synthetic c:[Lcom/moat/analytics/mobile/vng/g$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/moat/analytics/mobile/vng/g$a;

    const-string v1, "DISPLAY"

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/vng/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/g$a;->a:Lcom/moat/analytics/mobile/vng/g$a;

    new-instance v0, Lcom/moat/analytics/mobile/vng/g$a;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/moat/analytics/mobile/vng/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/g$a;->b:Lcom/moat/analytics/mobile/vng/g$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/moat/analytics/mobile/vng/g$a;

    sget-object v1, Lcom/moat/analytics/mobile/vng/g$a;->a:Lcom/moat/analytics/mobile/vng/g$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/moat/analytics/mobile/vng/g$a;->b:Lcom/moat/analytics/mobile/vng/g$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/moat/analytics/mobile/vng/g$a;->c:[Lcom/moat/analytics/mobile/vng/g$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/moat/analytics/mobile/vng/g$a;
    .registers 2

    const-class v0, Lcom/moat/analytics/mobile/vng/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/g$a;

    return-object v0
.end method

.method public static values()[Lcom/moat/analytics/mobile/vng/g$a;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/vng/g$a;->c:[Lcom/moat/analytics/mobile/vng/g$a;

    invoke-virtual {v0}, [Lcom/moat/analytics/mobile/vng/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/moat/analytics/mobile/vng/g$a;

    return-object v0
.end method
