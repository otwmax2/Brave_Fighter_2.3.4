###### Class org.cocos2dx.lib.Cocos2dxBitmap (org.cocos2dx.lib.Cocos2dxBitmap)
.class public Lorg/cocos2dx/lib/Cocos2dxBitmap;
.super Ljava/lang/Object;
.source "Cocos2dxBitmap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;
    }
.end annotation


# static fields
.field private static final HORIZONTALALIGN_CENTER:I = 0x3

.field private static final HORIZONTALALIGN_LEFT:I = 0x1

.field private static final HORIZONTALALIGN_RIGHT:I = 0x2

.field private static final VERTICALALIGN_BOTTOM:I = 0x2

.field private static final VERTICALALIGN_CENTER:I = 0x3

.field private static final VERTICALALIGN_TOP:I = 0x1

.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeTextProperty(Ljava/lang/String;IILandroid/graphics/Paint;)Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;
    .registers 16
    .param p0, "pString"    # Ljava/lang/String;
    .param p1, "pWidth"    # I
    .param p2, "pHeight"    # I
    .param p3, "pPaint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v7, 0x0

    .line 235
    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 236
    .local v0, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v6, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v6, v8

    int-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v1, v8

    .line 237
    .local v1, "h":I
    const/4 v4, 0x0

    .line 239
    .local v4, "maxContentWidth":I
    invoke-static {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->splitString(Ljava/lang/String;IILandroid/graphics/Paint;)[Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "lines":[Ljava/lang/String;
    if-eqz p1, :cond_1e

    .line 243
    move v4, p1

    .line 256
    :cond_18
    new-instance v6, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;

    invoke-direct {v6, v4, v1, v3}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;-><init>(II[Ljava/lang/String;)V

    return-object v6

    .line 246
    :cond_1e
    const/4 v5, 0x0

    .line 247
    .local v5, "temp":I
    array-length v8, v3

    move v6, v7

    :goto_21
    if-ge v6, v8, :cond_18

    aget-object v2, v3, v6

    .line 249
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    .line 248
    invoke-virtual {p3, v2, v7, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v5, v10

    .line 250
    if-le v5, v4, :cond_36

    .line 251
    move v4, v5

    .line 247
    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_21
.end method

.method private static computeX(Ljava/lang/String;II)I
    .registers 4
    .param p0, "pText"    # Ljava/lang/String;
    .param p1, "pMaxWidth"    # I
    .param p2, "pHorizontalAlignment"    # I

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 263
    .local v0, "ret":I
    packed-switch p2, :pswitch_data_a

    .line 275
    :goto_4
    return v0

    .line 265
    :pswitch_5
    div-int/lit8 v0, p1, 0x2

    .line 266
    goto :goto_4

    .line 268
    :pswitch_8
    move v0, p1

    .line 269
    goto :goto_4

    .line 263
    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private static computeY(Landroid/graphics/Paint$FontMetricsInt;III)I
    .registers 7
    .param p0, "pFontMetricsInt"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p1, "pConstrainHeight"    # I
    .param p2, "pTotalHeight"    # I
    .param p3, "pVerticalAlignment"    # I

    .prologue
    .line 281
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v1

    .line 283
    .local v0, "y":I
    if-le p1, p2, :cond_8

    .line 284
    packed-switch p3, :pswitch_data_20

    .line 300
    :cond_8
    :goto_8
    return v0

    .line 286
    :pswitch_9
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v1

    .line 287
    goto :goto_8

    .line 289
    :pswitch_d
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v1, v1

    sub-int v2, p1, p2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 291
    goto :goto_8

    .line 293
    :pswitch_17
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v1, v1

    sub-int v2, p1, p2

    add-int v0, v1, v2

    .line 294
    goto :goto_8

    .line 284
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_9
        :pswitch_17
        :pswitch_d
    .end packed-switch
.end method

.method public static createTextBitmap(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 24
    .param p0, "pString"    # Ljava/lang/String;
    .param p1, "pFontName"    # Ljava/lang/String;
    .param p2, "pFontSize"    # I
    .param p3, "pAlignment"    # I
    .param p4, "pWidth"    # I
    .param p5, "pHeight"    # I

    .prologue
    .line 97
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v0 .. v17}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->createTextBitmapShadowStroke(Ljava/lang/String;Ljava/lang/String;IFFFIIIZFFFZFFFF)V

    .line 102
    return-void
.end method

.method public static createTextBitmapShadowStroke(Ljava/lang/String;Ljava/lang/String;IFFFIIIZFFFZFFFF)V
    .registers 48
    .param p0, "pString"    # Ljava/lang/String;
    .param p1, "pFontName"    # Ljava/lang/String;
    .param p2, "pFontSize"    # I
    .param p3, "fontTintR"    # F
    .param p4, "fontTintG"    # F
    .param p5, "fontTintB"    # F
    .param p6, "pAlignment"    # I
    .param p7, "pWidth"    # I
    .param p8, "pHeight"    # I
    .param p9, "shadow"    # Z
    .param p10, "shadowDX"    # F
    .param p11, "shadowDY"    # F
    .param p12, "shadowBlur"    # F
    .param p13, "stroke"    # Z
    .param p14, "strokeR"    # F
    .param p15, "strokeG"    # F
    .param p16, "strokeB"    # F
    .param p17, "strokeSize"    # F

    .prologue
    .line 110
    and-int/lit8 v10, p6, 0xf

    .line 111
    .local v10, "horizontalAlignment":I
    shr-int/lit8 v23, p6, 0x4

    and-int/lit8 v20, v23, 0xf

    .line 113
    .local v20, "verticalAlignment":I
    invoke-static/range {p0 .. p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->refactorString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 114
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v10}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v14

    .line 117
    .local v14, "paint":Landroid/graphics/Paint;
    const/16 v23, 0xff

    const-wide v24, 0x406fe00000000000L    # 255.0

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    const-wide v26, 0x406fe00000000000L    # 255.0

    move/from16 v0, p4

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    const-wide v26, 0x406fe00000000000L    # 255.0

    move/from16 v0, p5

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 119
    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-static {v0, v1, v2, v14}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeTextProperty(Ljava/lang/String;IILandroid/graphics/Paint;)Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;

    move-result-object v19

    .line 120
    .local v19, "textProperty":Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;
    if-nez p8, :cond_100

    invoke-static/range {v19 .. v19}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$000(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v7

    .line 123
    .local v7, "bitmapTotalHeight":I
    :goto_62
    const/4 v5, 0x0

    .line 124
    .local v5, "bitmapPaddingX":F
    const/4 v6, 0x0

    .line 125
    .local v6, "bitmapPaddingY":F
    const/16 v16, 0x0

    .line 126
    .local v16, "renderTextDeltaX":F
    const/16 v17, 0x0

    .line 128
    .local v17, "renderTextDeltaY":F
    if-eqz p9, :cond_9a

    .line 130
    const v18, -0x828283

    .line 131
    .local v18, "shadowColor":I
    move/from16 v0, p12

    move/from16 v1, p10

    move/from16 v2, p11

    move/from16 v3, v18

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 133
    invoke-static/range {p10 .. p10}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 134
    invoke-static/range {p11 .. p11}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 136
    move/from16 v0, p10

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpg-double v23, v24, v26

    if-gez v23, :cond_8d

    .line 138
    move/from16 v16, v5

    .line 141
    :cond_8d
    move/from16 v0, p11

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpg-double v23, v24, v26

    if-gez v23, :cond_9a

    .line 143
    move/from16 v17, v6

    .line 147
    .end local v18    # "shadowColor":I
    :cond_9a
    invoke-static/range {v19 .. v19}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$100(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v23

    float-to-int v0, v5

    move/from16 v24, v0

    add-int v23, v23, v24

    float-to-int v0, v6

    move/from16 v24, v0

    add-int v24, v24, v7

    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v23 .. v25}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 150
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 153
    .local v8, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v14}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    .line 155
    .local v9, "fontMetricsInt":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v21, 0x0

    .line 156
    .local v21, "x":I
    invoke-static/range {v19 .. v19}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$000(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v23

    move/from16 v0, p8

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-static {v9, v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeY(Landroid/graphics/Paint$FontMetricsInt;III)I

    move-result v22

    .line 158
    .local v22, "y":I
    invoke-static/range {v19 .. v19}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$200(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)[Ljava/lang/String;

    move-result-object v12

    .line 160
    .local v12, "lines":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_d0
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_104

    aget-object v11, v12, v23

    .line 162
    .local v11, "line":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$100(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v25

    move/from16 v0, v25

    invoke-static {v11, v0, v10}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeX(Ljava/lang/String;II)I

    move-result v21

    .line 163
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v25, v25, v16

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v26, v26, v17

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v8, v11, v0, v1, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 164
    invoke-static/range {v19 .. v19}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$300(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v25

    add-int v22, v22, v25

    .line 160
    add-int/lit8 v23, v23, 0x1

    goto :goto_d0

    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "bitmapPaddingX":F
    .end local v6    # "bitmapPaddingY":F
    .end local v7    # "bitmapTotalHeight":I
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "fontMetricsInt":Landroid/graphics/Paint$FontMetricsInt;
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "lines":[Ljava/lang/String;
    .end local v16    # "renderTextDeltaX":F
    .end local v17    # "renderTextDeltaY":F
    .end local v21    # "x":I
    .end local v22    # "y":I
    :cond_100
    move/from16 v7, p8

    .line 120
    goto/16 :goto_62

    .line 169
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "bitmapPaddingX":F
    .restart local v6    # "bitmapPaddingY":F
    .restart local v7    # "bitmapTotalHeight":I
    .restart local v8    # "canvas":Landroid/graphics/Canvas;
    .restart local v9    # "fontMetricsInt":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v12    # "lines":[Ljava/lang/String;
    .restart local v16    # "renderTextDeltaX":F
    .restart local v17    # "renderTextDeltaY":F
    .restart local v21    # "x":I
    .restart local v22    # "y":I
    :cond_104
    if-eqz p13, :cond_195

    .line 171
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v10}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v15

    .line 172
    .local v15, "paintStroke":Landroid/graphics/Paint;
    sget-object v23, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    const/high16 v23, 0x3f000000    # 0.5f

    mul-float v23, v23, p17

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 174
    const/16 v23, 0xff

    move/from16 v0, p14

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    mul-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    move/from16 v0, p15

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    mul-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, p16

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    mul-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 176
    const/16 v21, 0x0

    .line 177
    invoke-static/range {v19 .. v19}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$000(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v23

    move/from16 v0, p8

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-static {v9, v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeY(Landroid/graphics/Paint$FontMetricsInt;III)I

    move-result v22

    .line 178
    invoke-static/range {v19 .. v19}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$200(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)[Ljava/lang/String;

    move-result-object v13

    .line 180
    .local v13, "lines2":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_165
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_195

    aget-object v11, v13, v23

    .line 182
    .restart local v11    # "line":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$100(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v25

    move/from16 v0, v25

    invoke-static {v11, v0, v10}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeX(Ljava/lang/String;II)I

    move-result v21

    .line 183
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v25, v25, v16

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v26, v26, v17

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v8, v11, v0, v1, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 184
    invoke-static/range {v19 .. v19}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$300(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v25

    add-int v22, v22, v25

    .line 180
    add-int/lit8 v23, v23, 0x1

    goto :goto_165

    .line 190
    .end local v11    # "line":Ljava/lang/String;
    .end local v13    # "lines2":[Ljava/lang/String;
    .end local v15    # "paintStroke":Landroid/graphics/Paint;
    :cond_195
    invoke-static {v4}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->initNativeObject(Landroid/graphics/Bitmap;)V

    .line 191
    return-void
.end method

.method private static divideStringWithMaxWidth(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/util/LinkedList;
    .registers 11
    .param p0, "pString"    # Ljava/lang/String;
    .param p1, "pMaxWidth"    # I
    .param p2, "pPaint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 364
    .local v0, "charLength":I
    const/4 v3, 0x0

    .line 365
    .local v3, "start":I
    const/4 v5, 0x0

    .line 366
    .local v5, "tempWidth":I
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 369
    .local v4, "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_c
    if-gt v1, v0, :cond_5a

    .line 370
    invoke-virtual {p2, p0, v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 372
    if-lt v5, p1, :cond_57

    .line 373
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    .line 374
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 376
    .local v2, "lastIndexOfSpace":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_40

    if-le v2, v3, :cond_40

    .line 378
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 379
    add-int/lit8 v1, v2, 0x1

    .line 392
    :goto_33
    if-ge v1, v0, :cond_56

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_56

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 382
    :cond_40
    if-le v5, p1, :cond_4e

    .line 383
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 385
    add-int/lit8 v1, v1, -0x1

    goto :goto_33

    .line 387
    :cond_4e
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 396
    :cond_56
    move v3, v1

    .line 369
    .end local v2    # "lastIndexOfSpace":I
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 401
    :cond_5a
    if-ge v3, v0, :cond_63

    .line 402
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_63
    return-object v4
.end method

.method private static getFontSizeAccordingHeight(I)I
    .registers 9
    .param p0, "height"    # I

    .prologue
    .line 463
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 464
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 466
    .local v0, "bounds":Landroid/graphics/Rect;
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 467
    const/4 v2, 0x1

    .line 468
    .local v2, "incr_text_size":I
    const/4 v1, 0x0

    .line 470
    .local v1, "found_desired_size":Z
    :goto_11
    if-nez v1, :cond_46

    .line 472
    int-to-float v5, v2

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 473
    const-string v4, "SghMNy"

    .line 474
    .local v4, "text":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 476
    add-int/lit8 v2, v2, 0x1

    .line 478
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v5, p0, v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_2d

    .line 479
    const/4 v1, 0x1

    .line 481
    :cond_2d
    const-string v5, "font size"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "incr size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 483
    .end local v4    # "text":Ljava/lang/String;
    :cond_46
    return v2
.end method

.method private static getPixels(Landroid/graphics/Bitmap;)[B
    .registers 5
    .param p0, "pBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 450
    if-eqz p0, :cond_1e

    .line 451
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 452
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    new-array v1, v2, [B

    .line 453
    .local v1, "pixels":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 454
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 455
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 459
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "pixels":[B
    :goto_1d
    return-object v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method private static getStringWithEllipsis(Ljava/lang/String;FF)Ljava/lang/String;
    .registers 5
    .param p0, "pString"    # Ljava/lang/String;
    .param p1, "width"    # F
    .param p2, "fontSize"    # F

    .prologue
    .line 488
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 489
    const-string v1, ""

    .line 496
    :goto_8
    return-object v1

    .line 492
    :cond_9
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 493
    .local v0, "paint":Landroid/text/TextPaint;
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 494
    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 496
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, v0, p1, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 497
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method private static initNativeObject(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p0, "pBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 440
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->getPixels(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 441
    .local v0, "pixels":[B
    if-nez v0, :cond_7

    .line 447
    :goto_6
    return-void

    .line 445
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 446
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 445
    invoke-static {v1, v2, v0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->nativeInitBitmapDC(II[B)V

    goto :goto_6
.end method

.method private static native nativeInitBitmapDC(II[B)V
.end method

.method private static newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;
    .registers 10
    .param p0, "pFontName"    # Ljava/lang/String;
    .param p1, "pFontSize"    # I
    .param p2, "pHorizontalAlignment"    # I

    .prologue
    const/4 v6, 0x0

    .line 195
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 196
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    int-to-float v3, p1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 198
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 201
    const-string v3, ".ttf"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 203
    :try_start_1a
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxBitmap;->sContext:Landroid/content/Context;

    invoke-static {v3, p0}, Lorg/cocos2dx/lib/Cocos2dxTypefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 205
    .local v2, "typeFace":Landroid/graphics/Typeface;
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_23} :catch_2c

    .line 217
    .end local v2    # "typeFace":Landroid/graphics/Typeface;
    :goto_23
    packed-switch p2, :pswitch_data_62

    .line 226
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 230
    :goto_2b
    return-object v1

    .line 206
    :catch_2c
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Cocos2dxBitmap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error to create ttf type face: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {p0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_23

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4d
    invoke-static {p0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_23

    .line 219
    :pswitch_55
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_2b

    .line 222
    :pswitch_5b
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_2b

    .line 217
    nop

    :pswitch_data_62
    .packed-switch 0x2
        :pswitch_5b
        :pswitch_55
    .end packed-switch
.end method

.method private static refactorString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "pString"    # Ljava/lang/String;

    .prologue
    .line 410
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_b

    .line 411
    const-string v3, " "

    .line 436
    :goto_a
    return-object v3

    .line 418
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .local v2, "strBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 420
    .local v1, "start":I
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 421
    .local v0, "index":I
    :goto_17
    const/4 v3, -0x1

    if-eq v0, v3, :cond_39

    .line 422
    if-eqz v0, :cond_26

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3e

    .line 423
    :cond_26
    const-string v3, " "

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    add-int/lit8 v1, v0, 0x2

    .line 429
    :goto_2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gt v1, v3, :cond_39

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ne v0, v3, :cond_41

    .line 436
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    .line 426
    :cond_3e
    add-int/lit8 v1, v0, 0x1

    goto :goto_2d

    .line 433
    :cond_41
    const-string v3, "\n"

    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_17
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 1
    .param p0, "pContext"    # Landroid/content/Context;

    .prologue
    .line 72
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxBitmap;->sContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method private static splitString(Ljava/lang/String;IILandroid/graphics/Paint;)[Ljava/lang/String;
    .registers 20
    .param p0, "pString"    # Ljava/lang/String;
    .param p1, "pMaxWidth"    # I
    .param p2, "pMaxHeight"    # I
    .param p3, "pPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 309
    const-string v11, "\\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 310
    .local v7, "lines":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 311
    .local v9, "ret":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 312
    .local v2, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v11, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v12, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v3, v12

    .line 313
    .local v3, "heightPerLine":I
    div-int v8, p2, v3

    .line 315
    .local v8, "maxLines":I
    if-eqz p1, :cond_6d

    .line 316
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 317
    .local v10, "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    array-length v12, v7

    const/4 v11, 0x0

    :goto_23
    if-ge v11, v12, :cond_4a

    aget-object v5, v7, v11

    .line 323
    .local v5, "line":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-double v14, v13

    .line 322
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v6, v14

    .line 324
    .local v6, "lineWidth":I
    move/from16 v0, p1

    if-le v6, v0, :cond_5c

    .line 325
    move/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v5, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->divideStringWithMaxWidth(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/util/LinkedList;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 332
    :goto_42
    if-lez v8, :cond_60

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v13

    if-lt v13, v8, :cond_60

    .line 338
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "lineWidth":I
    :cond_4a
    if-lez v8, :cond_63

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-le v11, v8, :cond_63

    .line 339
    :goto_52
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-le v11, v8, :cond_63

    .line 340
    invoke-virtual {v10}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_52

    .line 328
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "lineWidth":I
    :cond_5c
    invoke-virtual {v10, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 317
    :cond_60
    add-int/lit8 v11, v11, 0x1

    goto :goto_23

    .line 344
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "lineWidth":I
    :cond_63
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v11

    new-array v9, v11, [Ljava/lang/String;

    .line 345
    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 358
    .end local v10    # "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_6c
    return-object v9

    .line 346
    :cond_6d
    if-eqz p2, :cond_8c

    array-length v11, v7

    if-le v11, v8, :cond_8c

    .line 348
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 349
    .restart local v10    # "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_78
    if-ge v4, v8, :cond_82

    .line 350
    aget-object v11, v7, v4

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v4, v4, 0x1

    goto :goto_78

    .line 352
    :cond_82
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v11

    new-array v9, v11, [Ljava/lang/String;

    .line 353
    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_6c

    .line 355
    .end local v4    # "i":I
    .end local v10    # "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_8c
    move-object v9, v7

    goto :goto_6c
.end method

###### Class org.cocos2dx.lib.Cocos2dxBitmap.TextProperty (org.cocos2dx.lib.Cocos2dxBitmap$TextProperty)
.class Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;
.super Ljava/lang/Object;
.source "Cocos2dxBitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextProperty"
.end annotation


# instance fields
.field private final mHeightPerLine:I

.field private final mLines:[Ljava/lang/String;

.field private final mMaxWidth:I

.field private final mTotalHeight:I


# direct methods
.method constructor <init>(II[Ljava/lang/String;)V
    .registers 5
    .param p1, "pMaxWidth"    # I
    .param p2, "pHeightPerLine"    # I
    .param p3, "pLines"    # [Ljava/lang/String;

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mMaxWidth:I

    .line 515
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mHeightPerLine:I

    .line 516
    array-length v0, p3

    mul-int/2addr v0, p2

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mTotalHeight:I

    .line 517
    iput-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mLines:[Ljava/lang/String;

    .line 518
    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I
    .registers 2
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;

    .prologue
    .line 504
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mTotalHeight:I

    return v0
.end method

.method static synthetic access$100(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I
    .registers 2
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;

    .prologue
    .line 504
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mMaxWidth:I

    return v0
.end method

.method static synthetic access$200(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;

    .prologue
    .line 504
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mLines:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I
    .registers 2
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;

    .prologue
    .line 504
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mHeightPerLine:I

    return v0
.end method
