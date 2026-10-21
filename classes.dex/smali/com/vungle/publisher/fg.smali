###### Class com.vungle.publisher.fg (com.vungle.publisher.fg)
.class public Lcom/vungle/publisher/fg;
.super Lcom/vungle/publisher/jk;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/eg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/fg$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jk",
        "<",
        "Lcom/vungle/publisher/fg;",
        "Lcom/vungle/publisher/fb;",
        "Lcom/vungle/publisher/fh;",
        "Lcom/vungle/publisher/el;",
        "Lcom/vungle/publisher/ek;",
        ">;",
        "Lcom/vungle/publisher/eg;"
    }
.end annotation


# instance fields
.field s:Lcom/vungle/publisher/fg$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field w:Lcom/vungle/publisher/fb$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field x:Lcom/vungle/publisher/ds;


# direct methods
.method protected constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vungle/publisher/jk;-><init>()V

    return-void
.end method


# virtual methods
.method protected D()Lcom/vungle/publisher/fg$a;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vungle/publisher/fg;->s:Lcom/vungle/publisher/fg$a;

    return-object v0
.end method

.method protected E()Lcom/vungle/publisher/fb$a;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vungle/publisher/fg;->w:Lcom/vungle/publisher/fb$a;

    return-object v0
.end method

.method public F()I
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vungle/publisher/fg;->x:Lcom/vungle/publisher/ds;

    invoke-virtual {v0}, Lcom/vungle/publisher/ds;->a()I

    move-result v0

    return v0
.end method

.method protected a(Z)Landroid/content/ContentValues;
    .registers 4

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/vungle/publisher/jk;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/vungle/publisher/fg;->x:Lcom/vungle/publisher/ds;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ds;->a(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 56
    return-object v0
.end method

.method protected synthetic a()Lcom/vungle/publisher/cy$a;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/vungle/publisher/fg;->E()Lcom/vungle/publisher/fb$a;

    move-result-object v0

    return-object v0
.end method

.method public a_(Ljava/lang/Long;)V
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vungle/publisher/fg;->x:Lcom/vungle/publisher/ds;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ds;->b(Ljava/lang/Long;)V

    .line 48
    return-void
.end method

.method protected synthetic b_()Lcom/vungle/publisher/dp$a;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/vungle/publisher/fg;->D()Lcom/vungle/publisher/fg$a;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/StringBuilder;
    .registers 4

    .prologue
    .line 63
    invoke-super {p0}, Lcom/vungle/publisher/jk;->p()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    const-string v1, "download_end_millis"

    iget-object v2, p0, Lcom/vungle/publisher/fg;->o:Ljava/lang/Long;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/fg;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    return-object v0
.end method

###### Class com.vungle.publisher.fg.a (com.vungle.publisher.fg$a)
.class public Lcom/vungle/publisher/fg$a;
.super Lcom/vungle/publisher/jk$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/fg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jk$a",
        "<",
        "Lcom/vungle/publisher/fg;",
        "Lcom/vungle/publisher/fb;",
        "Lcom/vungle/publisher/fh;",
        "Lcom/vungle/publisher/el;",
        "Lcom/vungle/publisher/ek;",
        "Lcom/vungle/publisher/wg;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field c:Lcom/vungle/publisher/el$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/fb$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/fg;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/ds$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/vungle/publisher/jk$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/vungle/publisher/cn$a;
    .registers 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/vungle/publisher/fg$a;->g()Lcom/vungle/publisher/el$a;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/cz;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cz;
    .registers 5

    .prologue
    .line 68
    check-cast p1, Lcom/vungle/publisher/fg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/fg$a;->a(Lcom/vungle/publisher/fg;Landroid/database/Cursor;Z)Lcom/vungle/publisher/fg;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/cz;Lcom/vungle/publisher/cn;Z)Lcom/vungle/publisher/cz;
    .registers 5

    .prologue
    .line 68
    check-cast p1, Lcom/vungle/publisher/fg;

    check-cast p2, Lcom/vungle/publisher/el;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/fg$a;->a(Lcom/vungle/publisher/fg;Lcom/vungle/publisher/el;Z)Lcom/vungle/publisher/fg;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .registers 5

    .prologue
    .line 68
    check-cast p1, Lcom/vungle/publisher/fg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/fg$a;->a(Lcom/vungle/publisher/fg;Landroid/database/Cursor;Z)Lcom/vungle/publisher/fg;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/fg;Landroid/database/Cursor;Z)Lcom/vungle/publisher/fg;
    .registers 5

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/jk$a;->a(Lcom/vungle/publisher/cz;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cz;

    .line 102
    const-string v0, "download_end_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/fg;->o:Ljava/lang/Long;

    .line 103
    return-object p1
.end method

.method protected a(Lcom/vungle/publisher/fg;Lcom/vungle/publisher/el;Z)Lcom/vungle/publisher/fg;
    .registers 5

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/jk$a;->a(Lcom/vungle/publisher/cz;Lcom/vungle/publisher/cn;Z)Lcom/vungle/publisher/cz;

    .line 109
    iget-object v0, p0, Lcom/vungle/publisher/fg$a;->g:Lcom/vungle/publisher/ds$a;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ds$a;->a(Lcom/vungle/publisher/cz;)Lcom/vungle/publisher/ds;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/fg;->x:Lcom/vungle/publisher/ds;

    .line 110
    return-object p1
.end method

.method protected c(I)[Lcom/vungle/publisher/fg;
    .registers 3

    .prologue
    .line 115
    new-array v0, p1, [Lcom/vungle/publisher/fg;

    return-object v0
.end method

.method protected synthetic d()Lcom/vungle/publisher/cy$a;
    .registers 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/vungle/publisher/fg$a;->h()Lcom/vungle/publisher/fb$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d(I)[Lcom/vungle/publisher/dp;
    .registers 3

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/fg$a;->c(I)[Lcom/vungle/publisher/fg;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/vungle/publisher/m;
    .registers 2

    .prologue
    .line 86
    sget-object v0, Lcom/vungle/publisher/m;->a:Lcom/vungle/publisher/m;

    return-object v0
.end method

.method protected g()Lcom/vungle/publisher/el$a;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vungle/publisher/fg$a;->c:Lcom/vungle/publisher/el$a;

    return-object v0
.end method

.method protected synthetic g_()Lcom/vungle/publisher/dp;
    .registers 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/vungle/publisher/fg$a;->i()Lcom/vungle/publisher/fg;

    move-result-object v0

    return-object v0
.end method

.method protected h()Lcom/vungle/publisher/fb$a;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vungle/publisher/fg$a;->e:Lcom/vungle/publisher/fb$a;

    return-object v0
.end method

.method protected i()Lcom/vungle/publisher/fg;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vungle/publisher/fg$a;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/fg;

    return-object v0
.end method
