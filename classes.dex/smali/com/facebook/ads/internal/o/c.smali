###### Class com.facebook.ads.internal.o.c (com.facebook.ads.internal.o.c)
.class public Lcom/facebook/ads/internal/o/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/o/c$a;
    }
.end annotation


# static fields
.field private static final i:Lcom/facebook/ads/internal/q/a/l;

.field private static final j:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/ads/internal/o/e;

.field private final c:Lcom/facebook/ads/internal/l/a;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/ads/internal/o/c$a;

.field private f:Lcom/facebook/ads/internal/o/b;

.field private g:Lcom/facebook/ads/internal/p/a/a;

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/ads/internal/q/a/l;

    invoke-direct {v0}, Lcom/facebook/ads/internal/q/a/l;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/o/c;->i:Lcom/facebook/ads/internal/q/a/l;

    sget-object v0, Lcom/facebook/ads/internal/o/c;->i:Lcom/facebook/ads/internal/q/a/l;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, Lcom/facebook/ads/internal/o/c;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/o/c;->a:Landroid/content/Context;

    invoke-static {}, Lcom/facebook/ads/internal/o/e;->a()Lcom/facebook/ads/internal/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/o/c;->b:Lcom/facebook/ads/internal/o/e;

    new-instance v0, Lcom/facebook/ads/internal/l/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/o/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/o/c;->c:Lcom/facebook/ads/internal/l/a;

    invoke-static {}, Lcom/facebook/ads/internal/o/d;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/o/c;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/o/c;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/o/c;Lcom/facebook/ads/internal/p/a/a;)Lcom/facebook/ads/internal/p/a/a;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/o/c;->g:Lcom/facebook/ads/internal/p/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/o/c;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/o/c;->d:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/o/c;Lcom/facebook/ads/internal/protocol/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/protocol/a;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/o/c;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/o/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/facebook/ads/internal/o/g;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c;->e:Lcom/facebook/ads/internal/o/c$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c;->e:Lcom/facebook/ads/internal/o/c$a;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/o/c$a;->a(Lcom/facebook/ads/internal/o/g;)V

    :cond_9
    invoke-virtual {p0}, Lcom/facebook/ads/internal/o/c;->a()V

    return-void
.end method

