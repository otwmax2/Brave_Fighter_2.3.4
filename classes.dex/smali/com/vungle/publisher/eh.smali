###### Class com.vungle.publisher.eh (com.vungle.publisher.eh)
.class public abstract Lcom/vungle/publisher/eh;
.super Lcom/vungle/publisher/dp;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/eh$a;
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
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/vungle/publisher/jf;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vungle/publisher/dp;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Z)Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 34
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 35
    const-string v2, "id"

    iget-object v0, p0, Lcom/vungle/publisher/eh;->u:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 36
    const-string v0, "ad_id"

    iget-object v2, p0, Lcom/vungle/publisher/eh;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "event"

    iget-object v2, p0, Lcom/vungle/publisher/eh;->c:Lcom/vungle/publisher/jf;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "url"

    iget-object v2, p0, Lcom/vungle/publisher/eh;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-object v1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vungle/publisher/eh;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    const-string v0, "event_tracking"

    return-object v0
.end method

.method public p()Ljava/lang/StringBuilder;
    .registers 4

    .prologue
    .line 44
    invoke-super {p0}, Lcom/vungle/publisher/dp;->p()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/vungle/publisher/eh;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/eh;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    const-string v1, "event"

    iget-object v2, p0, Lcom/vungle/publisher/eh;->c:Lcom/vungle/publisher/jf;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/eh;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    const-string v1, "url"

    iget-object v2, p0, Lcom/vungle/publisher/eh;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/eh;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    return-object v0
.end method

