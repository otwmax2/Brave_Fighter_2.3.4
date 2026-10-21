###### Class com.vungle.publisher.env.o (com.vungle.publisher.env.o)
.class public Lcom/vungle/publisher/env/o;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/VungleAdEventListener;",
            "Lcom/vungle/publisher/qi;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/vungle/publisher/pj$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/s;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/env/o;->a:Ljava/util/Map;

    .line 24
    const-string v0, "isExceptionReportingEnabled"

    iput-object v0, p0, Lcom/vungle/publisher/env/o;->d:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/env/o;->l:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/env/o;->m:Ljava/util/ArrayList;

    .line 43
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vungle/publisher/env/o;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/qi;

    .line 74
    invoke-interface {v0}, Lcom/vungle/publisher/qi;->unregister()V

    goto :goto_a

    .line 76
    :cond_1a
    iget-object v0, p0, Lcom/vungle/publisher/env/o;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 77
    return-void
.end method

.method public a(I)V
    .registers 5

    .prologue
    .line 119
    const-string v0, "VungleConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting willPlayAd response timeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iput p1, p0, Lcom/vungle/publisher/env/o;->i:I

    .line 121
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 3

    .prologue
    .line 185
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vungle/publisher/env/o;->f:Z

    .line 186
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lcom/vungle/publisher/env/o;->k:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/s;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    iput-object p1, p0, Lcom/vungle/publisher/env/o;->l:Ljava/util/List;

    .line 149
    return-void
.end method

.method public a(Z)V
    .registers 5

    .prologue
    .line 109
    const-string v1, "VungleConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1f

    const-string v0, "enabling"

    :goto_b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " call to willPlayAd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iput-boolean p1, p0, Lcom/vungle/publisher/env/o;->e:Z

    .line 111
    return-void

    .line 109
    :cond_1f
    const-string v0, "disabling"

    goto :goto_b
.end method

.method public varargs a([Lcom/vungle/publisher/VungleAdEventListener;)V
    .registers 5

    .prologue
    .line 46
    if-eqz p1, :cond_e

    .line 47
    array-length v1, p1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_e

    aget-object v2, p1, v0

    .line 48
    invoke-virtual {p0, v2}, Lcom/vungle/publisher/env/o;->a(Lcom/vungle/publisher/VungleAdEventListener;)Z

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 51
    :cond_e
    return-void
.end method

.method a(Lcom/vungle/publisher/VungleAdEventListener;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 54
    const-string v1, "VungleEvent"

    .line 56
    if-nez p1, :cond_d

    .line 57
    const-string v1, "VungleEvent"

    const-string v2, "ignoring add null event listener"

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_c
    return v0

    .line 59
    :cond_d
    iget-object v1, p0, Lcom/vungle/publisher/env/o;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v0, 0x1

    .line 60
    :cond_16
    if-eqz v0, :cond_3f

    .line 61
    const-string v1, "VungleEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding event listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/vungle/publisher/env/o;->b:Lcom/vungle/publisher/pj$a;

    invoke-virtual {v1, p1}, Lcom/vungle/publisher/pj$a;->a(Lcom/vungle/publisher/VungleAdEventListener;)Lcom/vungle/publisher/pj;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/vungle/publisher/env/o;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-interface {v1}, Lcom/vungle/publisher/qi;->registerSticky()V

    goto :goto_c

    .line 66
    :cond_3f
    const-string v1, "VungleEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "already added event listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public b(Ljava/lang/String;)Lcom/vungle/publisher/s;
    .registers 5

    .prologue
    .line 152
    if-eqz p1, :cond_1d

    .line 153
    iget-object v0, p0, Lcom/vungle/publisher/env/o;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/s;

    .line 154
    iget-object v2, v0, Lcom/vungle/publisher/s;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 160
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 130
    iput p1, p0, Lcom/vungle/publisher/env/o;->j:I

    .line 131
    return-void
.end method

.method public b(Ljava/lang/Boolean;)V
    .registers 3

    .prologue
    .line 205
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vungle/publisher/env/o;->h:Z

    .line 206
    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/vungle/publisher/env/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 165
    iget-object v0, p0, Lcom/vungle/publisher/env/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 166
    return-void
.end method

.method public b(Z)V
    .registers 5

    .prologue
    .line 124
    const-string v0, "VungleConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting exception reporting enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/vungle/publisher/env/o;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/env/o;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    return-void
.end method

.method public varargs b([Lcom/vungle/publisher/VungleAdEventListener;)V
    .registers 5

    .prologue
    .line 80
    if-eqz p1, :cond_e

    .line 81
    array-length v1, p1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_e

    aget-object v2, p1, v0

    .line 82
    invoke-virtual {p0, v2}, Lcom/vungle/publisher/env/o;->b(Lcom/vungle/publisher/VungleAdEventListener;)Z

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 85
    :cond_e
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/vungle/publisher/env/o;->e:Z

    return v0
.end method

.method b(Lcom/vungle/publisher/VungleAdEventListener;)Z
    .registers 7

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vungle/publisher/env/o;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/qi;

    .line 89
    if-eqz v0, :cond_29

    const/4 v1, 0x1

    .line 90
    :goto_b
    if-eqz v1, :cond_2b

    .line 91
    const-string v2, "VungleConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing event listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v0}, Lcom/vungle/publisher/qi;->unregister()V

    .line 96
    :goto_28
    return v1

    .line 89
    :cond_29
    const/4 v1, 0x0

    goto :goto_b

    .line 94
    :cond_2b
    const-string v0, "VungleConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event listener not found for remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method

.method public c()I
    .registers 4

    .prologue
    .line 114
    const-string v0, "VungleConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "willPlayAd response timeout config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vungle/publisher/env/o;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget v0, p0, Lcom/vungle/publisher/env/o;->i:I

    return v0
.end method

.method public c(Z)V
    .registers 2

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/vungle/publisher/env/o;->g:Z

    .line 194
    return-void
.end method

.method public varargs c([Lcom/vungle/publisher/VungleAdEventListener;)V
    .registers 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/vungle/publisher/env/o;->a()V

    .line 101
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/env/o;->a([Lcom/vungle/publisher/VungleAdEventListener;)V

    .line 102
    return-void
.end method

.method public d()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/vungle/publisher/env/o;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/vungle/publisher/env/o;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/s;

    .line 174
    iget-boolean v2, v0, Lcom/vungle/publisher/s;->b:Z

    if-eqz v2, :cond_6

    .line 175
    iget-object v0, v0, Lcom/vungle/publisher/s;->a:Ljava/lang/String;

    .line 177
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/s;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/vungle/publisher/env/o;->l:Ljava/util/List;

    return-object v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/vungle/publisher/env/o;->f:Z

    return v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/vungle/publisher/env/o;->g:Z

    return v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/vungle/publisher/env/o;->h:Z

    return v0
.end method
