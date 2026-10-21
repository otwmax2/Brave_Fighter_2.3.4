###### Class com.moat.analytics.mobile.vng.x (com.moat.analytics.mobile.vng.x)
.class Lcom/moat/analytics/mobile/vng/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/vng/x$b;,
        Lcom/moat/analytics/mobile/vng/x$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/Object;


# instance fields
.field private final b:Lcom/moat/analytics/mobile/vng/x$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/vng/x$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/moat/analytics/mobile/vng/x",
            "<TT;>.b;>;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/moat/analytics/mobile/vng/x;->a:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/moat/analytics/mobile/vng/x$a;Ljava/lang/Class;)V
    .registers 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moat/analytics/mobile/vng/x$a",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/a/a/a;->a(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/moat/analytics/mobile/vng/a/a/a;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/x;->b:Lcom/moat/analytics/mobile/vng/x$a;

    iput-object p2, p0, Lcom/moat/analytics/mobile/vng/x;->c:Ljava/lang/Class;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/x;->d:Ljava/util/LinkedList;

    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->a()Lcom/moat/analytics/mobile/vng/w;

    move-result-object v0

    new-instance v1, Lcom/moat/analytics/mobile/vng/x$1;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/vng/x$1;-><init>(Lcom/moat/analytics/mobile/vng/x;)V

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/vng/w;->a(Lcom/moat/analytics/mobile/vng/w$b;)V

    return-void
.end method

