###### Class com.moat.analytics.mobile.cha.b (com.moat.analytics.mobile.cha.b)
.class abstract Lcom/moat/analytics/mobile/cha/b;
.super Lcom/moat/analytics/mobile/cha/d;
.source "SourceFile"


# static fields
.field static final ʻ:[Lcom/moat/analytics/mobile/cha/MoatAdEventType;


# instance fields
.field final ʼ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/moat/analytics/mobile/cha/MoatAdEventType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final ʼॱ:Ljava/lang/String;

.field ˊॱ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private ˋॱ:Z

.field private ˏॱ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ͺ:Ljava/lang/Double;

.field private ॱˊ:Lcom/moat/analytics/mobile/cha/VideoTrackerListener;

.field private final ॱˋ:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/moat/analytics/mobile/cha/MoatAdEventType;",
            ">;"
        }
    .end annotation
.end field

.field private final ॱˎ:Lcom/moat/analytics/mobile/cha/a;

.field final ᐝ:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    const/4 v1, 0x0

    sget-object v2, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_FIRST_QUARTILE:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_MID_POINT:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_THIRD_QUARTILE:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/moat/analytics/mobile/cha/b;->ʻ:[Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1}, Lcom/moat/analytics/mobile/cha/d;-><init>(Landroid/view/View;ZZ)V

    .line 70
    const/4 v0, 0x3

    const-string v1, "BaseVideoTracker"

    const-string v2, "Initializing."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/b;->ʼॱ:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/moat/analytics/mobile/cha/a;

    invoke-static {}, Lcom/moat/analytics/mobile/cha/c;->ˏ()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/moat/analytics/mobile/cha/a$d;->ˋ:I

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/cha/a;-><init>(Landroid/app/Application;I)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˎ:Lcom/moat/analytics/mobile/cha/a;

    .line 75
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˎ:Lcom/moat/analytics/mobile/cha/a;

    iget-object v0, v0, Lcom/moat/analytics/mobile/cha/a;->ˏ:Lcom/moat/analytics/mobile/cha/j;

    .line 1146
    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    .line 77
    :try_start_23
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˎ:Lcom/moat/analytics/mobile/cha/a;

    iget-object v0, v0, Lcom/moat/analytics/mobile/cha/a;->ˋ:Landroid/webkit/WebView;

    invoke-super {p0, v0}, Lcom/moat/analytics/mobile/cha/d;->ॱ(Landroid/webkit/WebView;)V
    :try_end_2a
    .catch Lcom/moat/analytics/mobile/cha/o; {:try_start_23 .. :try_end_2a} :catch_4a

    .line 82
    :goto_2a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ʼ:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˋ:Ljava/util/HashSet;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ᐝ:Landroid/os/Handler;

    .line 85
    iput-boolean v3, p0, Lcom/moat/analytics/mobile/cha/b;->ˋॱ:Z

    .line 86
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ͺ:Ljava/lang/Double;

    .line 87
    return-void

    .line 78
    :catch_4a
    move-exception v0

    .line 79
    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ॱ:Lcom/moat/analytics/mobile/cha/o;

    goto :goto_2a
.end method

.method static synthetic ˊ(Lcom/moat/analytics/mobile/cha/b;)Lcom/moat/analytics/mobile/cha/a;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˎ:Lcom/moat/analytics/mobile/cha/a;

    return-object v0
.end method

