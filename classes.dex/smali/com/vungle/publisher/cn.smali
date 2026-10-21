###### Class com.vungle.publisher.cn (com.vungle.publisher.cn)
.class public abstract Lcom/vungle/publisher/cn;
.super Lcom/vungle/publisher/dp;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/cn$a;,
        Lcom/vungle/publisher/cn$b;,
        Lcom/vungle/publisher/cn$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dp",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String;

.field protected static final b:Ljava/lang/String;


# instance fields
.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Lcom/vungle/publisher/m;

.field protected f:Lcom/vungle/publisher/cn$c;

.field protected g:J

.field protected h:J

.field protected i:J

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field l:I

.field m:Ljava/lang/Long;

.field n:Ljava/lang/String;

.field o:I

.field p:J

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field public s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(SELECT DISTINCT ad_id FROM ad_report WHERE status IN (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vungle/publisher/cz$c;->d:Lcom/vungle/publisher/cz$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vungle/publisher/cz$c;->c:Lcom/vungle/publisher/cz$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/publisher/cn;->a:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id NOT IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vungle/publisher/cn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/publisher/cn;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vungle/publisher/dp;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Z)Landroid/content/ContentValues;
    .registers 7

    .prologue
    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vungle/publisher/cn;->h:J

    .line 171
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 172
    if-eqz p1, :cond_30

    .line 173
    invoke-virtual {p0}, Lcom/vungle/publisher/cn;->h_()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vungle/publisher/cn;->c_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "insert_timestamp_millis"

    iput-wide v2, p0, Lcom/vungle/publisher/cn;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 175
    const-string v0, "type"

    iget-object v4, p0, Lcom/vungle/publisher/cn;->e:Lcom/vungle/publisher/m;

    invoke-virtual {v4}, Lcom/vungle/publisher/m;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_30
    const-string v0, "ad_token"

    iget-object v4, p0, Lcom/vungle/publisher/cn;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "ad_token_hash"

    iget-object v4, p0, Lcom/vungle/publisher/cn;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "advertising_app_vungle_id"

    iget-object v4, p0, Lcom/vungle/publisher/cn;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "campaign_id"

    iget-object v4, p0, Lcom/vungle/publisher/cn;->r:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "status"

    iget-object v4, p0, Lcom/vungle/publisher/cn;->f:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v4}, Lcom/vungle/publisher/cn$c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "update_timestamp_millis"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    const-string v0, "failed_timestamp_millis"

    iget-wide v2, p0, Lcom/vungle/publisher/cn;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    const-string v0, "delete_local_content_attempts"

    iget v2, p0, Lcom/vungle/publisher/cn;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    const-string v0, "expiration_timestamp_seconds"

    iget-object v2, p0, Lcom/vungle/publisher/cn;->m:Ljava/lang/Long;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    const-string v0, "parent_path"

    iget-object v2, p0, Lcom/vungle/publisher/cn;->n:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v0, "prepare_retry_count"

    iget v2, p0, Lcom/vungle/publisher/cn;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    const-string v0, "received_timestamp_millis"

    iget-wide v2, p0, Lcom/vungle/publisher/cn;->p:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    return-object v1
.end method

.method protected abstract a()Lcom/vungle/publisher/cn$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/cn$a",
            "<**>;"
        }
    .end annotation
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 130
    iput p1, p0, Lcom/vungle/publisher/cn;->o:I

    .line 131
    return-void
.end method

.method public a(Lcom/vungle/publisher/cn$c;)V
    .registers 6

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vungle/publisher/cn;->f:Lcom/vungle/publisher/cn$c;

    .line 155
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting status from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vungle/publisher/cn;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iput-object p1, p0, Lcom/vungle/publisher/cn;->f:Lcom/vungle/publisher/cn$c;

    .line 157
    sget-object v0, Lcom/vungle/publisher/cn$c;->b:Lcom/vungle/publisher/cn$c;

    if-ne p1, v0, :cond_3e

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/publisher/cn;->i:J

    .line 160
    :cond_3e
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 110
    iput-object p1, p0, Lcom/vungle/publisher/cn;->n:Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/cn;->q:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public a(Lcom/vungle/publisher/cn;)Z
    .registers 4

    .prologue
    .line 242
    if-eqz p1, :cond_14

    iget-object v0, p1, Lcom/vungle/publisher/cn;->u:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/vungle/publisher/cn;->u:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/publisher/cn;->u:Ljava/lang/Object;

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 242
    :goto_13
    return v0

    .line 244
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public a_()Lcom/vungle/publisher/m;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/vungle/publisher/cn;->e:Lcom/vungle/publisher/m;

    return-object v0
