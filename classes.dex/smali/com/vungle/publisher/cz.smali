###### Class com.vungle.publisher.cz (com.vungle.publisher.cz)
.class public abstract Lcom/vungle/publisher/cz;
.super Lcom/vungle/publisher/dp;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/cz$a;,
        Lcom/vungle/publisher/cz$b;,
        Lcom/vungle/publisher/cz$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vungle/publisher/cz",
        "<TT;TP;TE;TA;>;P:",
        "Lcom/vungle/publisher/cy",
        "<TT;TP;TE;>;E:",
        "Lcom/vungle/publisher/da",
        "<TP;>;A:",
        "Lcom/vungle/publisher/cn;",
        ">",
        "Lcom/vungle/publisher/dp",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/vungle/publisher/cn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/Long;

.field protected e:Z

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Lcom/vungle/publisher/cz$c;

.field protected i:Ljava/lang/Long;

.field protected j:Ljava/lang/Integer;

.field protected k:Ljava/lang/Long;

.field protected l:Ljava/lang/Long;

.field protected m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TP;>;"
        }
    .end annotation
.end field

.field protected n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/co;",
            ">;"
        }
    .end annotation
.end field

.field o:Ljava/lang/Long;

.field protected p:Ljava/lang/String;

.field protected q:I

.field r:Lcom/vungle/publisher/zl;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/vungle/publisher/dp;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Z)Landroid/content/ContentValues;
    .registers 7

    .prologue
    .line 221
    iget-object v0, p0, Lcom/vungle/publisher/cz;->r:Lcom/vungle/publisher/zl;

    invoke-virtual {v0}, Lcom/vungle/publisher/zl;->a()J

    move-result-wide v0

    .line 222
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 223
    if-eqz p1, :cond_21

    .line 224
    const-string v3, "ad_id"

    invoke-virtual {p0}, Lcom/vungle/publisher/cz;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v3, "insert_timestamp_millis"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/vungle/publisher/cz;->d:Ljava/lang/Long;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 227
    :cond_21
    const-string v3, "incentivized_publisher_app_user_id"

    iget-object v4, p0, Lcom/vungle/publisher/cz;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v3, "is_incentivized"

    iget-boolean v4, p0, Lcom/vungle/publisher/cz;->e:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 229
    const-string v3, "placement_reference_id"

    iget-object v4, p0, Lcom/vungle/publisher/cz;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v3, "ad_token"

    iget-object v4, p0, Lcom/vungle/publisher/cz;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v3, "status"

    iget-object v4, p0, Lcom/vungle/publisher/cz;->h:Lcom/vungle/publisher/cz$c;

    invoke-static {v4}, Lcom/vungle/publisher/zk;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v3, "update_timestamp_millis"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/cz;->i:Ljava/lang/Long;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 233
    const-string v0, "video_duration_millis"

    iget-object v1, p0, Lcom/vungle/publisher/cz;->j:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v0, "view_end_millis"

    iget-object v1, p0, Lcom/vungle/publisher/cz;->k:Ljava/lang/Long;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 235
    const-string v0, "view_start_millis"

    iget-object v1, p0, Lcom/vungle/publisher/cz;->l:Ljava/lang/Long;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 236
    const-string v0, "app_id"

    iget-object v1, p0, Lcom/vungle/publisher/cz;->p:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "ordinal_view_count"

    iget v1, p0, Lcom/vungle/publisher/cz;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    return-object v2
.end method

.method protected abstract a()Lcom/vungle/publisher/cy$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/cy$a",
            "<TT;TP;TE;>;"
        }
    .end annotation
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 186
    iput p1, p0, Lcom/vungle/publisher/cz;->q:I

    .line 187
    return-void
.end method

.method public a(Lcom/vungle/publisher/cz$c;)V
    .registers 5

    .prologue
    .line 129
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting ad_report status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vungle/publisher/cz;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lcom/vungle/publisher/cz;->h:Lcom/vungle/publisher/cz$c;

    .line 131
    return-void
.end method

.method protected a(Ljava/lang/Integer;)V
    .registers 5

    .prologue
    .line 139
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting video duration millis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vungle/publisher/cz;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iput-object p1, p0, Lcom/vungle/publisher/cz;->j:Ljava/lang/Integer;

    .line 141
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .registers 5

    .prologue
    .line 163
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting ad end millis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vungle/publisher/cz;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iput-object p1, p0, Lcom/vungle/publisher/cz;->k:Ljava/lang/Long;

    .line 165
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/vungle/publisher/cz;->b:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .registers 2

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Integer;)V

    .line 145
    invoke-virtual {p0}, Lcom/vungle/publisher/cz;->f_()I

    .line 146
    return-void
