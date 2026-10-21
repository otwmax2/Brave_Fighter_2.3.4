###### Class com.vungle.publisher.x (com.vungle.publisher.x)
.class public final enum Lcom/vungle/publisher/x;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/x;

.field public static final enum b:Lcom/vungle/publisher/x;

.field public static final enum c:Lcom/vungle/publisher/x;

.field private static final synthetic d:[Lcom/vungle/publisher/x;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/vungle/publisher/x;

    const-string v1, "fullscreen"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/x;->a:Lcom/vungle/publisher/x;

    .line 6
    new-instance v0, Lcom/vungle/publisher/x;

    const-string v1, "flexview"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/x;->b:Lcom/vungle/publisher/x;

    .line 7
    new-instance v0, Lcom/vungle/publisher/x;

    const-string v1, "flexfeed"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/x;->c:Lcom/vungle/publisher/x;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vungle/publisher/x;

    sget-object v1, Lcom/vungle/publisher/x;->a:Lcom/vungle/publisher/x;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/publisher/x;->b:Lcom/vungle/publisher/x;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/x;->c:Lcom/vungle/publisher/x;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vungle/publisher/x;->d:[Lcom/vungle/publisher/x;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/vungle/publisher/x;
    .registers 6

    .prologue
    .line 14
    if-eqz p0, :cond_e

    sget-object v0, Lcom/vungle/publisher/x;->c:Lcom/vungle/publisher/x;

    invoke-virtual {v0}, Lcom/vungle/publisher/x;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 15
    :cond_e
    sget-object v0, Lcom/vungle/publisher/x;->a:Lcom/vungle/publisher/x;

    .line 23
    :cond_10
    :goto_10
    return-object v0

    .line 17
    :cond_11
    invoke-static {}, Lcom/vungle/publisher/x;->values()[Lcom/vungle/publisher/x;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_18
    if-ge v1, v3, :cond_2a

    aget-object v0, v2, v1

    .line 18
    invoke-virtual {v0}, Lcom/vungle/publisher/x;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18

    .line 23
    :cond_2a
    sget-object v0, Lcom/vungle/publisher/x;->a:Lcom/vungle/publisher/x;

    goto :goto_10
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/x;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/vungle/publisher/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/x;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/x;
    .registers 1

    .prologue
    .line 4
    sget-object v0, Lcom/vungle/publisher/x;->d:[Lcom/vungle/publisher/x;

    invoke-virtual {v0}, [Lcom/vungle/publisher/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/x;

    return-object v0
.end method