.end method

.method public b(Lcom/vungle/publisher/cn$c;)V
    .registers 5

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/vungle/publisher/cn;->a()Lcom/vungle/publisher/cn$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/vungle/publisher/cn;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 164
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 163
    invoke-virtual {v0, v1, p1}, Lcom/vungle/publisher/cn$a;->a(Ljava/util/List;Lcom/vungle/publisher/cn$c;)I

    .line 166
    return-void
.end method

.method protected abstract b()Z
.end method

.method protected final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    const-string v0, "ad"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vungle/publisher/cn;->j:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "ad"    # Ljava/lang/Object;

    .prologue
    .line 238
    instance-of v0, p1, Lcom/vungle/publisher/cn;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/vungle/publisher/cn;

    .end local p1    # "ad":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/cn;->a(Lcom/vungle/publisher/cn;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public g()Lcom/vungle/publisher/cn$c;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vungle/publisher/cn;->f:Lcom/vungle/publisher/cn$c;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vungle/publisher/cn;->q:Ljava/lang/String;

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/vungle/publisher/cn;->n:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vungle/publisher/cn;->n:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vungle/publisher/cn;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/vungle/publisher/qr;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/vungle/publisher/qr;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/cn;->q:Ljava/lang/String;

    .line 118
    :cond_1f
    iget-object v0, p0, Lcom/vungle/publisher/cn;->q:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/vungle/publisher/cn;->u:Ljava/lang/Object;

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/vungle/publisher/cn;->u:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_8
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/vungle/publisher/cn;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected i_()Z
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lcom/vungle/publisher/cn;->o:I

    return v0
.end method

.method protected j_()Ljava/lang/StringBuilder;
    .registers 4

    .prologue
    .line 194
    invoke-super {p0}, Lcom/vungle/publisher/dp;->j_()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 195
    const-string v1, "type"

    iget-object v2, p0, Lcom/vungle/publisher/cn;->e:Lcom/vungle/publisher/m;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/cn;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    return-object v0
.end method

.method public k()J
    .registers 3

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/vungle/publisher/cn;->i:J

    return-wide v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vungle/publisher/cn;->c:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/vungle/publisher/cn;->d:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/vungle/publisher/cn;->r:Ljava/lang/String;

    return-object v0
.end method

.method protected p()Ljava/lang/StringBuilder;
    .registers 5

    .prologue
    .line 201
    invoke-super {p0}, Lcom/vungle/publisher/dp;->p()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 202
    const-string v1, "ad_token"

    iget-object v2, p0, Lcom/vungle/publisher/cn;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/cn;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    const-string v1, "advertising_app_vungle_id"

    iget-object v2, p0, Lcom/vungle/publisher/cn;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/cn;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    const-string v1, "campaign_id"

    iget-object v2, p0, Lcom/vungle/publisher/cn;->r:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/cn;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    const-string v1, "insert_timestamp_millis"

    iget-wide v2, p0, Lcom/vungle/publisher/cn;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/cn;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    const-string v1, "status"

    iget-object v2, p0, Lcom/vungle/publisher/cn;->f:Lcom/vungle/publisher/cn$c;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/cn;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    const-string v1, "update_timestamp_millis"

    iget-wide v2, p0, Lcom/vungle/publisher/cn;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/cn;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    const-string v1, "failed_timestamp_millis"

    iget-wide v2, p0, Lcom/vungle/publisher/cn;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/cn;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    const-string v1, "delete_local_content_attempts"

    iget v2, p0, Lcom/vungle/publisher/cn;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/cn;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    const-string v1, "expiration_timestamp_seconds"

    iget-object v2, p0, Lcom/vungle/publisher/cn;->m:Ljava/lang/Long;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/cn;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    const-string v1, "parent_path"

    iget-object v2, p0, Lcom/vungle/publisher/cn;->n:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/cn;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    const-string v1, "prepare_retry_count"

    iget v2, p0, Lcom/vungle/publisher/cn;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/cn;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    const-string v1, "received_timestamp_millis"

    iget-wide v2, p0, Lcom/vungle/publisher/cn;->p:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/cn;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    return-object v0