.method private a(Lcom/facebook/ads/internal/protocol/a;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c;->e:Lcom/facebook/ads/internal/o/c$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c;->e:Lcom/facebook/ads/internal/o/c$a;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/o/c$a;->a(Lcom/facebook/ads/internal/protocol/a;)V

    :cond_9
    invoke-virtual {p0}, Lcom/facebook/ads/internal/o/c;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 13

    const/4 v5, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/facebook/ads/internal/o/c;->b:Lcom/facebook/ads/internal/o/e;

    invoke-virtual {v2, p1}, Lcom/facebook/ads/internal/o/e;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/o/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/o/f;->a()Lcom/facebook/ads/internal/h/c;

    move-result-object v4

    if-eqz v4, :cond_23

    iget-object v2, p0, Lcom/facebook/ads/internal/o/c;->c:Lcom/facebook/ads/internal/l/a;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/h/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/facebook/ads/internal/l/a;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/facebook/ads/internal/h/c;->a()Lcom/facebook/ads/internal/h/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/h/d;->d()J

    move-result-wide v6

    iget-object v2, p0, Lcom/facebook/ads/internal/o/c;->f:Lcom/facebook/ads/internal/o/b;

    invoke-static {v6, v7, v2}, Lcom/facebook/ads/internal/o/a;->a(JLcom/facebook/ads/internal/o/b;)V

    :cond_23
    sget-object v2, Lcom/facebook/ads/internal/o/c$3;->a:[I

    invoke-virtual {v3}, Lcom/facebook/ads/internal/o/f;->b()Lcom/facebook/ads/internal/o/f$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/ads/internal/o/f$a;->ordinal()I

    move-result v6

    aget v2, v2, v6

    packed-switch v2, :pswitch_data_186

    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_RESPONSE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v2, p1}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/protocol/a;)V

    :goto_3b
    return-void

    :pswitch_3c
    move-object v0, v3

    check-cast v0, Lcom/facebook/ads/internal/o/g;

    move-object v2, v0

    if-eqz v4, :cond_154

    invoke-virtual {v4}, Lcom/facebook/ads/internal/h/c;->a()Lcom/facebook/ads/internal/h/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/internal/h/d;->e()Z

    move-result v4

    if-eqz v4, :cond_51

    iget-object v4, p0, Lcom/facebook/ads/internal/o/c;->f:Lcom/facebook/ads/internal/o/b;

    invoke-static {p1, v4}, Lcom/facebook/ads/internal/o/a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/o/b;)V

    :cond_51
    iget-object v4, p0, Lcom/facebook/ads/internal/o/c;->d:Ljava/util/Map;

    if-eqz v4, :cond_9d

    iget-object v4, p0, Lcom/facebook/ads/internal/o/c;->d:Ljava/util/Map;

    const-string v6, "CLIENT_REQUEST_ID"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v6, v4

    :goto_60
    invoke-virtual {v3}, Lcom/facebook/ads/internal/o/f;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_136

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_136

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_75
    const-string v4, "qo290s8p6q174sr59pr123o45pr7pp29"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v5, v4, :cond_b4

    const-string v4, "qo290s8p6q174sr59pr123o45pr7pp29"

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v9, 0x61

    if-lt v4, v9, :cond_8b

    const/16 v9, 0x6d

    if-le v4, v9, :cond_93

    :cond_8b
    const/16 v9, 0x41

    if-lt v4, v9, :cond_a0

    const/16 v9, 0x4d

    if-gt v4, v9, :cond_a0

    :cond_93
    add-int/lit8 v4, v4, 0xd

    int-to-char v4, v4

    :cond_96
    :goto_96
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_75

    :cond_9d
    const/4 v4, 0x0

    move-object v6, v4

    goto :goto_60

    :cond_a0
    const/16 v9, 0x6e

    if-lt v4, v9, :cond_a8

    const/16 v9, 0x7a

    if-le v4, v9, :cond_b0

    :cond_a8
    const/16 v9, 0x4e

    if-lt v4, v9, :cond_96

    const/16 v9, 0x5a

    if-gt v4, v9, :cond_96

    :cond_b0
    add-int/lit8 v4, v4, -0xd

    int-to-char v4, v4

    goto :goto_96

    :cond_b4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iso-8859-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    const/4 v9, 0x0

    array-length v10, v4

    invoke-virtual {v5, v4, v9, v10}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/ads/internal/q/a/h;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/facebook/ads/internal/o/f;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_fa

    new-instance v4, Lcom/facebook/ads/internal/protocol/i;

    invoke-direct {v4}, Lcom/facebook/ads/internal/protocol/i;-><init>()V

    iget-object v5, p0, Lcom/facebook/ads/internal/o/c;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/facebook/ads/internal/q/d/a;->a(Ljava/lang/Exception;Landroid/content/Context;)V

    :cond_fa
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iso-8859-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    const/4 v8, 0x0

    array-length v9, v4

    invoke-virtual {v5, v4, v8, v9}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/ads/internal/q/a/h;->a([B)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/facebook/ads/internal/f/a;

    invoke-direct {v5, v7, v4}, Lcom/facebook/ads/internal/f/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/facebook/ads/internal/o/c;->a:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/facebook/ads/internal/f/e;->a(Lcom/facebook/ads/internal/f/d;Landroid/content/Context;)V

    :cond_136
    invoke-virtual {v3}, Lcom/facebook/ads/internal/o/f;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_154

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_154

    new-instance v4, Lcom/facebook/ads/internal/k/a;

    iget-object v5, p0, Lcom/facebook/ads/internal/o/c;->a:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/o/f;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/facebook/ads/internal/k/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/facebook/ads/internal/k/a;->a()V

    :cond_154
    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/g;)V
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_157} :catch_159

    goto/16 :goto_3b

    :catch_159
    move-exception v2

    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->PARSER_FAILURE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/protocol/a;)V

    goto/16 :goto_3b

    :pswitch_169
    :try_start_169
    check-cast v3, Lcom/facebook/ads/internal/o/h;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/o/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/facebook/ads/internal/o/h;->g()I

    move-result v3

    sget-object v4, Lcom/facebook/ads/internal/protocol/AdErrorType;->ERROR_MESSAGE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v3, v4}, Lcom/facebook/ads/internal/protocol/AdErrorType;->adErrorTypeFromCode(ILcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v3

    if-eqz v2, :cond_17c

    move-object p1, v2

    :cond_17c
    invoke-static {v3, p1}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/protocol/a;)V
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_183} :catch_159

    goto/16 :goto_3b

    nop

    :pswitch_data_186
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_169
    .end packed-switch
.end method

