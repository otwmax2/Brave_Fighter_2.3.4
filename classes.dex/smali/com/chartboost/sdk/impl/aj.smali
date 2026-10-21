###### Class com.chartboost.sdk.impl.aj (com.chartboost.sdk.impl.aj)
.class public Lcom/chartboost/sdk/impl/aj;
.super Lcom/chartboost/sdk/impl/ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/aj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/ad",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lorg/json/JSONObject;

.field public final k:Lcom/chartboost/sdk/impl/aj$a;

.field public l:Z

.field protected final m:Lcom/chartboost/sdk/impl/ap;

.field private final n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private final p:Lcom/chartboost/sdk/Tracking/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ap;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/aj$a;)V
    .registers 9

    .prologue
    .line 53
    const-string v0, "POST"

    invoke-static {p1}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p4, v2}, Lcom/chartboost/sdk/impl/ad;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/aj;->l:Z

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aj;->a:Lorg/json/JSONObject;

    .line 55
    iput-object p1, p0, Lcom/chartboost/sdk/impl/aj;->n:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    .line 57
    iput-object p3, p0, Lcom/chartboost/sdk/impl/aj;->p:Lcom/chartboost/sdk/Tracking/a;

    .line 58
    iput-object p5, p0, Lcom/chartboost/sdk/impl/aj;->k:Lcom/chartboost/sdk/impl/aj$a;

    .line 59
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 62
    const-string v0, "https://live.chartboost.com"

    .line 69
    const-string v1, "%s%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    if-eqz p0, :cond_23

    const-string v0, "/"

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, ""

    :goto_17
    aput-object v0, v2, v3

    const/4 v0, 0x2

    if-eqz p0, :cond_26

    :goto_1c
    aput-object p0, v2, v0

    .line 69
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    :cond_23
    const-string v0, "/"

    goto :goto_17

    :cond_26
    const-string p0, ""

    goto :goto_1c
.end method

