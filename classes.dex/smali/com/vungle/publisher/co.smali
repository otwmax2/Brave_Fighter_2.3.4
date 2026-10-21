###### Class com.vungle.publisher.co (com.vungle.publisher.co)
.class public Lcom/vungle/publisher/co;
.super Lcom/vungle/publisher/dp;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/co$a;
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
.field a:Lcom/vungle/publisher/co$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vungle/publisher/dp;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/co;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcom/vungle/publisher/co;->c:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/publisher/co;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcom/vungle/publisher/co;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected a(Z)Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 40
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 41
    if-eqz p1, :cond_19

    .line 42
    invoke-virtual {p0}, Lcom/vungle/publisher/co;->h_()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/vungle/publisher/co;->u:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    const-string v0, "report_id"

    iget-object v2, p0, Lcom/vungle/publisher/co;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    :cond_19
    const-string v0, "code"

    iget-object v2, p0, Lcom/vungle/publisher/co;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-object v1
.end method

.method protected a()Lcom/vungle/publisher/co$a;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vungle/publisher/co;->a:Lcom/vungle/publisher/co$a;

    return-object v0
.end method

.method protected synthetic b_()Lcom/vungle/publisher/dp$a;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/vungle/publisher/co;->a()Lcom/vungle/publisher/co$a;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    const-string v0, "errors"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vungle/publisher/co;->b:Ljava/lang/String;

    return-object v0
.end method

###### Class com.vungle.publisher.co.a (com.vungle.publisher.co$a)
.class public Lcom/vungle/publisher/co$a;
.super Lcom/vungle/publisher/dp$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/co;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dp$a",
        "<",
        "Lcom/vungle/publisher/co;",
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
            "Lcom/vungle/publisher/co;",
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
    .line 60
    invoke-direct {p0}, Lcom/vungle/publisher/dp$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/List;)I
    .registers 3

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/vungle/publisher/dp$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method protected a()Lcom/vungle/publisher/co;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vungle/publisher/co$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/co;

    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/co;Landroid/database/Cursor;Z)Lcom/vungle/publisher/co;
    .registers 5

    .prologue
    .line 76
    const-string v0, "code"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vungle/publisher/co;->a(Lcom/vungle/publisher/co;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    const-string v0, "report_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->c(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vungle/publisher/co;->a(Lcom/vungle/publisher/co;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 78
    return-object p1
.end method

.method public a(Ljava/lang/Integer;Ljava/lang/String;)Lcom/vungle/publisher/co;
    .registers 4

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/vungle/publisher/co$a;->a()Lcom/vungle/publisher/co;

    move-result-object v0

    .line 64
    invoke-static {v0, p2}, Lcom/vungle/publisher/co;->a(Lcom/vungle/publisher/co;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    invoke-static {v0, p1}, Lcom/vungle/publisher/co;->a(Lcom/vungle/publisher/co;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 66
    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .registers 5

    .prologue
    .line 54
    check-cast p1, Lcom/vungle/publisher/co;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/co$a;->a(Lcom/vungle/publisher/co;Landroid/database/Cursor;Z)Lcom/vungle/publisher/co;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/co;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    const-string v0, "report_id = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/co$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 4

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/dp$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)[Lcom/vungle/publisher/co;
    .registers 3

    .prologue
    .line 92
    new-array v0, p1, [Lcom/vungle/publisher/co;

    return-object v0
.end method

.method protected synthetic b(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/co$a;->c(I)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    const-string v0, "errors"

    return-object v0
.end method

.method protected c(I)[Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 97
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method protected synthetic d(I)[Lcom/vungle/publisher/dp;
    .registers 3

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/co$a;->a(I)[Lcom/vungle/publisher/co;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic g_()Lcom/vungle/publisher/dp;
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/vungle/publisher/co$a;->a()Lcom/vungle/publisher/co;

    move-result-object v0

    return-object v0
.end method
