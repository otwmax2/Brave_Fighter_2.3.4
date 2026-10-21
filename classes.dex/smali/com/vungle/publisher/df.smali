###### Class com.vungle.publisher.df (com.vungle.publisher.df)
.class public Lcom/vungle/publisher/df;
.super Lcom/vungle/publisher/dp;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/df$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dp",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/ej;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ej",
            "<**>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Ljava/lang/Integer;

.field d:Lcom/vungle/publisher/df$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/vungle/publisher/dp;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Z)Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 127
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/vungle/publisher/df;->u:Ljava/lang/Object;

    if-eqz v0, :cond_12

    .line 129
    const-string v2, "id"

    iget-object v0, p0, Lcom/vungle/publisher/df;->u:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    :cond_12
    const-string v0, "viewable_id"

    invoke-virtual {p0}, Lcom/vungle/publisher/df;->h()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v0, "relative_path"

    iget-object v2, p0, Lcom/vungle/publisher/df;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "size"

    iget-object v2, p0, Lcom/vungle/publisher/df;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    return-object v1
.end method

.method protected a()Lcom/vungle/publisher/df$a;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vungle/publisher/df;->d:Lcom/vungle/publisher/df$a;

    return-object v0
.end method

.method b(Z)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 74
    const-string v1, "VunglePrepare"

    .line 75
    invoke-virtual {p0}, Lcom/vungle/publisher/df;->i()Ljava/io/File;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/vungle/publisher/df;->c:Ljava/lang/Integer;

    if-nez v2, :cond_69

    .line 78
    if-eqz p1, :cond_2b

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 80
    if-eqz v0, :cond_50

    .line 81
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_2b
    :goto_2b
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "size"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_4f
    return v0

    .line 84
    :cond_50
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/publisher/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 90
    :cond_69
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    .line 91
    iget-object v3, p0, Lcom/vungle/publisher/df;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 92
    if-ne v2, v3, :cond_77

    const/4 v0, 0x1

    .line 93
    :cond_77
    if-eqz v0, :cond_96

    .line 94
    const-string v3, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " size verified "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    .line 97
    :cond_96
    const-string v0, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " doesn\'t match expected "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_4f
.end method

.method protected synthetic b_()Lcom/vungle/publisher/dp$a;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/vungle/publisher/df;->a()Lcom/vungle/publisher/df$a;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    const-string v0, "archive_entry"

    return-object v0
.end method

.method e()Lcom/vungle/publisher/ej;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/ej",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vungle/publisher/df;->a:Lcom/vungle/publisher/ej;

    return-object v0
.end method

.method public f_()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 110
    iget-object v0, p0, Lcom/vungle/publisher/df;->u:Ljava/lang/Object;

    if-nez v0, :cond_5c

    .line 111
    invoke-virtual {p0}, Lcom/vungle/publisher/df;->h()Ljava/lang/Integer;

    move-result-object v5

    .line 112
    iget-object v6, p0, Lcom/vungle/publisher/df;->b:Ljava/lang/String;

    .line 113
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating archive_entry by viewable_id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "relative_path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/vungle/publisher/df;->v:Lcom/vungle/publisher/ci;

    .line 115
    invoke-virtual {v0}, Lcom/vungle/publisher/ci;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "archive_entry"

    .line 116
    invoke-virtual {p0, v7}, Lcom/vungle/publisher/df;->a(Z)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "viewable_id = ? AND relative_path = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    .line 117
    invoke-virtual {p0}, Lcom/vungle/publisher/df;->A()V

    .line 122
    :goto_5b
    return v0

    .line 120
    :cond_5c
    invoke-super {p0}, Lcom/vungle/publisher/dp;->f_()I

    move-result v0

    goto :goto_5b
.end method

.method h()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vungle/publisher/df;->a:Lcom/vungle/publisher/ej;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/vungle/publisher/df;->a:Lcom/vungle/publisher/ej;

    invoke-virtual {v0}, Lcom/vungle/publisher/ej;->M()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5
.end method

.method i()Ljava/io/File;
    .registers 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/vungle/publisher/df;->n()Ljava/lang/String;

    move-result-object v1

    .line 56
    if-nez v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_7
.end method

.method m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/vungle/publisher/df;->e()Lcom/vungle/publisher/ej;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/ej;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method n()Ljava/lang/String;
    .registers 4

    .prologue
    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vungle/publisher/df;->m()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vungle/publisher/df;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/vungle/publisher/qr;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected p()Ljava/lang/StringBuilder;
    .registers 4

    .prologue
    .line 139
    invoke-super {p0}, Lcom/vungle/publisher/dp;->p()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 140
    const-string v1, "viewable_id"

    invoke-virtual {p0}, Lcom/vungle/publisher/df;->h()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/df;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    const-string v1, "relative_path"

    iget-object v2, p0, Lcom/vungle/publisher/df;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/df;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    const-string v1, "size"

    iget-object v2, p0, Lcom/vungle/publisher/df;->c:Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/df;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    return-object v0
.end method

.method r()Z
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/df;->b(Z)Z

    move-result v0

    return v0
.end method

