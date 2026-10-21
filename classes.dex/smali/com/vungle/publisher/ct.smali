###### Class com.vungle.publisher.ct (com.vungle.publisher.ct)
.class public Lcom/vungle/publisher/ct;
.super Lcom/vungle/publisher/dp;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ct$a;
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


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field c:Lcom/vungle/publisher/ct$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vungle/publisher/dp;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method protected a(Z)Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 71
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 72
    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/vungle/publisher/ct;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "placement_reference_id"

    iget-object v2, p0, Lcom/vungle/publisher/ct;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-object v0
.end method

.method protected a()Lcom/vungle/publisher/ct$a;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vungle/publisher/ct;->c:Lcom/vungle/publisher/ct$a;

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 18
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/ct;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vungle/publisher/ct;->a:Ljava/lang/String;

    .line 62
    return-void
.end method

.method protected synthetic b_()Lcom/vungle/publisher/dp$a;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/vungle/publisher/ct;->a()Lcom/vungle/publisher/ct$a;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    const-string v0, "ad_placement"

    return-object v0
.end method

.method public synthetic c_()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/vungle/publisher/ct;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d_()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/vungle/publisher/ct;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vungle/publisher/ct;->a:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic e_()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/vungle/publisher/ct;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f_()I
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/vungle/publisher/ct;->c()Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string v0, "placement_reference_id = ? AND ad_id = ? "

    .line 103
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/vungle/publisher/ct;->b:Ljava/lang/String;

    aput-object v0, v4, v3

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/vungle/publisher/ct;->a:Ljava/lang/String;

    aput-object v2, v4, v0

    .line 105
    iget-object v0, p0, Lcom/vungle/publisher/ct;->v:Lcom/vungle/publisher/ci;

    .line 106
    invoke-virtual {p0, v3}, Lcom/vungle/publisher/ct;->a(Z)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "placement_reference_id = ? AND ad_id = ? "

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/vungle/publisher/ci;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    .line 107
    packed-switch v0, :pswitch_data_88

    .line 115
    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " records"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_4b
    return v0

    .line 109
    :pswitch_4c
    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows updated "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 112
    :pswitch_6b
    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update successful "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vungle/publisher/ct;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 107
    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_6b
    .end packed-switch
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/vungle/publisher/dp;->e_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected h_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    const-string v0, "ad_id"

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    invoke-super {p0}, Lcom/vungle/publisher/dp;->d_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected i_()Z
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method protected p()Ljava/lang/StringBuilder;
    .registers 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/vungle/publisher/dp;->p()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected q()I
    .registers 6

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/vungle/publisher/ct;->c()Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v1, "placement_reference_id = ? AND ad_id = ? "

    .line 82
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vungle/publisher/ct;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vungle/publisher/ct;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 84
    iget-object v2, p0, Lcom/vungle/publisher/ct;->v:Lcom/vungle/publisher/ci;

    .line 85
    invoke-virtual {v2}, Lcom/vungle/publisher/ci;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "placement_reference_id = ? AND ad_id = ? "

    invoke-virtual {v2, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 86
    packed-switch v1, :pswitch_data_88

    .line 94
    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " records"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_4a
    return v1

    .line 88
    :pswitch_4b
    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " rows updated "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 91
    :pswitch_6a
    const-string v0, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete successful "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vungle/publisher/ct;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 86
    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_6a
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/vungle/publisher/dp;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.ct.a (com.vungle.publisher.ct$a)
.class public Lcom/vungle/publisher/ct$a;
.super Lcom/vungle/publisher/dp$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dp$a",
        "<",
        "Lcom/vungle/publisher/ct;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ct;",
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
    .line 147
    invoke-direct {p0}, Lcom/vungle/publisher/dp$a;-><init>()V

    .line 148
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/List;)I
    .registers 3

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/vungle/publisher/dp$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method protected a()Lcom/vungle/publisher/ct;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/vungle/publisher/ct$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ct;

    .line 192
    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/ct;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ct;
    .registers 5

    .prologue
    .line 183
    const-string v0, "placement_reference_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/ct;->b:Ljava/lang/String;

    .line 184
    const-string v0, "ad_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/ct;->a:Ljava/lang/String;

    .line 186
    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/publisher/ct;
    .registers 5

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/vungle/publisher/ct$a;->a()Lcom/vungle/publisher/ct;

    move-result-object v0

    .line 164
    const-class v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/ct;->t:Ljava/lang/Class;

    .line 165
    iput-object p2, v0, Lcom/vungle/publisher/ct;->a:Ljava/lang/String;

    .line 166
    iput-object p1, v0, Lcom/vungle/publisher/ct;->b:Ljava/lang/String;

    .line 168
    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .registers 5

    .prologue
    .line 144
    check-cast p1, Lcom/vungle/publisher/ct;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/ct$a;->a(Lcom/vungle/publisher/ct;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ct;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/ct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    const-string v0, "ad_id = ?"

    .line 215
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 216
    const/4 v2, 0x0

    invoke-super {p0, v0, v1, v2}, Lcom/vungle/publisher/dp$a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 4

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/dp$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs a([Lcom/vungle/publisher/ct;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/vungle/publisher/ct;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/vungle/publisher/dp$a;->a([Lcom/vungle/publisher/dp;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a([Lcom/vungle/publisher/dp;)Ljava/util/List;
    .registers 3

    .prologue
    .line 144
    check-cast p1, [Lcom/vungle/publisher/ct;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/ct$a;->a([Lcom/vungle/publisher/ct;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(I)[Lcom/vungle/publisher/ct;
    .registers 3

    .prologue
    .line 197
    new-array v0, p1, [Lcom/vungle/publisher/ct;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/ct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    const-string v0, "placement_reference_id = ?"

    .line 221
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 222
    const/4 v2, 0x0

    invoke-super {p0, v0, v1, v2}, Lcom/vungle/publisher/dp$a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/ct$a;->c(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    const-string v0, "ad_placement"

    return-object v0
.end method

.method protected c(I)[Ljava/lang/String;
    .registers 3

    .prologue
    .line 202
    new-array v0, p1, [Ljava/lang/String;

    return-object v0
.end method

.method public synthetic d(I)[Lcom/vungle/publisher/dp;
    .registers 3

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/ct$a;->a(I)[Lcom/vungle/publisher/ct;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic g_()Lcom/vungle/publisher/dp;
    .registers 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/vungle/publisher/ct$a;->a()Lcom/vungle/publisher/ct;

    move-result-object v0

    return-object v0
.end method
