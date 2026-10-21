###### Class com.facebook.ads.internal.e.f (com.facebook.ads.internal.e.f)
.class abstract Lcom/facebook/ads/internal/e/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/e/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/ads/internal/e/f$a;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/ads/internal/e/f$a;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/e/f;->a:Lcom/facebook/ads/internal/e/f$a;

    return-void
.end method

.method abstract b()Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public c()Lcom/facebook/ads/internal/e/f$a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/e/f;->a:Lcom/facebook/ads/internal/e/f$a;

    return-object v0
.end method

###### Class com.facebook.ads.internal.e.f.a (com.facebook.ads.internal.e.f$a)
.class public final enum Lcom/facebook/ads/internal/e/f$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/e/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/e/f$a;

.field public static final enum b:Lcom/facebook/ads/internal/e/f$a;

.field public static final enum c:Lcom/facebook/ads/internal/e/f$a;

.field public static final enum d:Lcom/facebook/ads/internal/e/f$a;

.field public static final enum e:Lcom/facebook/ads/internal/e/f$a;

.field private static final synthetic h:[Lcom/facebook/ads/internal/e/f$a;


# instance fields
.field private final f:I

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/facebook/ads/internal/e/f$a;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x2328

    const-string v3, "An unknown error has occurred."

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/facebook/ads/internal/e/f$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/e/f$a;->a:Lcom/facebook/ads/internal/e/f$a;

    new-instance v0, Lcom/facebook/ads/internal/e/f$a;

    const-string v1, "DATABASE_SELECT"

    const/16 v2, 0xbb9

    const-string v3, "Failed to read from database."

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/facebook/ads/internal/e/f$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/e/f$a;->b:Lcom/facebook/ads/internal/e/f$a;

    new-instance v0, Lcom/facebook/ads/internal/e/f$a;

    const-string v1, "DATABASE_INSERT"

    const/16 v2, 0xbba

    const-string v3, "Failed to insert row into database."

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/facebook/ads/internal/e/f$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/e/f$a;->c:Lcom/facebook/ads/internal/e/f$a;

    new-instance v0, Lcom/facebook/ads/internal/e/f$a;

    const-string v1, "DATABASE_UPDATE"

    const/16 v2, 0xbbb

    const-string v3, "Failed to update row in database."

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/facebook/ads/internal/e/f$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/e/f$a;->d:Lcom/facebook/ads/internal/e/f$a;

    new-instance v0, Lcom/facebook/ads/internal/e/f$a;

    const-string v1, "DATABASE_DELETE"

    const/16 v2, 0xbbc

    const-string v3, "Failed to delete row from database."

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/facebook/ads/internal/e/f$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/e/f$a;->e:Lcom/facebook/ads/internal/e/f$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/ads/internal/e/f$a;

    sget-object v1, Lcom/facebook/ads/internal/e/f$a;->a:Lcom/facebook/ads/internal/e/f$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/internal/e/f$a;->b:Lcom/facebook/ads/internal/e/f$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/internal/e/f$a;->c:Lcom/facebook/ads/internal/e/f$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/ads/internal/e/f$a;->d:Lcom/facebook/ads/internal/e/f$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/ads/internal/e/f$a;->e:Lcom/facebook/ads/internal/e/f$a;

    aput-object v1, v0, v8

    sput-object v0, Lcom/facebook/ads/internal/e/f$a;->h:[Lcom/facebook/ads/internal/e/f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/ads/internal/e/f$a;->f:I

    iput-object p4, p0, Lcom/facebook/ads/internal/e/f$a;->g:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/e/f$a;
    .registers 2

    const-class v0, Lcom/facebook/ads/internal/e/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/e/f$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/e/f$a;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/e/f$a;->h:[Lcom/facebook/ads/internal/e/f$a;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/e/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/e/f$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/e/f$a;->f:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/e/f$a;->g:Ljava/lang/String;

    return-object v0
.end method
