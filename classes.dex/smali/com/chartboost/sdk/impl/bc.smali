###### Class com.chartboost.sdk.impl.bc (com.chartboost.sdk.impl.bc)
.class public Lcom/chartboost/sdk/impl/bc;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/bc$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/ViewGroup;

.field private c:Z

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private f:Lcom/chartboost/sdk/impl/bc$a;

.field private final g:Lcom/chartboost/sdk/impl/be;

.field private final h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/chartboost/sdk/impl/bd;Lcom/chartboost/sdk/impl/be;Landroid/os/Handler;)V
    .registers 8

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bc;->a:Landroid/view/View;

    .line 70
    iput-object p2, p0, Lcom/chartboost/sdk/impl/bc;->b:Landroid/view/ViewGroup;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/bc;->c:Z

    .line 72
    iput-object p5, p0, Lcom/chartboost/sdk/impl/bc;->g:Lcom/chartboost/sdk/impl/be;

    .line 73
    iput-object p6, p0, Lcom/chartboost/sdk/impl/bc;->h:Landroid/os/Handler;

    .line 74
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 129
    const/4 v5, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_304

    :cond_d
    :goto_d
    packed-switch v5, :pswitch_data_35a

    .line 232
    const-string v0, "CBWebChromeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JavaScript to native "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callback not recognized."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v0, "Function name not recognized."

    .line 241
    :goto_30
    return-object v0

    .line 129
    :sswitch_31
    const-string v6, "getParameters"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v5, v3

    goto :goto_d

    :sswitch_3b
    const-string v6, "click"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v5, v0

    goto :goto_d

    :sswitch_45
    const-string v6, "close"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v5, v1

    goto :goto_d

    :sswitch_4f
    const-string v6, "videoCompleted"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v5, v4

    goto :goto_d

    :sswitch_59
    const-string v6, "videoPlaying"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v5, v2

    goto :goto_d

    :sswitch_63
    const-string v6, "videoPaused"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x5

    goto :goto_d

    :sswitch_6d
    const-string v6, "videoReplay"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x6

    goto :goto_d

    :sswitch_77
    const-string v6, "currentVideoDuration"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x7

    goto :goto_d

    :sswitch_81
    const-string v6, "totalVideoDuration"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x8

    goto :goto_d

    :sswitch_8c
    const-string v6, "show"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x9

    goto/16 :goto_d

    :sswitch_98
    const-string v6, "error"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0xa

    goto/16 :goto_d

    :sswitch_a4
    const-string v6, "warning"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0xb

    goto/16 :goto_d

    :sswitch_b0
    const-string v6, "debug"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0xc

    goto/16 :goto_d

    :sswitch_bc
    const-string v6, "tracking"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0xd

    goto/16 :goto_d

    :sswitch_c8
    const-string v6, "openUrl"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0xe

    goto/16 :goto_d

    :sswitch_d4
    const-string v6, "getMaxSize"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0xf

    goto/16 :goto_d

    :sswitch_e0
    const-string v6, "getScreenSize"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x10

    goto/16 :goto_d

    :sswitch_ec
    const-string v6, "getCurrentPosition"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x11

    goto/16 :goto_d

    :sswitch_f8
    const-string v6, "getDefaultPosition"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x12

    goto/16 :goto_d

    :sswitch_104
    const-string v6, "getOrientationProperties"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x13

    goto/16 :goto_d

    :sswitch_110
    const-string v6, "setOrientationProperties"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x14

    goto/16 :goto_d

    .line 131
    :pswitch_11c
    const-string v0, "CBWebChromeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JavaScript to native "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callback triggered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->g:Lcom/chartboost/sdk/impl/be;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    if-eqz v0, :cond_1b9

    .line 133
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->g:Lcom/chartboost/sdk/impl/be;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    .line 134
    if-eqz v2, :cond_1b9

    .line 135
    new-array v0, v3, [Lcom/chartboost/sdk/Libraries/e$a;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v3

    .line 136
    iget-object v0, v2, Lcom/chartboost/sdk/Model/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_158
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_172

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_158

    .line 139
    :cond_172
    iget-object v0, v2, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 140
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Model/b;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/chartboost/sdk/Model/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Lcom/chartboost/sdk/Model/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_17c

    .line 143
    :cond_1b3
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_30

    .line 146
    :cond_1b9
    const-string v0, "{}"

    goto/16 :goto_30

    :pswitch_1bd
    move v3, v0

    .line 236
    :goto_1be
    :pswitch_1be
    const-string v0, "CBWebChromeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JavaScript to native "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callback triggered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v0, Lcom/chartboost/sdk/impl/bf;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc;->g:Lcom/chartboost/sdk/impl/be;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bf;-><init>(Lcom/chartboost/sdk/impl/bc;Lcom/chartboost/sdk/impl/be;ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 239
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    const-string v0, "Native function successfully called."

    goto/16 :goto_30

    .line 157
    :pswitch_1ef
    const/16 v3, 0x9

    .line 158
    goto :goto_1be

    .line 161
    :pswitch_1f2
    const/16 v3, 0xb

    .line 162
    goto :goto_1be

    .line 165
    :pswitch_1f5
    const/16 v3, 0xa

    .line 166
    goto :goto_1be

    .line 169
    :pswitch_1f8
    const/16 v3, 0xc

    .line 170
    goto :goto_1be

    :pswitch_1fb
    move v3, v1

    .line 174
    goto :goto_1be

    .line 177
    :pswitch_1fd
    const/4 v3, 0x7

    .line 178
    goto :goto_1be

    .line 181
    :pswitch_1ff
    const/4 v3, 0x6

    .line 182
    goto :goto_1be

    .line 185
    :pswitch_201
    const-class v0, Lcom/chartboost/sdk/impl/bd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Javascript Error occured"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 187
    goto :goto_1be

    .line 190
    :pswitch_20e
    const-class v0, Lcom/chartboost/sdk/impl/bd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Javascript warning occurred"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/16 v3, 0xd

    .line 192
    goto :goto_1be

    :pswitch_21c
    move v3, v4

    .line 196
    goto :goto_1be

    .line 199
    :pswitch_21e
    const/16 v3, 0x8

    .line 200
    goto :goto_1be

    .line 203
    :pswitch_221
    const/4 v3, 0x5

    .line 204
    goto :goto_1be

    .line 207
    :pswitch_223
    const-string v0, "CBWebChromeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JavaScript to native "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callback triggered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->g:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/be;->s()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_30

    .line 211
    :pswitch_249
    const-string v0, "CBWebChromeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JavaScript to native "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callback triggered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->g:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/be;->t()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_30

    .line 215
    :pswitch_26f
    const-string v0, "CBWebChromeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JavaScript to native "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callback triggered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->g:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/be;->v()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_30

    .line 219
    :pswitch_295
    const-string v0, "CBWebChromeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JavaScript to native "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callback triggered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->g:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/be;->u()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_30

    .line 223
    :pswitch_2bb
    const-string v0, "CBWebChromeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JavaScript to native "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callback triggered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->g:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/be;->p()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_30

    .line 227
    :pswitch_2e1
    const-string v0, "CBWebChromeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JavaScript to native "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callback triggered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/16 v3, 0xe

    .line 229
    goto/16 :goto_1be

    .line 129
    nop

    :sswitch_data_304
    .sparse-switch
        -0x77f32bac -> :sswitch_f8
        -0x68b9fc74 -> :sswitch_ec
        -0x5ca105ca -> :sswitch_77
        -0x4b4af53b -> :sswitch_c8
        -0x40bd23f0 -> :sswitch_4f
        -0x2aa0497d -> :sswitch_e0
        -0x26309ccd -> :sswitch_59
        0x35dafd -> :sswitch_8c
        0x5a5c588 -> :sswitch_3b
        0x5a5ddf8 -> :sswitch_45
        0x5b09653 -> :sswitch_b0
        0x5c4d208 -> :sswitch_98
        0x7f3dfe1 -> :sswitch_110
        0x99879e0 -> :sswitch_31
        0x37e12d6d -> :sswitch_104
        0x38011189 -> :sswitch_63
        0x3ba0c042 -> :sswitch_6d
        0x4089de4b -> :sswitch_81
        0x4305af9c -> :sswitch_a4
        0x4bba1eb7 -> :sswitch_bc
        0x701ce34f -> :sswitch_d4
    .end sparse-switch

    :pswitch_data_35a
    .packed-switch 0x0
        :pswitch_11c
        :pswitch_1be
        :pswitch_1bd
        :pswitch_1ef
        :pswitch_1f2
        :pswitch_1f5
        :pswitch_1f8
        :pswitch_1fb
        :pswitch_1fd
        :pswitch_1ff
        :pswitch_201
        :pswitch_20e
        :pswitch_21c
        :pswitch_21e
        :pswitch_221
        :pswitch_223
        :pswitch_249
        :pswitch_26f
        :pswitch_295
        :pswitch_2bb
        :pswitch_2e1
    .end packed-switch
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 5
    .param p1, "cm"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 96
    const-class v0, Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chartboost Webview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- From line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 97
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 98
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public onHideCustomView()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 282
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/bc;->c:Z

    if-eqz v0, :cond_42

    .line 285
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 287
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->e:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->e:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".chromium."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 292
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->e:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 296
    :cond_33
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/bc;->c:Z

    .line 297
    iput-object v3, p0, Lcom/chartboost/sdk/impl/bc;->d:Landroid/widget/FrameLayout;

    .line 298
    iput-object v3, p0, Lcom/chartboost/sdk/impl/bc;->e:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 301
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->f:Lcom/chartboost/sdk/impl/bc$a;

    if-eqz v0, :cond_42

    .line 303
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->f:Lcom/chartboost/sdk/impl/bc$a;

    invoke-interface {v0, v2}, Lcom/chartboost/sdk/impl/bc$a;->a(Z)V

    .line 306
    :cond_42
    return-void
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    const/4 v3, 0x1

    .line 113
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    const-string v1, "eventType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    const-string v2, "eventArgs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_11} :catch_1a

    move-result-object v0

    .line 121
    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/bc;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 123
    :goto_19
    return v3

    .line 116
    :catch_1a
    move-exception v0

    .line 117
    const-string v0, "CBWebChromeClient"

    const-string v1, "Exception caught parsing the function name from js to native"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 273
    invoke-virtual {p0, p1, p3}, Lcom/chartboost/sdk/impl/bc;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 274
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 247
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2f

    .line 250
    check-cast p1, Landroid/widget/FrameLayout;

    .line 253
    .end local p1    # "view":Landroid/view/View;
    iput-boolean v4, p0, Lcom/chartboost/sdk/impl/bc;->c:Z

    .line 254
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bc;->d:Landroid/widget/FrameLayout;

    .line 255
    iput-object p2, p0, Lcom/chartboost/sdk/impl/bc;->e:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 258
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc;->d:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->f:Lcom/chartboost/sdk/impl/bc$a;

    if-eqz v0, :cond_2f

    .line 265
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->f:Lcom/chartboost/sdk/impl/bc$a;

    invoke-interface {v0, v4}, Lcom/chartboost/sdk/impl/bc$a;->a(Z)V

    .line 268
    :cond_2f
    return-void
.end method

###### Class com.chartboost.sdk.impl.bc.a (com.chartboost.sdk.impl.bc$a)
.class public interface abstract Lcom/chartboost/sdk/impl/bc$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Z)V
.end method
