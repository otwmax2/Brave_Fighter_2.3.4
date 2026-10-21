###### Class com.chartboost.sdk.impl.av (com.chartboost.sdk.impl.av)
.class public Lcom/chartboost/sdk/impl/av;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/chartboost/sdk/impl/av;->a:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method public static a(I)Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x1

    if-lt p0, v0, :cond_c

    const/16 v0, 0x9

    if-gt p0, v0, :cond_c

    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 62
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;ZLcom/chartboost/sdk/d;)V
    .registers 14

    .prologue
    .line 83
    const/4 v0, 0x7

    if-ne p1, v0, :cond_9

    .line 84
    if-eqz p3, :cond_8

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 109
    :cond_8
    :goto_8
    return-void

    .line 89
    :cond_9
    if-eqz p2, :cond_f

    iget-object v0, p2, Lcom/chartboost/sdk/Model/c;->s:Lcom/chartboost/sdk/impl/bb;

    if-nez v0, :cond_17

    .line 90
    :cond_f
    const-string v0, "AnimationManager"

    const-string v1, "Transition of impression canceled due to lack of container"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 93
    :cond_17
    iget-object v0, p2, Lcom/chartboost/sdk/Model/c;->s:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->d()Landroid/view/View;

    move-result-object v2

    .line 94
    if-nez v2, :cond_2a

    .line 95
    invoke-virtual {p5, p2}, Lcom/chartboost/sdk/d;->d(Lcom/chartboost/sdk/Model/c;)V

    .line 96
    const-string v0, "AnimationManager"

    const-string v1, "Transition of impression canceled due to lack of view"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 99
    :cond_2a
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    .line 100
    invoke-virtual {v7}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 101
    new-instance v0, Lcom/chartboost/sdk/impl/av$1;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/impl/av$1;-><init>(Lcom/chartboost/sdk/impl/av;Landroid/view/View;ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;Z)V

    invoke-virtual {v7, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_8
.end method


# virtual methods
.method public a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/chartboost/sdk/impl/av;->a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;Z)V

    .line 75
    return-void
.end method

.method public a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;Lcom/chartboost/sdk/d;)V
    .registers 11

    .prologue
    .line 70
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/av;->a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;ZLcom/chartboost/sdk/d;)V

    .line 71
    return-void
.end method

