###### Class com.vungle.publisher.jm (com.vungle.publisher.jm)
.class public abstract Lcom/vungle/publisher/jm;
.super Lcom/vungle/publisher/dp;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ei;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/jm$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/cn;",
        ">",
        "Lcom/vungle/publisher/dp",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/vungle/publisher/ei",
        "<TA;>;"
    }
.end annotation


# instance fields
.field protected o:Ljava/lang/String;

.field protected p:Lcom/vungle/publisher/m;

.field protected q:Lcom/vungle/publisher/ei$a;

.field protected r:Lcom/vungle/publisher/ei$b;

.field protected s:Lcom/vungle/publisher/cn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vungle/publisher/dp;-><init>()V

    return-void
.end method


# virtual methods
.method protected C()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/vungle/publisher/jm;->o()Lcom/vungle/publisher/ei$b;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public M()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vungle/publisher/jm;->u:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public N()Lcom/vungle/publisher/cn;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vungle/publisher/jm;->s:Lcom/vungle/publisher/cn;

    if-nez v0, :cond_13

    .line 52
    invoke-virtual {p0}, Lcom/vungle/publisher/jm;->y()Lcom/vungle/publisher/cn$a;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/jm;->o:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/cn$a;->a(Ljava/lang/Object;Z)Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cn;

    iput-object v0, p0, Lcom/vungle/publisher/jm;->s:Lcom/vungle/publisher/cn;

    .line 54
    :cond_13
    iget-object v0, p0, Lcom/vungle/publisher/jm;->s:Lcom/vungle/publisher/cn;

    return-object v0
.end method

.method protected a(Z)Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 84
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 85
    if-eqz p1, :cond_2f

    .line 86
    invoke-virtual {p0}, Lcom/vungle/publisher/jm;->h_()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/vungle/publisher/jm;->u:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v0, "ad_id"

    iget-object v2, p0, Lcom/vungle/publisher/jm;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "type"

    iget-object v2, p0, Lcom/vungle/publisher/jm;->r:Lcom/vungle/publisher/ei$b;

    invoke-virtual {v2}, Lcom/vungle/publisher/ei$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "ad_type"

    iget-object v2, p0, Lcom/vungle/publisher/jm;->p:Lcom/vungle/publisher/m;

    invoke-virtual {v2}, Lcom/vungle/publisher/m;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_2f
    const-string v0, "status"

    iget-object v2, p0, Lcom/vungle/publisher/jm;->q:Lcom/vungle/publisher/ei$a;

    invoke-virtual {v2}, Lcom/vungle/publisher/ei$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-object v1
.end method

.method public a(Lcom/vungle/publisher/ei$a;)V
    .registers 5

    .prologue
    .line 66
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/jm;->r:Lcom/vungle/publisher/ei$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/jm;->q:Lcom/vungle/publisher/ei$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/jm;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/vungle/publisher/jm;->q:Lcom/vungle/publisher/ei$a;

    .line 68
    return-void
.end method

.method public b(Lcom/vungle/publisher/ei$a;)V
    .registers 5

    .prologue
    .line 71
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/jm;->r:Lcom/vungle/publisher/ei$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/jm;->q:Lcom/vungle/publisher/ei$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/jm;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/vungle/publisher/jm;->q:Lcom/vungle/publisher/ei$a;

    .line 73
    invoke-virtual {p0}, Lcom/vungle/publisher/jm;->f_()I

    .line 74
    return-void
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    const-string v0, "viewable"

    return-object v0
.end method

.method public synthetic c_()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/vungle/publisher/jm;->M()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/vungle/publisher/jm;->N()Lcom/vungle/publisher/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/cn;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vungle/publisher/jm;->o:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/vungle/publisher/ei$a;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vungle/publisher/jm;->q:Lcom/vungle/publisher/ei$a;

    return-object v0
.end method

.method public o()Lcom/vungle/publisher/ei$b;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vungle/publisher/jm;->r:Lcom/vungle/publisher/ei$b;

    return-object v0
