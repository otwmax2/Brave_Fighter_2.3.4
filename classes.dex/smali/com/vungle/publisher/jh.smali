###### Class com.vungle.publisher.jh (com.vungle.publisher.jh)
.class public abstract Lcom/vungle/publisher/jh;
.super Lcom/vungle/publisher/cn;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/jh$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/jh",
        "<TA;TV;TR;>;V:",
        "Lcom/vungle/publisher/jg",
        "<TA;>;R:",
        "Lcom/vungle/publisher/wp;",
        ">",
        "Lcom/vungle/publisher/cn;"
    }
.end annotation


# instance fields
.field protected A:Ljava/lang/String;

.field protected B:Ljava/lang/String;

.field protected C:Lcom/vungle/publisher/jg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field protected D:Lcom/vungle/publisher/je;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/je",
            "<*TA;TR;",
            "Lcom/vungle/publisher/ji;",
            "**>;"
        }
    .end annotation
.end field

.field protected E:Z

.field F:Lcom/vungle/publisher/qg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vungle/publisher/cn;-><init>()V

    return-void
.end method


# virtual methods
.method public D()Lcom/vungle/publisher/jg;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/vungle/publisher/jh;->x()Lcom/vungle/publisher/jh$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/vungle/publisher/jh$a;->a(Lcom/vungle/publisher/jh;Z)Lcom/vungle/publisher/jg;

    move-result-object v0

    return-object v0
.end method

.method public E()V
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vungle/publisher/jh;->D:Lcom/vungle/publisher/je;

    if-eqz v0, :cond_9

    .line 62
    iget-object v0, p0, Lcom/vungle/publisher/jh;->D:Lcom/vungle/publisher/je;

    invoke-virtual {v0}, Lcom/vungle/publisher/je;->c()V

    .line 64
    :cond_9
    return-void
.end method

.method protected a(Z)Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/vungle/publisher/cn;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 90
    const-string v1, "call_to_action_final_url"

    iget-object v2, p0, Lcom/vungle/publisher/jh;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "call_to_action_url"

    iget-object v2, p0, Lcom/vungle/publisher/jh;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-object v0
.end method

.method protected synthetic a()Lcom/vungle/publisher/cn$a;
    .registers 2

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/vungle/publisher/jh;->x()Lcom/vungle/publisher/jh$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/vungle/publisher/jf;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/jf;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vungle/publisher/jh;->D:Lcom/vungle/publisher/je;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/je;->a(Lcom/vungle/publisher/jf;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d_()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/vungle/publisher/jh;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f_()I
    .registers 3

    .prologue
    .line 78
    invoke-super {p0}, Lcom/vungle/publisher/cn;->f_()I

    move-result v0

    .line 79
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 80
    iget-object v1, p0, Lcom/vungle/publisher/jh;->C:Lcom/vungle/publisher/jg;

    if-eqz v1, :cond_10

    .line 81
    iget-object v1, p0, Lcom/vungle/publisher/jh;->C:Lcom/vungle/publisher/jg;

    invoke-virtual {v1}, Lcom/vungle/publisher/jg;->f_()I

    .line 84
    :cond_10
    return v0
.end method

.method protected p()Ljava/lang/StringBuilder;
    .registers 4

    .prologue
    .line 97
    invoke-super {p0}, Lcom/vungle/publisher/cn;->p()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    const-string v1, "call_to_action_final_url"

    iget-object v2, p0, Lcom/vungle/publisher/jh;->A:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/jh;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    const-string v1, "call_to_action_url"

    iget-object v2, p0, Lcom/vungle/publisher/jh;->B:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/jh;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    iget-object v1, p0, Lcom/vungle/publisher/jh;->D:Lcom/vungle/publisher/je;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/je;->a(Ljava/lang/StringBuilder;)V

    .line 101
    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-super {p0}, Lcom/vungle/publisher/cn;->d_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/vungle/publisher/jh;->E()V

    .line 70
    iget-object v1, p0, Lcom/vungle/publisher/jh;->C:Lcom/vungle/publisher/jg;

    if-eqz v1, :cond_12

    .line 71
    iget-object v1, p0, Lcom/vungle/publisher/jh;->C:Lcom/vungle/publisher/jg;

    invoke-virtual {v1}, Lcom/vungle/publisher/jg;->d_()Ljava/lang/Object;

    .line 73
    :cond_12
    return-object v0
.end method

.method protected abstract x()Lcom/vungle/publisher/jh$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/jh$a",
            "<TA;TV;TR;>;"
        }
    .end annotation
.end method

.method public y()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/jh;->A:Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vungle/publisher/jh;->B:Ljava/lang/String;

    return-object v0
.end method