.method static ˋ(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 10

    .prologue
    .line 274
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 275
    const-wide v2, 0x4087700000000000L    # 750.0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 276
    int-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_28

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method static synthetic ˏ(Lcom/moat/analytics/mobile/cha/b;)Lcom/moat/analytics/mobile/cha/VideoTrackerListener;
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˊ:Lcom/moat/analytics/mobile/cha/VideoTrackerListener;

    return-object v0
.end method


# virtual methods
.method public changeTargetView(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 141
    const/4 v0, 0x3

    const-string v1, "BaseVideoTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "changing view to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ˊॱ:Ljava/lang/ref/WeakReference;

    .line 144
    :try_start_20
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/cha/d;->changeTargetView(Landroid/view/View;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24

    .line 148
    :goto_23
    return-void

    .line 146
    :catch_24
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto :goto_23
.end method

.method public dispatchEvent(Lcom/moat/analytics/mobile/cha/MoatAdEvent;)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 177
    .line 2217
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/cha/b;->ˎ(Lcom/moat/analytics/mobile/cha/MoatAdEvent;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2218
    const/4 v3, 0x3

    const-string v4, "BaseVideoTracker"

    const-string v5, "Received event: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, p0, v5}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2219
    const-string v3, "[SUCCESS] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/b;->ˋ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Received event: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/b;->ˊ()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 2221
    iget-object v3, p0, Lcom/moat/analytics/mobile/cha/b;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    if-eqz v3, :cond_75

    .line 2222
    iget-object v3, p0, Lcom/moat/analytics/mobile/cha/b;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    iget-object v4, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˎ:Lcom/moat/analytics/mobile/cha/a;

    iget-object v4, v4, Lcom/moat/analytics/mobile/cha/a;->ˊ:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/moat/analytics/mobile/cha/j;->ॱ(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2223
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˋ:Ljava/util/HashSet;

    iget-object v3, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ॱ:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    .line 2224
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˋ:Ljava/util/HashSet;

    iget-object v3, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ॱ:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2225
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˊ:Lcom/moat/analytics/mobile/cha/VideoTrackerListener;

    if-eqz v2, :cond_75

    .line 2226
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˊ:Lcom/moat/analytics/mobile/cha/VideoTrackerListener;

    iget-object v3, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ॱ:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    invoke-interface {v2, v3}, Lcom/moat/analytics/mobile/cha/VideoTrackerListener;->onVideoEventReported(Lcom/moat/analytics/mobile/cha/MoatAdEventType;)V

    .line 2232
    :cond_75
    iget-object v2, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ॱ:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    .line 2262
    sget-object v3, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    if-eq v2, v3, :cond_83

    sget-object v3, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    if-eq v2, v3, :cond_83

    sget-object v3, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_SKIPPED:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    if-ne v2, v3, :cond_84

    :cond_83
    move v0, v1

    .line 2233
    :cond_84
    if-eqz v0, :cond_9c

    .line 2234
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ʼ:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2235
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/cha/j;->ˋ(Lcom/moat/analytics/mobile/cha/d;)V

    .line 2236
    :cond_99
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/b;->ˏॱ()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9c} :catch_9d

    .line 181
    :cond_9c
    :goto_9c
    return-void

    .line 179
    :catch_9d
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto :goto_9c
.end method

.method public removeVideoListener()V
    .registers 2

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˊ:Lcom/moat/analytics/mobile/cha/VideoTrackerListener;

    .line 96
    return-void
.end method

.method public setPlayerVolume(Ljava/lang/Double;)V
    .registers 9

    .prologue
    .line 130
    .line 1191
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ͺ:Ljava/lang/Double;

    .line 1187
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {}, Lcom/moat/analytics/mobile/cha/r;->ॱ()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/b;->ͺ:Ljava/lang/Double;

    invoke-virtual {p1, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 132
    const/4 v1, 0x3

    const-string v2, "BaseVideoTracker"

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "player volume changed to %f "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, p0, v3}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/b;->ͺ:Ljava/lang/Double;

    .line 2191
    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/b;->ͺ:Ljava/lang/Double;

    .line 2187
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {}, Lcom/moat/analytics/mobile/cha/r;->ॱ()D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 135
    new-instance v0, Lcom/moat/analytics/mobile/cha/MoatAdEvent;

    sget-object v1, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_VOLUME_CHANGE:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    sget-object v2, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˋ:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/moat/analytics/mobile/cha/b;->ͺ:Ljava/lang/Double;

    invoke-direct {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/cha/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/cha/MoatAdEventType;Ljava/lang/Integer;Ljava/lang/Double;)V

    invoke-virtual {p0, v0}, Lcom/moat/analytics/mobile/cha/b;->dispatchEvent(Lcom/moat/analytics/mobile/cha/MoatAdEvent;)V

    .line 138
    :cond_50
    return-void
.end method

.method public setVideoListener(Lcom/moat/analytics/mobile/cha/VideoTrackerListener;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˊ:Lcom/moat/analytics/mobile/cha/VideoTrackerListener;

    .line 92
    return-void
.end method

.method public stopTracking()V
    .registers 2

    .prologue
    .line 165
    :try_start_0
    invoke-super {p0}, Lcom/moat/analytics/mobile/cha/d;->stopTracking()V

    .line 166
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/b;->ˏॱ()V

    .line 167
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˊ:Lcom/moat/analytics/mobile/cha/VideoTrackerListener;

    if-eqz v0, :cond_d

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˊ:Lcom/moat/analytics/mobile/cha/VideoTrackerListener;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 173
    :cond_d
    :goto_d
    return-void

    .line 171
    :catch_e
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto :goto_d
.end method

.method final ˊॱ()Ljava/lang/Double;
    .registers 5

    .prologue
    .line 187
    .line 3191
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ͺ:Ljava/lang/Double;

    .line 187
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {}, Lcom/moat/analytics/mobile/cha/r;->ॱ()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method ˋ(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ˏॱ:Ljava/util/Map;

    if-nez v0, :cond_9

    .line 153
    const-string v0, "Null adIds object"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 156
    const-string v0, " and "

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v1, Lcom/moat/analytics/mobile/cha/o;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_1b
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/cha/d;->ˋ(Ljava/util/List;)V

    .line 160
    return-void
.end method

.method final ˋॱ()Z
    .registers 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ʼ:Ljava/util/HashMap;

    sget-object v1, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ʼ:Ljava/util/HashMap;

    sget-object v1, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    .line 269
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ʼ:Ljava/util/HashMap;

    sget-object v1, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_SKIPPED:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    .line 270
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method ˎ(Lcom/moat/analytics/mobile/cha/MoatAdEvent;)Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 210
    iget-object v0, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˊ:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 211
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ͺ:Ljava/lang/Double;

    iput-object v0, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˊ:Ljava/lang/Double;

    .line 213
    :cond_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˏ()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method final ˏ()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 196
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ˊॱ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-super {p0, v0}, Lcom/moat/analytics/mobile/cha/d;->changeTargetView(Landroid/view/View;)V

    .line 197
    invoke-super {p0}, Lcom/moat/analytics/mobile/cha/d;->ˏ()V

    .line 199
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/b;->ᐝ()Ljava/util/HashMap;

    move-result-object v0

    .line 200
    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 201
    const-string v1, "height"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 202
    const-string v1, "duration"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 204
    const-string v0, "BaseVideoTracker"

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "Player metadata: height = %d, width = %d, duration = %d"

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v7, 0x2

    aput-object v5, v6, v7

    invoke-static {v1, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˎ:Lcom/moat/analytics/mobile/cha/a;

    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/b;->ʼॱ:Ljava/lang/String;

    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/b;->ˏॱ:Ljava/util/Map;

    invoke-virtual/range {v0 .. v5}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 207
    return-void
.end method

.method final ˏॱ()V
    .registers 5

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/b;->ˋॱ:Z

    if-nez v0, :cond_13

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/b;->ˋॱ:Z

    .line 243
    new-instance v0, Lcom/moat/analytics/mobile/cha/b$5;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/cha/b$5;-><init>(Lcom/moat/analytics/mobile/cha/b;)V

    .line 257
    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/b;->ᐝ:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    :cond_13
    return-void
.end method

.method public ॱ(Ljava/util/Map;Landroid/view/View;)Z
    .registers 9
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    :try_start_2
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/b;->ˎ()V

    .line 102
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/b;->ॱ()V

    .line 103
    if-nez p2, :cond_12

    .line 106
    const/4 v2, 0x3

    const-string v3, "BaseVideoTracker"

    const-string v4, "trackVideoAd received null video view instance"

    invoke-static {v2, v3, p0, v4}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    :cond_12
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/b;->ˏॱ:Ljava/util/Map;

    .line 110
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/moat/analytics/mobile/cha/b;->ˊॱ:Ljava/lang/ref/WeakReference;

    .line 112
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/b;->ˏ()V

    .line 114
    const-string v2, "trackVideoAd tracking ids: %s | view: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 115
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 116
    invoke-static {p2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 114
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 117
    const/4 v3, 0x3

    const-string v4, "BaseVideoTracker"

    invoke-static {v3, v4, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    const-string v3, "[SUCCESS] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/b;->ˋ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/b;->ˊ:Lcom/moat/analytics/mobile/cha/TrackerListener;

    if-eqz v2, :cond_6d

    .line 120
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/b;->ˊ:Lcom/moat/analytics/mobile/cha/TrackerListener;

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/b;->ʻ()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/moat/analytics/mobile/cha/TrackerListener;->onTrackingStarted(Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6d} :catch_6e

    .line 126
    :cond_6d
    :goto_6d
    return v0

    .line 123
    :catch_6e
    move-exception v0

    .line 124
    const-string v2, "trackVideoAd"

    invoke-virtual {p0, v2, v0}, Lcom/moat/analytics/mobile/cha/b;->ॱ(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    .line 126
    goto :goto_6d
.end method

.method final ॱˊ()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ͺ:Ljava/lang/Double;

    return-object v0
.end method

.method abstract ᐝ()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation
.end method

###### Class com.moat.analytics.mobile.cha.b.AnonymousClass5 (com.moat.analytics.mobile.cha.b$5)
.class final Lcom/moat/analytics/mobile/cha/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/cha/b;->ˏॱ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ˊ:Lcom/moat/analytics/mobile/cha/b;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/cha/b;)V
    .registers 2

    .prologue
    .line 243
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/b$5;->ˊ:Lcom/moat/analytics/mobile/cha/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 247
    const/4 v0, 0x3

    :try_start_1
    const-string v1, "BaseVideoTracker"

    const-string v2, "Shutting down."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b$5;->ˊ:Lcom/moat/analytics/mobile/cha/b;

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/b;->ˊ(Lcom/moat/analytics/mobile/cha/b;)Lcom/moat/analytics/mobile/cha/a;

    move-result-object v0

    .line 1189
    const/4 v1, 0x3

    const-string v2, "GlobalWebView"

    const-string v3, "Cleaning up"

    invoke-static {v1, v2, v0, v3}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1190
    iget-object v1, v0, Lcom/moat/analytics/mobile/cha/a;->ˏ:Lcom/moat/analytics/mobile/cha/j;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/cha/j;->ˊ()V

    .line 1191
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/moat/analytics/mobile/cha/a;->ˏ:Lcom/moat/analytics/mobile/cha/j;

    .line 1192
    iget-object v1, v0, Lcom/moat/analytics/mobile/cha/a;->ˋ:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 1193
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/moat/analytics/mobile/cha/a;->ˋ:Landroid/webkit/WebView;

    .line 249
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b$5;->ˊ:Lcom/moat/analytics/mobile/cha/b;

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/b;->ˏ(Lcom/moat/analytics/mobile/cha/b;)Lcom/moat/analytics/mobile/cha/VideoTrackerListener;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2c

    .line 253
    :goto_2b
    return-void

    .line 251
    :catch_2c
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto :goto_2b
.end method
