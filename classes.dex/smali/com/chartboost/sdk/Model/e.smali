###### Class com.chartboost.sdk.Model.e (com.chartboost.sdk.Model.e)
.class public Lcom/chartboost/sdk/Model/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Z

.field public final B:I

.field public final C:Z

.field public final D:I

.field public final E:Z

.field public final F:Ljava/lang/String;

.field public final G:Ljava/lang/String;

.field public final H:Ljava/lang/String;

.field public final I:Ljava/lang/String;

.field public final J:Z

.field public final K:Z

.field public final L:Z

.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:I

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:J

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final y:Z

.field public final z:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 14

    .prologue
    const/16 v2, 0xa

    const/4 v11, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "configVariant"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/e;->a:Ljava/lang/String;

    .line 73
    const-string v0, "prefetchDisable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/e;->b:Z

    .line 74
    const-string v0, "publisherDisable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/e;->c:Z

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    const-string v0, "invalidateFolderList"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 77
    if-eqz v6, :cond_45

    .line 78
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v0, v4

    .line 79
    :goto_33
    if-ge v0, v7, :cond_45

    .line 80
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 81
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_42

    .line 82
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 85
    :cond_45
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/e;->d:Ljava/util/List;

    .line 88
    const-string v0, "native"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 89
    if-nez v0, :cond_58

    .line 90
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 91
    :cond_58
    const-string v1, "enabled"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->e:Z

    .line 92
    const-string v1, "inplayEnabled"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->f:Z

    .line 93
    const-string v1, "interstitialEnabled"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->g:Z

    .line 94
    const-string v1, "lockOrientation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->h:Z

    .line 95
    const-string v1, "prefetchSession"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/chartboost/sdk/Model/e;->i:I

    .line 96
    const-string v1, "rewardVideoEnabled"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/e;->j:Z

    .line 99
    const-string v0, "trackingLevels"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 100
    if-nez v0, :cond_95

    .line 101
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 102
    :cond_95
    const-string v1, "critical"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->k:Z

    .line 103
    const-string v1, "includeStackTrace"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->r:Z

    .line 104
    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->l:Z

    .line 105
    const-string v1, "debug"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->m:Z

    .line 106
    const-string v1, "session"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->n:Z

    .line 107
    const-string v1, "system"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->o:Z

    .line 108
    const-string v1, "timing"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->p:Z

    .line 109
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/e;->q:Z

    .line 111
    const-string v0, "getAdRetryBaseMs"

    sget-wide v6, Lcom/chartboost/sdk/Libraries/b;->b:J

    invoke-virtual {p1, v0, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/chartboost/sdk/Model/e;->s:J

    .line 114
    const-string v0, "getAdRetryMaxBackoffExponent"

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/Model/e;->t:I

    .line 119
    const-string v0, "webview"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 120
    if-nez v0, :cond_f5

    .line 121
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 124
    :cond_f5
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v1

    const/16 v6, 0xe

    invoke-virtual {v1, v6}, Lcom/chartboost/sdk/impl/s;->a(I)Z

    move-result v6

    .line 125
    const-string v1, "cacheMaxBytes"

    const/high16 v7, 0x6400000

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/chartboost/sdk/Model/e;->u:I

    .line 127
    const-string v1, "cacheMaxUnits"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 128
    if-lez v1, :cond_149

    :goto_111
    iput v1, p0, Lcom/chartboost/sdk/Model/e;->v:I

    .line 129
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "cacheTTLs"

    sget v7, Lcom/chartboost/sdk/Libraries/b;->a:I

    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v8, v2

    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v8

    long-to-int v1, v8

    iput v1, p0, Lcom/chartboost/sdk/Model/e;->w:I

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    const-string v1, "directories"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 133
    if-eqz v7, :cond_14b

    .line 134
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    move v1, v4

    .line 135
    :goto_137
    if-ge v1, v8, :cond_14b

    .line 136
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    .line 137
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_146

    .line 138
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_146
    add-int/lit8 v1, v1, 0x1

    goto :goto_137

    :cond_149
    move v1, v2

    .line 128
    goto :goto_111

    .line 141
    :cond_14b
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/Model/e;->x:Ljava/util/List;

    .line 143
    if-eqz v6, :cond_22a

    const-string v1, "enabled"

    .line 144
    invoke-static {}, Lcom/chartboost/sdk/Model/e;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_22a

    move v1, v3

    :goto_160
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->y:Z

    .line 145
    const-string v1, "inplayEnabled"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->z:Z

    .line 146
    const-string v1, "interstitialEnabled"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->A:Z

    .line 148
    const-string v1, "invalidatePendingImpression"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 150
    if-lez v1, :cond_22d

    :goto_17a
    iput v1, p0, Lcom/chartboost/sdk/Model/e;->B:I

    .line 155
    const-string v1, "lockOrientation"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->C:Z

    .line 156
    const-string v1, "prefetchSession"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/chartboost/sdk/Model/e;->D:I

    .line 157
    const-string v1, "rewardVideoEnabled"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->E:Z

    .line 158
    const-string v1, "version"

    const-string v2, "v2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/e;->F:Ljava/lang/String;

    .line 160
    const-string v0, "%s/%s%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "webview"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/chartboost/sdk/Model/e;->F:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "/interstitial/get"

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/e;->G:Ljava/lang/String;

    .line 161
    const-string v0, "%s/%s/%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "webview"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/chartboost/sdk/Model/e;->F:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "prefetch"

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/e;->H:Ljava/lang/String;

    .line 162
    const-string v0, "%s/%s%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "webview"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/chartboost/sdk/Model/e;->F:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "/reward/get"

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/e;->I:Ljava/lang/String;

    .line 165
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 168
    sget-boolean v0, Lcom/chartboost/sdk/i;->x:Z

    if-nez v0, :cond_230

    move v0, v3

    .line 169
    :goto_1ea
    sget-boolean v1, Lcom/chartboost/sdk/i;->x:Z

    if-nez v1, :cond_232

    move v1, v3

    .line 171
    :goto_1ef
    const-string v2, "certificationProviders"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 172
    if-eqz v2, :cond_220

    .line 174
    const-string v6, "moat"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 175
    if-eqz v6, :cond_220

    .line 176
    const-string v0, "moat"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v0, "loggingEnabled"

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 181
    const-string v1, "locationEnabled"

    sget-boolean v0, Lcom/chartboost/sdk/i;->x:Z

    if-nez v0, :cond_234

    move v0, v3

    :goto_211
    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 183
    const-string v1, "idfaCollectionEnabled"

    sget-boolean v7, Lcom/chartboost/sdk/i;->x:Z

    if-nez v7, :cond_236

    :goto_21b
    invoke-virtual {v6, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move v4, v2

    .line 190
    :cond_220
    iput-boolean v4, p0, Lcom/chartboost/sdk/Model/e;->J:Z

    .line 191
    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/e;->K:Z

    .line 192
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->L:Z

    .line 194
    invoke-static {v5}, Lcom/chartboost/sdk/impl/o;->a(Ljava/util/List;)V

    .line 195
    return-void

    :cond_22a
    move v1, v4

    .line 144
    goto/16 :goto_160

    :cond_22d
    move v1, v5

    .line 150
    goto/16 :goto_17a

    :cond_230
    move v0, v4

    .line 168
    goto :goto_1ea

    :cond_232
    move v1, v4

    .line 169
    goto :goto_1ef

    :cond_234
    move v0, v4

    .line 181
    goto :goto_211

    :cond_236
    move v3, v4

    .line 183
    goto :goto_21b
.end method

.method private static a()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 199
    const/4 v0, 0x3

    new-array v2, v0, [I

    fill-array-data v2, :array_50

    .line 201
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/s;->d()Ljava/lang/String;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_18

    .line 225
    :cond_17
    :goto_17
    return v1

    .line 208
    :cond_18
    const-string v3, "[^\\d.]"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 212
    :goto_27
    array-length v4, v3

    if-ge v0, v4, :cond_17

    array-length v4, v2

    if-ge v0, v4, :cond_17

    .line 215
    :try_start_2d
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v5, v2, v0

    if-le v4, v5, :cond_3d

    .line 216
    const/4 v1, 0x1

    goto :goto_17

    .line 217
    :cond_3d
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v5, v2, v0
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_49} :catch_4e

    if-lt v4, v5, :cond_17

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 220
    :catch_4e
    move-exception v0

    goto :goto_17

    .line 199
    :array_50
    .array-data 4
        0x4
        0x4
        0x2
    .end array-data
.end method