.method private a(Lcom/chartboost/sdk/impl/ag;Lcom/chartboost/sdk/Model/CBError;)V
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 153
    const/4 v0, 0x5

    new-array v1, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const-string v0, "endpoint"

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/aj;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    aput-object v0, v1, v5

    const/4 v2, 0x1

    const-string v3, "statuscode"

    if-nez p1, :cond_59

    const-string v0, "None"

    .line 154
    :goto_18
    invoke-static {v3, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v2, 0x2

    const-string v3, "error"

    if-nez p2, :cond_60

    const-string v0, "None"

    .line 155
    :goto_25
    invoke-static {v3, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v2, 0x3

    const-string v3, "errorDescription"

    if-nez p2, :cond_69

    const-string v0, "None"

    .line 156
    :goto_32
    invoke-static {v3, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-string v2, "retryCount"

    .line 157
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v1, v0

    .line 153
    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v7

    .line 160
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->p:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, "request_manager"

    const-string v2, "request"

    if-nez p2, :cond_6e

    const-string v3, "success"

    :goto_53
    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 167
    return-void

    .line 153
    :cond_59
    iget v0, p1, Lcom/chartboost/sdk/impl/ag;->a:I

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_18

    .line 155
    :cond_60
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError;->a()Lcom/chartboost/sdk/Model/CBError$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/CBError$a;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    .line 156
    :cond_69
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    .line 160
    :cond_6e
    const-string v3, "failure"

    goto :goto_53
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/ae;
    .registers 9

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/aj;->c()V

    .line 183
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    sget-object v1, Lcom/chartboost/sdk/i;->k:Ljava/lang/String;

    .line 186
    sget-object v2, Lcom/chartboost/sdk/i;->l:Ljava/lang/String;

    .line 187
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s %s\n%s\n%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/chartboost/sdk/impl/aj;->b:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 188
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/aj;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v2, 0x3

    aput-object v0, v5, v2

    .line 187
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/c;->a([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/c;->b([B)Ljava/lang/String;

    move-result-object v2

    .line 191
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 192
    const-string v4, "Accept"

    const-string v5, "application/json"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v4, "X-Chartboost-Client"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v4, "X-Chartboost-API"

    const-string v5, "7.2.0"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v4, "X-Chartboost-App"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "X-Chartboost-Signature"

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v1, Lcom/chartboost/sdk/impl/ae;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v2, "application/json"

    invoke-direct {v1, v3, v0, v2}, Lcom/chartboost/sdk/impl/ae;-><init>(Ljava/util/Map;[BLjava/lang/String;)V

    return-object v1
.end method

.method public a(Lcom/chartboost/sdk/impl/ag;)Lcom/chartboost/sdk/impl/af;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/ag;",
            ")",
            "Lcom/chartboost/sdk/impl/af",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    :try_start_0
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ag;->b:[B

    if-nez v0, :cond_12

    .line 211
    new-instance v0, Lcom/chartboost/sdk/Model/CBError;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->c:Lcom/chartboost/sdk/Model/CBError$a;

    const-string v2, "Response is not a valid json object"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/impl/af;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    .line 235
    :goto_11
    return-object v0

    .line 214
    :cond_12
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/chartboost/sdk/impl/ag;->b:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 216
    const-string v1, "CBRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/aj;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " succeeded. Response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/chartboost/sdk/impl/ag;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    .line 217
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/aj;->l:Z

    if-eqz v1, :cond_a4

    .line 221
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 222
    const/16 v2, 0x194

    if-ne v1, v2, :cond_71

    .line 223
    new-instance v0, Lcom/chartboost/sdk/Model/CBError;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->g:Lcom/chartboost/sdk/Model/CBError$a;

    const-string v2, "404 error from server"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/impl/af;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    goto :goto_11

    .line 225
    :cond_71
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_79

    const/16 v2, 0x12b

    if-le v1, v2, :cond_a4

    .line 226
    :cond_79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request failed due to status code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    const-string v1, "CBRequest"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v1, Lcom/chartboost/sdk/Model/CBError;

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$a;->d:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-direct {v1, v2, v0}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/chartboost/sdk/impl/af;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    goto/16 :goto_11

    .line 232
    :cond_a4
    invoke-static {v0}, Lcom/chartboost/sdk/impl/af;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/impl/af;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a7} :catch_aa

    move-result-object v0

    goto/16 :goto_11

    .line 233
    :catch_aa
    move-exception v0

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "parseServerResponse"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 235
    new-instance v1, Lcom/chartboost/sdk/Model/CBError;

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$a;->a:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/chartboost/sdk/impl/af;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    goto/16 :goto_11
.end method

.method public a(Lcom/chartboost/sdk/Model/CBError;Lcom/chartboost/sdk/impl/ag;)V
    .registers 4

    .prologue
    .line 253
    if-nez p1, :cond_3

    .line 263
    :cond_2
    :goto_2
    return-void

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->k:Lcom/chartboost/sdk/impl/aj$a;

    if-eqz v0, :cond_c

    .line 257
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->k:Lcom/chartboost/sdk/impl/aj$a;

    invoke-interface {v0, p0, p1}, Lcom/chartboost/sdk/impl/aj$a;->a(Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Model/CBError;)V

    .line 260
    :cond_c
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->p:Lcom/chartboost/sdk/Tracking/a;

    if-eqz v0, :cond_2

    .line 261
    invoke-direct {p0, p2, p1}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/impl/ag;Lcom/chartboost/sdk/Model/CBError;)V

    goto :goto_2
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/chartboost/sdk/impl/ag;)V
    .registers 3

    .prologue
    .line 28
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/aj;->a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/ag;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->a:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/ag;)V
    .registers 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->k:Lcom/chartboost/sdk/impl/aj$a;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 243
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->k:Lcom/chartboost/sdk/impl/aj$a;

    invoke-interface {v0, p0, p1}, Lcom/chartboost/sdk/impl/aj$a;->a(Lcom/chartboost/sdk/impl/aj;Lorg/json/JSONObject;)V

    .line 245
    :cond_b
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->p:Lcom/chartboost/sdk/Tracking/a;

    if-eqz v0, :cond_13

    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/impl/ag;Lcom/chartboost/sdk/Model/CBError;)V

    .line 248
    :cond_13
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 174
    iput-object p1, p0, Lcom/chartboost/sdk/impl/aj;->o:Ljava/lang/String;

    .line 175
    return-void
.end method

.method protected c()V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    const-string v2, "app"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->s:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    const-string v2, "model"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->f:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v2, "device_type"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->t:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    const-string v2, "actual_device_type"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->u:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    const-string v2, "os"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->g:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    const-string v2, "country"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->h:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-string v2, "language"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->i:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    const-string v2, "sdk"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->l:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string v2, "user_agent"

    sget-object v3, Lcom/chartboost/sdk/i;->w:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/i;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 94
    const-string v3, "timestamp"

    invoke-virtual {p0, v3, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    iget-object v2, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ap;->d:Landroid/content/SharedPreferences;

    const-string v3, "cbPrefSessionCount"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 96
    const-string v3, "session"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    const-string v2, "reachability"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->b:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/ai;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    const-string v2, "scale"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->r:Ljava/lang/Float;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    const-string v2, "is_portrait"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result v3

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    const-string v2, "bundle"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->j:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    const-string v2, "bundle_id"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->k:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    const-string v2, "carrier"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->v:Lorg/json/JSONObject;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string v2, "custom_id"

    sget-object v3, Lcom/chartboost/sdk/i;->a:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    const-string v2, "mediation"

    sget-object v3, Lcom/chartboost/sdk/i;->h:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    sget-object v2, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v2, :cond_e1

    .line 106
    const-string v2, "framework_version"

    sget-object v3, Lcom/chartboost/sdk/i;->f:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    const-string v2, "wrapper_version"

    sget-object v3, Lcom/chartboost/sdk/i;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    :cond_e1
    const-string v2, "rooted_device"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-boolean v3, v3, Lcom/chartboost/sdk/impl/ap;->w:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string v2, "timezone"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->x:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    const-string v2, "mobile_network"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->y:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    const-string v2, "dw"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->o:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    const-string v2, "dh"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->p:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    const-string v2, "dpi"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->q:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    const-string v2, "w"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->m:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    const-string v2, "h"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ap;->n:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    const-string v2, "commit_hash"

    const-string v3, "ecf99f36d9c9c31bcecd74aa3fd6d75f397249e4"

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    iget-object v2, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ap;->a:Lcom/chartboost/sdk/Libraries/d;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/d;->b()Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v2

    .line 120
    const-string v3, "identity"

    iget-object v4, v2, Lcom/chartboost/sdk/Libraries/d$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    iget v3, v2, Lcom/chartboost/sdk/Libraries/d$a;->a:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_155

    .line 122
    iget v2, v2, Lcom/chartboost/sdk/Libraries/d$a;->a:I

    if-ne v2, v0, :cond_185

    .line 123
    :goto_14c
    const-string v1, "limit_ad_tracking"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    :cond_155
    const-string v0, "gdpr_dnt"

    sget-boolean v1, Lcom/chartboost/sdk/i;->x:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->m:Lcom/chartboost/sdk/impl/ap;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ap;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/e;->a:Ljava/lang/String;

    .line 129
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17b

    .line 130
    const-string v1, "config_variant"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    :cond_17b
    const-string v0, "certification_providers"

    .line 134
    invoke-static {}, Lcom/chartboost/sdk/impl/o;->e()Lorg/json/JSONArray;

    move-result-object v1

    .line 133
    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    return-void

    :cond_185
    move v0, v1

    .line 122
    goto :goto_14c
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/aj;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->n:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "/"

    :goto_6
    return-object v0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->n:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, ""

    :goto_18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/aj;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_27
    const-string v0, "/"

    goto :goto_18
.end method

###### Class com.chartboost.sdk.impl.aj.a (com.chartboost.sdk.impl.aj$a)
.class public interface abstract Lcom/chartboost/sdk/impl/aj$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Model/CBError;)V
.end method

.method public abstract a(Lcom/chartboost/sdk/impl/aj;Lorg/json/JSONObject;)V
.end method
