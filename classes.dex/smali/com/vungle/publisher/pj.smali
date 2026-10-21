###### Class com.vungle.publisher.pj (com.vungle.publisher.pj)
.class public Lcom/vungle/publisher/pj;
.super Lcom/vungle/publisher/pi;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/pj$a;
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/VungleAdEventListener;

.field b:Lcom/vungle/publisher/bw;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/env/r;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/vungle/publisher/pi;-><init>()V

    .line 45
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/vungle/publisher/pj;->b:Lcom/vungle/publisher/bw;

    sget-object v1, Lcom/vungle/publisher/bw$b;->p:Lcom/vungle/publisher/bw$b;

    invoke-virtual {v0, p1, v1}, Lcom/vungle/publisher/bw;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;)V

    .line 154
    return-void
.end method


# virtual methods
.method synthetic a(Lcom/vungle/publisher/av;)V
    .registers 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vungle/publisher/pj;->a:Lcom/vungle/publisher/VungleAdEventListener;

    invoke-virtual {p1}, Lcom/vungle/publisher/av;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/publisher/VungleAdEventListener;->onAdStart(Ljava/lang/String;)V

    return-void
.end method

.method synthetic a(Lcom/vungle/publisher/bj;)V
    .registers 5

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vungle/publisher/pj;->a:Lcom/vungle/publisher/VungleAdEventListener;

    .line 117
    invoke-virtual {p1}, Lcom/vungle/publisher/bj;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ad already playing"

    .line 116
    invoke-interface {v0, v1, v2}, Lcom/vungle/publisher/VungleAdEventListener;->onUnableToPlayAd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic a(Lcom/vungle/publisher/bm;)V
    .registers 5

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vungle/publisher/pj;->a:Lcom/vungle/publisher/VungleAdEventListener;

    .line 109
    invoke-virtual {p1}, Lcom/vungle/publisher/bm;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error launching ad"

    .line 108
    invoke-interface {v0, v1, v2}, Lcom/vungle/publisher/VungleAdEventListener;->onUnableToPlayAd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic a(Lcom/vungle/publisher/bo;)V
    .registers 5

    .prologue
    .line 123
    iget-object v0, p0, Lcom/vungle/publisher/pj;->a:Lcom/vungle/publisher/VungleAdEventListener;

    .line 124
    invoke-virtual {p1}, Lcom/vungle/publisher/bo;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Vungle Publisher SDK was not successfully initialized - please check the logs"

    .line 123
    invoke-interface {v0, v1, v2}, Lcom/vungle/publisher/VungleAdEventListener;->onUnableToPlayAd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic a(Lcom/vungle/publisher/bp;)V
    .registers 6

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vungle/publisher/pj;->a:Lcom/vungle/publisher/VungleAdEventListener;

    .line 131
    invoke-virtual {p1}, Lcom/vungle/publisher/bp;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 132
    invoke-virtual {p1}, Lcom/vungle/publisher/bp;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of minimum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vungle/publisher/bp;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds elapsed between ads"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-interface {v0, v1, v2}, Lcom/vungle/publisher/VungleAdEventListener;->onUnableToPlayAd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic a(Lcom/vungle/publisher/bq;)V
    .registers 5

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vungle/publisher/pj;->a:Lcom/vungle/publisher/VungleAdEventListener;

    .line 138
    invoke-virtual {p1}, Lcom/vungle/publisher/bq;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No cached or streaming ad available"

    .line 137
    invoke-interface {v0, v1, v2}, Lcom/vungle/publisher/VungleAdEventListener;->onUnableToPlayAd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vungle/publisher/pj;->a:Lcom/vungle/publisher/VungleAdEventListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/vungle/publisher/VungleAdEventListener;->onAdAvailabilityUpdate(Ljava/lang/String;Z)V

    return-void
.end method