.end method

.method protected p()Ljava/lang/StringBuilder;
    .registers 4

    .prologue
    .line 99
    invoke-super {p0}, Lcom/vungle/publisher/dp;->p()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/vungle/publisher/jm;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/jm;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    const-string v1, "status"

    iget-object v2, p0, Lcom/vungle/publisher/jm;->q:Lcom/vungle/publisher/ei$a;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/jm;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    const-string v1, "type"

    iget-object v2, p0, Lcom/vungle/publisher/jm;->r:Lcom/vungle/publisher/ei$b;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/jm;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    return-object v0
.end method

.method protected abstract y()Lcom/vungle/publisher/cn$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/cn$a",
            "<TA;*>;"
        }
    .end annotation
.end method

###### Class com.vungle.publisher.jm.a (com.vungle.publisher.jm$a)
.class public abstract Lcom/vungle/publisher/jm$a;
.super Lcom/vungle/publisher/dp$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/jm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/cn;",
        "W:",
        "Lcom/vungle/publisher/jm",
        "<TA;>;R:",
        "Lcom/vungle/publisher/wc;",
        ">",
        "Lcom/vungle/publisher/dp$a",
        "<TW;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field e:Lcom/vungle/publisher/m$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/vungle/publisher/dp$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .registers 5

    .prologue
    .line 148
    check-cast p1, Lcom/vungle/publisher/jm;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/jm$a;->a(Lcom/vungle/publisher/jm;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jm;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/jm;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TR;)TW;"
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    if-eqz p2, :cond_1b

    .line 156
    invoke-virtual {p0}, Lcom/vungle/publisher/jm$a;->g_()Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/jm;

    .line 157
    iput-object p1, v0, Lcom/vungle/publisher/jm;->s:Lcom/vungle/publisher/cn;

    .line 158
    invoke-virtual {p2}, Lcom/vungle/publisher/wc;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/jm;->o:Ljava/lang/String;

    .line 159
    invoke-virtual {p2}, Lcom/vungle/publisher/wc;->d()Lcom/vungle/publisher/m;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/jm;->p:Lcom/vungle/publisher/m;

    .line 160
    sget-object v1, Lcom/vungle/publisher/ei$a;->a:Lcom/vungle/publisher/ei$a;

    iput-object v1, v0, Lcom/vungle/publisher/jm;->q:Lcom/vungle/publisher/ei$a;

    .line 162
    :cond_1b
    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/jm;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jm;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;",
            "Landroid/database/Cursor;",
            "Z)TW;"
        }
    .end annotation

    .prologue
    .line 235
    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->c(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/jm;->u:Ljava/lang/Object;

    .line 236
    const-string v0, "ad_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/jm;->o:Ljava/lang/String;

    .line 237
    const-string v0, "status"

    const-class v1, Lcom/vungle/publisher/ei$a;

    invoke-static {p2, v0, v1}, Lcom/vungle/publisher/ce;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ei$a;

    iput-object v0, p1, Lcom/vungle/publisher/jm;->q:Lcom/vungle/publisher/ei$a;

    .line 238
    const-string v0, "type"

    const-class v1, Lcom/vungle/publisher/ei$b;

    invoke-static {p2, v0, v1}, Lcom/vungle/publisher/ce;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ei$b;

    iput-object v0, p1, Lcom/vungle/publisher/jm;->r:Lcom/vungle/publisher/ei$b;

    .line 239
    iget-object v0, p0, Lcom/vungle/publisher/jm$a;->e:Lcom/vungle/publisher/m$a;

    const-string v1, "ad_type"

    invoke-static {p2, v1}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/m$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/m;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/jm;->p:Lcom/vungle/publisher/m;

    .line 240
    return-object p1
.end method

.method protected a(Lcom/vungle/publisher/jm;Z)Lcom/vungle/publisher/jm;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;Z)TW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 182
    .line 183
    iget-object v0, p1, Lcom/vungle/publisher/jm;->u:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    .line 184
    iget-object v10, p1, Lcom/vungle/publisher/jm;->r:Lcom/vungle/publisher/ei$b;

    .line 187
    :try_start_8
    iget-object v6, p1, Lcom/vungle/publisher/jm;->o:Ljava/lang/String;

    .line 189
    if-nez v5, :cond_ce

    .line 190
    if-nez v6, :cond_77

    .line 191
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to fetch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": no "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_18c

    move-object v0, v8

    move-object v1, v8

    .line 208
    :goto_40
    if-eqz v1, :cond_144

    .line 209
    :try_start_42
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 210
    packed-switch v2, :pswitch_data_190

    .line 220
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " records for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_70
    .catchall {:try_start_42 .. :try_end_70} :catchall_70

    .line 225
    :catchall_70
    move-exception v0

    :goto_71
    if-eqz v1, :cond_76

    .line 226
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_76
    throw v0

    .line 194
    :cond_77
    :try_start_77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 195
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/vungle/publisher/jm$a;->d:Lcom/vungle/publisher/ci;

    .line 197
    invoke-virtual {v0}, Lcom/vungle/publisher/ci;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "viewable"

    const/4 v2, 0x0

    const-string v3, "ad_id = ? AND type = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 198
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v9

    goto/16 :goto_40

    .line 202
    :cond_ce
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 203
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/vungle/publisher/jm$a;->d:Lcom/vungle/publisher/ci;

    .line 205
    invoke-virtual {v0}, Lcom/vungle/publisher/ci;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "viewable"

    const/4 v2, 0x0

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 206
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_11e
    .catchall {:try_start_77 .. :try_end_11e} :catchall_18c

    move-result-object v1

    move-object v0, v9

    goto/16 :goto_40

    .line 212
    :pswitch_122
    :try_start_122
    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_144
    .catchall {:try_start_122 .. :try_end_144} :catchall_70

    .line 225
    :cond_144
    :goto_144
    if-eqz v1, :cond_149

    .line 226
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_149
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-object v8

    .line 215
    :pswitch_162
    :try_start_162
    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "have "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 217
    invoke-virtual {p0, p1, v1, p2}, Lcom/vungle/publisher/jm$a;->a(Lcom/vungle/publisher/jm;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jm;
    :try_end_18a
    .catchall {:try_start_162 .. :try_end_18a} :catchall_70

    move-result-object v8

    goto :goto_144

    .line 225
    :catchall_18c
    move-exception v0

    move-object v1, v8

    goto/16 :goto_71

    .line 210
    :pswitch_data_190
    .packed-switch 0x0
        :pswitch_122
        :pswitch_162
    .end packed-switch
.end method

.method protected a(Ljava/lang/String;Lcom/vungle/publisher/ei$b;Z)Lcom/vungle/publisher/jm;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vungle/publisher/ei$b;",
            "Z)TW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/vungle/publisher/jm$a;->g_()Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/jm;

    .line 176
    iput-object p1, v0, Lcom/vungle/publisher/jm;->o:Ljava/lang/String;

    .line 177
    iput-object p2, v0, Lcom/vungle/publisher/jm;->r:Lcom/vungle/publisher/ei$b;

    .line 178
    invoke-virtual {p0, v0, p3}, Lcom/vungle/publisher/jm$a;->a(Lcom/vungle/publisher/jm;Z)Lcom/vungle/publisher/jm;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/ei$b;Ljava/lang/String;Z)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ei$b;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<TW;>;"
        }
    .end annotation

    .prologue
    .line 169
    const-string v0, "ad_id = ? AND type = ?"

    .line 170
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/vungle/publisher/ei$b;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 171
    const-string v1, "ad_id = ? AND type = ?"

    invoke-virtual {p0, v1, v0}, Lcom/vungle/publisher/jm$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/jm$a;->c(I)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    const-string v0, "viewable"

    return-object v0
.end method

.method protected c(I)[Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 250
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method