.end method

.method public b(Ljava/lang/Long;)V
    .registers 2

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Long;)V

    .line 169
    invoke-virtual {p0}, Lcom/vungle/publisher/cz;->f_()I

    .line 170
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/vungle/publisher/cz;->c:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/vungle/publisher/cz;->e:Z

    .line 102
    return-void
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    const-string v0, "ad_report"

    return-object v0
.end method

.method public c(Ljava/lang/Long;)V
    .registers 5

    .prologue
    .line 177
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting ad start millis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vungle/publisher/cz;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iput-object p1, p0, Lcom/vungle/publisher/cz;->l:Ljava/lang/Long;

    .line 179
    return-void
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/co;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vungle/publisher/cz;->n:Ljava/util/List;

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vungle/publisher/cz;->a:Lcom/vungle/publisher/cn;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/vungle/publisher/cz;->b:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/vungle/publisher/cz;->a:Lcom/vungle/publisher/cn;

    invoke-virtual {v0}, Lcom/vungle/publisher/cn;->c_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_6
.end method

.method public i()Lcom/vungle/publisher/cn;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vungle/publisher/cz;->a:Lcom/vungle/publisher/cn;

    return-object v0
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/vungle/publisher/cz;->e:Z

    return v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vungle/publisher/cz;->c:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/StringBuilder;
    .registers 4

    .prologue
    .line 244
    invoke-super {p0}, Lcom/vungle/publisher/dp;->p()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    const-string v0, "ad_id"

    invoke-virtual {p0}, Lcom/vungle/publisher/cz;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    const-string v0, "insert_timestamp_millis"

    iget-object v2, p0, Lcom/vungle/publisher/cz;->d:Ljava/lang/Long;

    invoke-static {v1, v0, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    const-string v0, "incentivized_publisher_app_user_id"

    iget-object v2, p0, Lcom/vungle/publisher/cz;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    const-string v0, "is_incentivized"

    iget-boolean v2, p0, Lcom/vungle/publisher/cz;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    const-string v0, "placement_reference_id"

    iget-object v2, p0, Lcom/vungle/publisher/cz;->f:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    const-string v0, "ad_token"

    iget-object v2, p0, Lcom/vungle/publisher/cz;->g:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    const-string v0, "status"

    iget-object v2, p0, Lcom/vungle/publisher/cz;->h:Lcom/vungle/publisher/cz$c;

    invoke-static {v1, v0, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    const-string v0, "update_timestamp_millis"

    iget-object v2, p0, Lcom/vungle/publisher/cz;->i:Ljava/lang/Long;

    invoke-static {v1, v0, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    const-string v0, "video_duration_millis"

    iget-object v2, p0, Lcom/vungle/publisher/cz;->j:Ljava/lang/Integer;

    invoke-static {v1, v0, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    const-string v0, "view_end_millis"

    iget-object v2, p0, Lcom/vungle/publisher/cz;->k:Ljava/lang/Long;

    invoke-static {v1, v0, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    const-string v0, "view_start_millis"

    iget-object v2, p0, Lcom/vungle/publisher/cz;->l:Ljava/lang/Long;

    invoke-static {v1, v0, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    const-string v2, "plays"

    iget-object v0, p0, Lcom/vungle/publisher/cz;->m:Ljava/util/List;

    if-nez v0, :cond_6e

    const-string v0, "not fetched"

    :goto_5f
    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/cz;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    const-string v0, "ordinal_view_count"

    iget v2, p0, Lcom/vungle/publisher/cz;->q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    return-object v1

    .line 256
    :cond_6e
    iget-object v0, p0, Lcom/vungle/publisher/cz;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5f
.end method

.method public r()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vungle/publisher/cz;->f:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vungle/publisher/cz;->j:Ljava/lang/Integer;

    return-object v0
.end method

.method public t()I
    .registers 5

    .prologue
    .line 149
    const/4 v0, -0x1

    .line 150
    iget-object v1, p0, Lcom/vungle/publisher/cz;->l:Ljava/lang/Long;

    if-nez v1, :cond_d

    .line 151
    const-string v1, "VungleDatabase"

    const-string v2, "unable to calculate ad duration because view start millis was null"

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_c
    return v0

    .line 153
    :cond_d
    iget-object v1, p0, Lcom/vungle/publisher/cz;->k:Ljava/lang/Long;

    if-nez v1, :cond_19

    .line 154
    const-string v1, "VungleDatabase"

    const-string v2, "unable to calculate ad duration because view end millis was null"

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 157
    :cond_19
    iget-object v0, p0, Lcom/vungle/publisher/cz;->k:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/vungle/publisher/cz;->l:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_c
.end method

.method public u()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/vungle/publisher/cz;->l:Ljava/lang/Long;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vungle/publisher/cz;->p:Ljava/lang/String;

    return-object v0
.end method

.method public w()I
    .registers 2

    .prologue
    .line 190
    iget v0, p0, Lcom/vungle/publisher/cz;->q:I

    return v0
.end method

.method public x()Lcom/vungle/publisher/cy;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/vungle/publisher/cz;->z()Ljava/util/List;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Lcom/vungle/publisher/cz;->a()Lcom/vungle/publisher/cy$a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vungle/publisher/cy$a;->a(Lcom/vungle/publisher/cz;)Lcom/vungle/publisher/cy;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Lcom/vungle/publisher/cy;->d_()Ljava/lang/Object;

    .line 199
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    return-object v1
.end method

.method public y()[Lcom/vungle/publisher/cy;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TP;"
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/vungle/publisher/cz;->z()Ljava/util/List;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Lcom/vungle/publisher/cz;->a()Lcom/vungle/publisher/cy$a;

    move-result-object v1

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/cy$a;->d(I)[Lcom/vungle/publisher/dp;

    move-result-object v1

    .line 205
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/cy;

    return-object v0
.end method

.method protected z()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TP;>;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/vungle/publisher/cz;->m:Ljava/util/List;

    .line 213
    if-nez v0, :cond_f

    .line 214
    invoke-virtual {p0}, Lcom/vungle/publisher/cz;->a()Lcom/vungle/publisher/cy$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/vungle/publisher/cy$a;->a(Lcom/vungle/publisher/cz;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/cz;->m:Ljava/util/List;

    .line 216
    :cond_f
    return-object v0
.end method

###### Class com.vungle.publisher.cz.a (com.vungle.publisher.cz$a)
.class public abstract Lcom/vungle/publisher/cz$a;
.super Lcom/vungle/publisher/dp$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vungle/publisher/cz",
        "<TT;TP;TE;TA;>;P:",
        "Lcom/vungle/publisher/cy",
        "<TT;TP;TE;>;E:",
        "Lcom/vungle/publisher/da",
        "<TP;>;A:",
        "Lcom/vungle/publisher/cn;",
        "R:",
        "Lcom/vungle/publisher/wc;",
        ">",
        "Lcom/vungle/publisher/dp$a",
        "<TT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/co$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/ct$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/vungle/publisher/dp$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/List;)I
    .registers 3

    .prologue
    .line 400
    invoke-super {p0, p1}, Lcom/vungle/publisher/dp$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method protected abstract a()Lcom/vungle/publisher/cn$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/cn$a",
            "<TA;TR;>;"
        }
    .end annotation
.end method

.method public a(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/cz;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TT;"
        }
    .end annotation

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/vungle/publisher/cz$a;->g_()Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cz;

    .line 416
    iput-object p1, v0, Lcom/vungle/publisher/cz;->a:Lcom/vungle/publisher/cn;

    .line 417
    sget-object v1, Lcom/vungle/publisher/cz$c;->a:Lcom/vungle/publisher/cz$c;

    iput-object v1, v0, Lcom/vungle/publisher/cz;->h:Lcom/vungle/publisher/cz$c;

    .line 418
    if-eqz p1, :cond_12

    .line 419
    iget-object v1, p1, Lcom/vungle/publisher/cn;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/cz;->p:Ljava/lang/String;

    .line 421
    :cond_12
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/vungle/publisher/cz$a;->a(Lcom/vungle/publisher/cz;Lcom/vungle/publisher/cn;Z)Lcom/vungle/publisher/cz;

    .line 422
    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "creating new "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vungle/publisher/cz;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/cn;Ljava/lang/String;[Ljava/lang/String;Z)Lcom/vungle/publisher/cz;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 441
    if-nez p1, :cond_b

    .line 442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null ad"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_b
    invoke-virtual {p1}, Lcom/vungle/publisher/cn;->c_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 445
    if-nez v0, :cond_1b

    .line 446
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null ad_id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_1b
    array-length v2, p3

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 449
    aput-object v0, v2, v1

    move v0, v1

    .line 450
    :goto_23
    array-length v3, p3

    if-ge v0, v3, :cond_2f

    .line 451
    add-int/lit8 v3, v0, 0x1

    aget-object v4, p3, v0

    aput-object v4, v2, v3

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 453
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ad_id = ? AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "insert_timestamp_millis DESC"

    invoke-virtual {p0, v0, v2, v3}, Lcom/vungle/publisher/cz$a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 454
    const/4 v0, 0x0

    .line 455
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ad_id = ? AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", with params: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/vungle/publisher/zk;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 457
    packed-switch v4, :pswitch_data_c2

    .line 465
    const-string v1, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ad_report"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " records for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :goto_99
    :pswitch_99
    return-object v0

    .line 461
    :pswitch_9a
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cz;

    invoke-virtual {p0, v0, p1, p4}, Lcom/vungle/publisher/cz$a;->a(Lcom/vungle/publisher/cz;Lcom/vungle/publisher/cn;Z)Lcom/vungle/publisher/cz;

    move-result-object v0

    .line 462
    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetched "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vungle/publisher/cz;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_99

    .line 457
    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_99
        :pswitch_9a
    .end packed-switch
.end method

.method public a(Lcom/vungle/publisher/cn;Z)Lcom/vungle/publisher/cz;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;Z)TT;"
        }
    .end annotation

    .prologue
    .line 475
    const-string v0, "status = ?"

    .line 476
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/vungle/publisher/cz$c;->a:Lcom/vungle/publisher/cz$c;

    invoke-virtual {v2}, Lcom/vungle/publisher/cz$c;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 477
    const-string v1, "status = ?"

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/vungle/publisher/cz$a;->a(Lcom/vungle/publisher/cn;Ljava/lang/String;[Ljava/lang/String;Z)Lcom/vungle/publisher/cz;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/cz;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cz;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/Cursor;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 482
    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->c(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cz;->u:Ljava/lang/Object;

    .line 483
    const-string v0, "ad_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/cz;->a(Ljava/lang/String;)V

    .line 484
    const-string v0, "incentivized_publisher_app_user_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cz;->c:Ljava/lang/String;

    .line 485
    const-string v0, "is_incentivized"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/vungle/publisher/cz;->e:Z

    .line 486
    const-string v0, "insert_timestamp_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cz;->d:Ljava/lang/Long;

    .line 487
    const-string v0, "placement_reference_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cz;->f:Ljava/lang/String;

    .line 488
    const-string v0, "ad_token"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cz;->g:Ljava/lang/String;

    .line 489
    const-string v0, "status"

    const-class v1, Lcom/vungle/publisher/cz$c;

    invoke-static {p2, v0, v1}, Lcom/vungle/publisher/ce;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cz$c;

    iput-object v0, p1, Lcom/vungle/publisher/cz;->h:Lcom/vungle/publisher/cz$c;

    .line 490
    const-string v0, "update_timestamp_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cz;->i:Ljava/lang/Long;

    .line 491
    const-string v0, "video_duration_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->c(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cz;->j:Ljava/lang/Integer;

    .line 492
    const-string v0, "view_end_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cz;->k:Ljava/lang/Long;

    .line 493
    const-string v0, "view_start_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cz;->l:Ljava/lang/Long;

    .line 494
    const-string v0, "app_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cz;->p:Ljava/lang/String;

    .line 495
    const-string v0, "ordinal_view_count"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->c(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/vungle/publisher/cz;->q:I

    .line 496
    return-object p1
.end method

.method protected a(Lcom/vungle/publisher/cz;Lcom/vungle/publisher/cn;Z)Lcom/vungle/publisher/cz;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TA;Z)TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 507
    if-nez p2, :cond_2c

    .line 509
    invoke-virtual {p0}, Lcom/vungle/publisher/cz$a;->a()Lcom/vungle/publisher/cn$a;

    move-result-object v0

    .line 510
    invoke-virtual {p1}, Lcom/vungle/publisher/cz;->h()Ljava/lang/String;

    move-result-object v1

    .line 509
    invoke-virtual {v0, v1, v3}, Lcom/vungle/publisher/cn$a;->a(Ljava/lang/Object;Z)Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cn;

    iput-object v0, p1, Lcom/vungle/publisher/cz;->a:Lcom/vungle/publisher/cn;

    .line 520
    :cond_13
    :goto_13
    if-eqz p3, :cond_2b

    .line 521
    invoke-virtual {p0}, Lcom/vungle/publisher/cz$a;->d()Lcom/vungle/publisher/cy$a;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/vungle/publisher/cy$a;->a(Lcom/vungle/publisher/cz;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cz;->m:Ljava/util/List;

    .line 522
    iget-object v1, p0, Lcom/vungle/publisher/cz$a;->a:Lcom/vungle/publisher/co$a;

    iget-object v0, p1, Lcom/vungle/publisher/cz;->u:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/co$a;->a(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cz;->n:Ljava/util/List;

    .line 524
    :cond_2b
    return-object p1

    .line 514
    :cond_2c
    iput-object p2, p1, Lcom/vungle/publisher/cz;->a:Lcom/vungle/publisher/cn;

    .line 515
    iget-object v1, p0, Lcom/vungle/publisher/cz$a;->b:Lcom/vungle/publisher/ct$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/cn;->c_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ct$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 516
    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 517
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ct;

    iget-object v0, v0, Lcom/vungle/publisher/ct;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/vungle/publisher/cz;->f:Ljava/lang/String;

    goto :goto_13
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .registers 5

    .prologue
    .line 400
    check-cast p1, Lcom/vungle/publisher/cz;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/cz$a;->a(Lcom/vungle/publisher/cz;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cz;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 4

    .prologue
    .line 400
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/dp$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/List;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 500
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cz;

    .line 501
    const/4 v1, 0x0

    check-cast v1, Lcom/vungle/publisher/cn;

    invoke-virtual {p0, v0, v1, p2}, Lcom/vungle/publisher/cz$a;->a(Lcom/vungle/publisher/cz;Lcom/vungle/publisher/cn;Z)Lcom/vungle/publisher/cz;

    goto :goto_4

    .line 503
    :cond_17
    return-object p1
.end method

.method protected a(I)[Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 529
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method public b(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/cz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TT;"
        }
    .end annotation

    .prologue
    .line 432
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vungle/publisher/cz$a;->a(Lcom/vungle/publisher/cn;Z)Lcom/vungle/publisher/cz;

    move-result-object v0

    .line 433
    if-nez v0, :cond_e

    .line 434
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/cz$a;->a(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/cz;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lcom/vungle/publisher/cz;->d_()Ljava/lang/Object;

    .line 437
    :cond_e
    return-object v0
.end method

.method protected synthetic b(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/cz$a;->a(I)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/cz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TT;"
        }
    .end annotation

    .prologue
    .line 471
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vungle/publisher/cz$a;->a(Lcom/vungle/publisher/cn;Z)Lcom/vungle/publisher/cz;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 534
    const-string v0, "ad_report"

    return-object v0
.end method

.method protected abstract d()Lcom/vungle/publisher/cy$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/cy$a",
            "<TT;TP;TE;>;"
        }
    .end annotation
.end method

.method public abstract e()Lcom/vungle/publisher/m;
.end method

.method protected f()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 427
    const-string v0, "status = ? AND ad_id IN (SELECT id FROM ad WHERE type = ?)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/vungle/publisher/cz$c;->d:Lcom/vungle/publisher/cz$c;

    invoke-virtual {v3}, Lcom/vungle/publisher/cz$c;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0}, Lcom/vungle/publisher/cz$a;->e()Lcom/vungle/publisher/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/publisher/m;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "insert_timestamp_millis ASC"

    invoke-virtual {p0, v0, v1, v2}, Lcom/vungle/publisher/cz$a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 428
    invoke-virtual {p0, v0, v4}, Lcom/vungle/publisher/cz$a;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.cz.b (com.vungle.publisher.cz$b)
.class public Lcom/vungle/publisher/cz$b;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/ci;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/fg$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/ic$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/ki$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/gv$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/m;",
            "Lcom/vungle/publisher/cz$a",
            "<*****>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/cz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/vungle/publisher/cn;",
            ">(TA;)",
            "Lcom/vungle/publisher/cz",
            "<***TA;>;"
        }
    .end annotation

    .prologue
    .line 351
    new-instance v0, Lcom/vungle/publisher/cz$b$1;

    invoke-direct {v0, p0, p1}, Lcom/vungle/publisher/cz$b$1;-><init>(Lcom/vungle/publisher/cz$b;Lcom/vungle/publisher/cn;)V

    .line 371
    invoke-virtual {v0, p1}, Lcom/vungle/publisher/cz$b$1;->a(Lcom/vungle/publisher/cn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cz;

    .line 351
    return-object v0
.end method

.method public a(Lcom/vungle/publisher/dr;)Lcom/vungle/publisher/eg;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/vungle/publisher/cn;",
            ">(",
            "Lcom/vungle/publisher/dr",
            "<TA;>;)",
            "Lcom/vungle/publisher/eg;"
        }
    .end annotation

    .prologue
    .line 299
    invoke-interface {p1}, Lcom/vungle/publisher/dr;->m_()Lcom/vungle/publisher/cn;

    move-result-object v0

    .line 300
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/cz$b;->b(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/cz;

    move-result-object v0

    .line 303
    :try_start_8
    check-cast v0, Lcom/vungle/publisher/eg;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_a} :catch_b

    .line 307
    return-object v0

    .line 304
    :catch_b
    move-exception v1

    .line 305
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ad report type is not cacheable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/m;",
            "Lcom/vungle/publisher/cz$a",
            "<*****>;>;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vungle/publisher/cz$b;->f:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 284
    iget-object v0, p0, Lcom/vungle/publisher/cz$b;->f:Ljava/util/Map;

    .line 291
    :goto_6
    return-object v0

    .line 286
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/cz$b;->f:Ljava/util/Map;

    .line 287
    iget-object v0, p0, Lcom/vungle/publisher/cz$b;->f:Ljava/util/Map;

    sget-object v1, Lcom/vungle/publisher/m;->a:Lcom/vungle/publisher/m;

    iget-object v2, p0, Lcom/vungle/publisher/cz$b;->b:Lcom/vungle/publisher/fg$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lcom/vungle/publisher/cz$b;->f:Ljava/util/Map;

    sget-object v1, Lcom/vungle/publisher/m;->b:Lcom/vungle/publisher/m;

    iget-object v2, p0, Lcom/vungle/publisher/cz$b;->c:Lcom/vungle/publisher/ic$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lcom/vungle/publisher/cz$b;->f:Ljava/util/Map;

    sget-object v1, Lcom/vungle/publisher/m;->c:Lcom/vungle/publisher/m;

    iget-object v2, p0, Lcom/vungle/publisher/cz$b;->d:Lcom/vungle/publisher/ki$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p0, Lcom/vungle/publisher/cz$b;->f:Ljava/util/Map;

    sget-object v1, Lcom/vungle/publisher/m;->d:Lcom/vungle/publisher/m;

    iget-object v2, p0, Lcom/vungle/publisher/cz$b;->e:Lcom/vungle/publisher/gv$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Lcom/vungle/publisher/cz$b;->f:Ljava/util/Map;

    goto :goto_6
.end method

.method public a(Lcom/vungle/publisher/dr;Ljava/lang/Long;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/vungle/publisher/cn;",
            ">(",
            "Lcom/vungle/publisher/dr",
            "<TA;>;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/cz$b;->b(Lcom/vungle/publisher/dr;)Lcom/vungle/publisher/eg;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/vungle/publisher/eg;->a_(Ljava/lang/Long;)V

    .line 324
    return-void
.end method

.method public b(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/cz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/vungle/publisher/cn;",
            ">(TA;)",
            "Lcom/vungle/publisher/cz",
            "<***TA;>;"
        }
    .end annotation

    .prologue
    .line 376
    new-instance v0, Lcom/vungle/publisher/cz$b$2;

    invoke-direct {v0, p0, p1}, Lcom/vungle/publisher/cz$b$2;-><init>(Lcom/vungle/publisher/cz$b;Lcom/vungle/publisher/cn;)V

    .line 396
    invoke-virtual {v0, p1}, Lcom/vungle/publisher/cz$b$2;->a(Lcom/vungle/publisher/cn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cz;

    .line 376
    return-object v0
.end method

.method public b(Lcom/vungle/publisher/dr;)Lcom/vungle/publisher/eg;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/vungle/publisher/cn;",
            ">(",
            "Lcom/vungle/publisher/dr",
            "<TA;>;)",
            "Lcom/vungle/publisher/eg;"
        }
    .end annotation

    .prologue
    .line 311
    invoke-interface {p1}, Lcom/vungle/publisher/dr;->m_()Lcom/vungle/publisher/cn;

    move-result-object v1

    .line 312
    invoke-virtual {p0, v1}, Lcom/vungle/publisher/cz$b;->a(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/cz;

    move-result-object v0

    .line 315
    :try_start_8
    check-cast v0, Lcom/vungle/publisher/eg;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_a} :catch_b

    .line 319
    return-object v0

    .line 316
    :catch_b
    move-exception v0

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ad type is not cacheable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/vungle/publisher/cz$a",
            "<*****>;>;"
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/vungle/publisher/cz$b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/cz",
            "<****>;>;"
        }
    .end annotation

    .prologue
    .line 327
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 328
    invoke-virtual {p0}, Lcom/vungle/publisher/cz$b;->b()Ljava/util/Collection;

    move-result-object v0

    .line 329
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cz$a;

    .line 330
    invoke-virtual {v0}, Lcom/vungle/publisher/cz$a;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cz;

    .line 331
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 334
    :cond_31
    return-object v1
.end method

.method public d()I
    .registers 8

    .prologue
    .line 343
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 344
    const-string v1, "status"

    sget-object v2, Lcom/vungle/publisher/cz$c;->d:Lcom/vungle/publisher/cz$c;

    invoke-virtual {v2}, Lcom/vungle/publisher/cz$c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/vungle/publisher/cz$b;->a:Lcom/vungle/publisher/ci;

    invoke-virtual {v1}, Lcom/vungle/publisher/ci;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "ad_report"

    const-string v3, "status = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lcom/vungle/publisher/cz$c;->c:Lcom/vungle/publisher/cz$c;

    .line 346
    invoke-virtual {v6}, Lcom/vungle/publisher/cz$c;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 345
    return v0
.end method

###### Class com.vungle.publisher.cz.b.AnonymousClass1 (com.vungle.publisher.cz$b$1)
.class Lcom/vungle/publisher/cz$b$1;
.super Lcom/vungle/publisher/q;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/cz$b;->a(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/q",
        "<",
        "Lcom/vungle/publisher/cz",
        "<***TA;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/cn;

.field final synthetic b:Lcom/vungle/publisher/cz$b;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/cz$b;Lcom/vungle/publisher/cn;)V
    .registers 3

    .prologue
    .line 351
    iput-object p1, p0, Lcom/vungle/publisher/cz$b$1;->b:Lcom/vungle/publisher/cz$b;

    iput-object p2, p0, Lcom/vungle/publisher/cz$b$1;->a:Lcom/vungle/publisher/cn;

    invoke-direct {p0}, Lcom/vungle/publisher/q;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/vungle/publisher/cz$b$1;->e()Lcom/vungle/publisher/cz;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/vungle/publisher/cz$b$1;->h()Lcom/vungle/publisher/cz;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/vungle/publisher/cz$b$1;->f()Lcom/vungle/publisher/cz;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/vungle/publisher/cz$b$1;->g()Lcom/vungle/publisher/cz;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/vungle/publisher/cz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/cz",
            "<***TA;>;"
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lcom/vungle/publisher/cz$b$1;->b:Lcom/vungle/publisher/cz$b;

    iget-object v0, v0, Lcom/vungle/publisher/cz$b;->b:Lcom/vungle/publisher/fg$a;

    iget-object v1, p0, Lcom/vungle/publisher/cz$b$1;->a:Lcom/vungle/publisher/cn;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cz$a;->c(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/cz;

    move-result-object v0

    return-object v0
.end method

.method protected f()Lcom/vungle/publisher/cz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/cz",
            "<***TA;>;"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/vungle/publisher/cz$b$1;->b:Lcom/vungle/publisher/cz$b;

    iget-object v0, v0, Lcom/vungle/publisher/cz$b;->d:Lcom/vungle/publisher/ki$a;

    iget-object v1, p0, Lcom/vungle/publisher/cz$b$1;->a:Lcom/vungle/publisher/cn;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cz$a;->c(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/cz;

    move-result-object v0

    return-object v0
.end method

.method protected g()Lcom/vungle/publisher/cz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/cz",
            "<***TA;>;"
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/vungle/publisher/cz$b$1;->b:Lcom/vungle/publisher/cz$b;

    iget-object v0, v0, Lcom/vungle/publisher/cz$b;->e:Lcom/vungle/publisher/gv$a;

    iget-object v1, p0, Lcom/vungle/publisher/cz$b$1;->a:Lcom/vungle/publisher/cn;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cz$a;->c(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/cz;

    move-result-object v0

    return-object v0
.end method

.method protected h()Lcom/vungle/publisher/cz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/cz",
            "<***TA;>;"
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/vungle/publisher/cz$b$1;->b:Lcom/vungle/publisher/cz$b;

    iget-object v0, v0, Lcom/vungle/publisher/cz$b;->c:Lcom/vungle/publisher/ic$a;

    iget-object v1, p0, Lcom/vungle/publisher/cz$b$1;->a:Lcom/vungle/publisher/cn;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cz$a;->c(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/cz;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.cz.b.AnonymousClass2 (com.vungle.publisher.cz$b$2)
.class Lcom/vungle/publisher/cz$b$2;
.super Lcom/vungle/publisher/q;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/cz$b;->b(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/q",
        "<",
        "Lcom/vungle/publisher/cz",
        "<***TA;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/cn;

.field final synthetic b:Lcom/vungle/publisher/cz$b;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/cz$b;Lcom/vungle/publisher/cn;)V
    .registers 3

    .prologue
    .line 376
    iput-object p1, p0, Lcom/vungle/publisher/cz$b$2;->b:Lcom/vungle/publisher/cz$b;

    iput-object p2, p0, Lcom/vungle/publisher/cz$b$2;->a:Lcom/vungle/publisher/cn;

    invoke-direct {p0}, Lcom/vungle/publisher/q;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/vungle/publisher/cz$b$2;->e()Lcom/vungle/publisher/cz;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/vungle/publisher/cz$b$2;->h()Lcom/vungle/publisher/cz;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/vungle/publisher/cz$b$2;->f()Lcom/vungle/publisher/cz;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/vungle/publisher/cz$b$2;->g()Lcom/vungle/publisher/cz;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/vungle/publisher/cz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/cz",
            "<***TA;>;"
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/vungle/publisher/cz$b$2;->b:Lcom/vungle/publisher/cz$b;

    iget-object v0, v0, Lcom/vungle/publisher/cz$b;->b:Lcom/vungle/publisher/fg$a;

    iget-object v1, p0, Lcom/vungle/publisher/cz$b$2;->a:Lcom/vungle/publisher/cn;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cz$a;->b(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/cz;

    move-result-object v0

    return-object v0
.end method

.method protected f()Lcom/vungle/publisher/cz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/cz",
            "<***TA;>;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/vungle/publisher/cz$b$2;->b:Lcom/vungle/publisher/cz$b;

    iget-object v0, v0, Lcom/vungle/publisher/cz$b;->d:Lcom/vungle/publisher/ki$a;

    iget-object v1, p0, Lcom/vungle/publisher/cz$b$2;->a:Lcom/vungle/publisher/cn;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cz$a;->b(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/cz;

    move-result-object v0

    return-object v0
.end method

.method protected g()Lcom/vungle/publisher/cz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/cz",
            "<***TA;>;"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/vungle/publisher/cz$b$2;->b:Lcom/vungle/publisher/cz$b;

    iget-object v0, v0, Lcom/vungle/publisher/cz$b;->e:Lcom/vungle/publisher/gv$a;

    iget-object v1, p0, Lcom/vungle/publisher/cz$b$2;->a:Lcom/vungle/publisher/cn;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cz$a;->b(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/cz;

    move-result-object v0

    return-object v0
.end method

.method protected h()Lcom/vungle/publisher/cz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/cz",
            "<***TA;>;"
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/vungle/publisher/cz$b$2;->b:Lcom/vungle/publisher/cz$b;

    iget-object v0, v0, Lcom/vungle/publisher/cz$b;->c:Lcom/vungle/publisher/ic$a;

    iget-object v1, p0, Lcom/vungle/publisher/cz$b$2;->a:Lcom/vungle/publisher/cn;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cz$a;->b(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/cz;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.cz.c (com.vungle.publisher.cz$c)
.class public final enum Lcom/vungle/publisher/cz$c;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/cz$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/cz$c;

.field public static final enum b:Lcom/vungle/publisher/cz$c;

.field public static final enum c:Lcom/vungle/publisher/cz$c;

.field public static final enum d:Lcom/vungle/publisher/cz$c;

.field private static final synthetic e:[Lcom/vungle/publisher/cz$c;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/vungle/publisher/cz$c;

    const-string v1, "open"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/cz$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/cz$c;->a:Lcom/vungle/publisher/cz$c;

    .line 65
    new-instance v0, Lcom/vungle/publisher/cz$c;

    const-string v1, "failed"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/cz$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/cz$c;->b:Lcom/vungle/publisher/cz$c;

    .line 66
    new-instance v0, Lcom/vungle/publisher/cz$c;

    const-string v1, "playing"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/cz$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/cz$c;->c:Lcom/vungle/publisher/cz$c;

    .line 67
    new-instance v0, Lcom/vungle/publisher/cz$c;

    const-string v1, "reportable"

    invoke-direct {v0, v1, v5}, Lcom/vungle/publisher/cz$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/cz$c;->d:Lcom/vungle/publisher/cz$c;

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vungle/publisher/cz$c;

    sget-object v1, Lcom/vungle/publisher/cz$c;->a:Lcom/vungle/publisher/cz$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/publisher/cz$c;->b:Lcom/vungle/publisher/cz$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/cz$c;->c:Lcom/vungle/publisher/cz$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vungle/publisher/cz$c;->d:Lcom/vungle/publisher/cz$c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vungle/publisher/cz$c;->e:[Lcom/vungle/publisher/cz$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/cz$c;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/vungle/publisher/cz$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cz$c;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/cz$c;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/vungle/publisher/cz$c;->e:[Lcom/vungle/publisher/cz$c;

    invoke-virtual {v0}, [Lcom/vungle/publisher/cz$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/cz$c;

    return-object v0
.end method
