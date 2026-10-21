###### Class com.vungle.publisher.m (com.vungle.publisher.m)
.class public final enum Lcom/vungle/publisher/m;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/m;

.field public static final enum b:Lcom/vungle/publisher/m;

.field public static final enum c:Lcom/vungle/publisher/m;

.field public static final enum d:Lcom/vungle/publisher/m;

.field private static final synthetic e:[Lcom/vungle/publisher/m;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/vungle/publisher/m;

    const-string v1, "vungle_local"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/m;->a:Lcom/vungle/publisher/m;

    .line 13
    new-instance v0, Lcom/vungle/publisher/m;

    const-string v1, "vungle_streaming"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/m;->b:Lcom/vungle/publisher/m;

    .line 14
    new-instance v0, Lcom/vungle/publisher/m;

    const-string v1, "vungle_mraid"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/m;->c:Lcom/vungle/publisher/m;

    .line 15
    new-instance v0, Lcom/vungle/publisher/m;

    const-string v1, "third_party_mraid"

    invoke-direct {v0, v1, v5}, Lcom/vungle/publisher/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/m;->d:Lcom/vungle/publisher/m;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vungle/publisher/m;

    sget-object v1, Lcom/vungle/publisher/m;->a:Lcom/vungle/publisher/m;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/publisher/m;->b:Lcom/vungle/publisher/m;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/m;->c:Lcom/vungle/publisher/m;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vungle/publisher/m;->d:Lcom/vungle/publisher/m;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vungle/publisher/m;->e:[Lcom/vungle/publisher/m;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/m;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/vungle/publisher/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/m;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/m;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/vungle/publisher/m;->e:[Lcom/vungle/publisher/m;

    invoke-virtual {v0}, [Lcom/vungle/publisher/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/m;

    return-object v0
.end method

###### Class com.vungle.publisher.m.a (com.vungle.publisher.m$a)
.class public Lcom/vungle/publisher/m$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;Ljava/lang/String;)Lcom/vungle/publisher/m;
    .registers 6

    .prologue
    .line 36
    if-eqz p1, :cond_18

    .line 37
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 38
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 39
    invoke-static {p1, p2}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/m$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/m;

    move-result-object v0

    .line 45
    :goto_17
    return-object v0

    .line 44
    :cond_18
    const-string v0, "VungleProtocol"

    const-string v1, "AdType not found"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public a(Ljava/lang/String;)Lcom/vungle/publisher/m;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 23
    if-nez p1, :cond_4

    .line 32
    :goto_3
    return-object v0

    .line 26
    :cond_4
    invoke-static {}, Lcom/vungle/publisher/m;->values()[Lcom/vungle/publisher/m;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v4, :cond_1f

    aget-object v1, v3, v2

    .line 27
    invoke-virtual {v1}, Lcom/vungle/publisher/m;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    move-object v0, v1

    .line 28
    goto :goto_3

    .line 26
    :cond_1b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_b

    .line 31
    :cond_1f
    const-string v1, "VungleProtocol"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown AdType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public a()[Lcom/vungle/publisher/m;
    .registers 4

    .prologue
    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vungle/publisher/m;

    const/4 v1, 0x0

    sget-object v2, Lcom/vungle/publisher/m;->a:Lcom/vungle/publisher/m;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/vungle/publisher/m;->c:Lcom/vungle/publisher/m;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/vungle/publisher/m;->d:Lcom/vungle/publisher/m;

    aput-object v2, v0, v1

    return-object v0
.end method
