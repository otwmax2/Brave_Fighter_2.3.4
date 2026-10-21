###### Class com.google.android.gms.internal.zzaof (com.google.android.gms.internal.zzaof)
.class public final Lcom/google/android/gms/internal/zzaof;
.super Lcom/google/android/gms/internal/zzaop;


# static fields
.field private static final bfJ:Ljava/io/Reader;

.field private static final bfK:Ljava/lang/Object;


# instance fields
.field private final bfL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzaof$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaof$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaof;->bfJ:Ljava/io/Reader;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaof;->bfK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzamy;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzaof;->bfJ:Ljava/io/Reader;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaop;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaof;->bfL:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaof;->bfL:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private i()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaof;->bfL:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaof;->bfL:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaof;->bfL:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaof;->bfL:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzaoq;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaof;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v0

    if-eq v0, p1, :cond_48

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaof;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    return-void
.end method


# virtual methods
.method public beginArray()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhz:Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaof;->zza(Lcom/google/android/gms/internal/zzaoq;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaof;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzamv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaof;->bfL:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamv;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beginObject()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhB:Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaof;->zza(Lcom/google/android/gms/internal/zzaoq;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaof;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzanb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaof;->bfL:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzanb;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaof;->bfL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaof;->bfL:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/zzaof;->bfK:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public endArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhA:Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaof;->zza(Lcom/google/android/gms/internal/zzaoq;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaof;->j()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaof;->j()Ljava/lang/Object;

    return-void
.end method

.method public endObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhC:Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaof;->zza(Lcom/google/android/gms/internal/zzaoq;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaof;->j()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaof;->j()Ljava/lang/Object;

    return-void
.end method

.method public h()Lcom/google/android/gms/internal/zzaoq;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaof;->bfL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhI:Lcom/google/android/gms/internal/zzaoq;

    :goto_a
    return-object v0

    :cond_b
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaof;->i()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaof;->bfL:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaof;->bfL:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/internal/zzanb;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    if-eqz v1, :cond_30

    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhD:Lcom/google/android/gms/internal/zzaoq;

    goto :goto_a

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaof;->bfL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaof;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v0

    goto :goto_a

    :cond_3e
    if-eqz v1, :cond_43

    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhC:Lcom/google/android/gms/internal/zzaoq;

    goto :goto_a

    :cond_43
    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhA:Lcom/google/android/gms/internal/zzaoq;

    goto :goto_a

    :cond_46
    instance-of v1, v0, Lcom/google/android/gms/internal/zzanb;

    if-eqz v1, :cond_4d

    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhB:Lcom/google/android/gms/internal/zzaoq;

    goto :goto_a

    :cond_4d
    instance-of v1, v0, Lcom/google/android/gms/internal/zzamv;

    if-eqz v1, :cond_54

    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhz:Lcom/google/android/gms/internal/zzaoq;

    goto :goto_a

    :cond_54
    instance-of v1, v0, Lcom/google/android/gms/internal/zzane;

    if-eqz v1, :cond_7b

    check-cast v0, Lcom/google/android/gms/internal/zzane;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzane;->zzczw()Z

    move-result v1

    if-eqz v1, :cond_63

    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhE:Lcom/google/android/gms/internal/zzaoq;

    goto :goto_a

    :cond_63
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzane;->zzczu()Z

    move-result v1

    if-eqz v1, :cond_6c

    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhG:Lcom/google/android/gms/internal/zzaoq;

    goto :goto_a

    :cond_6c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzane;->zzczv()Z

    move-result v0

    if-eqz v0, :cond_75

    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhF:Lcom/google/android/gms/internal/zzaoq;

    goto :goto_a

    :cond_75
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7b
    instance-of v1, v0, Lcom/google/android/gms/internal/zzana;

    if-eqz v1, :cond_82

    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhH:Lcom/google/android/gms/internal/zzaoq;

    goto :goto_a

    :cond_82
    sget-object v1, Lcom/google/android/gms/internal/zzaof;->bfK:Ljava/lang/Object;

    if-ne v0, v1, :cond_8e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaof;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhC:Lcom/google/android/gms/internal/zzaoq;

    if-eq v0, v1, :cond_e

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhA:Lcom/google/android/gms/internal/zzaoq;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public k()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhD:Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaof;->zza(Lcom/google/android/gms/internal/zzaoq;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaof;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaof;->bfL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaof;->bfL:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/internal/zzane;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzane;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public nextBoolean()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhG:Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaof;->zza(Lcom/google/android/gms/internal/zzaoq;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaof;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzane;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzane;->zzczl()Z

    move-result v0

    return v0
.end method

.method public nextDouble()D
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaof;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhF:Lcom/google/android/gms/internal/zzaoq;

    if-eq v0, v1, :cond_4c

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhE:Lcom/google/android/gms/internal/zzaoq;

    if-eq v0, v1, :cond_4c

    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Lcom/google/android/gms/internal/zzaoq;->bhF:Lcom/google/android/gms/internal/zzaoq;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4c
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaof;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzane;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzane;->zzczi()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaof;->isLenient()Z

    move-result v2

    if-nez v2, :cond_83

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_68

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_83

    :cond_68
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x39

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_83
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaof;->j()Ljava/lang/Object;

    return-wide v0
.end method

.method public nextInt()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaof;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhF:Lcom/google/android/gms/internal/zzaoq;

    if-eq v0, v1, :cond_4c

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhE:Lcom/google/android/gms/internal/zzaoq;

    if-eq v0, v1, :cond_4c

    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Lcom/google/android/gms/internal/zzaoq;->bhF:Lcom/google/android/gms/internal/zzaoq;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4c
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaof;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzane;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzane;->zzczk()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaof;->j()Ljava/lang/Object;

    return v0
.end method

.method public nextLong()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaof;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhF:Lcom/google/android/gms/internal/zzaoq;

    if-eq v0, v1, :cond_4c

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhE:Lcom/google/android/gms/internal/zzaoq;

    if-eq v0, v1, :cond_4c

    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Lcom/google/android/gms/internal/zzaoq;->bhF:Lcom/google/android/gms/internal/zzaoq;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4c
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaof;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzane;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzane;->zzczj()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaof;->j()Ljava/lang/Object;

    return-wide v0
.end method

.method public nextName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhD:Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaof;->zza(Lcom/google/android/gms/internal/zzaoq;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaof;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaof;->bfL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public nextNull()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzaoq;->bhH:Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaof;->zza(Lcom/google/android/gms/internal/zzaoq;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaof;->j()Ljava/lang/Object;

    return-void
.end method

.method public nextString()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaof;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhE:Lcom/google/android/gms/internal/zzaoq;

    if-eq v0, v1, :cond_4c

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhF:Lcom/google/android/gms/internal/zzaoq;

    if-eq v0, v1, :cond_4c

    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Lcom/google/android/gms/internal/zzaoq;->bhE:Lcom/google/android/gms/internal/zzaoq;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4c
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaof;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzane;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzane;->zzczh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public skipValue()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaof;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhD:Lcom/google/android/gms/internal/zzaoq;

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaof;->nextName()Ljava/lang/String;

    :goto_b
    return-void

    :cond_c
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaof;->j()Ljava/lang/Object;

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzaof.AnonymousClass1 (com.google.android.gms.internal.zzaof$1)
.class final Lcom/google/android/gms/internal/zzaof$1;
.super Ljava/io/Reader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public read([CII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
