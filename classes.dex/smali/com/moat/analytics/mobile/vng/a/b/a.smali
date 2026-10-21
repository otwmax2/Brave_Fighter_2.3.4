###### Class com.moat.analytics.mobile.vng.a.b.a (com.moat.analytics.mobile.vng.a.b.a)
.class public final Lcom/moat/analytics/mobile/vng/a/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lcom/moat/analytics/mobile/vng/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/vng/a/b/a",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/moat/analytics/mobile/vng/a/b/a;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/a/b/a;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/vng/a/b/a;->a:Lcom/moat/analytics/mobile/vng/a/b/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/a/b/a;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Optional of null value."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/a/b/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/moat/analytics/mobile/vng/a/b/a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/moat/analytics/mobile/vng/a/b/a",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/moat/analytics/mobile/vng/a/b/a;->a:Lcom/moat/analytics/mobile/vng/a/b/a;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/vng/a/b/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/moat/analytics/mobile/vng/a/b/a",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/moat/analytics/mobile/vng/a/b/a;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/vng/a/b/a;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lcom/moat/analytics/mobile/vng/a/b/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/moat/analytics/mobile/vng/a/b/a",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_7

    invoke-static {}, Lcom/moat/analytics/mobile/vng/a/b/a;->a()Lcom/moat/analytics/mobile/vng/a/b/a;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0}, Lcom/moat/analytics/mobile/vng/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/vng/a/b/a;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/a/b/a;->b:Ljava/lang/Object;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/a/b/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/a/b/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/a/b/a;->b:Ljava/lang/Object;

    :cond_6
    return-object p1
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/a/b/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p0, p1, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lcom/moat/analytics/mobile/vng/a/b/a;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/moat/analytics/mobile/vng/a/b/a;

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/a/b/a;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/moat/analytics/mobile/vng/a/b/a;->b:Ljava/lang/Object;

    if-eq v2, v3, :cond_24

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/a/b/a;->b:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/moat/analytics/mobile/vng/a/b/a;->b:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/a/b/a;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/moat/analytics/mobile/vng/a/b/a;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_24
    move v0, v1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/a/b/a;->b:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/a/b/a;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/a/b/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_13

    const-string v0, "Optional[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/moat/analytics/mobile/vng/a/b/a;->b:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const-string v0, "Optional.empty"

    goto :goto_12
.end method