.method private b()Lcom/facebook/ads/internal/p/a/b;
    .registers 2

    new-instance v0, Lcom/facebook/ads/internal/o/c$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/o/c$2;-><init>(Lcom/facebook/ads/internal/o/c;)V

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/o/c;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/o/c;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/o/c;)Lcom/facebook/ads/internal/p/a/a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c;->g:Lcom/facebook/ads/internal/p/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/o/c;)Lcom/facebook/ads/internal/p/a/b;
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/internal/o/c;->b()Lcom/facebook/ads/internal/p/a/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/o/c;)Lcom/facebook/ads/internal/o/b;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c;->f:Lcom/facebook/ads/internal/o/b;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/o/c;)Lcom/facebook/ads/internal/o/e;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c;->b:Lcom/facebook/ads/internal/o/e;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c;->g:Lcom/facebook/ads/internal/p/a/a;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c;->g:Lcom/facebook/ads/internal/p/a/a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/p/a/a;->c(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c;->g:Lcom/facebook/ads/internal/p/a/a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/p/a/a;->b(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/o/c;->g:Lcom/facebook/ads/internal/p/a/a;

    :cond_12
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/o/b;)V
    .registers 5

    invoke-virtual {p0}, Lcom/facebook/ads/internal/o/c;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/q/c/d;->c(Landroid/content/Context;)Lcom/facebook/ads/internal/q/c/d$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/q/c/d$a;->b:Lcom/facebook/ads/internal/q/c/d$a;

    if-ne v0, v1, :cond_1a

    new-instance v0, Lcom/facebook/ads/internal/protocol/a;

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v2, "No network connection"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/protocol/a;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/protocol/a;)V

    :goto_19
    return-void

    :cond_1a
    iput-object p1, p0, Lcom/facebook/ads/internal/o/c;->f:Lcom/facebook/ads/internal/o/b;

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/g/a;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/facebook/ads/internal/o/a;->a(Lcom/facebook/ads/internal/o/b;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {p1}, Lcom/facebook/ads/internal/o/a;->c(Lcom/facebook/ads/internal/o/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/o/c;->a(Ljava/lang/String;)V

    goto :goto_19

    :cond_31
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/protocol/a;)V

    goto :goto_19

    :cond_3c
    sget-object v0, Lcom/facebook/ads/internal/o/c;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/facebook/ads/internal/o/c$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/o/c$1;-><init>(Lcom/facebook/ads/internal/o/c;Lcom/facebook/ads/internal/o/b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_19
.end method

.method public a(Lcom/facebook/ads/internal/o/c$a;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/o/c;->e:Lcom/facebook/ads/internal/o/c$a;

    return-void
.end method

###### Class com.facebook.ads.internal.o.c.AnonymousClass1 (com.facebook.ads.internal.o.c$1)
.class Lcom/facebook/ads/internal/o/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/o/b;

.field final synthetic b:Lcom/facebook/ads/internal/o/c;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/o/c;Lcom/facebook/ads/internal/o/b;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/o/c$1;->b:Lcom/facebook/ads/internal/o/c;

    iput-object p2, p0, Lcom/facebook/ads/internal/o/c$1;->a:Lcom/facebook/ads/internal/o/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c$1;->b:Lcom/facebook/ads/internal/o/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/c/b;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c$1;->a:Lcom/facebook/ads/internal/o/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/o/b;->e()Lcom/facebook/ads/internal/protocol/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/h;->a()Z

    move-result v0

    if-eqz v0, :cond_3b

    :try_start_15
    iget-object v0, p0, Lcom/facebook/ads/internal/o/c$1;->a:Lcom/facebook/ads/internal/o/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/o/b;->e()Lcom/facebook/ads/internal/protocol/h;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/c/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/protocol/h;->a(Ljava/lang/String;)V
    :try_end_20
    .catch Lcom/facebook/ads/internal/protocol/b; {:try_start_15 .. :try_end_20} :catch_30

    :goto_20
    iget-object v0, p0, Lcom/facebook/ads/internal/o/c$1;->b:Lcom/facebook/ads/internal/o/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/o/c$1;->a:Lcom/facebook/ads/internal/o/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/o/b;->e()Lcom/facebook/ads/internal/protocol/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/c;Ljava/lang/String;)V

    :goto_2f
    return-void

    :catch_30
    move-exception v0

    iget-object v1, p0, Lcom/facebook/ads/internal/o/c$1;->b:Lcom/facebook/ads/internal/o/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/b;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/c;Lcom/facebook/ads/internal/protocol/a;)V

    goto :goto_20

    :cond_3b
    iget-object v0, p0, Lcom/facebook/ads/internal/o/c$1;->b:Lcom/facebook/ads/internal/o/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/o/c$1;->a:Lcom/facebook/ads/internal/o/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/o/b;->f()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/c;Ljava/util/Map;)Ljava/util/Map;

    :try_start_46
    iget-object v0, p0, Lcom/facebook/ads/internal/o/c$1;->b:Lcom/facebook/ads/internal/o/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/o/c;->b(Lcom/facebook/ads/internal/o/c;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "M_BANNER_KEY"

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/facebook/ads/internal/o/c$1;->b:Lcom/facebook/ads/internal/o/c;

    invoke-static {v4}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/c;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/internal/o/c$1;->b:Lcom/facebook/ads/internal/o/c;

    invoke-static {v4}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/c;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/ads/internal/o/c$1;->b:Lcom/facebook/ads/internal/o/c;

    invoke-static {v5}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/c;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_98} :catch_fd

    :goto_98
    :try_start_98
    iget-object v0, p0, Lcom/facebook/ads/internal/o/c$1;->a:Lcom/facebook/ads/internal/o/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/o/b;->c:Lcom/facebook/ads/internal/protocol/f;

    sget-object v1, Lcom/facebook/ads/internal/protocol/f;->l:Lcom/facebook/ads/internal/protocol/f;

    if-eq v0, v1, :cond_ae

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c$1;->a:Lcom/facebook/ads/internal/o/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/o/b;->c:Lcom/facebook/ads/internal/protocol/f;

    sget-object v1, Lcom/facebook/ads/internal/protocol/f;->j:Lcom/facebook/ads/internal/protocol/f;

    if-eq v0, v1, :cond_ae

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c$1;->a:Lcom/facebook/ads/internal/o/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/o/b;->c:Lcom/facebook/ads/internal/protocol/f;

    if-nez v0, :cond_fb

    :cond_ae
    const/4 v0, 0x1

    :goto_af
    iget-object v1, p0, Lcom/facebook/ads/internal/o/c$1;->b:Lcom/facebook/ads/internal/o/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/o/c$1;->b:Lcom/facebook/ads/internal/o/c;

    invoke-static {v2}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/facebook/ads/internal/q/c/d;->b(Landroid/content/Context;Z)Lcom/facebook/ads/internal/p/a/a;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/c;Lcom/facebook/ads/internal/p/a/a;)Lcom/facebook/ads/internal/p/a/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c$1;->b:Lcom/facebook/ads/internal/o/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/o/c;->d(Lcom/facebook/ads/internal/o/c;)Lcom/facebook/ads/internal/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/o/c$1;->b:Lcom/facebook/ads/internal/o/c;

    invoke-static {v1}, Lcom/facebook/ads/internal/o/c;->c(Lcom/facebook/ads/internal/o/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/o/c$1;->b:Lcom/facebook/ads/internal/o/c;

    invoke-static {v2}, Lcom/facebook/ads/internal/o/c;->d(Lcom/facebook/ads/internal/o/c;)Lcom/facebook/ads/internal/p/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/p/a/a;->b()Lcom/facebook/ads/internal/p/a/p;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/o/c$1;->b:Lcom/facebook/ads/internal/o/c;

    invoke-static {v3}, Lcom/facebook/ads/internal/o/c;->b(Lcom/facebook/ads/internal/o/c;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/p/a/p;->a(Ljava/util/Map;)Lcom/facebook/ads/internal/p/a/p;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/o/c$1;->b:Lcom/facebook/ads/internal/o/c;

    invoke-static {v3}, Lcom/facebook/ads/internal/o/c;->e(Lcom/facebook/ads/internal/o/c;)Lcom/facebook/ads/internal/p/a/b;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/ads/internal/p/a/a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/p/a/p;Lcom/facebook/ads/internal/p/a/b;)V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_e7} :catch_e9

    goto/16 :goto_2f

    :catch_e9
    move-exception v0

    iget-object v1, p0, Lcom/facebook/ads/internal/o/c$1;->b:Lcom/facebook/ads/internal/o/c;

    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_REQUEST_FAILED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/c;Lcom/facebook/ads/internal/protocol/a;)V

    goto/16 :goto_2f

    :cond_fb
    const/4 v0, 0x0

    goto :goto_af

    :catch_fd
    move-exception v0

    goto :goto_98
