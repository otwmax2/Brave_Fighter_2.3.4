###### Class com.chartboost.sdk.impl.b (com.chartboost.sdk.impl.b)
.class public Lcom/chartboost/sdk/impl/b;
.super Ljava/lang/Object;


# direct methods
.method private static a([I)V
    .registers 4

    .prologue
    .line 2211
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_19

    .line 2213
    aget v1, p0, v0

    .line 2214
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aget v2, p0, v2

    aput v2, p0, v0

    .line 2215
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aput v1, p0, v2

    .line 2211
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2217
    :cond_19
    return-void
.end method

.method public static a([C[IZ)[I
    .registers 14

    .prologue
    .line 1162
    const/4 v0, 0x0

    aget-char v0, p0, v0

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    aget-char v1, p0, v1

    add-int v2, v0, v1

    .line 1163
    const/4 v0, 0x2

    aget-char v0, p0, v0

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x3

    aget-char v1, p0, v1

    add-int/2addr v1, v0

    .line 1166
    if-nez p2, :cond_18

    .line 1168
    invoke-static {p1}, Lcom/chartboost/sdk/impl/b;->a([I)V

    .line 1171
    :cond_18
    const/4 v0, 0x0

    :goto_19
    const/16 v3, 0x10

    if-ge v0, v3, :cond_54

    .line 1173
    aget v3, p1, v0

    xor-int/2addr v2, v3

    .line 1230
    sget-object v3, Lcom/chartboost/sdk/impl/a;->b:Lcom/chartboost/sdk/impl/a;

    .line 1232
    ushr-int/lit8 v4, v2, 0x18

    .line 1233
    ushr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 1234
    ushr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    .line 1235
    and-int/lit16 v7, v2, 0xff

    .line 1237
    iget-object v8, v3, Lcom/chartboost/sdk/impl/a;->a:[[I

    const/4 v9, 0x0

    aget-object v8, v8, v9

    aget v4, v8, v4

    iget-object v8, v3, Lcom/chartboost/sdk/impl/a;->a:[[I

    const/4 v9, 0x1

    aget-object v8, v8, v9

    aget v5, v8, v5

    add-int/2addr v4, v5

    iget-object v5, v3, Lcom/chartboost/sdk/impl/a;->a:[[I

    const/4 v8, 0x2

    aget-object v5, v5, v8

    aget v5, v5, v6

    xor-int/2addr v4, v5

    iget-object v3, v3, Lcom/chartboost/sdk/impl/a;->a:[[I

    const/4 v5, 0x3

    aget-object v3, v3, v5

    aget v3, v3, v7

    add-int/2addr v3, v4

    .line 1174
    xor-int/2addr v1, v3

    .line 1171
    add-int/lit8 v0, v0, 0x1

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_19

    .line 1184
    :cond_54
    const/16 v0, 0x10

    aget v0, p1, v0

    xor-int/2addr v0, v2

    .line 1185
    const/16 v2, 0x11

    aget v2, p1, v2

    xor-int/2addr v1, v2

    .line 1188
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    .line 1190
    const/4 v3, 0x0

    ushr-int/lit8 v4, v1, 0x10

    aput-char v4, p0, v3

    .line 1191
    const/4 v3, 0x1

    int-to-char v1, v1

    aput-char v1, p0, v3

    .line 1192
    const/4 v1, 0x2

    ushr-int/lit8 v3, v0, 0x10

    aput-char v3, p0, v1

    .line 1193
    const/4 v1, 0x3

    int-to-char v0, v0

    aput-char v0, p0, v1

    .line 1196
    if-nez p2, :cond_7e

    .line 1198
    invoke-static {p1}, Lcom/chartboost/sdk/impl/b;->a([I)V

    .line 1200
    :cond_7e
    return-object v2
.end method
