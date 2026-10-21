###### Class com.chartboost.sdk.impl.ak (com.chartboost.sdk.impl.ak)
.class public Lcom/chartboost/sdk/impl/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/chartboost/sdk/impl/ai;

.field final b:Landroid/os/Handler;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lcom/chartboost/sdk/impl/ah;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ai;Landroid/os/Handler;)V
    .registers 5

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ak;->c:Ljava/util/concurrent/Executor;

    .line 44
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ak;->d:Lcom/chartboost/sdk/impl/ah;

    .line 45
    iput-object p3, p0, Lcom/chartboost/sdk/impl/ak;->a:Lcom/chartboost/sdk/impl/ai;

    .line 46
    iput-object p4, p0, Lcom/chartboost/sdk/impl/ak;->b:Landroid/os/Handler;

    .line 47
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Landroid/app/Activity;Lcom/chartboost/sdk/impl/aj;)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 81
    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_6} :catch_16

    .line 87
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 88
    if-nez v0, :cond_21

    .line 89
    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/aj;)V

    .line 147
    :goto_15
    return-void

    .line 82
    :catch_16
    move-exception v0

    .line 83
    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/aj;)V

    goto :goto_15

    .line 93
    :cond_21
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 94
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Landroid/content/Context;Lcom/chartboost/sdk/impl/aj;)V

    goto :goto_15

    .line 98
    :cond_35
    new-instance v0, Lcom/chartboost/sdk/impl/ak$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ak$1;-><init>(Lcom/chartboost/sdk/impl/ak;Ljava/lang/String;Lcom/chartboost/sdk/Model/c;Landroid/app/Activity;Lcom/chartboost/sdk/impl/aj;)V

    .line 146
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ak;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_15
.end method

.method a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Landroid/content/Context;Lcom/chartboost/sdk/impl/aj;)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 151
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 152
    const/4 v0, 0x5

    iput v0, p1, Lcom/chartboost/sdk/Model/c;->l:I

    .line 159
    :cond_c
    if-nez p3, :cond_10

    .line 160
    sget-object p3, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 161
    :cond_10
    if-nez p3, :cond_1c

    .line 162
    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/aj;)V

    .line 192
    :goto_1b
    return-void

    .line 167
    :cond_1c
    :try_start_1c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    instance-of v1, p3, Landroid/app/Activity;

    if-nez v1, :cond_2c

    .line 169
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    :cond_2c
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_36} :catch_40

    move-object v3, p2

    .line 191
    :goto_37
    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/aj;)V

    goto :goto_1b

    .line 172
    :catch_40
    move-exception v0

    .line 173
    const-string v0, "market://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 175
    :try_start_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://market.android.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    instance-of v1, p3, Landroid/app/Activity;

    if-nez v1, :cond_72

    .line 178
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    :cond_72
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_7c} :catch_7e

    move-object v3, p2

    .line 185
    goto :goto_37

    .line 181
    :catch_7e
    move-exception v0

    move-object v3, p2

    .line 182
    const-string v1, "CBURLOpener"

    const-string v4, "Exception raised openeing an inavld playstore URL"

    invoke-static {v1, v4, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/aj;)V

    goto :goto_1b

    .line 187
    :cond_90
    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/aj;)V

    move-object v3, p2

    goto :goto_37
.end method

.method public a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Lcom/chartboost/sdk/impl/aj;)V
    .registers 5

    .prologue
    .line 218
    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->a()Landroid/app/Activity;

    move-result-object v0

    :goto_8
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Landroid/app/Activity;Lcom/chartboost/sdk/impl/aj;)V

    .line 219
    return-void

    .line 218
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/aj;)V
    .registers 8

    .prologue
    .line 54
    if-eqz p1, :cond_e

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/c;->x:Z

    .line 56
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 57
    const/4 v0, 0x4

    iput v0, p1, Lcom/chartboost/sdk/Model/c;->l:I

    .line 61
    :cond_e
    if-nez p2, :cond_1a

    .line 62
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_19

    .line 63
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0, p3, p4}, Lcom/chartboost/sdk/a;->didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V

    .line 71
    :cond_19
    :goto_19
    return-void

    .line 65
    :cond_1a
    if-eqz p1, :cond_28

    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->w:Lcom/chartboost/sdk/impl/aj;

    if-eqz v0, :cond_28

    .line 66
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak;->d:Lcom/chartboost/sdk/impl/ah;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/c;->w:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/ad;)V

    goto :goto_19

    .line 67
    :cond_28
    if-eqz p5, :cond_19

    .line 68
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak;->d:Lcom/chartboost/sdk/impl/ah;

    invoke-virtual {v0, p5}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/ad;)V

    goto :goto_19
.end method

