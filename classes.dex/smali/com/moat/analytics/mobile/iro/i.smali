###### Class com.moat.analytics.mobile.iro.i (com.moat.analytics.mobile.iro.i)
.class final Lcom/moat/analytics/mobile/iro/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ʻ:[C

.field private static ʽ:C

.field private static ˊॱ:I

.field private static ᐝ:I


# instance fields
.field private ˊ:Z

.field private ˋ:I

.field private ˎ:I

.field private ˏ:Z

.field private ॱ:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1000
    const/4 v0, 0x5

    sput-char v0, Lcom/moat/analytics/mobile/iro/i;->ʽ:C

    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lcom/moat/analytics/mobile/iro/i;->ʻ:[C

    .line 0
    const/4 v0, 0x0

    sput v0, Lcom/moat/analytics/mobile/iro/i;->ᐝ:I

    const/4 v0, 0x1

    sput v0, Lcom/moat/analytics/mobile/iro/i;->ˊॱ:I

    return-void

    .line 1000
    nop

    :array_14
    .array-data 2
        0x73s
        0x61s
        0x32s
        0x62s
        0x63s
        0x33s
        0x34s
        0x31s
        0x38s
        0x39s
        0x66s
        0x30s
        0x36s
        0x64s
        0x65s
        0x35s
        0x6fs
        0x6es
        0x69s
        0x70s
        0x6cs
        0x74s
        0x75s
        0x76s
        0x77s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/iro/i;->ˊ:Z

    .line 44
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/iro/i;->ˏ:Z

    .line 45
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/iro/i;->ॱ:Z

    .line 46
    const/16 v0, 0xc8

    iput v0, p0, Lcom/moat/analytics/mobile/iro/i;->ˎ:I

    .line 47
    const/16 v0, 0xa

    iput v0, p0, Lcom/moat/analytics/mobile/iro/i;->ˋ:I

    .line 48
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/iro/i;->ˊ(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private ˊ(Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 52
    if-nez p1, :cond_5

    .line 88
    :goto_4
    return-void

    .line 56
    :cond_5
    :try_start_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    const/4 v2, 0x2

    const-string v4, "\u0001\u0002"

    const/16 v5, 0x3b

    invoke-static {v2, v4, v5}, Lcom/moat/analytics/mobile/iro/i;->ˎ(ILjava/lang/String;B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    const/16 v4, 0x28

    const-string v5, "\u0003\u0004\u0000\t\u0007\u0008\r\u0008\u0005\u0006\u000b\u000c\u000c\u0011\u0007\r\u000e\u0000\u0008\u0012\t\u000c\u0004\r\u0004\u0000\u0001\u000e\u0007\u000b\u0005\u0007\n\u0011\u0008\t\u0007\u000c\u0004\u0003"

    const/16 v6, 0x42

    invoke-static {v4, v5, v6}, Lcom/moat/analytics/mobile/iro/i;->ˎ(ILjava/lang/String;B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 60
    const/16 v5, 0x28

    const-string v6, "\u0005\r\u0008\u000c\r\u0006\u0002\u0003\u000e\r\u0007\u0005\u0011\u000c\u0005\u0008\u0000\u0010\r\u0004\u0004\u000b\u0005\r\n\u0010\u0006\u000e\u000f\u0014\u0008\u0006\u000c\u0004\u0011\u000c\u0005\u0007\t\u0005"

    const/16 v7, 0x2b

    invoke-static {v5, v6, v7}, Lcom/moat/analytics/mobile/iro/i;->ˎ(ILjava/lang/String;B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 62
    const/4 v6, 0x2

    const-string v7, "\u0011\u0012"

    const/16 v8, 0x79

    invoke-static {v6, v7, v8}, Lcom/moat/analytics/mobile/iro/i;->ˎ(ILjava/lang/String;B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_174

    move v2, v1

    .line 82
    :goto_53
    packed-switch v2, :pswitch_data_19a

    .line 63
    :goto_56
    invoke-static {v3}, Lcom/moat/analytics/mobile/iro/i;->ˊ(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_17c

    move v2, v0

    .line 82
    :goto_5d
    packed-switch v2, :pswitch_data_1a0

    .line 63
    invoke-static {v3}, Lcom/moat/analytics/mobile/iro/i;->ˏ(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_17f

    .line 82
    const/16 v2, 0x30

    :goto_68
    packed-switch v2, :pswitch_data_1a6

    .line 64
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/moat/analytics/mobile/iro/i;->ˊ:Z

    .line 65
    iput-boolean v4, p0, Lcom/moat/analytics/mobile/iro/i;->ˏ:Z

    .line 66
    iput-boolean v5, p0, Lcom/moat/analytics/mobile/iro/i;->ॱ:Z

    .line 67
    iget-boolean v2, p0, Lcom/moat/analytics/mobile/iro/i;->ॱ:Z
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_74} :catch_117

    if-eqz v2, :cond_183

    move v2, v1

    .line 82
    :goto_77
    packed-switch v2, :pswitch_data_1ac

    .line 88
    sget v2, Lcom/moat/analytics/mobile/iro/i;->ˊॱ:I

    add-int/lit8 v2, v2, 0x33

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/moat/analytics/mobile/iro/i;->ᐝ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_86

    .line 68
    :cond_86
    const/4 v2, 0x1

    :try_start_87
    iput-boolean v2, p0, Lcom/moat/analytics/mobile/iro/i;->ˏ:Z

    .line 72
    :pswitch_89
    const/4 v2, 0x2

    const-string v4, "\u0013\u0012"

    const/16 v5, 0x19

    invoke-static {v2, v4, v5}, Lcom/moat/analytics/mobile/iro/i;->ˎ(ILjava/lang/String;B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_186

    move v2, v0

    .line 82
    :goto_9d
    packed-switch v2, :pswitch_data_1b2

    .line 73
    const/4 v2, 0x2

    const-string v4, "\u0013\u0012"

    const/16 v5, 0x19

    invoke-static {v2, v4, v5}, Lcom/moat/analytics/mobile/iro/i;->ˎ(ILjava/lang/String;B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 74
    const/16 v2, 0x64

    if-lt v4, v2, :cond_189

    .line 82
    const/16 v2, 0x38

    :goto_b7
    packed-switch v2, :pswitch_data_1b8

    .line 78
    :goto_ba
    :pswitch_ba
    const/4 v2, 0x2

    const-string v4, "\n\u0004"

    const/16 v5, 0x18

    invoke-static {v2, v4, v5}, Lcom/moat/analytics/mobile/iro/i;->ˎ(ILjava/lang/String;B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_ca} :catch_117

    move-result v2

    if-eqz v2, :cond_190

    move v2, v1

    .line 82
    :goto_ce
    packed-switch v2, :pswitch_data_1be

    .line 88
    sget v2, Lcom/moat/analytics/mobile/iro/i;->ᐝ:I

    add-int/lit8 v2, v2, 0x37

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/moat/analytics/mobile/iro/i;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_dd

    .line 79
    :cond_dd
    const/4 v2, 0x2

    :try_start_de
    const-string v4, "\n\u0004"

    const/16 v5, 0x18

    invoke-static {v2, v4, v5}, Lcom/moat/analytics/mobile/iro/i;->ˎ(ILjava/lang/String;B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/moat/analytics/mobile/iro/i;->ˋ:I

    .line 81
    :pswitch_f0
    invoke-static {v3}, Lcom/moat/analytics/mobile/iro/i;->ˎ(Lorg/json/JSONObject;)Z
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_f3} :catch_117

    move-result v2

    if-eqz v2, :cond_193

    .line 82
    const/16 v2, 0x47

    :goto_f8
    packed-switch v2, :pswitch_data_1c4

    goto/16 :goto_4

    .line 88
    :pswitch_fd
    sget v2, Lcom/moat/analytics/mobile/iro/i;->ᐝ:I

    add-int/lit8 v2, v2, 0x45

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/moat/analytics/mobile/iro/i;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_196

    .line 82
    :goto_109
    packed-switch v0, :pswitch_data_1ca

    :try_start_10c
    invoke-static {}, Lcom/moat/analytics/mobile/iro/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/iro/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/iro/j;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/moat/analytics/mobile/iro/j;->ˏ:Z
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_115} :catch_117

    goto/16 :goto_4

    .line 84
    :catch_117
    move-exception v0

    .line 85
    iput-boolean v1, p0, Lcom/moat/analytics/mobile/iro/i;->ˊ:Z

    .line 86
    iput-boolean v1, p0, Lcom/moat/analytics/mobile/iro/i;->ˏ:Z

    .line 87
    const/16 v1, 0xc8

    iput v1, p0, Lcom/moat/analytics/mobile/iro/i;->ˎ:I

    .line 88
    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto/16 :goto_4

    :pswitch_125
    sget v2, Lcom/moat/analytics/mobile/iro/i;->ᐝ:I

    add-int/lit8 v2, v2, 0x5b

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/moat/analytics/mobile/iro/i;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_131

    .line 62
    :cond_131
    if-nez v4, :cond_177

    move v2, v0

    .line 82
    :goto_134
    packed-switch v2, :pswitch_data_1d0

    goto/16 :goto_56

    .line 62
    :pswitch_139
    if-eqz v5, :cond_179

    .line 82
    const/16 v2, 0x22

    :goto_13d
    packed-switch v2, :pswitch_data_1d6

    goto/16 :goto_56

    .line 88
    :pswitch_142
    sget v2, Lcom/moat/analytics/mobile/iro/i;->ᐝ:I

    add-int/lit8 v2, v2, 0x75

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/iro/i;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_14e

    .line 74
    :cond_14e
    const/16 v2, 0x3e8

    if-gt v4, v2, :cond_18d

    .line 82
    const/16 v2, 0x4b

    :goto_154
    packed-switch v2, :pswitch_data_1dc

    goto/16 :goto_ba

    .line 88
    :pswitch_159
    sget v2, Lcom/moat/analytics/mobile/iro/i;->ˊॱ:I

    add-int/lit8 v2, v2, 0x3b

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/iro/i;->ᐝ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_165

    .line 75
    :cond_165
    :try_start_165
    iput v4, p0, Lcom/moat/analytics/mobile/iro/i;->ˎ:I

    goto/16 :goto_ba

    .line 82
    :pswitch_169
    invoke-static {}, Lcom/moat/analytics/mobile/iro/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/iro/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/iro/j;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/moat/analytics/mobile/iro/j;->ˏ:Z
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_172} :catch_117

    goto/16 :goto_4

    :cond_174
    move v2, v0

    goto/16 :goto_53

    :cond_177
    move v2, v1

    goto :goto_134

    :cond_179
    const/16 v2, 0x14

    goto :goto_13d

    :cond_17c
    move v2, v1

    goto/16 :goto_5d

    :cond_17f
    const/16 v2, 0x4a

    goto/16 :goto_68

    :cond_183
    move v2, v0

    goto/16 :goto_77

    :cond_186
    move v2, v1

    goto/16 :goto_9d

    :cond_189
    const/16 v2, 0x42

    goto/16 :goto_b7

    :cond_18d
    const/16 v2, 0x34

    goto :goto_154

    :cond_190
    move v2, v0

    goto/16 :goto_ce

    :cond_193
    move v2, v0

    goto/16 :goto_f8

    :cond_196
    move v0, v1

    goto/16 :goto_109

    nop

    :pswitch_data_19a
    .packed-switch 0x0
        :pswitch_125
    .end packed-switch

    :pswitch_data_1a0
    .packed-switch 0x0
        :pswitch_89
    .end packed-switch

    :pswitch_data_1a6
    .packed-switch 0x4a
        :pswitch_89
    .end packed-switch

    :pswitch_data_1ac
    .packed-switch 0x1
        :pswitch_89
    .end packed-switch

    :pswitch_data_1b2
    .packed-switch 0x0
        :pswitch_ba
    .end packed-switch

    :pswitch_data_1b8
    .packed-switch 0x38
        :pswitch_142
    .end packed-switch

    :pswitch_data_1be
    .packed-switch 0x1
        :pswitch_f0
    .end packed-switch

    :pswitch_data_1c4
    .packed-switch 0x47
        :pswitch_fd
    .end packed-switch

    :pswitch_data_1ca
    .packed-switch 0x1
        :pswitch_169
    .end packed-switch

    :pswitch_data_1d0
    .packed-switch 0x1
        :pswitch_139
    .end packed-switch

    :pswitch_data_1d6
    .packed-switch 0x14
        :pswitch_89
    .end packed-switch

    :pswitch_data_1dc
    .packed-switch 0x4b
        :pswitch_159
    .end packed-switch
.end method

.method private static ˊ(Lorg/json/JSONObject;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 94
    const/16 v2, 0x10

    :try_start_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6} :catch_74

    if-le v2, v3, :cond_66

    move v2, v0

    .line 95
    :goto_9
    packed-switch v2, :pswitch_data_76

    .line 108
    sget v1, Lcom/moat/analytics/mobile/iro/i;->ᐝ:I

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/moat/analytics/mobile/iro/i;->ˊॱ:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_71

    .line 95
    const/16 v1, 0x3f

    :goto_1a
    packed-switch v1, :pswitch_data_7c

    .line 108
    :goto_1d
    :pswitch_1d
    return v0

    .line 97
    :pswitch_1e
    const/4 v2, 0x2

    :try_start_1f
    const-string v3, "\u0012\u0001"

    const/16 v4, 0x3e

    invoke-static {v2, v3, v4}, Lcom/moat/analytics/mobile/iro/i;->ˎ(ILjava/lang/String;B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 95
    const/16 v2, 0x4d

    :goto_33
    packed-switch v2, :pswitch_data_82

    .line 98
    const/4 v2, 0x2

    const-string v3, "\u0012\u0001"

    const/16 v4, 0x3e

    invoke-static {v2, v3, v4}, Lcom/moat/analytics/mobile/iro/i;->ˎ(ILjava/lang/String;B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 99
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v3, v1

    :goto_4c
    if-ge v3, v5, :cond_6b

    .line 95
    const/16 v2, 0x3c

    :goto_50
    packed-switch v2, :pswitch_data_88

    :pswitch_53
    move v0, v1

    .line 106
    goto :goto_1d

    .line 100
    :pswitch_55
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 101
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_5b} :catch_74

    if-ne v2, v6, :cond_6e

    .line 95
    const/16 v2, 0xe

    :goto_5f
    packed-switch v2, :pswitch_data_8e

    .line 99
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4c

    :cond_66
    move v2, v1

    .line 95
    goto :goto_9

    :cond_68
    const/16 v2, 0x56

    goto :goto_33

    :cond_6b
    const/16 v2, 0x47

    goto :goto_50

    :cond_6e
    const/16 v2, 0x1a

    goto :goto_5f

    :cond_71
    const/16 v1, 0x27

    goto :goto_1a

    .line 108
    :catch_74
    move-exception v1

    goto :goto_1d

    .line 95
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_1e
    .end packed-switch

    :pswitch_data_7c
    .packed-switch 0x3f
        :pswitch_1d
    .end packed-switch

    :pswitch_data_82
    .packed-switch 0x56
        :pswitch_53
    .end packed-switch

    :pswitch_data_88
    .packed-switch 0x3c
        :pswitch_55
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0xe
        :pswitch_1d
    .end packed-switch
.end method

.method private static ˎ(ILjava/lang/String;B)Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    check-cast v0, [C

    sget-object v5, Lcom/moat/analytics/mobile/iro/i;->ʻ:[C

    .line 203
    sget-char v6, Lcom/moat/analytics/mobile/iro/i;->ʽ:C

    .line 207
    new-array v7, p0, [C

    .line 210
    rem-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d5

    move v1, v2

    .line 218
    :goto_13
    packed-switch v1, :pswitch_data_ec

    .line 280
    sget v1, Lcom/moat/analytics/mobile/iro/i;->ˊॱ:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/moat/analytics/mobile/iro/i;->ᐝ:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_22

    .line 212
    :cond_22
    add-int/lit8 p0, p0, -0x1

    .line 213
    aget-char v1, v0, p0

    sub-int/2addr v1, p2

    int-to-char v1, v1

    aput-char v1, v7, p0

    .line 216
    :pswitch_2a
    if-le p0, v3, :cond_d8

    move v1, v2

    .line 218
    :goto_2d
    packed-switch v1, :pswitch_data_f2

    .line 280
    :pswitch_30
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :pswitch_36
    move v4, v2

    .line 218
    :goto_37
    if-ge v4, p0, :cond_db

    const/16 v1, 0x63

    :goto_3b
    packed-switch v1, :pswitch_data_f8

    .line 222
    aget-char v8, v0, v4

    .line 223
    add-int/lit8 v1, v4, 0x1

    aget-char v9, v0, v1

    .line 226
    if-ne v8, v9, :cond_df

    .line 218
    const/16 v1, 0x18

    :goto_48
    packed-switch v1, :pswitch_data_fe

    .line 228
    sub-int v1, v8, p2

    int-to-char v1, v1

    aput-char v1, v7, v4

    .line 229
    add-int/lit8 v1, v4, 0x1

    sub-int v8, v9, p2

    int-to-char v8, v8

    aput-char v8, v7, v1

    .line 218
    :goto_57
    add-int/lit8 v1, v4, 0x2

    move v4, v1

    goto :goto_37

    .line 234
    :pswitch_5b
    invoke-static {v8, v6}, Lcom/c/c/b;->ˋ(II)I

    move-result v10

    .line 235
    invoke-static {v8, v6}, Lcom/c/c/b;->ˎ(II)I

    move-result v8

    .line 236
    invoke-static {v9, v6}, Lcom/c/c/b;->ˋ(II)I

    move-result v11

    .line 237
    invoke-static {v9, v6}, Lcom/c/c/b;->ˎ(II)I

    move-result v9

    .line 240
    if-ne v8, v9, :cond_e3

    move v1, v2

    .line 218
    :goto_6e
    packed-switch v1, :pswitch_data_104

    .line 242
    invoke-static {v10, v6}, Lcom/c/c/b;->ˊ(II)I

    move-result v1

    .line 243
    invoke-static {v11, v6}, Lcom/c/c/b;->ˊ(II)I

    move-result v10

    .line 245
    invoke-static {v1, v8, v6}, Lcom/c/c/b;->ॱ(III)I

    move-result v1

    .line 246
    invoke-static {v10, v9, v6}, Lcom/c/c/b;->ॱ(III)I

    move-result v8

    .line 248
    aget-char v1, v5, v1

    aput-char v1, v7, v4

    .line 249
    add-int/lit8 v1, v4, 0x1

    aget-char v8, v5, v8

    aput-char v8, v7, v1

    goto :goto_57

    .line 253
    :pswitch_8c
    if-ne v10, v11, :cond_e5

    .line 218
    const/16 v1, 0x2e

    :goto_90
    packed-switch v1, :pswitch_data_10a

    .line 255
    invoke-static {v8, v6}, Lcom/c/c/b;->ˊ(II)I

    move-result v1

    .line 256
    invoke-static {v9, v6}, Lcom/c/c/b;->ˊ(II)I

    move-result v8

    .line 258
    invoke-static {v10, v1, v6}, Lcom/c/c/b;->ॱ(III)I

    move-result v1

    .line 259
    invoke-static {v11, v8, v6}, Lcom/c/c/b;->ॱ(III)I

    move-result v8

    .line 261
    aget-char v1, v5, v1

    aput-char v1, v7, v4

    .line 262
    add-int/lit8 v1, v4, 0x1

    aget-char v8, v5, v8

    aput-char v8, v7, v1

    goto :goto_57

    .line 270
    :pswitch_ae
    invoke-static {v10, v9, v6}, Lcom/c/c/b;->ॱ(III)I

    move-result v1

    .line 271
    invoke-static {v11, v8, v6}, Lcom/c/c/b;->ॱ(III)I

    move-result v8

    .line 273
    aget-char v1, v5, v1

    aput-char v1, v7, v4

    .line 274
    add-int/lit8 v1, v4, 0x1

    aget-char v8, v5, v8

    aput-char v8, v7, v1

    goto :goto_57

    .line 280
    :pswitch_c1
    sget v1, Lcom/moat/analytics/mobile/iro/i;->ˊॱ:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/moat/analytics/mobile/iro/i;->ᐝ:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_e8

    .line 218
    const/16 v1, 0x52

    :goto_cf
    packed-switch v1, :pswitch_data_110

    move v4, v2

    goto/16 :goto_37

    :cond_d5
    move v1, v3

    goto/16 :goto_13

    :cond_d8
    move v1, v3

    goto/16 :goto_2d

    :cond_db
    const/16 v1, 0x55

    goto/16 :goto_3b

    :cond_df
    const/16 v1, 0x23

    goto/16 :goto_48

    :cond_e3
    move v1, v3

    goto :goto_6e

    :cond_e5
    const/16 v1, 0x31

    goto :goto_90

    :cond_e8
    const/16 v1, 0x22

    goto :goto_cf

    nop

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_2a
    .end packed-switch

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_c1
    .end packed-switch

    :pswitch_data_f8
    .packed-switch 0x55
        :pswitch_30
    .end packed-switch

    :pswitch_data_fe
    .packed-switch 0x23
        :pswitch_5b
    .end packed-switch

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_8c
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x31
        :pswitch_ae
    .end packed-switch

    :pswitch_data_110
    .packed-switch 0x22
        :pswitch_36
    .end packed-switch
.end method

.method private static ˎ(Lorg/json/JSONObject;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    const/4 v2, 0x2

    :try_start_3
    const-string v3, "\u0000\u0015"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/moat/analytics/mobile/iro/i;->ˎ(ILjava/lang/String;B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_5c

    move-result v2

    if-eqz v2, :cond_61

    .line 143
    const/16 v2, 0x17

    :goto_16
    packed-switch v2, :pswitch_data_68

    :goto_19
    :pswitch_19
    move v0, v1

    :pswitch_1a
    return v0

    :pswitch_1b
    sget v2, Lcom/moat/analytics/mobile/iro/i;->ᐝ:I

    add-int/lit8 v2, v2, 0x49

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/moat/analytics/mobile/iro/i;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_27

    .line 132
    :cond_27
    :try_start_27
    invoke-static {}, Lcom/moat/analytics/mobile/iro/p;->ˎ()Lcom/moat/analytics/mobile/iro/p$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/moat/analytics/mobile/iro/p$b;->ˋ()Ljava/lang/String;

    move-result-object v4

    .line 133
    const/4 v2, 0x2

    const-string v3, "\u0000\u0015"

    const/4 v5, 0x3

    invoke-static {v2, v3, v5}, Lcom/moat/analytics/mobile/iro/i;->ˎ(ILjava/lang/String;B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 134
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v3, v1

    :goto_44
    if-ge v3, v6, :cond_64

    move v2, v1

    .line 143
    :goto_47
    packed-switch v2, :pswitch_data_6e

    .line 135
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_51} :catch_5c

    move-result v2

    if-eqz v2, :cond_66

    move v2, v0

    .line 143
    :goto_55
    packed-switch v2, :pswitch_data_74

    .line 134
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_44

    .line 141
    :catch_5c
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_19

    .line 143
    :cond_61
    const/16 v2, 0x37

    goto :goto_16

    :cond_64
    move v2, v0

    goto :goto_47

    :cond_66
    move v2, v1

    goto :goto_55

    :pswitch_data_68
    .packed-switch 0x17
        :pswitch_1b
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_19
    .end packed-switch

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_1a
    .end packed-switch
.end method

.method private static ˏ(Lorg/json/JSONObject;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    const/4 v2, 0x2

    :try_start_3
    const-string v3, "\u0004\u0010"

    const/16 v4, 0x2f

    invoke-static {v2, v3, v4}, Lcom/moat/analytics/mobile/iro/i;->ˎ(ILjava/lang/String;B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    move v2, v0

    .line 126
    :goto_16
    packed-switch v2, :pswitch_data_78

    :goto_19
    move v0, v1

    :cond_1a
    :goto_1a
    return v0

    .line 115
    :pswitch_1b
    invoke-static {}, Lcom/moat/analytics/mobile/iro/p;->ˎ()Lcom/moat/analytics/mobile/iro/p$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/moat/analytics/mobile/iro/p$b;->ˋ()Ljava/lang/String;

    move-result-object v4

    .line 116
    const/4 v2, 0x2

    const-string v3, "\u0004\u0010"

    const/16 v5, 0x2f

    invoke-static {v2, v3, v5}, Lcom/moat/analytics/mobile/iro/i;->ˎ(ILjava/lang/String;B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 117
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_37} :catch_6c

    move-result v6

    move v3, v1

    :goto_39
    if-ge v3, v6, :cond_73

    .line 126
    const/16 v2, 0x22

    :goto_3d
    packed-switch v2, :pswitch_data_7e

    goto :goto_19

    :pswitch_41
    sget v2, Lcom/moat/analytics/mobile/iro/i;->ˊॱ:I

    add-int/lit8 v2, v2, 0x73

    rem-int/lit16 v7, v2, 0x80

    sput v7, Lcom/moat/analytics/mobile/iro/i;->ᐝ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4d

    .line 118
    :cond_4d
    :try_start_4d
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_54} :catch_6c

    move-result v2

    if-eqz v2, :cond_76

    move v2, v0

    .line 126
    :goto_58
    packed-switch v2, :pswitch_data_84

    sget v1, Lcom/moat/analytics/mobile/iro/i;->ˊॱ:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/moat/analytics/mobile/iro/i;->ᐝ:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1a

    goto :goto_1a

    .line 117
    :pswitch_68
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_39

    .line 124
    :catch_6c
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_19

    :cond_71
    move v2, v1

    .line 126
    goto :goto_16

    :cond_73
    const/16 v2, 0x38

    goto :goto_3d

    :cond_76
    move v2, v1

    goto :goto_58

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_1b
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x22
        :pswitch_41
    .end packed-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_68
    .end packed-switch
.end method


# virtual methods
.method final ˊ()Z
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/iro/i;->ˏ:Z

    return v0
.end method

.method final ˋ()I
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Lcom/moat/analytics/mobile/iro/i;->ˎ:I

    return v0
.end method

.method final ˎ()Z
    .registers 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/iro/i;->ॱ:Z

    return v0
.end method

.method final ˏ()I
    .registers 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/iro/i;->ˊ:Z

    if-eqz v0, :cond_7

    sget v0, Lcom/moat/analytics/mobile/iro/t$c;->ॱ:I

    :goto_6
    return v0

    :cond_7
    sget v0, Lcom/moat/analytics/mobile/iro/t$c;->ˊ:I

    goto :goto_6
.end method

.method final ॱ()I
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lcom/moat/analytics/mobile/iro/i;->ˋ:I

    return v0
.end method
