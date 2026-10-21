###### Class com.vungle.publisher.ys (com.vungle.publisher.ys)
.class public Lcom/vungle/publisher/ys;
.super Lcom/vungle/publisher/yj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ys$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/yj",
        "<",
        "Lcom/vungle/publisher/jh",
        "<***>;>;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final i:[Lcom/vungle/publisher/ji$a;


# instance fields
.field h:Lcom/vungle/publisher/zf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private j:I

.field private final k:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/vungle/publisher/ji$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/vungle/publisher/ji$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/vungle/publisher/ji$a;->d:Lcom/vungle/publisher/ji$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/vungle/publisher/ji$a;->e:Lcom/vungle/publisher/ji$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/vungle/publisher/ji$a;->f:Lcom/vungle/publisher/ji$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/vungle/publisher/ji$a;->g:Lcom/vungle/publisher/ji$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/vungle/publisher/ji$a;->h:Lcom/vungle/publisher/ji$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/vungle/publisher/ji$a;->i:Lcom/vungle/publisher/ji$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vungle/publisher/ys;->i:[Lcom/vungle/publisher/ji$a;

    return-void
.end method

.method constructor <init>()V
    .registers 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/vungle/publisher/yj;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/ys;->k:Ljava/util/HashSet;

    .line 51
    return-void
.end method

.method private a(Lcom/vungle/publisher/ji$a;)V
    .registers 5

    .prologue
    .line 206
    iget-object v0, p0, Lcom/vungle/publisher/ys;->a:Lcom/vungle/publisher/cn;

    if-nez v0, :cond_1d

    .line 207
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null ad in AdReportingHandler - cannot track event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_1c
    :goto_1c
    return-void

    .line 209
    :cond_1d
    iget-object v0, p0, Lcom/vungle/publisher/ys;->k:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 210
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tpat event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vungle/publisher/ji$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/vungle/publisher/ys;->f:Lcom/vungle/publisher/tj;

    iget-object v2, p0, Lcom/vungle/publisher/ys;->a:Lcom/vungle/publisher/cn;

    iget-object v0, p0, Lcom/vungle/publisher/ys;->a:Lcom/vungle/publisher/cn;

    check-cast v0, Lcom/vungle/publisher/jh;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/jh;->a(Lcom/vungle/publisher/jf;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, p1, v0}, Lcom/vungle/publisher/tj;->a(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/jf;Ljava/util/List;)V

    .line 212
    iget-object v0, p0, Lcom/vungle/publisher/ys;->k:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1c
.end method


# virtual methods
.method protected a()V
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/vungle/publisher/ys;->j:I

    .line 56
    iget-object v0, p0, Lcom/vungle/publisher/ys;->k:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 57
    return-void
.end method

.method a(Lcom/vungle/publisher/ar;)V
    .registers 6

    .prologue
    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/ys;->b:Lcom/vungle/publisher/cy;

    invoke-virtual {p1}, Lcom/vungle/publisher/ar;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cy;->a(Ljava/lang/Integer;)V

    .line 198
    iget-object v0, p0, Lcom/vungle/publisher/ys;->b:Lcom/vungle/publisher/cy;

    invoke-virtual {v0}, Lcom/vungle/publisher/cy;->f_()I

    .line 199
    iget-object v0, p0, Lcom/vungle/publisher/ys;->c:Lcom/vungle/publisher/cz;

    invoke-virtual {p1}, Lcom/vungle/publisher/ar;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cz;->b(Ljava/lang/Long;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 203
    :goto_1f
    return-void

    .line 200
    :catch_20
    move-exception v0

    .line 201
    const-string v1, "VungleReport"

    const-string v2, "error updating video view progress"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method public onEvent(Lcom/vungle/publisher/aa;)V
    .registers 4
    .param p1, "event"    # Lcom/vungle/publisher/aa;

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/vungle/publisher/aa;->a()Lcom/vungle/publisher/ji$a;

    move-result-object v0

    .line 177
    sget-object v1, Lcom/vungle/publisher/ji$a;->m:Lcom/vungle/publisher/ji$a;

    if-ne v0, v1, :cond_13

    .line 178
    sget-object v0, Lcom/vungle/publisher/jl$a;->e:Lcom/vungle/publisher/jl$a;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ys;->a(Lcom/vungle/publisher/jf;)V

    .line 182
    :cond_d
    :goto_d
    sget-object v0, Lcom/vungle/publisher/jl$a;->d:Lcom/vungle/publisher/jl$a;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ys;->a(Lcom/vungle/publisher/jf;)V

    .line 183
    return-void

    .line 179
    :cond_13
    sget-object v1, Lcom/vungle/publisher/ji$a;->j:Lcom/vungle/publisher/ji$a;

    if-ne v0, v1, :cond_d

    .line 180
    sget-object v0, Lcom/vungle/publisher/ji$a;->j:Lcom/vungle/publisher/ji$a;

    invoke-direct {p0, v0}, Lcom/vungle/publisher/ys;->a(Lcom/vungle/publisher/ji$a;)V

    goto :goto_d
.end method

.method public onEvent(Lcom/vungle/publisher/ab;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ab",
            "<",
            "Lcom/vungle/publisher/jh",
            "<***>;>;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "event":Lcom/vungle/publisher/ab;, "Lcom/vungle/publisher/ab<Lcom/vungle/publisher/jh<***>;>;"
    invoke-virtual {p1}, Lcom/vungle/publisher/ab;->b()Lcom/vungle/publisher/cn;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/jh;

    .line 101
    iget-object v1, p0, Lcom/vungle/publisher/ys;->f:Lcom/vungle/publisher/tj;

    invoke-virtual {p1}, Lcom/vungle/publisher/ab;->a()Lcom/vungle/publisher/ji$a;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/vungle/publisher/jh;->z()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/vungle/publisher/tj;->a(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/jf;[Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/ah;)V
    .registers 5
    .param p1, "playVideoDurationEvent"    # Lcom/vungle/publisher/ah;

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/ys;->c:Lcom/vungle/publisher/cz;

    invoke-virtual {p1}, Lcom/vungle/publisher/ah;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cz;->b(Ljava/lang/Integer;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 110
    :goto_d
    return-void

    .line 107
    :catch_e
    move-exception v0

    .line 108
    const-string v1, "VungleReport"

    const-string v2, "error updating video duration millis"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public onEvent(Lcom/vungle/publisher/ap;)V
    .registers 3
    .param p1, "event"    # Lcom/vungle/publisher/ap;

    .prologue
    .line 87
    sget-object v0, Lcom/vungle/publisher/ji$a;->k:Lcom/vungle/publisher/ji$a;

    invoke-direct {p0, v0}, Lcom/vungle/publisher/ys;->a(Lcom/vungle/publisher/ji$a;)V

    .line 88
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/ar;)V
    .registers 9
    .param p1, "playVideoProgressEvent"    # Lcom/vungle/publisher/ar;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 123
    :try_start_2
    invoke-virtual {p1}, Lcom/vungle/publisher/ar;->a()I

    move-result v3

    .line 124
    iget v2, p0, Lcom/vungle/publisher/ys;->j:I

    sget-object v4, Lcom/vungle/publisher/ys;->i:[Lcom/vungle/publisher/ji$a;

    array-length v4, v4

    if-ge v2, v4, :cond_3b

    move v2, v1

    .line 125
    :goto_e
    instance-of v4, p1, Lcom/vungle/publisher/ai;

    .line 126
    if-nez v2, :cond_14

    if-eqz v4, :cond_3a

    .line 127
    :cond_14
    iget-object v5, p0, Lcom/vungle/publisher/ys;->c:Lcom/vungle/publisher/cz;

    invoke-virtual {v5}, Lcom/vungle/publisher/cz;->s()Ljava/lang/Integer;

    move-result-object v5

    .line 128
    if-nez v5, :cond_3d

    .line 130
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null video duration millis for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/ys;->c:Lcom/vungle/publisher/cz;

    invoke-virtual {v2}, Lcom/vungle/publisher/cz;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    move v2, v0

    .line 124
    goto :goto_e

    .line 131
    :cond_3d
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_6b

    .line 132
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video duration millis 0 for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/ys;->c:Lcom/vungle/publisher/cz;

    invoke-virtual {v2}, Lcom/vungle/publisher/cz;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_61} :catch_62

    goto :goto_3a

    .line 170
    :catch_62
    move-exception v0

    .line 171
    const-string v1, "VungleReport"

    const-string v2, "error handling video view progress"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3a

    .line 135
    :cond_6b
    if-eqz v2, :cond_99

    .line 136
    int-to-float v2, v3

    :try_start_6e
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    .line 137
    sget-object v5, Lcom/vungle/publisher/ys;->i:[Lcom/vungle/publisher/ji$a;

    iget v6, p0, Lcom/vungle/publisher/ys;->j:I

    aget-object v5, v5, v6

    .line 138
    invoke-virtual {v5}, Lcom/vungle/publisher/ji$a;->b()F

    move-result v6

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_83

    move v0, v1

    .line 139
    :cond_83
    if-eqz v0, :cond_99

    .line 140
    sget-object v1, Lcom/vungle/publisher/ys$1;->a:[I

    invoke-virtual {v5}, Lcom/vungle/publisher/ji$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_d6

    .line 160
    :goto_90
    iget v1, p0, Lcom/vungle/publisher/ys;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vungle/publisher/ys;->j:I

    .line 161
    invoke-direct {p0, v5}, Lcom/vungle/publisher/ys;->a(Lcom/vungle/publisher/ji$a;)V

    .line 164
    :cond_99
    if-nez v0, :cond_9d

    if-eqz v4, :cond_3a

    .line 165
    :cond_9d
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/ys;->a(Lcom/vungle/publisher/ar;)V

    goto :goto_3a

    .line 142
    :pswitch_a1
    iget-object v1, p0, Lcom/vungle/publisher/ys;->h:Lcom/vungle/publisher/zf;

    sget-object v2, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_START:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    invoke-virtual {v1, v2, v3}, Lcom/vungle/publisher/zf;->a(Lcom/moat/analytics/mobile/vng/MoatAdEventType;I)V

    .line 144
    iget-object v1, p0, Lcom/vungle/publisher/ys;->eventBus:Lcom/vungle/publisher/qg;

    new-instance v2, Lcom/vungle/publisher/aw;

    invoke-direct {v2}, Lcom/vungle/publisher/aw;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    goto :goto_90

    .line 147
    :pswitch_b3
    iget-object v1, p0, Lcom/vungle/publisher/ys;->h:Lcom/vungle/publisher/zf;

    sget-object v2, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_FIRST_QUARTILE:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    invoke-virtual {v1, v2, v3}, Lcom/vungle/publisher/zf;->a(Lcom/moat/analytics/mobile/vng/MoatAdEventType;I)V

    goto :goto_90

    .line 150
    :pswitch_bb
    iget-object v1, p0, Lcom/vungle/publisher/ys;->h:Lcom/vungle/publisher/zf;

    sget-object v2, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_MID_POINT:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    invoke-virtual {v1, v2, v3}, Lcom/vungle/publisher/zf;->a(Lcom/moat/analytics/mobile/vng/MoatAdEventType;I)V

    goto :goto_90

    .line 153
    :pswitch_c3
    iget-object v1, p0, Lcom/vungle/publisher/ys;->h:Lcom/vungle/publisher/zf;

    sget-object v2, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_THIRD_QUARTILE:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    invoke-virtual {v1, v2, v3}, Lcom/vungle/publisher/zf;->a(Lcom/moat/analytics/mobile/vng/MoatAdEventType;I)V

    goto :goto_90

    .line 157
    :pswitch_cb
    iget-object v1, p0, Lcom/vungle/publisher/ys;->eventBus:Lcom/vungle/publisher/qg;

    new-instance v2, Lcom/vungle/publisher/ax;

    invoke-direct {v2}, Lcom/vungle/publisher/ax;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_d5} :catch_62

    goto :goto_90

    .line 140
    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_b3
        :pswitch_bb
        :pswitch_c3
        :pswitch_cb
    .end packed-switch
.end method

.method public onEvent(Lcom/vungle/publisher/aw;)V
    .registers 6
    .param p1, "playVideoStartEvent"    # Lcom/vungle/publisher/aw;

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/ys;->b:Lcom/vungle/publisher/cy;

    invoke-virtual {p1}, Lcom/vungle/publisher/aw;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cy;->a(Ljava/lang/Long;)V

    .line 115
    iget-object v0, p0, Lcom/vungle/publisher/ys;->b:Lcom/vungle/publisher/cy;

    invoke-virtual {v0}, Lcom/vungle/publisher/cy;->f_()I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 119
    :goto_12
    return-void

    .line 116
    :catch_13
    move-exception v0

    .line 117
    const-string v1, "VungleReport"

    const-string v2, "error updating play start millis"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public onEvent(Lcom/vungle/publisher/ay;)V
    .registers 3
    .param p1, "event"    # Lcom/vungle/publisher/ay;

    .prologue
    .line 91
    sget-object v0, Lcom/vungle/publisher/ji$a;->n:Lcom/vungle/publisher/ji$a;

    invoke-direct {p0, v0}, Lcom/vungle/publisher/ys;->a(Lcom/vungle/publisher/ji$a;)V

    .line 92
    sget-object v0, Lcom/vungle/publisher/jl$a;->b:Lcom/vungle/publisher/jl$a;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ys;->a(Lcom/vungle/publisher/jf;)V

    .line 93
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/ba;)V
    .registers 3
    .param p1, "event"    # Lcom/vungle/publisher/ba;

    .prologue
    .line 96
    sget-object v0, Lcom/vungle/publisher/jl$a;->i:Lcom/vungle/publisher/jl$a;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ys;->a(Lcom/vungle/publisher/jf;)V

    .line 97
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/bb;)V
    .registers 3
    .param p1, "event"    # Lcom/vungle/publisher/bb;

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/vungle/publisher/bb;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 78
    sget-object v0, Lcom/vungle/publisher/jl$a;->f:Lcom/vungle/publisher/jl$a;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ys;->a(Lcom/vungle/publisher/jf;)V

    .line 79
    sget-object v0, Lcom/vungle/publisher/ji$a;->b:Lcom/vungle/publisher/ji$a;

    invoke-direct {p0, v0}, Lcom/vungle/publisher/ys;->a(Lcom/vungle/publisher/ji$a;)V

    .line 84
    :goto_10
    return-void

    .line 81
    :cond_11
    sget-object v0, Lcom/vungle/publisher/jl$a;->g:Lcom/vungle/publisher/jl$a;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ys;->a(Lcom/vungle/publisher/jf;)V

    .line 82
    sget-object v0, Lcom/vungle/publisher/ji$a;->l:Lcom/vungle/publisher/ji$a;

    invoke-direct {p0, v0}, Lcom/vungle/publisher/ys;->a(Lcom/vungle/publisher/ji$a;)V

    goto :goto_10
.end method

.method public onEvent(Lcom/vungle/publisher/bc;)V
    .registers 4
    .param p1, "event"    # Lcom/vungle/publisher/bc;

    .prologue
    .line 73
    sget-object v0, Lcom/vungle/publisher/jl$a;->j:Lcom/vungle/publisher/jl$a;

    invoke-virtual {p1}, Lcom/vungle/publisher/bc;->a()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/ys;->a(Lcom/vungle/publisher/jf;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/bd;)V
    .registers 4
    .param p1, "event"    # Lcom/vungle/publisher/bd;

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/vungle/publisher/bd;->a()F

    move-result v0

    .line 61
    invoke-virtual {p1}, Lcom/vungle/publisher/bd;->b()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 62
    sget-object v1, Lcom/vungle/publisher/jl$a;->l:Lcom/vungle/publisher/jl$a;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vungle/publisher/ys;->a(Lcom/vungle/publisher/jf;Ljava/lang/Object;)V

    .line 66
    :goto_13
    return-void

    .line 64
    :cond_14
    sget-object v1, Lcom/vungle/publisher/jl$a;->k:Lcom/vungle/publisher/jl$a;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vungle/publisher/ys;->a(Lcom/vungle/publisher/jf;Ljava/lang/Object;)V

    goto :goto_13
.end method

.method public onEvent(Lcom/vungle/publisher/bt;)V
    .registers 5
    .param p1, "endPlayAdEvent"    # Lcom/vungle/publisher/bt;

    .prologue
    .line 187
    :try_start_0
    const-string v0, "VungleReport"

    const-string v1, "received play ad end"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/ys;->a(Lcom/vungle/publisher/ac;)V

    .line 189
    invoke-interface {p1}, Lcom/vungle/publisher/bt;->e()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/ys;->a(J)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 193
    :goto_11
    return-void

    .line 190
    :catch_12
    move-exception v0

    .line 191
    const-string v1, "VungleReport"

    const-string v2, "error processing ad end"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public onEvent(Lcom/vungle/publisher/y;)V
    .registers 3
    .param p1, "event"    # Lcom/vungle/publisher/y;

    .prologue
    .line 69
    sget-object v0, Lcom/vungle/publisher/jl$a;->a:Lcom/vungle/publisher/jl$a;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ys;->a(Lcom/vungle/publisher/jf;)V

    .line 70
    return-void
.end method

###### Class com.vungle.publisher.ys.AnonymousClass1 (com.vungle.publisher.ys$1)
.class synthetic Lcom/vungle/publisher/ys$1;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 140
    invoke-static {}, Lcom/vungle/publisher/ji$a;->values()[Lcom/vungle/publisher/ji$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vungle/publisher/ys$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/vungle/publisher/ys$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/ji$a;->d:Lcom/vungle/publisher/ji$a;

    invoke-virtual {v1}, Lcom/vungle/publisher/ji$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_49

    :goto_14
    :try_start_14
    sget-object v0, Lcom/vungle/publisher/ys$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/ji$a;->e:Lcom/vungle/publisher/ji$a;

    invoke-virtual {v1}, Lcom/vungle/publisher/ji$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_47

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/vungle/publisher/ys$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/ji$a;->f:Lcom/vungle/publisher/ji$a;

    invoke-virtual {v1}, Lcom/vungle/publisher/ji$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_45

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/vungle/publisher/ys$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/ji$a;->g:Lcom/vungle/publisher/ji$a;

    invoke-virtual {v1}, Lcom/vungle/publisher/ji$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_43

    :goto_35
    :try_start_35
    sget-object v0, Lcom/vungle/publisher/ys$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/ji$a;->h:Lcom/vungle/publisher/ji$a;

    invoke-virtual {v1}, Lcom/vungle/publisher/ji$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_41

    :goto_40
    return-void

    :catch_41
    move-exception v0

    goto :goto_40

    :catch_43
    move-exception v0

    goto :goto_35

    :catch_45
    move-exception v0

    goto :goto_2a

    :catch_47
    move-exception v0

    goto :goto_1f

    :catch_49
    move-exception v0

    goto :goto_14
.end method

###### Class com.vungle.publisher.ys.a (com.vungle.publisher.ys$a)
.class public Lcom/vungle/publisher/ys$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/ys;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/jh;)Lcom/vungle/publisher/ys;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/jh",
            "<***>;)",
            "Lcom/vungle/publisher/ys;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/vungle/publisher/ys$a;->a:Lcom/vungle/publisher/ys;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ys;->a(Lcom/vungle/publisher/cn;)V

    .line 228
    iget-object v0, p0, Lcom/vungle/publisher/ys$a;->a:Lcom/vungle/publisher/ys;

    return-object v0
.end method
