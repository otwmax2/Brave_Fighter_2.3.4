###### Class com.vungle.publisher.ek (com.vungle.publisher.ek)
.class public Lcom/vungle/publisher/ek;
.super Lcom/vungle/publisher/jg;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ge$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ek$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jg",
        "<",
        "Lcom/vungle/publisher/el;",
        ">;",
        "Lcom/vungle/publisher/ge$b",
        "<",
        "Lcom/vungle/publisher/el;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/vungle/publisher/ge;

.field c:Lcom/vungle/publisher/el$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/ek$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/vungle/publisher/jg;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Z)Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/vungle/publisher/jg;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/vungle/publisher/ek;->b:Lcom/vungle/publisher/ge;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ge;->a(Landroid/content/ContentValues;)V

    .line 165
    const-string v1, "checksum"

    iget-object v2, p0, Lcom/vungle/publisher/ek;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/vungle/publisher/ek;->o()Lcom/vungle/publisher/ei$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vungle/publisher/ek;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vungle/publisher/ek;->b:Lcom/vungle/publisher/ge;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ge;->a(Ljava/lang/Integer;)V

    .line 66
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vungle/publisher/ek;->b:Lcom/vungle/publisher/ge;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ge;->a(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method protected synthetic b_()Lcom/vungle/publisher/dp$a;
    .registers 2

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/vungle/publisher/ek;->h()Lcom/vungle/publisher/ek$a;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vungle/publisher/ek;->b:Lcom/vungle/publisher/ge;

    invoke-virtual {v0}, Lcom/vungle/publisher/ge;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h()Lcom/vungle/publisher/ek$a;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/ek;->d:Lcom/vungle/publisher/ek$a;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vungle/publisher/ek;->b:Lcom/vungle/publisher/ge;

    invoke-virtual {v0}, Lcom/vungle/publisher/ge;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vungle/publisher/ek;->b:Lcom/vungle/publisher/ge;

    invoke-virtual {v0}, Lcom/vungle/publisher/ge;->j()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vungle/publisher/ek;->b:Lcom/vungle/publisher/ge;

    invoke-virtual {v0}, Lcom/vungle/publisher/ge;->l()Z

    move-result v0

    return v0
.end method

.method protected p()Ljava/lang/StringBuilder;
    .registers 4

    .prologue
    .line 173
    invoke-super {p0}, Lcom/vungle/publisher/jg;->p()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/vungle/publisher/ek;->b:Lcom/vungle/publisher/ge;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ge;->a(Ljava/lang/StringBuilder;)V

    .line 175
    const-string v1, "checksum"

    iget-object v2, p0, Lcom/vungle/publisher/ek;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/ek;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    return-object v0
.end method

.method public q()I
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vungle/publisher/ek;->b:Lcom/vungle/publisher/ge;

    invoke-virtual {v0}, Lcom/vungle/publisher/ge;->h()I

    move-result v0

    return v0
.end method

.method public r()Z
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/vungle/publisher/ek;->b:Lcom/vungle/publisher/ge;

    invoke-virtual {v0}, Lcom/vungle/publisher/ge;->n()Z

    move-result v0

    return v0
.end method

.method public s()I
    .registers 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/vungle/publisher/jg;->q()I

    move-result v0

    return v0
.end method

.method public t()Z
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vungle/publisher/ek;->b:Lcom/vungle/publisher/ge;

    invoke-virtual {v0}, Lcom/vungle/publisher/ge;->k()Z

    move-result v0

    return v0
.end method

.method public u()Z
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vungle/publisher/ek;->b:Lcom/vungle/publisher/ge;

    invoke-virtual {v0}, Lcom/vungle/publisher/ge;->m()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/vungle/publisher/ek;->z()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected v()Lcom/vungle/publisher/el$a;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vungle/publisher/ek;->c:Lcom/vungle/publisher/el$a;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    const-string v0, "mp4"

    return-object v0
.end method

.method public x()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 85
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/vungle/publisher/ek;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic y()Lcom/vungle/publisher/cn$a;
    .registers 2

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/vungle/publisher/ek;->v()Lcom/vungle/publisher/el$a;

    move-result-object v0

    return-object v0
.end method

.method z()Z
    .registers 2

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

###### Class com.vungle.publisher.ek.a (com.vungle.publisher.ek$a)
.class public Lcom/vungle/publisher/ek$a;
.super Lcom/vungle/publisher/jg$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jg$a",
        "<",
        "Lcom/vungle/publisher/el;",
        "Lcom/vungle/publisher/ek;",
        "Lcom/vungle/publisher/wg;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final c:Lcom/vungle/publisher/ei$b;


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ek;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/ge$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 181
    sget-object v0, Lcom/vungle/publisher/ei$b;->a:Lcom/vungle/publisher/ei$b;

    sput-object v0, Lcom/vungle/publisher/ek$a;->c:Lcom/vungle/publisher/ei$b;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/vungle/publisher/jg$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/ek;Lcom/vungle/publisher/wg;)Lcom/vungle/publisher/ek;
    .registers 4

    .prologue
    .line 211
    invoke-virtual {p2}, Lcom/vungle/publisher/wg;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/ek;->a:Ljava/lang/String;

    .line 212
    invoke-virtual {p2}, Lcom/vungle/publisher/wg;->o()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ek;->a(Ljava/lang/Integer;)V

    .line 213
    invoke-virtual {p2}, Lcom/vungle/publisher/wg;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ek;->a(Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/vungle/publisher/ek$a;->c:Lcom/vungle/publisher/ei$b;

    iput-object v0, p1, Lcom/vungle/publisher/ek;->r:Lcom/vungle/publisher/ei$b;

    .line 215
    return-object p1
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .registers 5

    .prologue
    .line 179
    check-cast p1, Lcom/vungle/publisher/ek;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/ek$a;->a(Lcom/vungle/publisher/ek;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ek;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lcom/vungle/publisher/ei$b;
    .registers 2

    .prologue
    .line 193
    sget-object v0, Lcom/vungle/publisher/ek$a;->c:Lcom/vungle/publisher/ei$b;

    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/ek;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ek;
    .registers 5

    .prologue
    .line 220
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/jg$a;->a(Lcom/vungle/publisher/jg;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jg;

    .line 221
    iget-object v0, p1, Lcom/vungle/publisher/ek;->b:Lcom/vungle/publisher/ge;

    invoke-virtual {v0, p2}, Lcom/vungle/publisher/ge;->a(Landroid/database/Cursor;)V

    .line 222
    const-string v0, "checksum"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/ek;->a:Ljava/lang/String;

    .line 223
    return-object p1
.end method

.method protected a(Lcom/vungle/publisher/el;Lcom/vungle/publisher/wg;)Lcom/vungle/publisher/ek;
    .registers 4

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/jg$a;->a(Lcom/vungle/publisher/jh;Lcom/vungle/publisher/wp;)Lcom/vungle/publisher/jg;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ek;

    .line 199
    if-eqz v0, :cond_c

    .line 200
    invoke-direct {p0, v0, p2}, Lcom/vungle/publisher/ek$a;->a(Lcom/vungle/publisher/ek;Lcom/vungle/publisher/wg;)Lcom/vungle/publisher/ek;

    move-result-object v0

    .line 202
    :cond_c
    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/jg;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jg;
    .registers 5

    .prologue
    .line 179
    check-cast p1, Lcom/vungle/publisher/ek;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/ek$a;->a(Lcom/vungle/publisher/ek;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ek;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/jh;Lcom/vungle/publisher/wp;)Lcom/vungle/publisher/jg;
    .registers 4

    .prologue
    .line 179
    check-cast p1, Lcom/vungle/publisher/el;

    check-cast p2, Lcom/vungle/publisher/wg;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/ek$a;->a(Lcom/vungle/publisher/el;Lcom/vungle/publisher/wg;)Lcom/vungle/publisher/ek;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/jm;
    .registers 4

    .prologue
    .line 179
    check-cast p1, Lcom/vungle/publisher/el;

    check-cast p2, Lcom/vungle/publisher/wg;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/ek$a;->a(Lcom/vungle/publisher/el;Lcom/vungle/publisher/wg;)Lcom/vungle/publisher/ek;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/jm;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jm;
    .registers 5

    .prologue
    .line 179
    check-cast p1, Lcom/vungle/publisher/ek;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/ek$a;->a(Lcom/vungle/publisher/ek;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ek;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)[Lcom/vungle/publisher/ek;
    .registers 3

    .prologue
    .line 228
    new-array v0, p1, [Lcom/vungle/publisher/ek;

    return-object v0
.end method

.method protected d()Lcom/vungle/publisher/ek;
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/vungle/publisher/ek$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ek;

    .line 234
    iget-object v1, p0, Lcom/vungle/publisher/ek$a;->b:Lcom/vungle/publisher/ge$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ge$a;->a(Lcom/vungle/publisher/ge$b;)Lcom/vungle/publisher/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ek;->b:Lcom/vungle/publisher/ge;

    .line 235
    return-object v0
.end method

.method protected synthetic d(I)[Lcom/vungle/publisher/dp;
    .registers 3

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/ek$a;->a(I)[Lcom/vungle/publisher/ek;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic g_()Lcom/vungle/publisher/dp;
    .registers 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/vungle/publisher/ek$a;->d()Lcom/vungle/publisher/ek;

    move-result-object v0

    return-object v0
.end method
