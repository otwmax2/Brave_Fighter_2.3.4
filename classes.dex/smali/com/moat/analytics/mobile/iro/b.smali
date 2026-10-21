###### Class com.moat.analytics.mobile.iro.b (com.moat.analytics.mobile.iro.b)
.class final Lcom/moat/analytics/mobile/iro/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/iro/b$a;
    }
.end annotation


# instance fields
.field final ˊ:Ljava/lang/String;

.field ˋ:Lcom/moat/analytics/mobile/iro/f;

.field private final ˎ:I

.field ˏ:Landroid/webkit/WebView;

.field private ॱ:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/app/Application;I)V
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p2, p0, Lcom/moat/analytics/mobile/iro/b;->ˎ:I

    .line 76
    iput-boolean v8, p0, Lcom/moat/analytics/mobile/iro/b;->ॱ:Z

    .line 78
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

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->ˊ:Ljava/lang/String;

    .line 81
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->ˏ:Landroid/webkit/WebView;

    .line 82
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->ˏ:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 84
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 85
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 86
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 87
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 88
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 89
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 90
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 92
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_57

    .line 93
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 94
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 96
    :cond_57
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_60

    .line 97
    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 101
    :cond_60
    sget v0, Lcom/moat/analytics/mobile/iro/f$b;->ˏ:I

    .line 102
    sget v1, Lcom/moat/analytics/mobile/iro/b$a;->ˎ:I

    if-ne p2, v1, :cond_68

    .line 103
    sget v0, Lcom/moat/analytics/mobile/iro/f$b;->ˋ:I

    .line 106
    :cond_68
    :try_start_68
    new-instance v1, Lcom/moat/analytics/mobile/iro/f;

    iget-object v2, p0, Lcom/moat/analytics/mobile/iro/b;->ˏ:Landroid/webkit/WebView;

    invoke-direct {v1, v2, v0}, Lcom/moat/analytics/mobile/iro/f;-><init>(Landroid/webkit/WebView;I)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/iro/b;->ˋ:Lcom/moat/analytics/mobile/iro/f;
    :try_end_71
    .catch Lcom/moat/analytics/mobile/iro/o; {:try_start_68 .. :try_end_71} :catch_72

    .line 110
    :goto_71
    return-void

    .line 108
    :catch_72
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_71
.end method

.method static ˊ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 9

    .prologue
    .line 5037
    invoke-static {}, Lcom/moat/analytics/mobile/iro/t;->ˋ()Lcom/moat/analytics/mobile/iro/t;

    move-result-object v0

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/iro/t;->ˎ:Z

    if-eqz v0, :cond_31

    .line 5064
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Moat"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5038
    const-string v1, "id = %s, message = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5040
    :cond_31
    return-void
.end method

.method static synthetic ˊ(Lcom/moat/analytics/mobile/iro/b;)Z
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/iro/b;->ॱ:Z

    return v0
.end method