###### Class com.vungle.publisher.df.a (com.vungle.publisher.df$a)
.class public Lcom/vungle/publisher/df$a;
.super Lcom/vungle/publisher/dp$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/df;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dp$a",
        "<",
        "Lcom/vungle/publisher/df;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/df;",
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
    .line 151
    invoke-direct {p0}, Lcom/vungle/publisher/dp$a;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Integer;)I
    .registers 8

    .prologue
    .line 162
    if-nez p1, :cond_a

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null viewable_id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_a
    iget-object v0, p0, Lcom/vungle/publisher/df$a;->d:Lcom/vungle/publisher/ci;

    .line 166
    invoke-virtual {v0}, Lcom/vungle/publisher/ci;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "archive_entry"

    const-string v2, "viewable_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 167
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 168
    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "archive_entry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rows for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "viewable_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return v0
.end method

.method public bridge synthetic a(Ljava/util/List;)I
    .registers 3

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/vungle/publisher/dp$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method protected a()Lcom/vungle/publisher/df;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/vungle/publisher/df$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/df;

    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/df;Landroid/database/Cursor;Z)Lcom/vungle/publisher/df;
    .registers 5

    .prologue
    .line 261
    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->c(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/df;->u:Ljava/lang/Object;

    .line 262
    const-string v0, "relative_path"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/df;->b:Ljava/lang/String;

    .line 263
    const-string v0, "size"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->c(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/df;->c:Ljava/lang/Integer;

    .line 264
    return-object p1
.end method

.method a(Lcom/vungle/publisher/df;Lcom/vungle/publisher/ej;Landroid/database/Cursor;)Lcom/vungle/publisher/df;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/df;",
            "Lcom/vungle/publisher/ej",
            "<**>;",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/vungle/publisher/df;"
        }
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0}, Lcom/vungle/publisher/df$a;->b(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;

    .line 255
    iput-object p2, p1, Lcom/vungle/publisher/df;->a:Lcom/vungle/publisher/ej;

    .line 256
    return-object p1
.end method

.method public a(Lcom/vungle/publisher/ej;Ljava/io/File;Ljava/lang/String;I)Lcom/vungle/publisher/df;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ej",
            "<**>;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/vungle/publisher/df;"
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/vungle/publisher/df$a;->a()Lcom/vungle/publisher/df;

    move-result-object v0

    .line 155
    iput-object p1, v0, Lcom/vungle/publisher/df;->a:Lcom/vungle/publisher/ej;

    .line 156
    iput-object p3, v0, Lcom/vungle/publisher/df;->b:Ljava/lang/String;

    .line 157
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/df;->c:Ljava/lang/Integer;

    .line 158
    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .registers 5

    .prologue
    .line 146
    check-cast p1, Lcom/vungle/publisher/df;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/df$a;->a(Lcom/vungle/publisher/df;Landroid/database/Cursor;Z)Lcom/vungle/publisher/df;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 4

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/dp$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)[Lcom/vungle/publisher/df;
    .registers 3

    .prologue
    .line 274
    new-array v0, p1, [Lcom/vungle/publisher/df;

    return-object v0
.end method

.method a(Lcom/vungle/publisher/ej;)[Lcom/vungle/publisher/df;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ej",
            "<**>;)[",
            "Lcom/vungle/publisher/df;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 225
    if-nez p1, :cond_c

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null archive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_c
    invoke-virtual {p1}, Lcom/vungle/publisher/ej;->M()Ljava/lang/Integer;

    move-result-object v5

    .line 229
    if-nez v5, :cond_1a

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null viewable_id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1a
    :try_start_1a
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetching archive_entry records by viewable_id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/vungle/publisher/df$a;->d:Lcom/vungle/publisher/ci;

    .line 237
    invoke-virtual {v0}, Lcom/vungle/publisher/ci;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "archive_entry"

    const/4 v2, 0x0

    const-string v3, "viewable_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 238
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4d
    .catchall {:try_start_1a .. :try_end_4d} :catchall_86

    move-result-object v1

    .line 239
    :try_start_4e
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v2, v0, [Lcom/vungle/publisher/df;

    move v0, v9

    .line 240
    :goto_55
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_80

    .line 241
    invoke-virtual {p0}, Lcom/vungle/publisher/df$a;->a()Lcom/vungle/publisher/df;

    move-result-object v3

    invoke-virtual {p0, v3, p1, v1}, Lcom/vungle/publisher/df$a;->a(Lcom/vungle/publisher/df;Lcom/vungle/publisher/ej;Landroid/database/Cursor;)Lcom/vungle/publisher/df;

    move-result-object v3

    aput-object v3, v2, v0

    .line 242
    const-string v4, "VungleDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetched "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_4e .. :try_end_7d} :catchall_8e

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 246
    :cond_80
    if-eqz v1, :cond_85

    .line 247
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_85
    return-object v2

    .line 246
    :catchall_86
    move-exception v0

    move-object v1, v8

    :goto_88
    if-eqz v1, :cond_8d

    .line 247
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8d
    throw v0

    .line 246
    :catchall_8e
    move-exception v0

    goto :goto_88
.end method

.method protected synthetic b(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/df$a;->c(I)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    const-string v0, "archive_entry"

    return-object v0
.end method

.method protected c(I)[Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 279
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method protected synthetic d(I)[Lcom/vungle/publisher/dp;
    .registers 3

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/df$a;->a(I)[Lcom/vungle/publisher/df;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic g_()Lcom/vungle/publisher/dp;
    .registers 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/vungle/publisher/df$a;->a()Lcom/vungle/publisher/df;

    move-result-object v0

    return-object v0
.end method