.method static a(Lcom/moat/analytics/mobile/vng/x$a;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/vng/x$a",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lcom/moat/analytics/mobile/vng/x;

    invoke-direct {v1, p0, p1}, Lcom/moat/analytics/mobile/vng/x;-><init>(Lcom/moat/analytics/mobile/vng/x$a;Ljava/lang/Class;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .registers 4

    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    :goto_11
    return-object v0

    :catch_12
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    :cond_16
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->a()Lcom/moat/analytics/mobile/vng/w;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getClass"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/x;->c:Ljava/lang/Class;

    :goto_1e
    return-object v0

    :cond_1f
    const-string v1, "toString"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/moat/analytics/mobile/vng/x;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/x;->c:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_4f
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1e

    :cond_54
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/x;->e:Z

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/x;->f:Ljava/lang/Object;

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/x;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/x;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1e

    :cond_66
    iget-object v0, v1, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    sget-object v2, Lcom/moat/analytics/mobile/vng/w$d;->b:Lcom/moat/analytics/mobile/vng/w$d;

    if-ne v0, v2, :cond_7a

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/x;->c()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/x;->f:Ljava/lang/Object;

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/x;->f:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1e

    :cond_7a
    iget-object v0, v1, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    sget-object v1, Lcom/moat/analytics/mobile/vng/w$d;->a:Lcom/moat/analytics/mobile/vng/w$d;

    if-ne v0, v1, :cond_8b

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/x;->e:Z

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/x;->f:Ljava/lang/Object;

    if-eqz v0, :cond_8b

    :cond_88
    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/vng/x;->b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    :cond_8b
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/x;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1e
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/vng/x;)V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/x;->c()V

    return-void
.end method

.method static synthetic a()[Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/vng/x;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method private b()V
    .registers 4

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/x;->e:Z

    if-nez v0, :cond_14

    :try_start_4
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/x;->b:Lcom/moat/analytics/mobile/vng/x$a;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/vng/x$a;->a()Lcom/moat/analytics/mobile/vng/a/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/vng/a/b/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/x;->f:Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_15

    :goto_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/x;->e:Z

    :cond_14
    return-void

    :catch_15
    move-exception v0

    const-string v1, "OnOffTrackerProxy"

    const-string v2, "Could not create instance"

    invoke-static {v1, p0, v2, v0}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method private b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/x;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_10

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/x;->d:Ljava/util/LinkedList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_10
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/x;->d:Ljava/util/LinkedList;

    new-instance v1, Lcom/moat/analytics/mobile/vng/x$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/moat/analytics/mobile/vng/x$b;-><init>(Lcom/moat/analytics/mobile/vng/x;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/moat/analytics/mobile/vng/x$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private c()V
    .registers 11

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/x;->b()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/x;->f:Ljava/lang/Object;

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/x;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/x$b;

    :try_start_1b
    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/x$b;->a(Lcom/moat/analytics/mobile/vng/x$b;)[Ljava/lang/ref/WeakReference;

    move-result-object v1

    array-length v1, v1

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/x$b;->a(Lcom/moat/analytics/mobile/vng/x$b;)[Ljava/lang/ref/WeakReference;

    move-result-object v7

    array-length v8, v7

    move v1, v2

    move v3, v2

    :goto_29
    if-ge v1, v8, :cond_39

    aget-object v9, v7, v1

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v6, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_29

    :cond_39
    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/x$b;->b(Lcom/moat/analytics/mobile/vng/x$b;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/x;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_42} :catch_43

    goto :goto_f

    :catch_43
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_f

    :cond_48
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/x;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_8
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/moat/analytics/mobile/vng/x;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    invoke-direct {p0, p2}, Lcom/moat/analytics/mobile/vng/x;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4
.end method

###### Class com.moat.analytics.mobile.vng.x.AnonymousClass1 (com.moat.analytics.mobile.vng.x$1)
.class Lcom/moat/analytics/mobile/vng/x$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/vng/w$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/x;-><init>(Lcom/moat/analytics/mobile/vng/x$a;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/x;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/x;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/x$1;->a:Lcom/moat/analytics/mobile/vng/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/x$1;->a:Lcom/moat/analytics/mobile/vng/x;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/x;->a(Lcom/moat/analytics/mobile/vng/x;)V

    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

###### Class com.moat.analytics.mobile.vng.x.a (com.moat.analytics.mobile.vng.x$a)
.class interface abstract Lcom/moat/analytics/mobile/vng/x$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a()Lcom/moat/analytics/mobile/vng/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/vng/a/b/a",
            "<TT;>;"
        }
    .end annotation
.end method

###### Class com.moat.analytics.mobile.vng.x.b (com.moat.analytics.mobile.vng.x$b)
.class Lcom/moat/analytics/mobile/vng/x$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/x;

.field private final b:[Ljava/lang/ref/WeakReference;

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/reflect/Method;


# direct methods
.method private varargs constructor <init>(Lcom/moat/analytics/mobile/vng/x;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 11

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/x$b;->a:Lcom/moat/analytics/mobile/vng/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/moat/analytics/mobile/vng/x$b;->c:Ljava/util/LinkedList;

    if-nez p3, :cond_13

    invoke-static {}, Lcom/moat/analytics/mobile/vng/x;->a()[Ljava/lang/Object;

    move-result-object p3

    :cond_13
    array-length v1, p3

    new-array v3, v1, [Ljava/lang/ref/WeakReference;

    array-length v4, p3

    move v1, v0

    :goto_18
    if-ge v0, v4, :cond_3a

    aget-object v5, p3, v0

    instance-of v2, v5, Ljava/util/Map;

    if-nez v2, :cond_28

    instance-of v2, v5, Ljava/lang/Integer;

    if-nez v2, :cond_28

    instance-of v2, v5, Ljava/lang/Double;

    if-eqz v2, :cond_2d

    :cond_28
    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/x$b;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 v2, v1, 0x1

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v6, v3, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_18

    :cond_3a
    iput-object v3, p0, Lcom/moat/analytics/mobile/vng/x$b;->b:[Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/moat/analytics/mobile/vng/x$b;->d:Ljava/lang/reflect/Method;

    return-void
.end method

.method synthetic constructor <init>(Lcom/moat/analytics/mobile/vng/x;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/moat/analytics/mobile/vng/x$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/vng/x$b;-><init>(Lcom/moat/analytics/mobile/vng/x;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/vng/x$b;)[Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/x$b;->b:[Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/vng/x$b;)Ljava/lang/reflect/Method;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/x$b;->d:Ljava/lang/reflect/Method;

    return-object v0
.end method
