###### Class com.vungle.publisher.iz (com.vungle.publisher.iz)
.class public Lcom/vungle/publisher/iz;
.super Lcom/vungle/publisher/dp;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/iz$b;,
        Lcom/vungle/publisher/iz$a;
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
.field a:Lcom/vungle/publisher/iz$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/vungle/publisher/dp;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Z)Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 57
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 58
    if-eqz p1, :cond_19

    .line 59
    invoke-virtual {p0}, Lcom/vungle/publisher/iz;->h_()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/vungle/publisher/iz;->u:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    const-string v0, "ad_id"

    iget-object v2, p0, Lcom/vungle/publisher/iz;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_19
    const-string v0, "key"

    iget-object v2, p0, Lcom/vungle/publisher/iz;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "value"

    iget-object v2, p0, Lcom/vungle/publisher/iz;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-object v1
.end method

.method protected a()Lcom/vungle/publisher/iz$a;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vungle/publisher/iz;->a:Lcom/vungle/publisher/iz$a;

    return-object v0
.end method

.method protected synthetic b_()Lcom/vungle/publisher/dp$a;
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/vungle/publisher/iz;->a()Lcom/vungle/publisher/iz$a;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    const-string v0, "template_replacements"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vungle/publisher/iz;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vungle/publisher/iz;->c:Ljava/lang/String;

    return-object v0
.end method

###### Class com.vungle.publisher.iz.a (com.vungle.publisher.iz$a)
.class public Lcom/vungle/publisher/iz$a;
.super Lcom/vungle/publisher/dp$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/iz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dp$a",
        "<",
        "Lcom/vungle/publisher/iz;",
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
            "Lcom/vungle/publisher/iz;",
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
    .line 73
    invoke-direct {p0}, Lcom/vungle/publisher/dp$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/List;)I
    .registers 3

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/vungle/publisher/dp$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .registers 5

    .prologue
    .line 67
    check-cast p1, Lcom/vungle/publisher/iz;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/iz$a;->a(Lcom/vungle/publisher/iz;Landroid/database/Cursor;Z)Lcom/vungle/publisher/iz;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lcom/vungle/publisher/iz;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/vungle/publisher/iz$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/iz;

    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/iz;Landroid/database/Cursor;Z)Lcom/vungle/publisher/iz;
    .registers 5

    .prologue
    .line 115
    const-string v0, "ad_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/iz;->d:Ljava/lang/String;

    .line 116
    const-string v0, "key"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/iz;->b:Ljava/lang/String;

    .line 117
    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/iz;->c:Ljava/lang/String;

    .line 118
    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/publisher/iz;
    .registers 5

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/vungle/publisher/iz$a;->a()Lcom/vungle/publisher/iz;

    move-result-object v0

    .line 77
    iput-object p1, v0, Lcom/vungle/publisher/iz;->d:Ljava/lang/String;

    .line 78
    iput-object p2, v0, Lcom/vungle/publisher/iz;->b:Ljava/lang/String;

    .line 79
    iput-object p3, v0, Lcom/vungle/publisher/iz;->c:Ljava/lang/String;

    .line 80
    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/iz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    const-string v0, "ad_id = ?"

    .line 100
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 101
    const-string v1, "ad_id = ?"

    invoke-virtual {p0, v1, v0}, Lcom/vungle/publisher/iz$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/iz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    :try_start_5
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 87
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {p0, p1, v0, v3}, Lcom/vungle/publisher/iz$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/publisher/iz;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_20} :catch_21

    goto :goto_9

    .line 92
    :catch_21
    move-exception v0

    .line 93
    const-string v2, "VungleDatabase"

    const-string v3, "could not create template replacement list"

    invoke-static {v2, v3, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    :cond_29
    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 4

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/dp$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)[Lcom/vungle/publisher/iz;
    .registers 3

    .prologue
    .line 128
    new-array v0, p1, [Lcom/vungle/publisher/iz;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/vungle/publisher/iz$b;
    .registers 4

    .prologue
    .line 105
    new-instance v0, Lcom/vungle/publisher/iz$b;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/iz$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/publisher/iz$b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected synthetic b(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/iz$a;->c(I)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    const-string v0, "template_replacements"

    return-object v0
.end method

.method protected c(I)[Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 133
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method protected synthetic d(I)[Lcom/vungle/publisher/dp;
    .registers 3

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/iz$a;->a(I)[Lcom/vungle/publisher/iz;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic g_()Lcom/vungle/publisher/dp;
    .registers 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/vungle/publisher/iz$a;->a()Lcom/vungle/publisher/iz;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.iz.b (com.vungle.publisher.iz$b)
.class public Lcom/vungle/publisher/iz$b;
.super Lcom/vungle/publisher/vs;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/iz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/iz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/vungle/publisher/vs;-><init>()V

    .line 140
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/iz$b;->a:Lorg/json/JSONObject;

    .line 144
    :try_start_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/iz;

    .line 145
    iget-object v2, p0, Lcom/vungle/publisher/iz$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/vungle/publisher/iz;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/vungle/publisher/iz;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_27} :catch_28

    goto :goto_e

    .line 147
    :catch_28
    move-exception v0

    .line 148
    const-string v1, "VungleProtocol"

    const-string v2, "could not parse json"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    :cond_30
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vungle/publisher/iz$b;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/vungle/publisher/iz$b;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