.end method

.method public q()I
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 220
    iget v2, p0, Lcom/vungle/publisher/cn;->l:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/vungle/publisher/cn;->l:I

    .line 222
    invoke-virtual {p0}, Lcom/vungle/publisher/cn;->a()Lcom/vungle/publisher/cn$a;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vungle/publisher/cn;->c_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vungle/publisher/cn;->m()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/vungle/publisher/cn$c;

    sget-object v6, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    aput-object v6, v5, v1

    const/4 v6, 0x1

    sget-object v7, Lcom/vungle/publisher/cn$c;->d:Lcom/vungle/publisher/cn$c;

    aput-object v7, v5, v6

    invoke-virtual {v3, v0, v4, v5}, Lcom/vungle/publisher/cn$a;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/vungle/publisher/cn$c;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 223
    invoke-super {p0}, Lcom/vungle/publisher/dp;->q()I

    move-result v0

    .line 233
    :goto_2b
    return v0

    .line 225
    :cond_2c
    invoke-virtual {p0}, Lcom/vungle/publisher/cn;->b()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 226
    invoke-super {p0}, Lcom/vungle/publisher/dp;->q()I

    move-result v0

    goto :goto_2b

    .line 228
    :cond_37
    const-string v0, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to delete files for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vungle/publisher/cn;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/vungle/publisher/cn;->f_()I

    move v0, v1

    .line 230
    goto :goto_2b
.end method

.method public r()Z
    .registers 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/vungle/publisher/cn;->a()Lcom/vungle/publisher/cn$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/cn$a;->a(Lcom/vungle/publisher/cn;)Z

    move-result v0

    return v0
.end method

###### Class com.vungle.publisher.cn.a (com.vungle.publisher.cn$a)
.class public abstract Lcom/vungle/publisher/cn$a;
.super Lcom/vungle/publisher/dp$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/cn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/cn;",
        "R:",
        "Lcom/vungle/publisher/wc;",
        ">",
        "Lcom/vungle/publisher/dp$a",
        "<TA;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/qg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/zl;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/ct$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/vungle/publisher/dp$a;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/vungle/publisher/cn$c;Lcom/vungle/publisher/cn$c;)I
    .registers 5

    .prologue
    .line 397
    const/4 v0, 0x0

    .line 398
    sget-object v1, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    if-eq p2, v1, :cond_b

    sget-object v1, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    if-ne p1, v1, :cond_b

    .line 399
    const/4 v0, -0x1

    .line 403
    :cond_a
    :goto_a
    return v0

    .line 400
    :cond_b
    sget-object v1, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    if-ne p2, v1, :cond_a

    sget-object v1, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    if-eq p1, v1, :cond_a

    .line 401
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public bridge synthetic a(Ljava/util/List;)I
    .registers 3

    .prologue
    .line 328
    invoke-super {p0, p1}, Lcom/vungle/publisher/dp$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/util/List;Lcom/vungle/publisher/cn$c;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/vungle/publisher/cn;",
            ">;",
            "Lcom/vungle/publisher/cn$c;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 417
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 419
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 420
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v7

    :goto_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cn;

    .line 421
    invoke-virtual {v0}, Lcom/vungle/publisher/cn;->c_()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v4, v7

    .line 422
    invoke-virtual {v0}, Lcom/vungle/publisher/cn;->g()Lcom/vungle/publisher/cn$c;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/vungle/publisher/cn$a;->a(Lcom/vungle/publisher/cn$c;Lcom/vungle/publisher/cn$c;)I

    move-result v10

    .line 423
    invoke-virtual {v0, p2}, Lcom/vungle/publisher/cn;->a(Lcom/vungle/publisher/cn$c;)V

    .line 424
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 425
    const-string v0, "status"

    invoke-virtual {p2}, Lcom/vungle/publisher/cn$c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v0, "id IN ( ? )"

    .line 427
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updating status of ads "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v4, v7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/vungle/publisher/cn$a;->d:Lcom/vungle/publisher/ci;

    .line 429
    invoke-virtual {v0}, Lcom/vungle/publisher/ci;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 430
    invoke-virtual {p0}, Lcom/vungle/publisher/cn$a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v3, "id IN ( ? )"

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    .line 431
    if-lez v0, :cond_b1

    .line 432
    add-int/lit8 v6, v6, 0x1

    .line 433
    iget-object v0, p0, Lcom/vungle/publisher/cn$a;->c:Lcom/vungle/publisher/ct$a;

    aget-object v1, v4, v7

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ct$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 434
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_82
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ct;

    .line 435
    iget-object v2, v0, Lcom/vungle/publisher/ct;->b:Ljava/lang/String;

    .line 436
    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 437
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_82

    .line 439
    :cond_a9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_82

    :cond_b1
    move v0, v6

    move v6, v0

    .line 443
    goto/16 :goto_e

    .line 445
    :cond_b5
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_bd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 446
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/vungle/publisher/cn$a;->a(ILjava/lang/String;)V

    goto :goto_bd

    .line 448
    :cond_dd
    return v6