.method a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;Z)V
    .registers 21

    .prologue
    .line 115
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 116
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 119
    if-eqz p2, :cond_1a

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/chartboost/sdk/Model/c;->s:Lcom/chartboost/sdk/impl/bb;

    if-nez v2, :cond_27

    .line 120
    :cond_1a
    const-string v2, "AnimationManager"

    const-string v3, "Transition of impression canceled due to lack of container"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    if-eqz p3, :cond_26

    .line 122
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    .line 298
    :cond_26
    :goto_26
    return-void

    .line 125
    :cond_27
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/chartboost/sdk/Model/c;->s:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bb;->d()Landroid/view/View;

    move-result-object v2

    .line 126
    if-nez v2, :cond_3e

    .line 127
    if-eqz p3, :cond_36

    .line 128
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    .line 129
    :cond_36
    const-string v2, "AnimationManager"

    const-string v3, "Transition of impression canceled due to lack of view"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 134
    :cond_3e
    move-object/from16 v0, p2

    iget v3, v0, Lcom/chartboost/sdk/Model/c;->n:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4c

    move-object/from16 v0, p2

    iget v3, v0, Lcom/chartboost/sdk/Model/c;->n:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2db

    .line 135
    :cond_4c
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/chartboost/sdk/Model/c;->s:Lcom/chartboost/sdk/impl/bb;

    move-object v11, v2

    .line 138
    :goto_51
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v9, v2

    .line 139
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v8, v2

    .line 140
    const/high16 v4, 0x42700000    # 60.0f

    .line 141
    const v10, 0x3ecccccd    # 0.4f

    .line 142
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v10

    const/high16 v3, 0x40000000    # 2.0f

    div-float v13, v2, v3

    .line 149
    const-wide/16 v2, 0x1f4

    .line 150
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v5, v5, Lcom/chartboost/sdk/Model/a;->b:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2d8

    .line 151
    const-wide/16 v2, 0x1f4

    move-wide v14, v2

    .line 153
    :goto_75
    packed-switch p1, :pswitch_data_2de

    :pswitch_78
    move-object v2, v12

    .line 287
    :goto_79
    const/4 v3, 0x7

    move/from16 v0, p1

    if-ne v0, v3, :cond_2c8

    .line 288
    if-eqz p3, :cond_26

    .line 289
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    goto :goto_26

    .line 155
    :pswitch_84
    if-eqz p4, :cond_a0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 157
    :goto_8e
    invoke-virtual {v2, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 158
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 159
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 160
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v2, v3

    .line 161
    goto :goto_79

    .line 156
    :cond_a0
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_8e

    .line 163
    :pswitch_a9
    if-eqz p4, :cond_f3

    .line 164
    new-instance v2, Lcom/chartboost/sdk/impl/az;

    neg-float v3, v4

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v9, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v8, v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/az;-><init>(FFFFZ)V

    .line 167
    :goto_bb
    invoke-virtual {v2, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 168
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 169
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 171
    if-eqz p4, :cond_103

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v10, v3, v10, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 173
    :goto_d0
    invoke-virtual {v2, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 174
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 175
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 177
    if-eqz p4, :cond_10d

    .line 178
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    mul-float v3, v9, v13

    const/4 v4, 0x0

    neg-float v5, v8

    mul-float/2addr v5, v10

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 181
    :goto_e7
    invoke-virtual {v2, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 182
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 183
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v2, v12

    .line 185
    goto :goto_79

    .line 166
    :cond_f3
    new-instance v2, Lcom/chartboost/sdk/impl/az;

    const/4 v3, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v9, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v8, v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/az;-><init>(FFFFZ)V

    goto :goto_bb

    .line 172
    :cond_103
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v10, v4, v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    goto :goto_d0

    .line 180
    :cond_10d
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    mul-float v4, v9, v13

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_e7

    .line 187
    :pswitch_117
    if-eqz p4, :cond_162

    .line 188
    new-instance v2, Lcom/chartboost/sdk/impl/az;

    neg-float v3, v4

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v9, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v8, v6

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/az;-><init>(FFFFZ)V

    .line 191
    :goto_129
    invoke-virtual {v2, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 192
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 193
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 195
    if-eqz p4, :cond_172

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v10, v3, v10, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 197
    :goto_13e
    invoke-virtual {v2, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 198
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 199
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 201
    if-eqz p4, :cond_17c

    .line 202
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    neg-float v3, v9

    mul-float/2addr v3, v10

    const/4 v4, 0x0

    mul-float v5, v8, v13

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 205
    :goto_155
    invoke-virtual {v2, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 206
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 207
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v2, v12

    .line 209
    goto/16 :goto_79

    .line 190
    :cond_162
    new-instance v2, Lcom/chartboost/sdk/impl/az;

    const/4 v3, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v9, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v8, v6

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/az;-><init>(FFFFZ)V

    goto :goto_129

    .line 196
    :cond_172
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v10, v4, v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    goto :goto_13e

    .line 204
    :cond_17c
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    mul-float v5, v8, v13

    invoke-direct {v2, v3, v9, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_155

    .line 212
    :pswitch_186
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 213
    if-eqz p4, :cond_1a0

    move v3, v8

    .line 214
    :goto_18b
    if-eqz p4, :cond_1a3

    const/4 v2, 0x0

    .line 215
    :goto_18e
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v6, v4, v5, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 216
    invoke-virtual {v6, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 217
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 218
    invoke-virtual {v12, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v2, v12

    .line 219
    goto/16 :goto_79

    .line 213
    :cond_1a0
    const/4 v2, 0x0

    move v3, v2

    goto :goto_18b

    :cond_1a3
    move v2, v8

    .line 214
    goto :goto_18e

    .line 222
    :pswitch_1a5
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 223
    if-eqz p4, :cond_1c0

    neg-float v2, v8

    move v3, v2

    .line 224
    :goto_1ab
    if-eqz p4, :cond_1c3

    const/4 v2, 0x0

    .line 225
    :goto_1ae
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v6, v4, v5, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 226
    invoke-virtual {v6, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 227
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 228
    invoke-virtual {v12, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v2, v12

    .line 229
    goto/16 :goto_79

    .line 223
    :cond_1c0
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1ab

    .line 224
    :cond_1c3
    neg-float v2, v8

    goto :goto_1ae

    .line 233
    :pswitch_1c5
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 234
    if-eqz p4, :cond_1df

    move v3, v9

    .line 235
    :goto_1ca
    if-eqz p4, :cond_1e2

    const/4 v2, 0x0

    .line 236
    :goto_1cd
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v6, v3, v2, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 237
    invoke-virtual {v6, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 238
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 239
    invoke-virtual {v12, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v2, v12

    .line 240
    goto/16 :goto_79

    .line 234
    :cond_1df
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1ca

    :cond_1e2
    move v2, v9

    .line 235
    goto :goto_1cd

    .line 243
    :pswitch_1e4
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 244
    if-eqz p4, :cond_1ff

    neg-float v2, v9

    move v3, v2

    .line 245
    :goto_1ea
    if-eqz p4, :cond_202

    const/4 v2, 0x0

    .line 246
    :goto_1ed
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v6, v3, v2, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 247
    invoke-virtual {v6, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 248
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 249
    invoke-virtual {v12, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v2, v12

    .line 250
    goto/16 :goto_79

    .line 244
    :cond_1ff
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1ea

    .line 245
    :cond_202
    neg-float v2, v9

    goto :goto_1ed

    .line 254
    :pswitch_204
    if-eqz p4, :cond_2a5

    .line 255
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3f8ccccd    # 1.1f

    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3f8ccccd    # 1.1f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 256
    long-to-float v3, v14

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 257
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 258
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 259
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 261
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f51745c

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f51745c

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 262
    long-to-float v3, v14

    const v4, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 263
    long-to-float v3, v14

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    .line 264
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v4, v3

    .line 263
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 265
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 266
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 268
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f8e38e4

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f8e38e4

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 269
    long-to-float v3, v14

    const v4, 0x3dccccc8    # 0.099999964f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 270
    long-to-float v3, v14

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 271
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 272
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v2, v12

    goto/16 :goto_79

    .line 275
    :cond_2a5
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 276
    invoke-virtual {v2, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 277
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 278
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 279
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v2, v12

    .line 281
    goto/16 :goto_79

    .line 293
    :cond_2c8
    if-eqz p3, :cond_2d3

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/chartboost/sdk/impl/av;->a:Landroid/os/Handler;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    :cond_2d3
    invoke-virtual {v11, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_26

    :cond_2d8
    move-wide v14, v2

    goto/16 :goto_75

    :cond_2db
    move-object v11, v2

    goto/16 :goto_51

    .line 153
    :pswitch_data_2de
    .packed-switch 0x1
        :pswitch_117
        :pswitch_204
        :pswitch_a9
        :pswitch_1a5
        :pswitch_186
        :pswitch_84
        :pswitch_78
        :pswitch_1c5
        :pswitch_1e4
    .end packed-switch
.end method

.method public a(ZLandroid/view/View;J)V
    .registers 10

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 310
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 311
    if-eqz p1, :cond_c

    .line 312
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :cond_c
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_21

    move v2, v1

    :goto_11
    if-eqz p1, :cond_23

    :goto_13
    invoke-direct {v3, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 314
    invoke-virtual {v3, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 315
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 316
    invoke-virtual {p2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 317
    return-void

    :cond_21
    move v2, v0

    .line 313
    goto :goto_11

    :cond_23
    move v0, v1

    goto :goto_13
.end method

.method public a(ZLandroid/view/View;Lcom/chartboost/sdk/Model/a;)V
    .registers 8

    .prologue
    const-wide/16 v2, 0x1f4

    .line 302
    iget v0, p3, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez v0, :cond_6

    .line 305
    :cond_6
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/chartboost/sdk/impl/av;->a(ZLandroid/view/View;J)V

    .line 306
    return-void
.end method

###### Class com.chartboost.sdk.impl.av.AnonymousClass1 (com.chartboost.sdk.impl.av$1)
.class Lcom/chartboost/sdk/impl/av$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/av;->a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;ZLcom/chartboost/sdk/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/chartboost/sdk/Model/c;

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:Z

.field final synthetic f:Lcom/chartboost/sdk/impl/av;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/av;Landroid/view/View;ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;Z)V
    .registers 7

    .prologue
    .line 101
    iput-object p1, p0, Lcom/chartboost/sdk/impl/av$1;->f:Lcom/chartboost/sdk/impl/av;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/av$1;->a:Landroid/view/View;

    iput p3, p0, Lcom/chartboost/sdk/impl/av$1;->b:I

    iput-object p4, p0, Lcom/chartboost/sdk/impl/av$1;->c:Lcom/chartboost/sdk/Model/c;

    iput-object p5, p0, Lcom/chartboost/sdk/impl/av$1;->d:Ljava/lang/Runnable;

    iput-boolean p6, p0, Lcom/chartboost/sdk/impl/av$1;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 6

    .prologue
    .line 104
    iget-object v0, p0, Lcom/chartboost/sdk/impl/av$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 105
    iget-object v0, p0, Lcom/chartboost/sdk/impl/av$1;->f:Lcom/chartboost/sdk/impl/av;

    iget v1, p0, Lcom/chartboost/sdk/impl/av$1;->b:I

    iget-object v2, p0, Lcom/chartboost/sdk/impl/av$1;->c:Lcom/chartboost/sdk/Model/c;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/av$1;->d:Ljava/lang/Runnable;

    iget-boolean v4, p0, Lcom/chartboost/sdk/impl/av$1;->e:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartboost/sdk/impl/av;->a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;Z)V

    .line 106
    return-void
.end method
