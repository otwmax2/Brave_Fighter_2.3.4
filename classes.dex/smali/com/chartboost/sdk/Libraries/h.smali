###### Class com.chartboost.sdk.Libraries.h (com.chartboost.sdk.Libraries.h)
.class public Lcom/chartboost/sdk/Libraries/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Libraries/h$a;
    }
.end annotation


# instance fields
.field private a:Lcom/chartboost/sdk/Libraries/h$a;

.field private final b:Lcom/chartboost/sdk/e;

.field private c:Ljava/lang/String;

.field private d:F


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/e;)V
    .registers 3

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:F

    .line 171
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Lcom/chartboost/sdk/e;

    .line 172
    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h$a;->e()I

    move-result v0

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h$a;->c()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->g()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/Libraries/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 191
    new-array v2, v0, [Ljava/lang/String;

    aput-object p2, v2, v1

    invoke-static {p1, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 192
    iput-object p2, p0, Lcom/chartboost/sdk/Libraries/h;->c:Ljava/lang/String;

    .line 193
    if-nez v2, :cond_f

    .line 208
    :cond_e
    :goto_e
    return v0

    .line 196
    :cond_f
    const-string v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    const-string v4, "scale"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/chartboost/sdk/Libraries/h;->d:F

    .line 199
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 202
    const-string v3, "checksum"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_34

    move v0, v1

    .line 204
    goto :goto_e

    .line 206
    :cond_34
    iget-object v3, p0, Lcom/chartboost/sdk/Libraries/h;->b:Lcom/chartboost/sdk/e;

    iget-object v3, v3, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v3, v3, Lcom/chartboost/sdk/Model/c;->j:Lcom/chartboost/sdk/impl/al;

    invoke-virtual {v3, v2}, Lcom/chartboost/sdk/impl/al;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/h$a;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    .line 208
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    if-nez v2, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method public b()I
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h$a;->f()I

    move-result v0

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h$a;->c()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    if-eqz v0, :cond_9

    .line 218
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h$a;->d()V

    .line 219
    :cond_9
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public e()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h$a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public f()F
    .registers 2

    .prologue
    .line 230
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:F

    return v0
.end method

###### Class com.chartboost.sdk.Libraries.h.a (com.chartboost.sdk.Libraries.h$a)
.class public Lcom/chartboost/sdk/Libraries/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/io/File;

.field private d:Landroid/graphics/Bitmap;

.field private final e:Lcom/chartboost/sdk/Libraries/f;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/chartboost/sdk/Libraries/f;)V
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->f:I

    iput v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->g:I

    .line 36
    iput-object p2, p0, Lcom/chartboost/sdk/Libraries/h$a;->c:Ljava/io/File;

    .line 37
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/h$a;->b:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->a:I

    .line 40
    iput-object p3, p0, Lcom/chartboost/sdk/Libraries/h$a;->e:Lcom/chartboost/sdk/Libraries/f;

    .line 41
    return-void
.end method

.method private g()V
    .registers 4

    .prologue
    .line 150
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 152
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h$a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 153
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/chartboost/sdk/Libraries/h$a;->f:I

    .line 154
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->g:I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 159
    :goto_19
    return-void

    .line 155
    :catch_1a
    move-exception v0

    .line 156
    const-string v1, "MemoryBitmap"

    const-string v2, "Error decoding file size"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "decodeSize"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_19
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 46
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/h$a;->b()V

    .line 47
    :cond_7
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 96
    :goto_6
    return-void

    .line 54
    :cond_7
    const-string v0, "MemoryBitmap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading image \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/h$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' from cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->e:Lcom/chartboost/sdk/Libraries/f;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h$a;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/f;->b(Ljava/io/File;)[B

    move-result-object v1

    .line 59
    if-nez v1, :cond_39

    .line 60
    const-string v0, "MemoryBitmap"

    const-string v1, "decode() - bitmap not found"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 64
    :cond_39
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 65
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 66
    array-length v2, v1

    invoke-static {v1, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 68
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 69
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 70
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 71
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 72
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 73
    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 75
    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_5a
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v3, 0x20

    if-ge v0, v3, :cond_ad

    .line 78
    const/4 v0, 0x0

    :try_start_61
    array-length v3, v1

    invoke-static {v1, v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;
    :try_end_68
    .catch Ljava/lang/OutOfMemoryError; {:try_start_61 .. :try_end_68} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_68} :catch_9b

    .line 86
    :goto_68
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_ad

    .line 88
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/h$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :catch_8c
    move-exception v0

    .line 80
    const-string v3, "MemoryBitmap"

    const-string v4, "OutOfMemoryError suppressed - trying larger sample size"

    invoke-static {v3, v4, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_5a

    .line 82
    :catch_9b
    move-exception v0

    .line 83
    const-string v1, "MemoryBitmap"

    const-string v3, "Exception raised decoding bitmap"

    invoke-static {v1, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "decodeByteArray"

    invoke-static {v1, v3, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_68

    .line 95
    :cond_ad
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->a:I

    goto/16 :goto_6
.end method

.method public c()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->a:I

    return v0
.end method

.method public d()V
    .registers 4

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 112
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_15

    .line 116
    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    .line 117
    return-void

    .line 113
    :catch_15
    move-exception v0

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "recycle"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public e()I
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 122
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 128
    :goto_a
    return v0

    .line 124
    :cond_b
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->f:I

    if-ltz v0, :cond_12

    .line 125
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->f:I

    goto :goto_a

    .line 127
    :cond_12
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h$a;->g()V

    .line 128
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->f:I

    goto :goto_a
.end method

.method public f()I
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 136
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 142
    :goto_a
    return v0

    .line 138
    :cond_b
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->g:I

    if-ltz v0, :cond_12

    .line 139
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->g:I

    goto :goto_a

    .line 141
    :cond_12
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h$a;->g()V

    .line 142
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->g:I

    goto :goto_a
.end method