.end method

.method protected a(Lcom/vungle/publisher/cn;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cn;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Landroid/database/Cursor;",
            "Z)TA;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 484
    const-string v0, "ad_token"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cn;->c:Ljava/lang/String;

    .line 485
    const-string v0, "ad_token_hash"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cn;->d:Ljava/lang/String;

    .line 486
    const-string v0, "advertising_app_vungle_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cn;->j:Ljava/lang/String;

    .line 487
    const-string v0, "campaign_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cn;->r:Ljava/lang/String;

    .line 488
    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cn;->u:Ljava/lang/Object;

    .line 489
    const-string v0, "insert_timestamp_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/vungle/publisher/cn;->g:J

    .line 490
    const-string v0, "status"

    const-class v1, Lcom/vungle/publisher/cn$c;

    invoke-static {p2, v0, v1}, Lcom/vungle/publisher/ce;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cn$c;

    iput-object v0, p1, Lcom/vungle/publisher/cn;->f:Lcom/vungle/publisher/cn$c;

    .line 491
    const-string v0, "type"

    const-class v1, Lcom/vungle/publisher/m;

    invoke-static {p2, v0, v1}, Lcom/vungle/publisher/ce;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/m;

    iput-object v0, p1, Lcom/vungle/publisher/cn;->e:Lcom/vungle/publisher/m;

    .line 492
    const-string v0, "update_timestamp_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/vungle/publisher/cn;->h:J

    .line 493
    const-string v0, "failed_timestamp_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/vungle/publisher/cn;->i:J

    .line 494
    const-string v0, "delete_local_content_attempts"

    invoke-static {p2, v0, v2}, Lcom/vungle/publisher/ce;->a(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/vungle/publisher/cn;->l:I

    .line 495
    const-string v0, "expiration_timestamp_seconds"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cn;->m:Ljava/lang/Long;

    .line 496
    const-string v0, "prepare_retry_count"

    invoke-static {p2, v0, v2}, Lcom/vungle/publisher/ce;->a(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/vungle/publisher/cn;->o:I

    .line 497
    iget-object v0, p0, Lcom/vungle/publisher/cn$a;->b:Lcom/vungle/publisher/zl;

    invoke-virtual {v0}, Lcom/vungle/publisher/zl;->a()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/vungle/publisher/cn;->p:J

    .line 498
    return-object p1
.end method

.method protected a(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/cn;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TR;)TA;"
        }
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p2}, Lcom/vungle/publisher/wc;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cn;->c:Ljava/lang/String;

    .line 355
    invoke-virtual {p2}, Lcom/vungle/publisher/wc;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cn;->d:Ljava/lang/String;

    .line 356
    invoke-virtual {p2}, Lcom/vungle/publisher/wc;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cn;->j:Ljava/lang/String;

    .line 357
    invoke-virtual {p2}, Lcom/vungle/publisher/wc;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cn;->r:Ljava/lang/String;

    .line 358
    return-object p1
.end method

.method public a(Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/cn;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TA;"
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/vungle/publisher/cn$a;->g_()Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cn;

    .line 344
    invoke-virtual {p1}, Lcom/vungle/publisher/wc;->g()Ljava/lang/String;

    move-result-object v1

    .line 345
    iput-object v1, v0, Lcom/vungle/publisher/cn;->u:Ljava/lang/Object;

    .line 346
    const-class v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/cn;->t:Ljava/lang/Class;

    .line 347
    invoke-virtual {p0}, Lcom/vungle/publisher/cn$a;->a()Lcom/vungle/publisher/m;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/cn;->e:Lcom/vungle/publisher/m;

    .line 348
    invoke-virtual {p1}, Lcom/vungle/publisher/wc;->c()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/cn;->m:Ljava/lang/Long;

    .line 349
    invoke-virtual {p0, v0, p1}, Lcom/vungle/publisher/cn$a;->a(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/cn;

    .line 350
    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .registers 5

    .prologue
    .line 328
    check-cast p1, Lcom/vungle/publisher/cn;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/cn$a;->a(Lcom/vungle/publisher/cn;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cn;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()Lcom/vungle/publisher/m;
.end method

.method public bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 4

    .prologue
    .line 328
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/dp$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method a(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 407
    if-lez p1, :cond_25

    .line 408
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad availability increased by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/vungle/publisher/cn$a;->a:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/am;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/am;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 414
    :cond_24
    :goto_24
    return-void

    .line 410
    :cond_25
    if-gez p1, :cond_24

    .line 411
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad availability decreased by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/vungle/publisher/cn$a;->a:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/ag;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/ag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    goto :goto_24
.end method

.method public a(Lcom/vungle/publisher/cn;)Z
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id = ? AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/vungle/publisher/cn;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND (("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "expiration_timestamp_seconds"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " IS NULL OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "expiration_timestamp_seconds"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " <= ?) OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "status"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " != ?)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Lcom/vungle/publisher/cn;->c_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/vungle/publisher/cn$a;->b:Lcom/vungle/publisher/zl;

    invoke-virtual {v0}, Lcom/vungle/publisher/zl;->a()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x2

    sget-object v5, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v5}, Lcom/vungle/publisher/cn$c;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 388
    invoke-virtual {p0, v3, v4}, Lcom/vungle/publisher/cn$a;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 390
    const-string v0, "VungleDatabase"

    const-string v3, "deleting ad after successful report"

    invoke-static {v0, v3}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1}, Lcom/vungle/publisher/cn;->q()I

    move-result v0

    if-lez v0, :cond_79

    move v0, v1

    .line 393
    :goto_78
    return v0

    :cond_79
    move v0, v2

    .line 391
    goto :goto_78

    :cond_7b
    move v0, v2

    .line 393
    goto :goto_78
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;[Lcom/vungle/publisher/cn$c;)Z
    .registers 10

    .prologue
    .line 460
    const/4 v0, 0x0

    .line 461
    invoke-static {p3}, Lcom/vungle/publisher/yz;->a([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    .line 462
    new-instance v2, Lcom/vungle/publisher/hp$a;

    invoke-direct {v2}, Lcom/vungle/publisher/hp$a;-><init>()V

    const-string v3, "ad"

    .line 463
    invoke-virtual {v2, v3}, Lcom/vungle/publisher/hp$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v2

    const-string v3, "id != ? "

    .line 464
    invoke-virtual {v2, v3}, Lcom/vungle/publisher/hp$a;->b(Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v2

    const-string v3, " AND ad_token_hash = ? "

    .line 465
    invoke-virtual {v2, v3}, Lcom/vungle/publisher/hp$a;->b(Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND status IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    .line 466
    invoke-static {v4}, Lcom/vungle/publisher/ce;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/hp$a;->b(Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v2

    .line 467
    invoke-virtual {v2, p1}, Lcom/vungle/publisher/hp$a;->c(Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v2

    .line 468
    invoke-virtual {v2, p2}, Lcom/vungle/publisher/hp$a;->c(Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v2

    .line 469
    invoke-virtual {v2, v1}, Lcom/vungle/publisher/hp$a;->a([Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v1

    .line 470
    invoke-virtual {v1}, Lcom/vungle/publisher/hp$a;->a()Lcom/vungle/publisher/hp;

    move-result-object v1

    .line 472
    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "built query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/vungle/publisher/hp;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v2, p0, Lcom/vungle/publisher/cn$a;->d:Lcom/vungle/publisher/ci;

    invoke-virtual {v2, v1}, Lcom/vungle/publisher/ci;->a(Lcom/vungle/publisher/hp;)Landroid/database/Cursor;

    move-result-object v2

    .line 474
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 475
    const-string v3, "VungleDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No. of record found = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/vungle/publisher/hp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    if-lez v2, :cond_9d

    .line 477
    const/4 v0, 0x1

    .line 479
    :cond_9d
    return v0
.end method

.method protected a(I)[Ljava/lang/String;
    .registers 3

    .prologue
    .line 508
    new-array v0, p1, [Ljava/lang/String;

    return-object v0
.end method

.method protected b()I
    .registers 7

    .prologue
    .line 367
    sget-object v0, Lcom/vungle/publisher/cn$c;->g:Lcom/vungle/publisher/cn$c;

    .line 368
    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vungle/publisher/cn$a;->a()Lcom/vungle/publisher/m;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " records without pending reports in status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/vungle/publisher/cn$a;->d:Lcom/vungle/publisher/ci;

    invoke-virtual {v1}, Lcom/vungle/publisher/ci;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "ad"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/vungle/publisher/cn;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 372
    invoke-virtual {v0}, Lcom/vungle/publisher/cn$c;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 370
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 369
    return v0
.end method

.method public b(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/wc;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TR;)I"
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p2}, Lcom/vungle/publisher/wc;->c()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cn;->m:Ljava/lang/Long;

    .line 363
    invoke-virtual {p1}, Lcom/vungle/publisher/cn;->f_()I

    move-result v0

    return v0
.end method

.method protected synthetic b(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/cn$a;->a(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 503
    const-string v0, "ad"

    return-object v0
.end method

###### Class com.vungle.publisher.cn.b (com.vungle.publisher.cn$b)
.class public Lcom/vungle/publisher/cn$b;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/cn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/el$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/hr$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/jn$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/gk$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/m;Ljava/lang/String;)Lcom/vungle/publisher/cn;
    .registers 4

    .prologue
    .line 304
    new-instance v0, Lcom/vungle/publisher/cn$b$2;

    invoke-direct {v0, p0, p2}, Lcom/vungle/publisher/cn$b$2;-><init>(Lcom/vungle/publisher/cn$b;Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0, p1}, Lcom/vungle/publisher/cn$b$2;->a(Lcom/vungle/publisher/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cn;

    .line 304
    return-object v0
.end method

.method public a(Lcom/vungle/publisher/m;)Lcom/vungle/publisher/ea;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/vungle/publisher/cn;",
            "R:",
            "Lcom/vungle/publisher/wc;",
            "F::",
            "Lcom/vungle/publisher/ea",
            "<TA;TR;>;>(",
            "Lcom/vungle/publisher/m;",
            ")TF;"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Lcom/vungle/publisher/cn$b$1;

    invoke-direct {v0, p0, p1}, Lcom/vungle/publisher/cn$b$1;-><init>(Lcom/vungle/publisher/cn$b;Lcom/vungle/publisher/m;)V

    .line 300
    invoke-virtual {v0, p1}, Lcom/vungle/publisher/cn$b$1;->a(Lcom/vungle/publisher/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ea;

    .line 280
    return-object v0
.end method

###### Class com.vungle.publisher.cn.b.AnonymousClass1 (com.vungle.publisher.cn$b$1)
.class Lcom/vungle/publisher/cn$b$1;
.super Lcom/vungle/publisher/q;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/cn$b;->a(Lcom/vungle/publisher/m;)Lcom/vungle/publisher/ea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/q",
        "<TF;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/m;

.field final synthetic b:Lcom/vungle/publisher/cn$b;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/cn$b;Lcom/vungle/publisher/m;)V
    .registers 3

    .prologue
    .line 280
    iput-object p1, p0, Lcom/vungle/publisher/cn$b$1;->b:Lcom/vungle/publisher/cn$b;

    iput-object p2, p0, Lcom/vungle/publisher/cn$b$1;->a:Lcom/vungle/publisher/m;

    invoke-direct {p0}, Lcom/vungle/publisher/q;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/vungle/publisher/cn$b$1;->e()Lcom/vungle/publisher/ea;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/vungle/publisher/cn$b$1;->h()Lcom/vungle/publisher/ea;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/vungle/publisher/cn$b$1;->f()Lcom/vungle/publisher/ea;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/vungle/publisher/cn$b$1;->g()Lcom/vungle/publisher/ea;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/vungle/publisher/ea;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vungle/publisher/cn$b$1;->b:Lcom/vungle/publisher/cn$b;

    iget-object v0, v0, Lcom/vungle/publisher/cn$b;->a:Lcom/vungle/publisher/el$a;

    return-object v0
.end method

.method protected f()Lcom/vungle/publisher/ea;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/vungle/publisher/cn$b$1;->b:Lcom/vungle/publisher/cn$b;

    iget-object v0, v0, Lcom/vungle/publisher/cn$b;->c:Lcom/vungle/publisher/jn$a;

    return-object v0
.end method

.method protected g()Lcom/vungle/publisher/ea;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/vungle/publisher/cn$b$1;->b:Lcom/vungle/publisher/cn$b;

    iget-object v0, v0, Lcom/vungle/publisher/cn$b;->d:Lcom/vungle/publisher/gk$a;

    return-object v0
.end method

.method protected h()Lcom/vungle/publisher/ea;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .prologue
    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot get cacheable streamingVideoAdReportFactory for ad type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/cn$b$1;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.vungle.publisher.cn.b.AnonymousClass2 (com.vungle.publisher.cn$b$2)
.class Lcom/vungle/publisher/cn$b$2;
.super Lcom/vungle/publisher/q;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/cn$b;->a(Lcom/vungle/publisher/m;Ljava/lang/String;)Lcom/vungle/publisher/cn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/q",
        "<",
        "Lcom/vungle/publisher/cn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/vungle/publisher/cn$b;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/cn$b;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 304
    iput-object p1, p0, Lcom/vungle/publisher/cn$b$2;->b:Lcom/vungle/publisher/cn$b;

    iput-object p2, p0, Lcom/vungle/publisher/cn$b$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/vungle/publisher/q;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/vungle/publisher/cn$b$2;->e()Lcom/vungle/publisher/cn;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/vungle/publisher/cn$b$2;->f()Lcom/vungle/publisher/cn;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/vungle/publisher/cn$b$2;->g()Lcom/vungle/publisher/cn;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/vungle/publisher/cn$b$2;->h()Lcom/vungle/publisher/cn;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/vungle/publisher/cn;
    .registers 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/vungle/publisher/cn$b$2;->b:Lcom/vungle/publisher/cn$b;

    iget-object v0, v0, Lcom/vungle/publisher/cn$b;->a:Lcom/vungle/publisher/el$a;

    iget-object v1, p0, Lcom/vungle/publisher/cn$b$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/el$a;->a(Ljava/lang/Object;)Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cn;

    return-object v0
.end method

.method protected f()Lcom/vungle/publisher/cn;
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/vungle/publisher/cn$b$2;->b:Lcom/vungle/publisher/cn$b;

    iget-object v0, v0, Lcom/vungle/publisher/cn$b;->b:Lcom/vungle/publisher/hr$a;

    iget-object v1, p0, Lcom/vungle/publisher/cn$b$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/hr$a;->a(Ljava/lang/Object;)Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cn;

    return-object v0
.end method

.method protected g()Lcom/vungle/publisher/cn;
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/vungle/publisher/cn$b$2;->b:Lcom/vungle/publisher/cn$b;

    iget-object v0, v0, Lcom/vungle/publisher/cn$b;->c:Lcom/vungle/publisher/jn$a;

    iget-object v1, p0, Lcom/vungle/publisher/cn$b$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/jn$a;->a(Ljava/lang/Object;)Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cn;

    return-object v0
.end method

.method protected h()Lcom/vungle/publisher/cn;
    .registers 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/vungle/publisher/cn$b$2;->b:Lcom/vungle/publisher/cn$b;

    iget-object v0, v0, Lcom/vungle/publisher/cn$b;->d:Lcom/vungle/publisher/gk$a;

    iget-object v1, p0, Lcom/vungle/publisher/cn$b$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/gk$a;->a(Ljava/lang/Object;)Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cn;

    return-object v0
.end method

###### Class com.vungle.publisher.cn.c (com.vungle.publisher.cn$c)
.class public final enum Lcom/vungle/publisher/cn$c;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/cn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/cn$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/cn$c;

.field public static final enum b:Lcom/vungle/publisher/cn$c;

.field public static final enum c:Lcom/vungle/publisher/cn$c;

.field public static final enum d:Lcom/vungle/publisher/cn$c;

.field public static final enum e:Lcom/vungle/publisher/cn$c;

.field public static final enum f:Lcom/vungle/publisher/cn$c;

.field public static final enum g:Lcom/vungle/publisher/cn$c;

.field private static final synthetic h:[Lcom/vungle/publisher/cn$c;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    new-instance v0, Lcom/vungle/publisher/cn$c;

    const-string v1, "aware"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/cn$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/cn$c;->a:Lcom/vungle/publisher/cn$c;

    .line 71
    new-instance v0, Lcom/vungle/publisher/cn$c;

    const-string v1, "failed"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/cn$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/cn$c;->b:Lcom/vungle/publisher/cn$c;

    .line 72
    new-instance v0, Lcom/vungle/publisher/cn$c;

    const-string v1, "invalid"

    invoke-direct {v0, v1, v5}, Lcom/vungle/publisher/cn$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/cn$c;->c:Lcom/vungle/publisher/cn$c;

    .line 73
    new-instance v0, Lcom/vungle/publisher/cn$c;

    const-string v1, "preparing"

    invoke-direct {v0, v1, v6}, Lcom/vungle/publisher/cn$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/cn$c;->d:Lcom/vungle/publisher/cn$c;

    .line 74
    new-instance v0, Lcom/vungle/publisher/cn$c;

    const-string v1, "ready"

    invoke-direct {v0, v1, v7}, Lcom/vungle/publisher/cn$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    .line 75
    new-instance v0, Lcom/vungle/publisher/cn$c;

    const-string v1, "viewed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/cn$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/cn$c;->f:Lcom/vungle/publisher/cn$c;

    .line 76
    new-instance v0, Lcom/vungle/publisher/cn$c;

    const-string v1, "deleting"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/cn$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/cn$c;->g:Lcom/vungle/publisher/cn$c;

    .line 69
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/vungle/publisher/cn$c;

    sget-object v1, Lcom/vungle/publisher/cn$c;->a:Lcom/vungle/publisher/cn$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/cn$c;->b:Lcom/vungle/publisher/cn$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vungle/publisher/cn$c;->c:Lcom/vungle/publisher/cn$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vungle/publisher/cn$c;->d:Lcom/vungle/publisher/cn$c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/vungle/publisher/cn$c;->f:Lcom/vungle/publisher/cn$c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vungle/publisher/cn$c;->g:Lcom/vungle/publisher/cn$c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vungle/publisher/cn$c;->h:[Lcom/vungle/publisher/cn$c;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/cn$c;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    const-class v0, Lcom/vungle/publisher/cn$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cn$c;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/cn$c;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lcom/vungle/publisher/cn$c;->h:[Lcom/vungle/publisher/cn$c;

    invoke-virtual {v0}, [Lcom/vungle/publisher/cn$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/cn$c;

    return-object v0
.end method
