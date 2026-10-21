###### Class com.moat.analytics.mobile.cha.g (com.moat.analytics.mobile.cha.g)
.class final Lcom/moat/analytics/mobile/cha/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ʻ:I

.field private static ʼ:I

.field private static ʽ:I

.field private static ˊॱ:I

.field private static ॱˋ:I

.field private static ᐝ:[B


# instance fields
.field private ˊ:Z

.field private ˋ:I

.field private ˎ:Z

.field private ˏ:Z

.field private ॱ:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1000
    const/16 v0, 0x75

    sput v0, Lcom/moat/analytics/mobile/cha/g;->ˊॱ:I

    const v0, -0x43d846af

    sput v0, Lcom/moat/analytics/mobile/cha/g;->ʽ:I

    const v0, 0x21b3bf86

    sput v0, Lcom/moat/analytics/mobile/cha/g;->ʼ:I

    const/16 v0, 0x5e

    new-array v0, v0, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/moat/analytics/mobile/cha/g;->ᐝ:[B

    .line 0
    const/4 v0, 0x0

    sput v0, Lcom/moat/analytics/mobile/cha/g;->ʻ:I

    const/4 v0, 0x1

    sput v0, Lcom/moat/analytics/mobile/cha/g;->ॱˋ:I

    return-void

    .line 1000
    :array_1e
    .array-data 1
        -0x49t
        0x4ft
        -0x4dt
        0x7ft
        -0x7bt
        -0x7dt
        -0x7et
        0x49t
        0x7dt
        -0x51t
        0x51t
        -0x4dt
        0x51t
        0x7ft
        -0x53t
        -0x79t
        0x49t
        -0x4et
        0x7ft
        0x55t
        -0x52t
        -0x80t
        0x4dt
        -0x4ft
        0x4dt
        -0x50t
        -0x7et
        0x7bt
        -0x7ct
        0x4dt
        -0x7dt
        -0x57t
        -0x7bt
        0x75t
        -0x7bt
        0x78t
        -0x7at
        0x52t
        -0x53t
        -0x80t
        -0x45t
        -0x42t
        0x41t
        -0x4et
        0x41t
        -0x42t
        0x77t
        -0x78t
        -0x48t
        0x46t
        0x75t
        -0x74t
        0x4dt
        -0x42t
        -0x41t
        0x70t
        -0x6ct
        0x69t
        -0x42t
        0x45t
        0x47t
        -0x76t
        0x6et
        -0x76t
        0x42t
        -0x4et
        0x41t
        0x47t
        -0x41t
        0x44t
        0x68t
        -0x78t
        0x6bt
        -0x6dt
        -0x4et
        0x76t
        -0x77t
        0x71t
        -0x6ct
        -0x5bt
        -0x51t
        -0x5t
        0x50t
        -0x19t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/g;->ˏ:Z

    .line 44
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/g;->ˎ:Z

    .line 45
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/g;->ˊ:Z

    .line 46
    const/16 v0, 0xc8

    iput v0, p0, Lcom/moat/analytics/mobile/cha/g;->ॱ:I

    .line 47
    const/16 v0, 0xa

    iput v0, p0, Lcom/moat/analytics/mobile/cha/g;->ˋ:I

    .line 48
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/cha/g;->ॱ(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private static ˋ(IIBI)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 189
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    sget v2, Lcom/moat/analytics/mobile/cha/g;->ˊॱ:I

    add-int v3, p0, v2

    .line 193
    const/4 v2, -0x1

    if-ne v3, v2, :cond_b8

    move v2, v0

    .line 198
    :goto_10
    packed-switch v2, :pswitch_data_d4

    move v4, v1

    .line 194
    :goto_14
    if-eqz v4, :cond_bb

    move v2, v1

    .line 198
    :goto_17
    packed-switch v2, :pswitch_data_da

    .line 196
    sget-object v2, Lcom/moat/analytics/mobile/cha/g;->ᐝ:[B

    if-eqz v2, :cond_be

    move v2, v0

    .line 198
    :goto_1f
    packed-switch v2, :pswitch_data_e0

    .line 202
    sget v2, Lcom/moat/analytics/mobile/cha/g;->ʼ:I

    add-int/2addr v2, p3

    aget-short v2, v7, v2

    sget v3, Lcom/moat/analytics/mobile/cha/g;->ˊॱ:I

    add-int/2addr v2, v3

    int-to-short v2, v2

    move v5, v2

    .line 206
    :goto_2c
    if-lez v5, :cond_c1

    .line 198
    const/16 v2, 0x3d

    :goto_30
    packed-switch v2, :pswitch_data_e6

    .line 209
    add-int v2, p3, v5

    add-int/lit8 v2, v2, -0x2

    sget v3, Lcom/moat/analytics/mobile/cha/g;->ʼ:I

    add-int/2addr v3, v2

    if-eqz v4, :cond_c5

    .line 198
    const/16 v2, 0x51

    :goto_3e
    packed-switch v2, :pswitch_data_ec

    .line 209
    :goto_41
    add-int v2, v3, v0

    .line 213
    sget v0, Lcom/moat/analytics/mobile/cha/g;->ʽ:I

    add-int/2addr v0, p1

    int-to-char v0, v0

    .line 214
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v0

    move v4, v2

    move v2, v1

    .line 218
    :goto_4d
    if-ge v2, v5, :cond_c9

    .line 198
    const/16 v0, 0x55

    :goto_51
    packed-switch v0, :pswitch_data_f2

    sget v0, Lcom/moat/analytics/mobile/cha/g;->ʻ:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/moat/analytics/mobile/cha/g;->ॱˋ:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_60

    .line 221
    :cond_60
    sget-object v0, Lcom/moat/analytics/mobile/cha/g;->ᐝ:[B

    if-eqz v0, :cond_cc

    .line 198
    const/16 v0, 0x42

    :goto_66
    packed-switch v0, :pswitch_data_f8

    .line 227
    add-int/lit8 v1, v4, -0x1

    aget-short v0, v7, v4

    .line 228
    int-to-short v0, v0

    xor-int/2addr v0, p2

    add-int/2addr v0, v3

    int-to-char v0, v0

    .line 230
    :goto_71
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    move v4, v1

    goto :goto_4d

    :pswitch_79
    move v4, v0

    .line 193
    goto :goto_14

    .line 198
    :pswitch_7b
    sget-object v2, Lcom/moat/analytics/mobile/cha/g;->ᐝ:[B

    sget v3, Lcom/moat/analytics/mobile/cha/g;->ʼ:I

    add-int/2addr v3, p3

    aget-byte v2, v2, v3

    sget v3, Lcom/moat/analytics/mobile/cha/g;->ˊॱ:I

    add-int/2addr v2, v3

    int-to-byte v2, v2

    move v5, v2

    goto :goto_2c

    :pswitch_88
    move v0, v1

    .line 209
    goto :goto_41

    .line 223
    :pswitch_8a
    sget-object v0, Lcom/moat/analytics/mobile/cha/g;->ᐝ:[B

    add-int/lit8 v1, v4, -0x1

    aget-byte v0, v0, v4

    .line 224
    int-to-byte v0, v0

    xor-int/2addr v0, p2

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_71

    .line 235
    :pswitch_95
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_9a
    sget v2, Lcom/moat/analytics/mobile/cha/g;->ॱˋ:I

    add-int/lit8 v2, v2, 0x57

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/moat/analytics/mobile/cha/g;->ʻ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_cf

    move v2, v0

    .line 198
    :goto_a7
    packed-switch v2, :pswitch_data_fe

    sget-object v2, Lcom/moat/analytics/mobile/cha/g;->ᐝ:[B

    sget v3, Lcom/moat/analytics/mobile/cha/g;->ʼ:I

    add-int/2addr v3, p3

    aget-byte v2, v2, v3

    sget v3, Lcom/moat/analytics/mobile/cha/g;->ˊॱ:I

    add-int/2addr v2, v3

    int-to-byte v2, v2

    move v5, v2

    goto/16 :goto_2c

    :cond_b8
    move v2, v1

    goto/16 :goto_10

    :cond_bb
    move v2, v0

    goto/16 :goto_17

    :cond_be
    move v2, v1

    goto/16 :goto_1f

    :cond_c1
    const/16 v2, 0x18

    goto/16 :goto_30

    :cond_c5
    const/16 v2, 0x56

    goto/16 :goto_3e

    :cond_c9
    const/16 v0, 0x2c

    goto :goto_51

    :cond_cc
    const/16 v0, 0x45

    goto :goto_66

    :cond_cf
    move v2, v1

    goto :goto_a7

    :pswitch_d1
    move v5, v3

    goto/16 :goto_2c

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_79
    .end packed-switch

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_d1
    .end packed-switch

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_9a
    .end packed-switch

    :pswitch_data_e6
    .packed-switch 0x18
        :pswitch_95
    .end packed-switch

    :pswitch_data_ec
    .packed-switch 0x51
        :pswitch_88
    .end packed-switch

    :pswitch_data_f2
    .packed-switch 0x2c
        :pswitch_95
    .end packed-switch

    :pswitch_data_f8
    .packed-switch 0x42
        :pswitch_8a
    .end packed-switch

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_7b
    .end packed-switch
.end method

.method private static ˋ(Lorg/json/JSONObject;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    const/16 v2, -0x73

    const v3, 0x43d84710

    const/16 v4, -0x18

    const v5, -0x21b3bf33

    :try_start_c
    invoke-static {v2, v3, v4, v5}, Lcom/moat/analytics/mobile/cha/g;->ˋ(IIBI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_95

    move-result v2

    if-eqz v2, :cond_ac

    .line 119
    const/16 v2, 0xe

    :goto_1c
    packed-switch v2, :pswitch_data_bc

    .line 126
    sget v2, Lcom/moat/analytics/mobile/cha/g;->ʻ:I

    add-int/lit8 v2, v2, 0x71

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/moat/analytics/mobile/cha/g;->ॱˋ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_b5

    move v2, v0

    .line 119
    :goto_2c
    packed-switch v2, :pswitch_data_c2

    .line 115
    :try_start_2f
    invoke-static {}, Lcom/moat/analytics/mobile/cha/r;->ˊ()Lcom/moat/analytics/mobile/cha/r$e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/moat/analytics/mobile/cha/r$e;->ˋ()Ljava/lang/String;

    move-result-object v3

    .line 116
    const/16 v2, -0x73

    const v4, 0x43d84710

    const/16 v5, -0x18

    const v6, -0x21b3bf33

    invoke-static {v2, v4, v5, v6}, Lcom/moat/analytics/mobile/cha/g;->ˋ(IIBI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 117
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    move-object v5, v3

    move-object v6, v4

    move v3, v2

    move v4, v1

    :goto_55
    if-ge v4, v3, :cond_b0

    move v2, v1

    .line 119
    :goto_58
    packed-switch v2, :pswitch_data_c8

    .line 118
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 119
    const/16 v2, 0x17

    :goto_67
    packed-switch v2, :pswitch_data_ce

    .line 117
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_55

    .line 115
    :pswitch_6e
    invoke-static {}, Lcom/moat/analytics/mobile/cha/r;->ˊ()Lcom/moat/analytics/mobile/cha/r$e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/moat/analytics/mobile/cha/r$e;->ˋ()Ljava/lang/String;

    move-result-object v3

    .line 116
    const/16 v2, -0x73

    const v4, 0x43d84710

    const/16 v5, -0x18

    const v6, -0x21b3bf33

    invoke-static {v2, v4, v5, v6}, Lcom/moat/analytics/mobile/cha/g;->ˋ(IIBI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 117
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_8f} :catch_95

    move-result v2

    move-object v5, v3

    move-object v6, v4

    move v3, v2

    move v4, v1

    goto :goto_55

    .line 124
    :catch_95
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    :pswitch_99
    move v0, v1

    .line 126
    :goto_9a
    :pswitch_9a
    return v0

    .line 117
    :pswitch_9b
    sget v1, Lcom/moat/analytics/mobile/cha/g;->ॱˋ:I

    add-int/lit8 v1, v1, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/moat/analytics/mobile/cha/g;->ʻ:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b8

    .line 119
    const/4 v1, 0x4

    :goto_a8
    packed-switch v1, :pswitch_data_d4

    goto :goto_9a

    :cond_ac
    const/16 v2, 0x12

    goto/16 :goto_1c

    :cond_b0
    move v2, v0

    goto :goto_58

    :cond_b2
    const/16 v2, 0x58

    goto :goto_67

    :cond_b5
    move v2, v1

    goto/16 :goto_2c

    :cond_b8
    const/16 v1, 0x4f

    goto :goto_a8

    nop

    :pswitch_data_bc
    .packed-switch 0x12
        :pswitch_99
    .end packed-switch

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_6e
    .end packed-switch

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_99
    .end packed-switch

    :pswitch_data_ce
    .packed-switch 0x17
        :pswitch_9b
    .end packed-switch

    :pswitch_data_d4
    .packed-switch 0x4f
        :pswitch_9a
    .end packed-switch
.end method

.method private static ˎ(Lorg/json/JSONObject;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    const/16 v2, 0x10

    :try_start_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6} :catch_b6

    if-le v2, v3, :cond_a8

    .line 99
    const/16 v2, 0x3a

    :goto_a
    packed-switch v2, :pswitch_data_ba

    .line 108
    sget v1, Lcom/moat/analytics/mobile/cha/g;->ॱˋ:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/moat/analytics/mobile/cha/g;->ʻ:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_19

    :cond_19
    :goto_19
    return v0

    .line 97
    :pswitch_1a
    const/16 v2, -0x73

    const v3, 0x43d8471e

    const/16 v4, -0x5d

    const v5, -0x21b3bf34

    :try_start_24
    invoke-static {v2, v3, v4, v5}, Lcom/moat/analytics/mobile/cha/g;->ˋ(IIBI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2f} :catch_b6

    move-result v2

    if-eqz v2, :cond_ac

    move v2, v1

    .line 99
    :goto_33
    packed-switch v2, :pswitch_data_c0

    .line 108
    sget v2, Lcom/moat/analytics/mobile/cha/g;->ʻ:I

    add-int/lit8 v2, v2, 0x47

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/moat/analytics/mobile/cha/g;->ॱˋ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_b3

    .line 99
    const/16 v2, 0x60

    :goto_44
    packed-switch v2, :pswitch_data_c6

    .line 98
    const/16 v2, -0x73

    const v3, 0x43d8471e

    const/16 v4, -0x5d

    const v5, -0x21b3bf34

    :try_start_51
    invoke-static {v2, v3, v4, v5}, Lcom/moat/analytics/mobile/cha/g;->ˋ(IIBI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 99
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v4, v1

    move-object v5, v3

    move v3, v2

    :goto_64
    if-ge v4, v3, :cond_ae

    const/16 v2, 0x29

    :goto_68
    packed-switch v2, :pswitch_data_cc

    .line 100
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 101
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_71} :catch_b6

    if-ne v2, v6, :cond_b1

    move v2, v1

    .line 99
    :goto_74
    packed-switch v2, :pswitch_data_d2

    sget v1, Lcom/moat/analytics/mobile/cha/g;->ʻ:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/moat/analytics/mobile/cha/g;->ॱˋ:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_19

    goto :goto_19

    :pswitch_84
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_64

    :pswitch_88
    move v0, v1

    .line 106
    goto :goto_19

    .line 98
    :pswitch_8a
    const/16 v2, -0x73

    const v3, 0x43d8471e

    const/16 v4, -0x5d

    const v5, -0x21b3bf34

    :try_start_94
    invoke-static {v2, v3, v4, v5}, Lcom/moat/analytics/mobile/cha/g;->ˋ(IIBI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 99
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a3} :catch_b6

    move-result v2

    move v4, v1

    move-object v5, v3

    move v3, v2

    goto :goto_64

    :cond_a8
    const/16 v2, 0x24

    goto/16 :goto_a

    :cond_ac
    move v2, v0

    goto :goto_33

    :cond_ae
    const/16 v2, 0x18

    goto :goto_68

    :cond_b1
    move v2, v0

    goto :goto_74

    :cond_b3
    const/16 v2, 0x38

    goto :goto_44

    .line 108
    :catch_b6
    move-exception v1

    goto/16 :goto_19

    .line 99
    nop

    :pswitch_data_ba
    .packed-switch 0x24
        :pswitch_1a
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_88
    .end packed-switch

    :pswitch_data_c6
    .packed-switch 0x60
        :pswitch_8a
    .end packed-switch

    :pswitch_data_cc
    .packed-switch 0x18
        :pswitch_88
    .end packed-switch

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_84
    .end packed-switch
.end method

.method private ॱ(Ljava/lang/String;)V
    .registers 12

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
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    const/16 v2, -0x73

    const v3, 0x43d84722

    const/16 v5, 0x59

    const v6, -0x21b3bf86

    invoke-static {v2, v3, v5, v6}, Lcom/moat/analytics/mobile/cha/g;->ˋ(IIBI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    const/16 v3, -0x4d

    const v5, 0x43d846e2

    const/16 v6, -0x7e

    const v7, -0x21b3bf85

    invoke-static {v3, v5, v6, v7}, Lcom/moat/analytics/mobile/cha/g;->ˋ(IIBI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 60
    const/16 v5, -0x4d

    const v6, 0x43d846e7

    const/16 v7, -0x46

    const v8, -0x21b3bf5e

    invoke-static {v5, v6, v7, v8}, Lcom/moat/analytics/mobile/cha/g;->ˋ(IIBI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 62
    const/16 v6, -0x73

    const v7, 0x43d8471e

    const/16 v8, 0x5a

    const v9, -0x21b3bf37

    invoke-static {v6, v7, v8, v9}, Lcom/moat/analytics/mobile/cha/g;->ˋ(IIBI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e8

    .line 79
    const/16 v2, 0x42

    :goto_66
    packed-switch v2, :pswitch_data_21a

    .line 63
    :goto_69
    invoke-static {v4}, Lcom/moat/analytics/mobile/cha/g;->ˎ(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_1f1

    .line 79
    const/16 v2, 0x2b

    :goto_71
    packed-switch v2, :pswitch_data_220

    .line 72
    :goto_74
    :pswitch_74
    const/16 v2, -0x73

    const v3, 0x43d84718

    const/16 v5, -0x56

    const v6, -0x21b3bf36

    invoke-static {v2, v3, v5, v6}, Lcom/moat/analytics/mobile/cha/g;->ˋ(IIBI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_89} :catch_131

    move-result v2

    if-eqz v2, :cond_1fb

    .line 79
    const/16 v2, 0x1b

    :goto_8e
    packed-switch v2, :pswitch_data_226

    .line 68
    sget v2, Lcom/moat/analytics/mobile/cha/g;->ʻ:I

    add-int/lit8 v2, v2, 0x4d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/moat/analytics/mobile/cha/g;->ॱˋ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_214

    move v2, v0

    .line 79
    :goto_9e
    packed-switch v2, :pswitch_data_22c

    .line 73
    const/16 v2, -0x73

    const v3, 0x43d84718

    const/16 v5, -0x56

    const v6, -0x21b3bf36

    :try_start_ab
    invoke-static {v2, v3, v5, v6}, Lcom/moat/analytics/mobile/cha/g;->ˋ(IIBI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 74
    const/16 v2, 0x64

    if-lt v3, v2, :cond_1ff

    move v2, v0

    .line 79
    :goto_bc
    packed-switch v2, :pswitch_data_232

    .line 74
    :goto_bf
    const/16 v2, 0x3e8

    if-gt v3, v2, :cond_202

    move v2, v0

    .line 79
    :goto_c4
    packed-switch v2, :pswitch_data_238

    .line 75
    iput v3, p0, Lcom/moat/analytics/mobile/cha/g;->ॱ:I

    .line 78
    :pswitch_c9
    const/16 v2, -0x73

    const v3, 0x43d84714

    const/16 v5, -0xb

    const v6, -0x21b3bf35

    invoke-static {v2, v3, v5, v6}, Lcom/moat/analytics/mobile/cha/g;->ˋ(IIBI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_de} :catch_131

    move-result v2

    if-eqz v2, :cond_205

    move v2, v1

    .line 79
    :goto_e2
    packed-switch v2, :pswitch_data_23e

    .line 74
    sget v2, Lcom/moat/analytics/mobile/cha/g;->ʻ:I

    add-int/lit8 v2, v2, 0x35

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/moat/analytics/mobile/cha/g;->ॱˋ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_f2

    move v0, v1

    .line 79
    :cond_f2
    packed-switch v0, :pswitch_data_244

    const/16 v0, -0x73

    const v2, 0x43d84714

    const/16 v3, -0xb

    const v5, -0x21b3bf35

    :try_start_ff
    invoke-static {v0, v2, v3, v5}, Lcom/moat/analytics/mobile/cha/g;->ˋ(IIBI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/moat/analytics/mobile/cha/g;->ˋ:I

    .line 81
    :goto_10d
    :pswitch_10d
    invoke-static {v4}, Lcom/moat/analytics/mobile/cha/g;->ॱ(Lorg/json/JSONObject;)Z
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_110} :catch_131

    move-result v0

    if-eqz v0, :cond_208

    .line 79
    const/16 v0, 0x1c

    :goto_115
    packed-switch v0, :pswitch_data_24a

    goto/16 :goto_4

    :pswitch_11a
    sget v0, Lcom/moat/analytics/mobile/cha/g;->ʻ:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/moat/analytics/mobile/cha/g;->ॱˋ:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_126

    .line 82
    :cond_126
    :try_start_126
    invoke-static {}, Lcom/moat/analytics/mobile/cha/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/cha/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/cha/f;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/moat/analytics/mobile/cha/f;->ˋ:Z
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_12f} :catch_131

    goto/16 :goto_4

    .line 84
    :catch_131
    move-exception v0

    .line 85
    iput-boolean v1, p0, Lcom/moat/analytics/mobile/cha/g;->ˏ:Z

    .line 86
    iput-boolean v1, p0, Lcom/moat/analytics/mobile/cha/g;->ˎ:Z

    .line 87
    const/16 v1, 0xc8

    iput v1, p0, Lcom/moat/analytics/mobile/cha/g;->ॱ:I

    .line 88
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto/16 :goto_4

    .line 62
    :pswitch_13f
    if-nez v3, :cond_1eb

    move v2, v1

    .line 79
    :goto_142
    packed-switch v2, :pswitch_data_250

    goto/16 :goto_69

    .line 88
    :pswitch_147
    sget v2, Lcom/moat/analytics/mobile/cha/g;->ॱˋ:I

    add-int/lit8 v2, v2, 0x39

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/moat/analytics/mobile/cha/g;->ʻ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_153

    .line 62
    :cond_153
    if-eqz v5, :cond_1ee

    move v2, v1

    .line 79
    :goto_156
    packed-switch v2, :pswitch_data_256

    goto/16 :goto_69

    .line 63
    :pswitch_15b
    :try_start_15b
    invoke-static {v4}, Lcom/moat/analytics/mobile/cha/g;->ˋ(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_1f5

    move v2, v1

    .line 79
    :goto_162
    packed-switch v2, :pswitch_data_25c

    goto/16 :goto_74

    .line 64
    :goto_167
    :pswitch_167
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/moat/analytics/mobile/cha/g;->ˏ:Z

    .line 65
    iput-boolean v3, p0, Lcom/moat/analytics/mobile/cha/g;->ˎ:Z

    .line 66
    iput-boolean v5, p0, Lcom/moat/analytics/mobile/cha/g;->ˊ:Z

    .line 67
    iget-boolean v2, p0, Lcom/moat/analytics/mobile/cha/g;->ˊ:Z
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_170} :catch_131

    if-eqz v2, :cond_1f8

    move v2, v0

    .line 79
    :goto_173
    packed-switch v2, :pswitch_data_262

    .line 88
    sget v2, Lcom/moat/analytics/mobile/cha/g;->ॱˋ:I

    add-int/lit8 v2, v2, 0x51

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/moat/analytics/mobile/cha/g;->ʻ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_211

    move v2, v1

    .line 79
    :goto_183
    packed-switch v2, :pswitch_data_268

    .line 68
    const/4 v2, 0x1

    :try_start_187
    iput-boolean v2, p0, Lcom/moat/analytics/mobile/cha/g;->ˎ:Z

    goto/16 :goto_74

    :pswitch_18b
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/moat/analytics/mobile/cha/g;->ˎ:Z
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_18e} :catch_131

    goto/16 :goto_74

    .line 88
    :pswitch_190
    sget v2, Lcom/moat/analytics/mobile/cha/g;->ʻ:I

    add-int/lit8 v2, v2, 0x5f

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/moat/analytics/mobile/cha/g;->ॱˋ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_20c

    .line 79
    const/16 v2, 0x50

    :goto_19e
    packed-switch v2, :pswitch_data_26e

    .line 88
    :try_start_1a1
    invoke-static {v4}, Lcom/moat/analytics/mobile/cha/g;->ˋ(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_20e

    .line 79
    const/16 v2, 0x3c

    :goto_1a9
    packed-switch v2, :pswitch_data_274

    goto :goto_167

    .line 73
    :pswitch_1ad
    const/16 v2, -0x73

    const v3, 0x43d84718

    const/16 v5, -0x56

    const v6, -0x21b3bf36

    invoke-static {v2, v3, v5, v6}, Lcom/moat/analytics/mobile/cha/g;->ˋ(IIBI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 74
    const/16 v2, 0x64

    if-lt v3, v2, :cond_217

    .line 79
    const/16 v2, 0x4d

    :goto_1c9
    packed-switch v2, :pswitch_data_27a

    goto/16 :goto_bf

    :pswitch_1ce
    const/16 v0, -0x73

    const v2, 0x43d84714

    const/16 v3, -0xb

    const v5, -0x21b3bf35

    invoke-static {v0, v2, v3, v5}, Lcom/moat/analytics/mobile/cha/g;->ˋ(IIBI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/moat/analytics/mobile/cha/g;->ˋ:I
    :try_end_1e6
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1e6} :catch_131

    goto/16 :goto_10d

    :cond_1e8
    const/4 v2, 0x2

    goto/16 :goto_66

    :cond_1eb
    move v2, v0

    goto/16 :goto_142

    :cond_1ee
    move v2, v0

    goto/16 :goto_156

    :cond_1f1
    const/16 v2, 0x38

    goto/16 :goto_71

    :cond_1f5
    move v2, v0

    goto/16 :goto_162

    :cond_1f8
    move v2, v1

    goto/16 :goto_173

    :cond_1fb
    const/16 v2, 0x4b

    goto/16 :goto_8e

    :cond_1ff
    move v2, v1

    goto/16 :goto_bc

    :cond_202
    move v2, v1

    goto/16 :goto_c4

    :cond_205
    move v2, v0

    goto/16 :goto_e2

    :cond_208
    const/16 v0, 0x60

    goto/16 :goto_115

    :cond_20c
    const/4 v2, 0x6

    goto :goto_19e

    :cond_20e
    const/16 v2, 0x45

    goto :goto_1a9

    :cond_211
    move v2, v0

    goto/16 :goto_183

    :cond_214
    move v2, v1

    goto/16 :goto_9e

    :cond_217
    const/16 v2, 0x13

    goto :goto_1c9

    :pswitch_data_21a
    .packed-switch 0x42
        :pswitch_13f
    .end packed-switch

    :pswitch_data_220
    .packed-switch 0x2b
        :pswitch_190
    .end packed-switch

    :pswitch_data_226
    .packed-switch 0x4b
        :pswitch_c9
    .end packed-switch

    :pswitch_data_22c
    .packed-switch 0x1
        :pswitch_1ad
    .end packed-switch

    :pswitch_data_232
    .packed-switch 0x0
        :pswitch_c9
    .end packed-switch

    :pswitch_data_238
    .packed-switch 0x0
        :pswitch_c9
    .end packed-switch

    :pswitch_data_23e
    .packed-switch 0x1
        :pswitch_10d
    .end packed-switch

    :pswitch_data_244
    .packed-switch 0x0
        :pswitch_1ce
    .end packed-switch

    :pswitch_data_24a
    .packed-switch 0x1c
        :pswitch_11a
    .end packed-switch

    :pswitch_data_250
    .packed-switch 0x0
        :pswitch_147
    .end packed-switch

    :pswitch_data_256
    .packed-switch 0x1
        :pswitch_74
    .end packed-switch

    :pswitch_data_25c
    .packed-switch 0x0
        :pswitch_167
    .end packed-switch

    :pswitch_data_262
    .packed-switch 0x0
        :pswitch_74
    .end packed-switch

    :pswitch_data_268
    .packed-switch 0x1
        :pswitch_18b
    .end packed-switch

    :pswitch_data_26e
    .packed-switch 0x6
        :pswitch_15b
    .end packed-switch

    :pswitch_data_274
    .packed-switch 0x45
        :pswitch_74
    .end packed-switch

    :pswitch_data_27a
    .packed-switch 0x13
        :pswitch_c9
    .end packed-switch
.end method

.method private static ॱ(Lorg/json/JSONObject;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    const/16 v2, -0x73

    const v3, 0x43d84710

    const/4 v4, 0x1

    const v5, -0x21b3bf32

    :try_start_b
    invoke-static {v2, v3, v4, v5}, Lcom/moat/analytics/mobile/cha/g;->ˋ(IIBI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_79

    move-result v2

    if-eqz v2, :cond_8e

    .line 135
    const/16 v2, 0x38

    :goto_1b
    packed-switch v2, :pswitch_data_9c

    :goto_1e
    move v0, v1

    .line 143
    :goto_1f
    :pswitch_1f
    return v0

    :pswitch_20
    sget v2, Lcom/moat/analytics/mobile/cha/g;->ʻ:I

    add-int/lit8 v2, v2, 0x63

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/moat/analytics/mobile/cha/g;->ॱˋ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2c

    .line 132
    :cond_2c
    :try_start_2c
    invoke-static {}, Lcom/moat/analytics/mobile/cha/r;->ˊ()Lcom/moat/analytics/mobile/cha/r$e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/moat/analytics/mobile/cha/r$e;->ˋ()Ljava/lang/String;

    move-result-object v4

    .line 133
    const/16 v2, -0x73

    const v3, 0x43d84710

    const/4 v5, 0x1

    const v6, -0x21b3bf32

    invoke-static {v2, v3, v5, v6}, Lcom/moat/analytics/mobile/cha/g;->ˋ(IIBI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 134
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4c} :catch_79

    move-result v6

    move v3, v1

    :goto_4e
    if-ge v3, v6, :cond_91

    move v2, v1

    .line 135
    :goto_51
    packed-switch v2, :pswitch_data_a2

    goto :goto_1e

    .line 143
    :pswitch_55
    sget v2, Lcom/moat/analytics/mobile/cha/g;->ʻ:I

    add-int/lit8 v2, v2, 0x31

    rem-int/lit16 v7, v2, 0x80

    sput v7, Lcom/moat/analytics/mobile/cha/g;->ॱˋ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_96

    move v2, v1

    .line 135
    :goto_62
    packed-switch v2, :pswitch_data_a8

    :try_start_65
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6c} :catch_79

    move-result v2

    if-eqz v2, :cond_93

    const/16 v2, 0xb

    :goto_71
    packed-switch v2, :pswitch_data_ae

    goto :goto_1f

    .line 134
    :goto_75
    :pswitch_75
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4e

    .line 141
    :catch_79
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto :goto_1e

    .line 135
    :pswitch_7e
    :try_start_7e
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_85} :catch_79

    move-result v2

    if-eqz v2, :cond_99

    const/16 v2, 0x3e

    :goto_8a
    packed-switch v2, :pswitch_data_b4

    goto :goto_75

    :cond_8e
    const/16 v2, 0x13

    goto :goto_1b

    :cond_91
    move v2, v0

    goto :goto_51

    :cond_93
    const/16 v2, 0x4b

    goto :goto_71

    :cond_96
    const/16 v2, 0x58

    goto :goto_62

    :cond_99
    const/16 v2, 0x49

    goto :goto_8a

    :pswitch_data_9c
    .packed-switch 0x38
        :pswitch_20
    .end packed-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_55
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_7e
    .end packed-switch

    :pswitch_data_ae
    .packed-switch 0x4b
        :pswitch_75
    .end packed-switch

    :pswitch_data_b4
    .packed-switch 0x3e
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method final ˊ()Z
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/g;->ˎ:Z

    return v0
.end method

.method final ˋ()I
    .registers 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/g;->ˏ:Z

    if-eqz v0, :cond_7

    sget v0, Lcom/moat/analytics/mobile/cha/t$a;->ˎ:I

    :goto_6
    return v0

    :cond_7
    sget v0, Lcom/moat/analytics/mobile/cha/t$a;->ॱ:I

    goto :goto_6
.end method

.method final ˎ()I
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lcom/moat/analytics/mobile/cha/g;->ˋ:I

    return v0
.end method

.method final ˏ()I
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Lcom/moat/analytics/mobile/cha/g;->ॱ:I

    return v0
.end method

.method final ॱ()Z
    .registers 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/g;->ˊ:Z

    return v0
.end method
