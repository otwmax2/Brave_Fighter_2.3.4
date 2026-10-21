###### Class com.moat.analytics.mobile.iro.o (com.moat.analytics.mobile.iro.o)
.class final Lcom/moat/analytics/mobile/iro/o;
.super Ljava/lang/Exception;
.source ""


# static fields
.field private static ˋ:Ljava/lang/Exception;

.field private static ˎ:Ljava/lang/Long;

.field private static final ˏ:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    const-wide/32 v0, 0xea60

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/moat/analytics/mobile/iro/o;->ˏ:Ljava/lang/Long;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/moat/analytics/mobile/iro/o;->ˋ:Ljava/lang/Exception;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method static ˊ()V
    .registers 1

    .prologue
    .line 103
    sget-object v0, Lcom/moat/analytics/mobile/iro/o;->ˋ:Ljava/lang/Exception;

    if-eqz v0, :cond_c

    .line 104
    sget-object v0, Lcom/moat/analytics/mobile/iro/o;->ˋ:Ljava/lang/Exception;

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ˊ(Ljava/lang/Exception;)V

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/moat/analytics/mobile/iro/o;->ˋ:Ljava/lang/Exception;

    .line 107
    :cond_c
    return-void
.end method

.method private static ˊ(Ljava/lang/Exception;)V
    .registers 16

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 55
    :try_start_2
    invoke-static {}, Lcom/moat/analytics/mobile/iro/t;->ˋ()Lcom/moat/analytics/mobile/iro/t;

    move-result-object v0

    iget v0, v0, Lcom/moat/analytics/mobile/iro/t;->ˋ:I

    sget v1, Lcom/moat/analytics/mobile/iro/t$c;->ॱ:I

    if-ne v0, v1, :cond_1b7

    .line 56
    invoke-static {}, Lcom/moat/analytics/mobile/iro/t;->ˋ()Lcom/moat/analytics/mobile/iro/t;

    move-result-object v0

    iget v6, v0, Lcom/moat/analytics/mobile/iro/t;->ˊ:I

    .line 57
    if-nez v6, :cond_15

    .line 100
    :cond_14
    :goto_14
    return-void

    .line 58
    :cond_15
    const/16 v0, 0x64

    if-ge v6, v0, :cond_25

    int-to-double v0, v6

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_14

    .line 60
    :cond_25
    const-string v2, ""

    .line 61
    const-string v1, ""

    .line 62
    const-string v0, ""

    .line 63
    const-string v3, ""

    .line 65
    const-string v7, "https://px.moatads.com/pixel.gif?e=0&i=MOATSDK1&ac=1"

    .line 66
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "&zt="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    instance-of v9, p0, Lcom/moat/analytics/mobile/iro/o;

    if-eqz v9, :cond_195

    :goto_3f
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&zr="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5c} :catch_192

    .line 70
    :try_start_5c
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v4, "&zm="

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_198

    const-string v4, "null"

    :goto_6b
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&k="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_9d} :catch_1bb

    .line 75
    :goto_9d
    :try_start_9d
    const-string v2, "IRO"

    .line 76
    const-string v4, "&zMoatMMAKv=2bc3418b93f01686fcbd1ebebcc04694651821b2"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v0, "2.4.0"

    .line 78
    invoke-static {}, Lcom/moat/analytics/mobile/iro/p;->ˎ()Lcom/moat/analytics/mobile/iro/p$b;

    move-result-object v4

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "&zMoatMMAKan="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/moat/analytics/mobile/iro/p$b;->ˏ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v4}, Lcom/moat/analytics/mobile/iro/p$b;->ˋ()Ljava/lang/String;

    move-result-object v1

    .line 81
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_c9} :catch_1af

    move-result-object v3

    move-object v14, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v14

    .line 83
    :goto_cf
    :try_start_cf
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&d=Android:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&bo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&bd="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&t="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&de="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, "&cs=0"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    sget-object v1, Lcom/moat/analytics/mobile/iro/o;->ˎ:Ljava/lang/Long;

    if-eqz v1, :cond_182

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v1, Lcom/moat/analytics/mobile/iro/o;->ˎ:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v1, Lcom/moat/analytics/mobile/iro/o;->ˏ:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_14

    .line 92
    :cond_182
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1075
    new-instance v2, Lcom/moat/analytics/mobile/iro/l$1;

    invoke-direct {v2, v1}, Lcom/moat/analytics/mobile/iro/l$1;-><init>(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {v2}, Lcom/moat/analytics/mobile/iro/l$1;->start()V

    .line 93
    sput-object v0, Lcom/moat/analytics/mobile/iro/o;->ˎ:Ljava/lang/Long;
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_190} :catch_192

    goto/16 :goto_14

    .line 100
    :catch_192
    move-exception v0

    goto/16 :goto_14

    :cond_195
    move v4, v5

    .line 67
    goto/16 :goto_3f

    .line 70
    :cond_198
    :try_start_198
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v6, "UTF-8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    const-string v6, "UTF-8"

    invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1ac
    .catch Ljava/lang/Exception; {:try_start_198 .. :try_end_1ac} :catch_1bb

    move-result-object v4

    goto/16 :goto_6b

    :catch_1af
    move-exception v4

    move-object v14, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v14

    goto/16 :goto_cf

    .line 97
    :cond_1b7
    :try_start_1b7
    sput-object p0, Lcom/moat/analytics/mobile/iro/o;->ˋ:Ljava/lang/Exception;
    :try_end_1b9
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1b9} :catch_192

    goto/16 :goto_14

    :catch_1bb
    move-exception v4

    goto/16 :goto_9d
.end method

.method static ॱ(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 35
    instance-of v0, p1, Lcom/moat/analytics/mobile/iro/o;

    if-eqz v0, :cond_20

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_1f
    return-object v0

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed unexpectedly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method

.method static ॱ(Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 45
    invoke-static {}, Lcom/moat/analytics/mobile/iro/t;->ˋ()Lcom/moat/analytics/mobile/iro/t;

    move-result-object v0

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/iro/t;->ˎ:Z

    if-eqz v0, :cond_12

    .line 46
    const-string v0, "MoatException"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_11
    return-void

    .line 49
    :cond_12
    invoke-static {p0}, Lcom/moat/analytics/mobile/iro/o;->ˊ(Ljava/lang/Exception;)V

    goto :goto_11
.end method

###### Class com.moat.analytics.mobile.iro.l.AnonymousClass1 (com.moat.analytics.mobile.iro.l$1)
.class final Lcom/moat/analytics/mobile/iro/l$1;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/iro/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic ˎ:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/l$1;->ˎ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/l$1;->ˎ:Ljava/lang/String;

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/l;->ॱ(Ljava/lang/String;)Lcom/moat/analytics/mobile/iro/base/functional/Optional;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 80
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method