###### Class com.vungle.publisher.jh.a (com.vungle.publisher.jh$a)
.class public abstract Lcom/vungle/publisher/jh$a;
.super Lcom/vungle/publisher/cn$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/jh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/jh",
        "<TA;TV;TR;>;V:",
        "Lcom/vungle/publisher/jg",
        "<TA;>;R:",
        "Lcom/vungle/publisher/wp;",
        ">",
        "Lcom/vungle/publisher/cn$a",
        "<TA;TR;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/vungle/publisher/cn$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/jh;Lcom/vungle/publisher/wp;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TR;)I"
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/jh$a;->b(Lcom/vungle/publisher/jh;Lcom/vungle/publisher/wp;)Lcom/vungle/publisher/jh;

    .line 121
    invoke-virtual {p0}, Lcom/vungle/publisher/jh$a;->k()Lcom/vungle/publisher/jg$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vungle/publisher/jh;->D()Lcom/vungle/publisher/jg;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/vungle/publisher/jg$a;->a(Lcom/vungle/publisher/jg;Lcom/vungle/publisher/wp;)I

    .line 122
    iget-object v0, p1, Lcom/vungle/publisher/jh;->D:Lcom/vungle/publisher/je;

    invoke-virtual {v0, p2}, Lcom/vungle/publisher/je;->a(Lcom/vungle/publisher/wc;)Ljava/util/Map;

    .line 123
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/cn$a;->b(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/wc;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/cn;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cn;
    .registers 5

    .prologue
    .line 104
    check-cast p1, Lcom/vungle/publisher/jh;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/jh$a;->a(Lcom/vungle/publisher/jh;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jh;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic a(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/cn;
    .registers 4

    .prologue
    .line 104
    check-cast p1, Lcom/vungle/publisher/jh;

    check-cast p2, Lcom/vungle/publisher/wp;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/jh$a;->b(Lcom/vungle/publisher/jh;Lcom/vungle/publisher/wp;)Lcom/vungle/publisher/jh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/cn;
    .registers 3

    .prologue
    .line 104
    check-cast p1, Lcom/vungle/publisher/wp;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/jh$a;->a(Lcom/vungle/publisher/wp;)Lcom/vungle/publisher/jh;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .registers 5

    .prologue
    .line 104
    check-cast p1, Lcom/vungle/publisher/jh;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/jh$a;->a(Lcom/vungle/publisher/jh;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jh;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/jh;Z)Lcom/vungle/publisher/jg;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;Z)TV;"
        }
    .end annotation

    .prologue
    .line 154
    iget-boolean v0, p1, Lcom/vungle/publisher/jh;->E:Z

    if-eqz v0, :cond_7

    .line 155
    iget-object v0, p1, Lcom/vungle/publisher/jh;->C:Lcom/vungle/publisher/jg;

    .line 161
    :goto_6
    return-object v0

    .line 158
    :cond_7
    invoke-virtual {p0}, Lcom/vungle/publisher/jh$a;->k()Lcom/vungle/publisher/jg$a;

    move-result-object v1

    iget-object v0, p1, Lcom/vungle/publisher/jh;->u:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Lcom/vungle/publisher/jg$a;->a(Ljava/lang/String;Z)Lcom/vungle/publisher/jg;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/jh;->C:Lcom/vungle/publisher/jg;

    .line 159
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/vungle/publisher/jh;->E:Z

    goto :goto_6
.end method

.method protected a(Lcom/vungle/publisher/jh;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jh;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Landroid/database/Cursor;",
            "Z)TA;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/cn$a;->a(Lcom/vungle/publisher/cn;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cn;

    .line 143
    const-string v0, "call_to_action_final_url"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/jh;->A:Ljava/lang/String;

    .line 144
    const-string v0, "call_to_action_url"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/jh;->B:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/vungle/publisher/jh$a;->j()Lcom/vungle/publisher/je$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/je$a;->a(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/je;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/jh;->D:Lcom/vungle/publisher/je;

    .line 146
    if-eqz p3, :cond_22

    .line 147
    invoke-virtual {p0, p1, p3}, Lcom/vungle/publisher/jh$a;->a(Lcom/vungle/publisher/jh;Z)Lcom/vungle/publisher/jg;

    .line 149
    :cond_22
    return-object p1
.end method

.method public a(Lcom/vungle/publisher/wp;)Lcom/vungle/publisher/jh;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TA;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/vungle/publisher/cn$a;->a(Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/cn;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/jh;

    .line 112
    invoke-virtual {p0}, Lcom/vungle/publisher/jh$a;->j()Lcom/vungle/publisher/je$a;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/vungle/publisher/je$a;->a(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/je;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/jh;->D:Lcom/vungle/publisher/je;

    .line 113
    invoke-virtual {p0}, Lcom/vungle/publisher/jh$a;->k()Lcom/vungle/publisher/jg$a;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/vungle/publisher/jg$a;->a(Lcom/vungle/publisher/jh;Lcom/vungle/publisher/wp;)Lcom/vungle/publisher/jg;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/jh;->C:Lcom/vungle/publisher/jg;

    .line 114
    return-object v0
.end method

.method public synthetic b(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/wc;)I
    .registers 4

    .prologue
    .line 104
    check-cast p1, Lcom/vungle/publisher/jh;

    check-cast p2, Lcom/vungle/publisher/wp;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/jh$a;->a(Lcom/vungle/publisher/jh;Lcom/vungle/publisher/wp;)I

    move-result v0

    return v0
.end method

.method protected b(Lcom/vungle/publisher/jh;Lcom/vungle/publisher/wp;)Lcom/vungle/publisher/jh;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TR;)TA;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/cn$a;->a(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/cn;

    .line 128
    invoke-virtual {p2}, Lcom/vungle/publisher/wp;->q()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p2}, Lcom/vungle/publisher/wp;->s()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 131
    iput-object v1, p1, Lcom/vungle/publisher/jh;->A:Ljava/lang/String;

    .line 137
    :goto_13
    return-object p1

    .line 134
    :cond_14
    iput-object v0, p1, Lcom/vungle/publisher/jh;->A:Ljava/lang/String;

    .line 135
    iput-object v1, p1, Lcom/vungle/publisher/jh;->B:Ljava/lang/String;

    goto :goto_13
.end method

.method protected abstract j()Lcom/vungle/publisher/je$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/je$a",
            "<*TA;TR;",
            "Lcom/vungle/publisher/ji;",
            "**>;"
        }
    .end annotation
.end method

.method protected abstract k()Lcom/vungle/publisher/jg$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/jg$a",
            "<TA;TV;TR;>;"
        }
    .end annotation
.end method
