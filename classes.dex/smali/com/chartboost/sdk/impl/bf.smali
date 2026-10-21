###### Class com.chartboost.sdk.impl.bf (com.chartboost.sdk.impl.bf)
.class public Lcom/chartboost/sdk/impl/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/chartboost/sdk/impl/bc;

.field private final b:Lcom/chartboost/sdk/impl/be;

.field private final c:I

.field private final d:Lorg/json/JSONObject;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bc;Lcom/chartboost/sdk/impl/be;ILjava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bf;->a:Lcom/chartboost/sdk/impl/bc;

    .line 48
    iput-object p2, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    .line 49
    iput p3, p0, Lcom/chartboost/sdk/impl/bf;->c:I

    .line 50
    iput-object p4, p0, Lcom/chartboost/sdk/impl/bf;->e:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/chartboost/sdk/impl/bf;->d:Lorg/json/JSONObject;

    .line 52
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 57
    :try_start_2
    iget v0, p0, Lcom/chartboost/sdk/impl/bf;->c:I

    packed-switch v0, :pswitch_data_2e4

    .line 211
    :cond_7
    :goto_7
    return-void

    .line 59
    :pswitch_8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/be;->b(Lorg/json/JSONObject;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_7

    .line 208
    :catch_f
    move-exception v0

    .line 209
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bf;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_7

    .line 63
    :pswitch_33
    :try_start_33
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/be;->h()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_f

    goto :goto_7

    .line 68
    :pswitch_39
    :try_start_39
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->d:Lorg/json/JSONObject;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 69
    const-string v1, "NativeBridgeCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "######### JS->Native Video current player duration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-float v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    mul-float/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/be;->a(F)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_62} :catch_63

    goto :goto_7

    .line 71
    :catch_63
    move-exception v0

    .line 72
    :try_start_64
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    const-string v1, "Parsing exception unknown field for current player duration"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/be;->e(Ljava/lang/String;)V

    .line 73
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Cannot find duration parameter for the video"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_72} :catch_f

    goto :goto_7

    .line 79
    :pswitch_73
    :try_start_73
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->d:Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    const-class v1, Lcom/chartboost/sdk/impl/bd;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS->Native Debug message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/be;->c(Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_9c} :catch_9e

    goto/16 :goto_7

    .line 82
    :catch_9e
    move-exception v0

    .line 83
    :try_start_9f
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Exception occured while parsing the message for webview debug track event"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    const-string v1, "Exception occured while parsing the message for webview debug track event"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/be;->c(Ljava/lang/String;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_ad} :catch_f

    goto/16 :goto_7

    .line 90
    :pswitch_af
    :try_start_af
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->d:Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    const-class v1, Lcom/chartboost/sdk/impl/bd;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS->Native Error message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/be;->d(Ljava/lang/String;)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_d8} :catch_da

    goto/16 :goto_7

    .line 93
    :catch_da
    move-exception v0

    .line 94
    :try_start_db
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Error message is empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/be;->d(Ljava/lang/String;)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e9} :catch_f

    goto/16 :goto_7

    .line 101
    :pswitch_eb
    :try_start_eb
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->d:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_116

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_116

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_116
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 105
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/be;->y()Lcom/chartboost/sdk/impl/be$b;

    move-result-object v2

    .line 106
    if-eqz v2, :cond_7

    .line 107
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 108
    if-eqz v2, :cond_7

    .line 109
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 110
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    const-class v1, Lcom/chartboost/sdk/impl/bd;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS->Native Track MRAID openUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_158
    .catch Landroid/content/ActivityNotFoundException; {:try_start_eb .. :try_end_158} :catch_15a
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_158} :catch_16d

    goto/16 :goto_7

    .line 114
    :catch_15a
    move-exception v0

    .line 115
    :try_start_15b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "ActivityNotFoundException occured when opening a url in a browser"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 116
    const-string v0, "NativeBridgeCommand"

    const-string v1, "ActivityNotFoundException occured when opening a url in a browser"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 117
    :catch_16d
    move-exception v0

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Exception while opening a browser view with MRAID url"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 119
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Exception while opening a browser view with MRAID url"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 124
    :pswitch_180
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/be;->z()V
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_185} :catch_f

    goto/16 :goto_7

    .line 129
    :pswitch_187
    :try_start_187
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->d:Lorg/json/JSONObject;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 130
    const-string v1, "NativeBridgeCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "######### JS->Native Video total player duration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-float v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    mul-float/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/be;->b(F)V
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_1b0} :catch_1b2

    goto/16 :goto_7

    .line 132
    :catch_1b2
    move-exception v0

    .line 133
    :try_start_1b3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    const-string v1, "Parsing exception unknown field for total player duration"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/be;->e(Ljava/lang/String;)V

    .line 134
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Cannot find duration parameter for the video"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c1
    .catch Ljava/lang/Exception; {:try_start_1b3 .. :try_end_1c1} :catch_f

    goto/16 :goto_7

    .line 140
    :pswitch_1c3
    :try_start_1c3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->d:Lorg/json/JSONObject;

    const-string v1, "event"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/be;->b(Ljava/lang/String;)V

    .line 142
    const-class v1, Lcom/chartboost/sdk/impl/bd;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS->Native Track VAST event message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ec
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_1ec} :catch_1ee

    goto/16 :goto_7

    .line 143
    :catch_1ee
    move-exception v0

    .line 144
    :try_start_1ef
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Exception occured while parsing the message for webview tracking VAST events"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 149
    :pswitch_1f8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bc;->onHideCustomView()V

    .line 150
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/be;->b(I)V

    .line 151
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/be;->w()V
    :try_end_208
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_208} :catch_f

    goto/16 :goto_7

    .line 156
    :pswitch_20a
    :try_start_20a
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->d:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_220

    .line 158
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    iput-object v0, v1, Lcom/chartboost/sdk/impl/be;->m:Ljava/lang/String;
    :try_end_220
    .catch Ljava/lang/Exception; {:try_start_20a .. :try_end_220} :catch_228

    .line 163
    :cond_220
    :goto_220
    :try_start_220
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/be;->b(I)V

    goto/16 :goto_7

    .line 159
    :catch_228
    move-exception v0

    .line 160
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Cannot find video file name"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    const-string v1, "Parsing exception unknown field for video pause"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/be;->e(Ljava/lang/String;)V
    :try_end_237
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_237} :catch_f

    goto :goto_220

    .line 168
    :pswitch_238
    :try_start_238
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->d:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24e

    .line 170
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    iput-object v0, v1, Lcom/chartboost/sdk/impl/be;->m:Ljava/lang/String;
    :try_end_24e
    .catch Ljava/lang/Exception; {:try_start_238 .. :try_end_24e} :catch_256

    .line 175
    :cond_24e
    :goto_24e
    :try_start_24e
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/be;->b(I)V

    goto/16 :goto_7

    .line 171
    :catch_256
    move-exception v0

    .line 172
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Cannot find video file name"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    const-string v1, "Parsing exception unknown field for video play"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/be;->e(Ljava/lang/String;)V
    :try_end_265
    .catch Ljava/lang/Exception; {:try_start_24e .. :try_end_265} :catch_f

    goto :goto_24e

    .line 180
    :pswitch_266
    :try_start_266
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->d:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27c

    .line 182
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    iput-object v0, v1, Lcom/chartboost/sdk/impl/be;->m:Ljava/lang/String;

    .line 183
    :cond_27c
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/be;->x()V
    :try_end_281
    .catch Ljava/lang/Exception; {:try_start_266 .. :try_end_281} :catch_283

    goto/16 :goto_7

    .line 184
    :catch_283
    move-exception v0

    .line 185
    :try_start_284
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Cannot find video file name"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    const-string v1, "Parsing exception unknown field for video replay"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/be;->e(Ljava/lang/String;)V
    :try_end_292
    .catch Ljava/lang/Exception; {:try_start_284 .. :try_end_292} :catch_f

    goto/16 :goto_7

    .line 192
    :pswitch_294
    :try_start_294
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->d:Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    const-class v1, Lcom/chartboost/sdk/impl/bd;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS->Native Warning message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/be;->e(Ljava/lang/String;)V
    :try_end_2bd
    .catch Ljava/lang/Exception; {:try_start_294 .. :try_end_2bd} :catch_2bf

    goto/16 :goto_7

    .line 195
    :catch_2bf
    move-exception v0

    .line 196
    :try_start_2c0
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Warning message is empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/be;->e(Ljava/lang/String;)V
    :try_end_2ce
    .catch Ljava/lang/Exception; {:try_start_2c0 .. :try_end_2ce} :catch_f

    goto/16 :goto_7

    .line 202
    :pswitch_2d0
    :try_start_2d0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf;->b:Lcom/chartboost/sdk/impl/be;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/be;->c(Lorg/json/JSONObject;)V
    :try_end_2d7
    .catch Ljava/lang/Exception; {:try_start_2d0 .. :try_end_2d7} :catch_2d9

    goto/16 :goto_7

    .line 203
    :catch_2d9
    move-exception v0

    .line 204
    :try_start_2da
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Invalid set orientation command"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e1
    .catch Ljava/lang/Exception; {:try_start_2da .. :try_end_2e1} :catch_f

    goto/16 :goto_7

    .line 57
    nop

    :pswitch_data_2e4
    .packed-switch 0x0
        :pswitch_8
        :pswitch_33
        :pswitch_39
        :pswitch_73
        :pswitch_af
        :pswitch_eb
        :pswitch_180
        :pswitch_187
        :pswitch_1c3
        :pswitch_1f8
        :pswitch_20a
        :pswitch_238
        :pswitch_266
        :pswitch_294
        :pswitch_2d0
    .end packed-switch
.end method
