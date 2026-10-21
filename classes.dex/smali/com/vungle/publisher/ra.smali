###### Class com.vungle.publisher.ra (com.vungle.publisher.ra)
.class public final Lcom/vungle/publisher/ra;
.super Ljava/lang/Object;
.source "vungle"


# direct methods
.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 32
    .line 34
    const/4 v0, 0x0

    .line 35
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 37
    if-nez v1, :cond_14

    .line 38
    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 40
    if-eq v1, v2, :cond_13

    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 49
    :cond_13
    :goto_13
    return-object v0

    .line 47
    :cond_14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_13
.end method

.method public static varargs a([Lcom/vungle/publisher/vs;)Lorg/json/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/vungle/publisher/vs;",
            ">([TT;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    if-eqz p0, :cond_18

    .line 228
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 229
    array-length v2, p0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v2, :cond_18

    aget-object v3, p0, v1

    .line 230
    invoke-static {v3}, Lcom/vungle/publisher/ra;->a(Lcom/vungle/publisher/vs;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 233
    :cond_18
    return-object v0
.end method

.method public static a(Lcom/vungle/publisher/vs;)Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    if-eqz p0, :cond_7

    .line 266
    invoke-virtual {p0}, Lcom/vungle/publisher/vs;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 268
    :cond_7
    return-object v0
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Double;
    .registers 10

    .prologue
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 68
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v1, v2, v4

    if-nez v1, :cond_1a

    .line 69
    invoke-virtual {p0, p1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 71
    cmpl-double v1, v2, v6

    if-eqz v1, :cond_19

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 80
    :cond_19
    :goto_19
    return-object v0

    .line 78
    :cond_1a
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_19
.end method

.method public static c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Float;
    .registers 3

    .prologue
    .line 93
    invoke-static {p0, p1}, Lcom/vungle/publisher/ra;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 94
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_7
.end method

.method public static d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 109
    .line 111
    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 114
    if-ne v1, v3, :cond_14

    .line 115
    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 117
    if-eq v1, v2, :cond_13

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 126
    :cond_13
    :goto_13
    return-object v0

    .line 124
    :cond_14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_13
.end method

.method public static e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;
    .registers 10

    .prologue
    const-wide/16 v6, -0x1

    const-wide/16 v4, -0x2

    .line 141
    .line 143
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, p1, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 146
    cmp-long v1, v2, v6

    if-nez v1, :cond_1a

    .line 147
    invoke-virtual {p0, p1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 149
    cmp-long v1, v2, v4

    if-eqz v1, :cond_19

    .line 150
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 158
    :cond_19
    :goto_19
    return-object v0

    .line 156
    :cond_1a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_19
.end method

.method public static f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static g(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 177
    .line 178
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 179
    if-eqz v3, :cond_19

    .line 180
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 181
    new-array v0, v4, [Ljava/lang/String;

    .line 182
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v4, :cond_1a

    .line 183
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_19
    move-object v0, v1

    .line 186
    :cond_1a
    return-object v0
.end method

.method public static h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {p0, p1}, Lcom/vungle/publisher/ra;->g(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 191
    const/4 v0, 0x0

    .line 192
    if-eqz v1, :cond_b

    .line 193
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 195
    :cond_b
    return-object v0
.end method