.method static ˎ(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 6043
    invoke-static {}, Lcom/moat/analytics/mobile/iro/t;->ˋ()Lcom/moat/analytics/mobile/iro/t;

    move-result-object v0

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/iro/t;->ˎ:Z

    if-nez v0, :cond_32

    .line 6044
    invoke-static {}, Lcom/moat/analytics/mobile/iro/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/iro/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/iro/j;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/iro/j;->ॱ:Z

    if-eqz v0, :cond_32

    .line 6045
    const/4 v0, 0x2

    .line 6046
    const-string v1, "[ERROR] "

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 6047
    const/4 v0, 0x6

    .line 6049
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6050
    const-string v2, "MoatAnalytics"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 6052
    :cond_32
    return-void
.end method

.method static synthetic ˎ(Lcom/moat/analytics/mobile/iro/b;)Z
    .registers 2

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/iro/b;->ॱ:Z

    return v0
.end method

.method static ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2019
    invoke-static {}, Lcom/moat/analytics/mobile/iro/t;->ˋ()Lcom/moat/analytics/mobile/iro/t;

    move-result-object v0

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/iro/t;->ˎ:Z

    if-eqz v0, :cond_28

    .line 2020
    if-nez p2, :cond_29

    .line 2064
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Moat"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2021
    const-string v1, "message = %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 2027
    :cond_28
    :goto_28
    return-void

    .line 3064
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Moat"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2024
    const-string v1, "id = %s, message = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method static ˏ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v5, 0x2

    .line 4030
    invoke-static {}, Lcom/moat/analytics/mobile/iro/t;->ˋ()Lcom/moat/analytics/mobile/iro/t;

    move-result-object v0

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/iro/t;->ˏ:Z

    if-eqz v0, :cond_2d

    .line 4064
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Moat"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4031
    const-string v2, "id = %s, message = %s"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_2e

    const-string v0, "null"

    .line 4032
    :goto_21
    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p2, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4031
    invoke-static {v5, v1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 4034
    :cond_2d
    return-void

    .line 4032
    :cond_2e
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_21
.end method

.method static ॱ(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 6068
    if-eqz p0, :cond_26

    .line 6069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6070
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6072
    :goto_25
    return-object v0

    :cond_26
    const-string v0, "null"

    goto :goto_25
.end method


# virtual methods
.method final ˋ(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 118
    iget v0, p0, Lcom/moat/analytics/mobile/iro/b;->ˎ:I

    sget v1, Lcom/moat/analytics/mobile/iro/b$a;->ˏ:I

    if-ne v0, v1, :cond_2e

    .line 119
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->ˏ:Landroid/webkit/WebView;

    new-instance v1, Lcom/moat/analytics/mobile/iro/b$5;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/iro/b$5;-><init>(Lcom/moat/analytics/mobile/iro/b;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 132
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->ˏ:Landroid/webkit/WebView;

    .line 1161
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<!DOCTYPE html>\n<html>\n<head lang=\"en\">\n   <meta charset=\"UTF-8\">\n   <title></title>\n</head>\n<body style=\"margin:0;padding:0;\">\n    <script src=\"https://z.moatads.com/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/moatad.js\" type=\"text/javascript\"></script>\n</body>\n</html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_2e
    return-void
.end method

.method final ˎ(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 16
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

    .prologue
    .line 137
    iget v0, p0, Lcom/moat/analytics/mobile/iro/b;->ˎ:I

    sget v1, Lcom/moat/analytics/mobile/iro/b$a;->ˎ:I

    if-ne v0, v1, :cond_57

    .line 139
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->ˏ:Landroid/webkit/WebView;

    new-instance v1, Lcom/moat/analytics/mobile/iro/b$1;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/iro/b$1;-><init>(Lcom/moat/analytics/mobile/iro/b;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 154
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 156
    iget-object v1, p0, Lcom/moat/analytics/mobile/iro/b;->ˏ:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/moat/analytics/mobile/iro/b;->ˊ:Ljava/lang/String;

    .line 1174
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "<html><head></head><body><div id=\"%s\" style=\"width: %dpx; height: %dpx;\"></div><script>(function initMoatTracking(apiname, pcode, ids, duration) {var events = [];window[pcode + \'_moatElToTrack\'] = document.getElementById(\'%s\');var moatapi = {\'dropTime\':%d,\'adData\': {\'ids\': ids, \'duration\': duration, \'url\': \'n/a\'},\'dispatchEvent\': function(ev) {if (this.sendEvent) {if (events) { events.push(ev); ev = events; events = false; }this.sendEvent(ev);} else {events.push(ev);}},\'dispatchMany\': function(evs){for (var i=0, l=evs.length; i<l; i++) {this.dispatchEvent(evs[i]);}}};Object.defineProperty(window, apiname, {\'value\': moatapi});var s = document.createElement(\'script\');s.src = \'https://z.moatads.com/\' + pcode + \'/moatvideo.js?\' + apiname + \'#\' + apiname;document.body.appendChild(s);})(\'%s\', \'%s\', %s, %s);</script></body></html>"

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "mianahwvc"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    const/4 v6, 0x2

    aput-object p4, v5, v6

    const/4 v6, 0x3

    const-string v7, "mianahwvc"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 1180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    aput-object v2, v5, v6

    const/4 v2, 0x6

    aput-object p1, v5, v2

    const/4 v2, 0x7

    .line 1183
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    const/16 v0, 0x8

    aput-object p5, v5, v0

    .line 1174
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v2, "text/html"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_57
    return-void
.end method

###### Class com.moat.analytics.mobile.iro.b.AnonymousClass1 (com.moat.analytics.mobile.iro.b$1)
.class final Lcom/moat/analytics/mobile/iro/b$1;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/iro/b;->ˎ(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ॱ:Lcom/moat/analytics/mobile/iro/b;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/iro/b;)V
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/b$1;->ॱ:Lcom/moat/analytics/mobile/iro/b;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 142
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b$1;->ॱ:Lcom/moat/analytics/mobile/iro/b;

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/b;->ˎ(Lcom/moat/analytics/mobile/iro/b;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 144
    :try_start_8
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b$1;->ॱ:Lcom/moat/analytics/mobile/iro/b;

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/b;->ˊ(Lcom/moat/analytics/mobile/iro/b;)Z

    .line 145
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b$1;->ॱ:Lcom/moat/analytics/mobile/iro/b;

    iget-object v0, v0, Lcom/moat/analytics/mobile/iro/b;->ˋ:Lcom/moat/analytics/mobile/iro/f;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/iro/f;->ॱ()V

    .line 146
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b$1;->ॱ:Lcom/moat/analytics/mobile/iro/b;

    iget-object v0, v0, Lcom/moat/analytics/mobile/iro/b;->ˋ:Lcom/moat/analytics/mobile/iro/f;

    iget-object v1, p0, Lcom/moat/analytics/mobile/iro/b$1;->ॱ:Lcom/moat/analytics/mobile/iro/b;

    iget-object v1, v1, Lcom/moat/analytics/mobile/iro/b;->ˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/iro/f;->ॱ(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_20

    .line 151
    :cond_1f
    :goto_1f
    return-void

    .line 148
    :catch_20
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_1f
.end method

###### Class com.moat.analytics.mobile.iro.b.AnonymousClass5 (com.moat.analytics.mobile.iro.b$5)
.class final Lcom/moat/analytics/mobile/iro/b$5;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/iro/b;->ˋ(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ˏ:Lcom/moat/analytics/mobile/iro/b;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/iro/b;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/b$5;->ˏ:Lcom/moat/analytics/mobile/iro/b;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b$5;->ˏ:Lcom/moat/analytics/mobile/iro/b;

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/b;->ˎ(Lcom/moat/analytics/mobile/iro/b;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 124
    :try_start_8
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b$5;->ˏ:Lcom/moat/analytics/mobile/iro/b;

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/b;->ˊ(Lcom/moat/analytics/mobile/iro/b;)Z

    .line 125
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b$5;->ˏ:Lcom/moat/analytics/mobile/iro/b;

    iget-object v0, v0, Lcom/moat/analytics/mobile/iro/b;->ˋ:Lcom/moat/analytics/mobile/iro/f;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/iro/f;->ॱ()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    .line 130
    :cond_14
    :goto_14
    return-void

    .line 127
    :catch_15
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_14
.end method

###### Class com.moat.analytics.mobile.iro.b.a (com.moat.analytics.mobile.iro.b$a)
.class final Lcom/moat/analytics/mobile/iro/b$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/iro/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/moat/analytics/mobile/iro/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final ˎ:I

.field public static final ˏ:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 33
    sput v2, Lcom/moat/analytics/mobile/iro/b$a;->ˏ:I

    sput v3, Lcom/moat/analytics/mobile/iro/b$a;->ˎ:I

    .line 32
    new-array v0, v3, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    aput v3, v0, v2

    return-void
.end method
