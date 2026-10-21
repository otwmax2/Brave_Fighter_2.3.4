###### Class com.moat.analytics.mobile.cha.base.functional.Optional (com.moat.analytics.mobile.cha.base.functional.Optional)
.class public final Lcom/moat/analytics/mobile/cha/base/functional/Optional;
.super Ljava/lang/Object;
.source "SourceFile"


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
.field private static final ˏ:Lcom/moat/analytics/mobile/cha/base/functional/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/cha/base/functional/Optional",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final ॱ:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Lcom/moat/analytics/mobile/cha/base/functional/Optional;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/cha/base/functional/Optional;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->ˏ:Lcom/moat/analytics/mobile/cha/base/functional/Optional;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->ॱ:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p1, :cond_d

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Optional of null value."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_d
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->ॱ:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public static empty()Lcom/moat/analytics/mobile/cha/base/functional/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/moat/analytics/mobile/cha/base/functional/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->ˏ:Lcom/moat/analytics/mobile/cha/base/functional/Optional;

    .line 49
    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/cha/base/functional/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/moat/analytics/mobile/cha/base/functional/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/moat/analytics/mobile/cha/base/functional/Optional;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/cha/base/functional/Optional;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ofNullable(Ljava/lang/Object;)Lcom/moat/analytics/mobile/cha/base/functional/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/moat/analytics/mobile/cha/base/functional/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 87
    if-nez p0, :cond_7

    invoke-static {}, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->empty()Lcom/moat/analytics/mobile/cha/base/functional/Optional;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0}, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/cha/base/functional/Optional;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    if-ne p0, p1, :cond_5

    .line 151
    :cond_4
    :goto_4
    return v0

    .line 145
    :cond_5
    instance-of v2, p1, Lcom/moat/analytics/mobile/cha/base/functional/Optional;

    if-nez v2, :cond_b

    move v0, v1

    .line 146
    goto :goto_4

    .line 149
    :cond_b
    check-cast p1, Lcom/moat/analytics/mobile/cha/base/functional/Optional;

    .line 151
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->ॱ:Ljava/lang/Object;

    iget-object v3, p1, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->ॱ:Ljava/lang/Object;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->ॱ:Ljava/lang/Object;

    if-eqz v2, :cond_25

    iget-object v2, p1, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->ॱ:Ljava/lang/Object;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->ॱ:Ljava/lang/Object;

    iget-object v3, p1, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->ॱ:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_25
    move v0, v1

    goto :goto_4
.end method

.method public final get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->ॱ:Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 101
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_c
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->ॱ:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->ॱ:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->ॱ:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public final isPresent()Z
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->ॱ:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final orElse(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->ॱ:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->ॱ:Ljava/lang/Object;

    :cond_6
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 179
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->ॱ:Ljava/lang/Object;

    if-eqz v0, :cond_13

    const-string v0, "Optional[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->ॱ:Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 180
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const-string v0, "Optional.empty"

    goto :goto_12
.end method