###### Class com.vungle.publisher.eh.a (com.vungle.publisher.eh$a)
.class abstract Lcom/vungle/publisher/eh$a;
.super Lcom/vungle/publisher/dp$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/eh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/vungle/publisher/eh;",
        "T:",
        "Lcom/vungle/publisher/wu;",
        "R:",
        "Lcom/vungle/publisher/wc;",
        ">",
        "Lcom/vungle/publisher/dp$a",
        "<TE;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/vungle/publisher/dp$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .registers 5

    .prologue
    .line 55
    check-cast p1, Lcom/vungle/publisher/eh;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/eh$a;->a(Lcom/vungle/publisher/eh;Landroid/database/Cursor;Z)Lcom/vungle/publisher/eh;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/eh;Landroid/database/Cursor;Z)Lcom/vungle/publisher/eh;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Landroid/database/Cursor;",
            "Z)TE;"
        }
    .end annotation

    .prologue
    .line 174
    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->c(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/eh;->u:Ljava/lang/Object;

    .line 175
    const-string v0, "ad_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/eh;->b:Ljava/lang/String;

    .line 176
    const-string v0, "url"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/eh;->a:Ljava/lang/String;

    .line 177
    return-object p1
.end method

.method a(Ljava/lang/String;Lcom/vungle/publisher/jf;Ljava/lang/String;)Lcom/vungle/publisher/eh;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vungle/publisher/jf;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    if-eqz p2, :cond_11

    if-eqz p3, :cond_11

    .line 164
    invoke-virtual {p0}, Lcom/vungle/publisher/eh$a;->g_()Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/eh;

    .line 165
    iput-object p1, v0, Lcom/vungle/publisher/eh;->b:Ljava/lang/String;

    .line 166
    iput-object p2, v0, Lcom/vungle/publisher/eh;->c:Lcom/vungle/publisher/jf;

    .line 167
    iput-object p3, v0, Lcom/vungle/publisher/eh;->a:Ljava/lang/String;

    .line 169
    :cond_11
    return-object v0
.end method

.method a(Ljava/lang/String;Lcom/vungle/publisher/jf;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vungle/publisher/jf;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 148
    .line 149
    if-eqz p3, :cond_33

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_33

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/publisher/eh$a;->a(Ljava/lang/String;Lcom/vungle/publisher/jf;Ljava/lang/String;)Lcom/vungle/publisher/eh;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_12

    .line 154
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_28
    move-object v0, v2

    .line 158
    :goto_29
    if-eqz v0, :cond_31

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    :cond_31
    move-object v0, v1

    :cond_32
    return-object v0

    :cond_33
    move-object v0, v1

    goto :goto_29
.end method

.method a(Lcom/vungle/publisher/wc;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/jf;",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/vungle/publisher/wc;->g()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/eh$a;->a(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lcom/vungle/publisher/wc;->e()Lcom/vungle/publisher/wu;

    move-result-object v1

    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/eh$a;->a(Ljava/lang/String;Lcom/vungle/publisher/wu;)Ljava/util/Map;

    move-result-object v0

    .line 78
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/eh$a;->a(Ljava/util/Map;)V

    .line 79
    return-object v0
.end method

.method abstract a(Ljava/lang/String;Lcom/vungle/publisher/wu;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)",
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/jf;",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation
.end method

.method a(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vungle/publisher/eh$a;->d:Lcom/vungle/publisher/ci;

    .line 61
    invoke-virtual {v0}, Lcom/vungle/publisher/ci;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "event_tracking"

    const-string v2, "ad_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 62
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 66
    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " expired "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "event_tracking"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " records for adId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/jf;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/jf;",
            "Ljava/util/List",
            "<TE;>;>;",
            "Lcom/vungle/publisher/jf;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    if-eqz p4, :cond_17

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 128
    invoke-virtual {p0, p1, p3, p4}, Lcom/vungle/publisher/eh$a;->a(Ljava/lang/String;Lcom/vungle/publisher/jf;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 130
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_17
    return-void
.end method

.method a(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/jf;",
            "Ljava/util/List",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    if-eqz p1, :cond_2c

    .line 84
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 85
    if-eqz v0, :cond_a

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/eh;

    .line 87
    invoke-virtual {v0}, Lcom/vungle/publisher/eh;->d_()Ljava/lang/Object;

    goto :goto_1c

    .line 92
    :cond_2c
    return-void
.end method

.method a(Ljava/util/Map;Lcom/vungle/publisher/eh;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/jf;",
            "Ljava/util/List",
            "<TE;>;>;TE;)V"
        }
    .end annotation

    .prologue
    .line 136
    if-eqz p2, :cond_17

    .line 137
    iget-object v1, p2, Lcom/vungle/publisher/eh;->c:Lcom/vungle/publisher/jf;

    .line 138
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 139
    if-nez v0, :cond_14

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_14
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_17
    return-void
.end method

.method protected a(I)[Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 187
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method b(Ljava/lang/String;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/jf;",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 95
    .line 96
    if-nez p1, :cond_1d

    .line 97
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to fetch event_tracking records by ad_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    .line 123
    :cond_1c
    :goto_1c
    return-object v0

    .line 102
    :cond_1d
    :try_start_1d
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetching event_tracking records by ad_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/vungle/publisher/eh$a;->d:Lcom/vungle/publisher/ci;

    .line 104
    invoke-virtual {v0}, Lcom/vungle/publisher/ci;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "event_tracking"

    const/4 v2, 0x0

    const-string v3, "ad_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 105
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4c
    .catchall {:try_start_1d .. :try_end_4c} :catchall_b0

    move-result-object v1

    .line 106
    :try_start_4d
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 107
    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "event_tracking"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ad_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    if-lez v0, :cond_b2

    .line 109
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 110
    :goto_8c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 111
    invoke-virtual {p0}, Lcom/vungle/publisher/eh$a;->g_()Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/eh;

    .line 112
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/vungle/publisher/eh$a;->b(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;

    .line 113
    invoke-virtual {p0, v8, v0}, Lcom/vungle/publisher/eh$a;->a(Ljava/util/Map;Lcom/vungle/publisher/eh;)V
    :try_end_9f
    .catchall {:try_start_4d .. :try_end_9f} :catchall_a0

    goto :goto_8c

    .line 118
    :catchall_a0
    move-exception v0

    move-object v8, v1

    :goto_a2
    if-eqz v8, :cond_a7

    .line 119
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_a7
    throw v0

    :cond_a8
    move-object v0, v8

    .line 118
    :goto_a9
    if-eqz v1, :cond_1c

    .line 119
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1c

    .line 118
    :catchall_b0
    move-exception v0

    goto :goto_a2

    :cond_b2
    move-object v0, v8

    goto :goto_a9
.end method

.method protected synthetic b(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/eh$a;->a(I)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    const-string v0, "event_tracking"

    return-object v0
.end method
