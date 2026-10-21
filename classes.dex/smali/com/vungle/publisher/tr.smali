###### Class com.vungle.publisher.tr (com.vungle.publisher.tr)
.class public abstract Lcom/vungle/publisher/tr;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/tr$a;,
        Lcom/vungle/publisher/tr$b;,
        Lcom/vungle/publisher/tr$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/os/Bundle;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-string v0, "^https://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/vungle/publisher/tr;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/vungle/publisher/tr$b;
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vungle/publisher/tr;->c:Landroid/os/Bundle;

    .line 62
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vungle/publisher/tr;->b:Ljava/lang/String;

    .line 50
    return-void
.end method

.method protected abstract b()Lcom/vungle/publisher/tr$c;
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vungle/publisher/tr;->c:Landroid/os/Bundle;

    if-nez v0, :cond_6

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/vungle/publisher/tr;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vungle/publisher/tr;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vungle/publisher/tr;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/tr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vungle/publisher/tr;->d:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vungle/publisher/tr;->b()Lcom/vungle/publisher/tr$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.tr.a (com.vungle.publisher.tr$a)
.class public abstract Lcom/vungle/publisher/tr$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/tr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vungle/publisher/tr;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract b()Lcom/vungle/publisher/tr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected c()Lcom/vungle/publisher/tr;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/vungle/publisher/tr$a;->b()Lcom/vungle/publisher/tr;

    move-result-object v0

    .line 106
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/tr;->a(Landroid/os/Bundle;)V

    .line 107
    return-object v0
.end method

###### Class com.vungle.publisher.tr.b (com.vungle.publisher.tr$b)
.class public final enum Lcom/vungle/publisher/tr$b;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/tr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/tr$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/tr$b;

.field public static final enum b:Lcom/vungle/publisher/tr$b;

.field public static final enum c:Lcom/vungle/publisher/tr$b;

.field private static final synthetic d:[Lcom/vungle/publisher/tr$b;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/vungle/publisher/tr$b;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/tr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/tr$b;->a:Lcom/vungle/publisher/tr$b;

    .line 35
    new-instance v0, Lcom/vungle/publisher/tr$b;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/tr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/tr$b;->b:Lcom/vungle/publisher/tr$b;

    .line 36
    new-instance v0, Lcom/vungle/publisher/tr$b;

    const-string v1, "POST"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/tr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/tr$b;->c:Lcom/vungle/publisher/tr$b;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vungle/publisher/tr$b;

    sget-object v1, Lcom/vungle/publisher/tr$b;->a:Lcom/vungle/publisher/tr$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/publisher/tr$b;->b:Lcom/vungle/publisher/tr$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/tr$b;->c:Lcom/vungle/publisher/tr$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vungle/publisher/tr$b;->d:[Lcom/vungle/publisher/tr$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/tr$b;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/vungle/publisher/tr$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/tr$b;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/tr$b;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/vungle/publisher/tr$b;->d:[Lcom/vungle/publisher/tr$b;

    invoke-virtual {v0}, [Lcom/vungle/publisher/tr$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/tr$b;

    return-object v0
.end method

###### Class com.vungle.publisher.tr.c (com.vungle.publisher.tr$c)
.class public final enum Lcom/vungle/publisher/tr$c;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/tr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/tr$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/tr$c;

.field public static final enum b:Lcom/vungle/publisher/tr$c;

.field public static final enum c:Lcom/vungle/publisher/tr$c;

.field public static final enum d:Lcom/vungle/publisher/tr$c;

.field public static final enum e:Lcom/vungle/publisher/tr$c;

.field public static final enum f:Lcom/vungle/publisher/tr$c;

.field public static final enum g:Lcom/vungle/publisher/tr$c;

.field public static final enum h:Lcom/vungle/publisher/tr$c;

.field public static final enum i:Lcom/vungle/publisher/tr$c;

.field public static final enum j:Lcom/vungle/publisher/tr$c;

.field private static final synthetic k:[Lcom/vungle/publisher/tr$c;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/vungle/publisher/tr$c;

    const-string v1, "download"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/tr$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/tr$c;->a:Lcom/vungle/publisher/tr$c;

    .line 22
    new-instance v0, Lcom/vungle/publisher/tr$c;

    const-string v1, "reportAd"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/tr$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/tr$c;->b:Lcom/vungle/publisher/tr$c;

    .line 23
    new-instance v0, Lcom/vungle/publisher/tr$c;

    const-string v1, "requestConfig"

    invoke-direct {v0, v1, v5}, Lcom/vungle/publisher/tr$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/tr$c;->c:Lcom/vungle/publisher/tr$c;

    .line 24
    new-instance v0, Lcom/vungle/publisher/tr$c;

    const-string v1, "requestLocalAd"

    invoke-direct {v0, v1, v6}, Lcom/vungle/publisher/tr$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/tr$c;->d:Lcom/vungle/publisher/tr$c;

    .line 25
    new-instance v0, Lcom/vungle/publisher/tr$c;

    const-string v1, "requestWillPlayAd"

    invoke-direct {v0, v1, v7}, Lcom/vungle/publisher/tr$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/tr$c;->e:Lcom/vungle/publisher/tr$c;

    .line 26
    new-instance v0, Lcom/vungle/publisher/tr$c;

    const-string v1, "trackEvent"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/tr$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/tr$c;->f:Lcom/vungle/publisher/tr$c;

    .line 27
    new-instance v0, Lcom/vungle/publisher/tr$c;

    const-string v1, "trackInstall"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/tr$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/tr$c;->g:Lcom/vungle/publisher/tr$c;

    .line 28
    new-instance v0, Lcom/vungle/publisher/tr$c;

    const-string v1, "unfilledAd"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/tr$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/tr$c;->h:Lcom/vungle/publisher/tr$c;

    .line 29
    new-instance v0, Lcom/vungle/publisher/tr$c;

    const-string v1, "reportExceptions"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/tr$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/tr$c;->i:Lcom/vungle/publisher/tr$c;

    .line 30
    new-instance v0, Lcom/vungle/publisher/tr$c;

    const-string v1, "appFingerprint"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/tr$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/tr$c;->j:Lcom/vungle/publisher/tr$c;

    .line 20
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/vungle/publisher/tr$c;

    sget-object v1, Lcom/vungle/publisher/tr$c;->a:Lcom/vungle/publisher/tr$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/tr$c;->b:Lcom/vungle/publisher/tr$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vungle/publisher/tr$c;->c:Lcom/vungle/publisher/tr$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vungle/publisher/tr$c;->d:Lcom/vungle/publisher/tr$c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vungle/publisher/tr$c;->e:Lcom/vungle/publisher/tr$c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/vungle/publisher/tr$c;->f:Lcom/vungle/publisher/tr$c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vungle/publisher/tr$c;->g:Lcom/vungle/publisher/tr$c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vungle/publisher/tr$c;->h:Lcom/vungle/publisher/tr$c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/vungle/publisher/tr$c;->i:Lcom/vungle/publisher/tr$c;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/vungle/publisher/tr$c;->j:Lcom/vungle/publisher/tr$c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vungle/publisher/tr$c;->k:[Lcom/vungle/publisher/tr$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/tr$c;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/vungle/publisher/tr$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/tr$c;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/tr$c;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/vungle/publisher/tr$c;->k:[Lcom/vungle/publisher/tr$c;

    invoke-virtual {v0}, [Lcom/vungle/publisher/tr$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/tr$c;

    return-object v0
.end method