.end method

###### Class com.facebook.ads.internal.o.c.AnonymousClass2 (com.facebook.ads.internal.o.c$2)
.class Lcom/facebook/ads/internal/o/c$2;
.super Lcom/facebook/ads/internal/p/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/o/c;->b()Lcom/facebook/ads/internal/p/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/o/c;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/o/c;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/o/c$2;->a:Lcom/facebook/ads/internal/o/c;

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/facebook/ads/internal/p/a/m;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c$2;->a:Lcom/facebook/ads/internal/o/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/o/c;->f(Lcom/facebook/ads/internal/o/c;)Lcom/facebook/ads/internal/o/b;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/o/a;->b(Lcom/facebook/ads/internal/o/b;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c$2;->a:Lcom/facebook/ads/internal/o/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/c;Lcom/facebook/ads/internal/p/a/a;)Lcom/facebook/ads/internal/p/a/a;

    :try_start_f
    invoke-virtual {p1}, Lcom/facebook/ads/internal/p/a/m;->a()Lcom/facebook/ads/internal/p/a/n;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Lcom/facebook/ads/internal/p/a/n;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/internal/o/c$2;->a:Lcom/facebook/ads/internal/o/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/o/c;->g(Lcom/facebook/ads/internal/o/c;)Lcom/facebook/ads/internal/o/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/o/e;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/o/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/o/f;->b()Lcom/facebook/ads/internal/o/f$a;

    move-result-object v2

    sget-object v3, Lcom/facebook/ads/internal/o/f$a;->b:Lcom/facebook/ads/internal/o/f$a;

    if-ne v2, v3, :cond_4b

    check-cast v0, Lcom/facebook/ads/internal/o/h;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/o/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/ads/internal/o/h;->g()I

    move-result v0

    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->ERROR_MESSAGE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->adErrorTypeFromCode(ILcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/internal/o/c$2;->a:Lcom/facebook/ads/internal/o/c;

    if-nez v2, :cond_48

    move-object v0, v1

    :goto_40
    invoke-static {v3, v0}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/c;Lcom/facebook/ads/internal/protocol/a;)V
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_47} :catch_4a

    :goto_47
    return-void

    :cond_48
    move-object v0, v2

    goto :goto_40

    :catch_4a
    move-exception v0

    :cond_4b
    iget-object v0, p0, Lcom/facebook/ads/internal/o/c$2;->a:Lcom/facebook/ads/internal/o/c;

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/p/a/m;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/c;Lcom/facebook/ads/internal/protocol/a;)V

    goto :goto_47