.method a(Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 96
    const-string v0, "VungleEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdEnd("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") callback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {p0, p1, p2}, Lcom/vungle/publisher/pp;->a(Lcom/vungle/publisher/pj;Ljava/lang/String;Z)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/pj;->a(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

.method synthetic b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vungle/publisher/pj;->a:Lcom/vungle/publisher/VungleAdEventListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/vungle/publisher/VungleAdEventListener;->onAdAvailabilityUpdate(Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic b(Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vungle/publisher/pj;->a:Lcom/vungle/publisher/VungleAdEventListener;

    iget-boolean v1, p0, Lcom/vungle/publisher/pj;->f:Z

    invoke-interface {v0, p1, v1, p2}, Lcom/vungle/publisher/VungleAdEventListener;->onAdEnd(Ljava/lang/String;ZZ)V

    return-void
.end method

.method synthetic c(Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vungle/publisher/pj;->a:Lcom/vungle/publisher/VungleAdEventListener;

    invoke-interface {v0, p1, p2}, Lcom/vungle/publisher/VungleAdEventListener;->onAdAvailabilityUpdate(Ljava/lang/String;Z)V

    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/ai;)V
    .registers 6
    .param p1, "endPlayVideoEvent"    # Lcom/vungle/publisher/ai;

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/vungle/publisher/ai;->a()I

    move-result v0

    .line 144
    iget v1, p0, Lcom/vungle/publisher/pj;->e:I

    if-le v0, v1, :cond_23

    .line 145
    const-string v1, "VungleEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new watched millis "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iput v0, p0, Lcom/vungle/publisher/pj;->e:I

    .line 150
    :goto_22
    return-void

    .line 148
    :cond_23
    const-string v1, "VungleEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shorter watched millis "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method

.method public onEvent(Lcom/vungle/publisher/av;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/av",
            "<",
            "Lcom/vungle/publisher/cn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "startPlayAdEvent":Lcom/vungle/publisher/av;, "Lcom/vungle/publisher/av<Lcom/vungle/publisher/cn;>;"
    const/4 v2, 0x0

    .line 67
    const-string v0, "VungleEvent"

    const-string v1, "onAdStart() callback"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput v2, p0, Lcom/vungle/publisher/pj;->e:I

    .line 69
    iput-boolean v2, p0, Lcom/vungle/publisher/pj;->f:Z

    .line 70
    invoke-static {p0, p1}, Lcom/vungle/publisher/po;->a(Lcom/vungle/publisher/pj;Lcom/vungle/publisher/av;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/pj;->a(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/ax;)V
    .registers 3
    .param p1, "event"    # Lcom/vungle/publisher/ax;

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/pj;->f:Z

    .line 79
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/bi;)V
    .registers 4
    .param p1, "errorEndPlayEvent"    # Lcom/vungle/publisher/bi;

    .prologue
    .line 87
    instance-of v0, p1, Lcom/vungle/publisher/bs;

    if-eqz v0, :cond_14

    .line 88
    const-string v0, "VungleEvent"

    const-string v1, "onAdEnd() - activity destroyed"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_b
    invoke-interface {p1}, Lcom/vungle/publisher/bi;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/pj;->a(Ljava/lang/String;Z)V

    .line 93
    return-void

    .line 90
    :cond_14
    const-string v0, "VungleEvent"

    const-string v1, "onAdEnd() - error during playback"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public onEvent(Lcom/vungle/publisher/bj;)V
    .registers 4
    .param p1, "alreadyPlayingCancelPlayEvent"    # Lcom/vungle/publisher/bj;

    .prologue
    .line 114
    const-string v0, "VungleEvent"

    const-string v1, "onUnableToPlayAd(already playing) callback"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {p0, p1}, Lcom/vungle/publisher/pr;->a(Lcom/vungle/publisher/pj;Lcom/vungle/publisher/bj;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/pj;->a(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/bl;)V
    .registers 6
    .param p1, "errorCancelLoadAdEvent"    # Lcom/vungle/publisher/bl;

    .prologue
    .line 61
    iget-object v0, p1, Lcom/vungle/publisher/bl;->a:Ljava/lang/String;

    .line 62
    const-string v1, "VungleEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load ad for placement - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {p0, v0}, Lcom/vungle/publisher/pn;->a(Lcom/vungle/publisher/pj;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/pj;->a(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/bm;)V
    .registers 4
    .param p1, "errorCancelPlayEvent"    # Lcom/vungle/publisher/bm;

    .prologue
    .line 106
    const-string v0, "VungleEvent"

    const-string v1, "onUnableToPlayAd(error) callback"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {p0, p1}, Lcom/vungle/publisher/pq;->a(Lcom/vungle/publisher/pj;Lcom/vungle/publisher/bm;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/pj;->a(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/bn;)V
    .registers 6
    .param p1, "notInitializedCancelLoadAdEvent"    # Lcom/vungle/publisher/bn;

    .prologue
    .line 55
    iget-object v0, p1, Lcom/vungle/publisher/bn;->a:Ljava/lang/String;

    .line 56
    const-string v1, "VungleEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not initialized: Unable to load ad for placement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p0, v0}, Lcom/vungle/publisher/pm;->a(Lcom/vungle/publisher/pj;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/pj;->a(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/bo;)V
    .registers 4
    .param p1, "notInitializedCancelPlayEvent"    # Lcom/vungle/publisher/bo;

    .prologue
    .line 122
    const-string v0, "VungleEvent"

    const-string v1, "onUnableToPlayAd(not initialized) callback"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {p0, p1}, Lcom/vungle/publisher/ps;->a(Lcom/vungle/publisher/pj;Lcom/vungle/publisher/bo;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/pj;->a(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/bp;)V
    .registers 4
    .param p1, "throttledCancelPlayEvent"    # Lcom/vungle/publisher/bp;

    .prologue
    .line 129
    const-string v0, "VungleEvent"

    const-string v1, "onUnableToPlayAd(throttled) callback"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {p0, p1}, Lcom/vungle/publisher/pt;->a(Lcom/vungle/publisher/pj;Lcom/vungle/publisher/bp;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/pj;->a(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/bq;)V
    .registers 4
    .param p1, "unavailableCancelPlayEvent"    # Lcom/vungle/publisher/bq;

    .prologue
    .line 136
    const-string v0, "VungleEvent"

    const-string v1, "onUnableToPlayAd(unavailable) callback"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {p0, p1}, Lcom/vungle/publisher/pl;->a(Lcom/vungle/publisher/pj;Lcom/vungle/publisher/bq;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/pj;->a(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/bv;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/bv",
            "<",
            "Lcom/vungle/publisher/cn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "playAdSuccessEvent":Lcom/vungle/publisher/bv;, "Lcom/vungle/publisher/bv<Lcom/vungle/publisher/cn;>;"
    invoke-virtual {p1}, Lcom/vungle/publisher/bv;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vungle/publisher/bv;->a()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/pj;->a(Ljava/lang/String;Z)V

    .line 75
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/z;)V
    .registers 7
    .param p1, "adAvailabilityEvent"    # Lcom/vungle/publisher/z;

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/vungle/publisher/z;->a()Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/vungle/publisher/pj;->c:Lcom/vungle/publisher/c;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/c;->a(Ljava/lang/String;)Z

    move-result v1

    .line 50
    const-string v2, "VungleEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad availability notification for placement "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with isAdAvailable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {p0, v0, v1}, Lcom/vungle/publisher/pk;->a(Lcom/vungle/publisher/pj;Ljava/lang/String;Z)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/pj;->a(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

###### Class com.vungle.publisher.pj.a (com.vungle.publisher.pj$a)
.class public Lcom/vungle/publisher/pj$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/pj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/pj;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/VungleAdEventListener;)Lcom/vungle/publisher/pj;
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/vungle/publisher/pj$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/pj;

    .line 167
    iput-object p1, v0, Lcom/vungle/publisher/pj;->a:Lcom/vungle/publisher/VungleAdEventListener;

    .line 168
    return-object v0
.end method
