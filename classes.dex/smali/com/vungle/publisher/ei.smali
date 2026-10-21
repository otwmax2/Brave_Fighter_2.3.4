###### Class com.vungle.publisher.ei (com.vungle.publisher.ei)
.class public interface abstract Lcom/vungle/publisher/ei;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/gj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ei$b;,
        Lcom/vungle/publisher/ei$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/cn;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/gj",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/vungle/publisher/ei$a;)V
.end method

.method public abstract b(Lcom/vungle/publisher/ei$a;)V
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract j()Lcom/vungle/publisher/ei$a;
.end method

.method public abstract o()Lcom/vungle/publisher/ei$b;
.end method

###### Class com.vungle.publisher.ei.a (com.vungle.publisher.ei$a)
.class public final enum Lcom/vungle/publisher/ei$a;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/ei$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/ei$a;

.field public static final enum b:Lcom/vungle/publisher/ei$a;

.field public static final enum c:Lcom/vungle/publisher/ei$a;

.field public static final enum d:Lcom/vungle/publisher/ei$a;

.field private static final synthetic e:[Lcom/vungle/publisher/ei$a;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/vungle/publisher/ei$a;

    const-string v1, "aware"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/ei$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/ei$a;->a:Lcom/vungle/publisher/ei$a;

    .line 15
    new-instance v0, Lcom/vungle/publisher/ei$a;

    const-string v1, "downloaded"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/ei$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/ei$a;->b:Lcom/vungle/publisher/ei$a;

    .line 16
    new-instance v0, Lcom/vungle/publisher/ei$a;

    const-string v1, "ready"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/ei$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/ei$a;->c:Lcom/vungle/publisher/ei$a;

    .line 17
    new-instance v0, Lcom/vungle/publisher/ei$a;

    const-string v1, "failed"

    invoke-direct {v0, v1, v5}, Lcom/vungle/publisher/ei$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/ei$a;->d:Lcom/vungle/publisher/ei$a;

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vungle/publisher/ei$a;

    sget-object v1, Lcom/vungle/publisher/ei$a;->a:Lcom/vungle/publisher/ei$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/publisher/ei$a;->b:Lcom/vungle/publisher/ei$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/ei$a;->c:Lcom/vungle/publisher/ei$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vungle/publisher/ei$a;->d:Lcom/vungle/publisher/ei$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vungle/publisher/ei$a;->e:[Lcom/vungle/publisher/ei$a;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/ei$a;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/vungle/publisher/ei$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ei$a;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/ei$a;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/vungle/publisher/ei$a;->e:[Lcom/vungle/publisher/ei$a;

    invoke-virtual {v0}, [Lcom/vungle/publisher/ei$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/ei$a;

    return-object v0
.end method

###### Class com.vungle.publisher.ei.b (com.vungle.publisher.ei$b)
.class public final enum Lcom/vungle/publisher/ei$b;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/ei$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/ei$b;

.field public static final enum b:Lcom/vungle/publisher/ei$b;

.field public static final enum c:Lcom/vungle/publisher/ei$b;

.field public static final enum d:Lcom/vungle/publisher/ei$b;

.field public static final enum e:Lcom/vungle/publisher/ei$b;

.field private static final synthetic f:[Lcom/vungle/publisher/ei$b;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/vungle/publisher/ei$b;

    const-string v1, "localVideo"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/ei$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/ei$b;->a:Lcom/vungle/publisher/ei$b;

    .line 22
    new-instance v0, Lcom/vungle/publisher/ei$b;

    const-string v1, "postRoll"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/ei$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/ei$b;->b:Lcom/vungle/publisher/ei$b;

    .line 23
    new-instance v0, Lcom/vungle/publisher/ei$b;

    const-string v1, "streamingVideo"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/ei$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/ei$b;->c:Lcom/vungle/publisher/ei$b;

    .line 24
    new-instance v0, Lcom/vungle/publisher/ei$b;

    const-string v1, "template"

    invoke-direct {v0, v1, v5}, Lcom/vungle/publisher/ei$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/ei$b;->d:Lcom/vungle/publisher/ei$b;

    .line 25
    new-instance v0, Lcom/vungle/publisher/ei$b;

    const-string v1, "asset"

    invoke-direct {v0, v1, v6}, Lcom/vungle/publisher/ei$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/ei$b;->e:Lcom/vungle/publisher/ei$b;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/vungle/publisher/ei$b;

    sget-object v1, Lcom/vungle/publisher/ei$b;->a:Lcom/vungle/publisher/ei$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/publisher/ei$b;->b:Lcom/vungle/publisher/ei$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/ei$b;->c:Lcom/vungle/publisher/ei$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vungle/publisher/ei$b;->d:Lcom/vungle/publisher/ei$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vungle/publisher/ei$b;->e:Lcom/vungle/publisher/ei$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/vungle/publisher/ei$b;->f:[Lcom/vungle/publisher/ei$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/ei$b;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/vungle/publisher/ei$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ei$b;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/ei$b;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/vungle/publisher/ei$b;->f:[Lcom/vungle/publisher/ei$b;

    invoke-virtual {v0}, [Lcom/vungle/publisher/ei$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/ei$b;

    return-object v0
.end method