.end method

.method public a(Lcom/facebook/ads/internal/p/a/n;)V
    .registers 5

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/facebook/ads/internal/p/a/n;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/o/c$2;->a:Lcom/facebook/ads/internal/o/c;

    invoke-static {v1}, Lcom/facebook/ads/internal/o/c;->f(Lcom/facebook/ads/internal/o/c;)Lcom/facebook/ads/internal/o/b;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/o/a;->b(Lcom/facebook/ads/internal/o/b;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/o/c$2;->a:Lcom/facebook/ads/internal/o/c;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/c;Lcom/facebook/ads/internal/p/a/a;)Lcom/facebook/ads/internal/p/a/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/o/c$2;->a:Lcom/facebook/ads/internal/o/c;

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/c;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 5

    const-class v0, Lcom/facebook/ads/internal/p/a/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    check-cast p1, Lcom/facebook/ads/internal/p/a/m;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/o/c$2;->a(Lcom/facebook/ads/internal/p/a/m;)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/internal/o/c$2;->a:Lcom/facebook/ads/internal/o/c;

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/c;Lcom/facebook/ads/internal/protocol/a;)V

    goto :goto_11
.end method

###### Class com.facebook.ads.internal.o.c.AnonymousClass3 (com.facebook.ads.internal.o.c$3)
.class synthetic Lcom/facebook/ads/internal/o/c$3;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/o/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/facebook/ads/internal/o/f$a;->values()[Lcom/facebook/ads/internal/o/f$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/internal/o/c$3;->a:[I

    :try_start_9
    sget-object v0, Lcom/facebook/ads/internal/o/c$3;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/o/f$a;->c:Lcom/facebook/ads/internal/o/f$a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/o/f$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lcom/facebook/ads/internal/o/c$3;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/o/f$a;->b:Lcom/facebook/ads/internal/o/f$a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/o/f$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method

###### Class com.facebook.ads.internal.o.c.a (com.facebook.ads.internal.o.c$a)
.class public interface abstract Lcom/facebook/ads/internal/o/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/o/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lcom/facebook/ads/internal/o/g;)V
.end method

.method public abstract a(Lcom/facebook/ads/internal/protocol/a;)V
.end method