.method public a(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 196
    :try_start_1
    sget-object v1, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 197
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    instance-of v3, v1, Landroid/app/Activity;

    if-nez v3, :cond_13

    .line 199
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 200
    :cond_13
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 201
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 202
    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 203
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_2c

    move-result v1

    if-lez v1, :cond_2b

    const/4 v0, 0x1

    .line 208
    :cond_2b
    :goto_2b
    return v0

    .line 204
    :catch_2c
    move-exception v1

    .line 205
    const-string v2, "CBURLOpener"

    const-string v3, "Cannot open URL"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    const-class v2, Lcom/chartboost/sdk/impl/ak;

    const-string v3, "canOpenURL"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2b
.end method

###### Class com.chartboost.sdk.impl.ak.AnonymousClass1 (com.chartboost.sdk.impl.ak$1)
.class Lcom/chartboost/sdk/impl/ak$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Landroid/app/Activity;Lcom/chartboost/sdk/impl/aj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/chartboost/sdk/Model/c;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/chartboost/sdk/impl/aj;

.field final synthetic e:Lcom/chartboost/sdk/impl/ak;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ak;Ljava/lang/String;Lcom/chartboost/sdk/Model/c;Landroid/app/Activity;Lcom/chartboost/sdk/impl/aj;)V
    .registers 6

    .prologue
    .line 98
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ak$1;->e:Lcom/chartboost/sdk/impl/ak;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/ak$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/ak$1;->b:Lcom/chartboost/sdk/Model/c;

    iput-object p4, p0, Lcom/chartboost/sdk/impl/ak$1;->c:Landroid/app/Activity;

    iput-object p5, p0, Lcom/chartboost/sdk/impl/ak$1;->d:Lcom/chartboost/sdk/impl/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 131
    new-instance v0, Lcom/chartboost/sdk/impl/ak$1$1;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/impl/ak$1$1;-><init>(Lcom/chartboost/sdk/impl/ak$1;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ak$1;->c:Landroid/app/Activity;

    if-eqz v1, :cond_f

    .line 141
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ak$1;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 144
    :goto_e
    return-void

    .line 143
    :cond_f
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ak$1;->e:Lcom/chartboost/sdk/impl/ak;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ak;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ak$1;->a:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak$1;->e:Lcom/chartboost/sdk/impl/ak;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ak;->a:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->b()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_50

    move-result v0

    if-eqz v0, :cond_63

    .line 106
    const/4 v1, 0x0

    .line 108
    :try_start_d
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ak$1;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1a} :catch_3a
    .catchall {:try_start_d .. :try_end_1a} :catchall_49

    .line 110
    const/4 v1, 0x0

    :try_start_1b
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 111
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 112
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 113
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2d} :catch_5e
    .catchall {:try_start_1b .. :try_end_2d} :catchall_59

    move-result-object v1

    .line 114
    if-eqz v1, :cond_67

    .line 119
    :goto_30
    if-eqz v0, :cond_65

    .line 120
    :try_start_32
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    .line 124
    :goto_36
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/ak$1;->a(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_39} :catch_50

    .line 128
    :goto_39
    return-void

    .line 116
    :catch_3a
    move-exception v0

    .line 117
    :goto_3b
    :try_start_3b
    const-string v3, "CBURLOpener"

    const-string v4, "Exception raised while opening a HTTP Conection"

    invoke-static {v3, v4, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_49

    .line 119
    if-eqz v1, :cond_63

    .line 120
    :try_start_44
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v2

    goto :goto_36

    .line 119
    :catchall_49
    move-exception v0

    :goto_4a
    if-eqz v1, :cond_4f

    .line 120
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4f
    throw v0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_50} :catch_50

    .line 125
    :catch_50
    move-exception v0

    .line 126
    const-class v1, Lcom/chartboost/sdk/impl/ak;

    const-string v2, "open followTask"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_39

    .line 119
    :catchall_59
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4a

    .line 116
    :catch_5e
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3b

    :cond_63
    move-object v0, v2

    goto :goto_36

    :cond_65
    move-object v0, v1

    goto :goto_36

    :cond_67
    move-object v1, v2

    goto :goto_30
.end method

###### Class com.chartboost.sdk.impl.ak.AnonymousClass1.RunnableC00031 (com.chartboost.sdk.impl.ak$1$1)
.class Lcom/chartboost/sdk/impl/ak$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ak$1;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/chartboost/sdk/impl/ak$1;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ak$1;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 131
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ak$1$1;->b:Lcom/chartboost/sdk/impl/ak$1;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/ak$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ak$1$1;->b:Lcom/chartboost/sdk/impl/ak$1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ak$1;->e:Lcom/chartboost/sdk/impl/ak;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ak$1$1;->b:Lcom/chartboost/sdk/impl/ak$1;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ak$1;->b:Lcom/chartboost/sdk/Model/c;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ak$1$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ak$1$1;->b:Lcom/chartboost/sdk/impl/ak$1;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ak$1;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ak$1$1;->b:Lcom/chartboost/sdk/impl/ak$1;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/ak$1;->d:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Landroid/content/Context;Lcom/chartboost/sdk/impl/aj;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 138
    :goto_15
    return-void

    .line 135
    :catch_16
    move-exception v0

    .line 136
    const-class v1, Lcom/chartboost/sdk/impl/ak;

    const-string v2, "open openOnUiThread Runnable.run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_15
.end method
