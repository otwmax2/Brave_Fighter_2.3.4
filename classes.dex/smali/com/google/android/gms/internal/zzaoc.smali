###### Class com.google.android.gms.internal.zzaoc (com.google.android.gms.internal.zzaoc)
.class public final Lcom/google/android/gms/internal/zzaoc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaoc$zza;
    }
.end annotation


# instance fields
.field private final beb:Lcom/google/android/gms/internal/zzans;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzans;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaoc;->beb:Lcom/google/android/gms/internal/zzans;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzams;",
            "Lcom/google/android/gms/internal/zzaoo",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzank",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaoo;->t()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaoo;->s()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzanr;->zza(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaoo;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzaoo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzams;->zza(Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoc;->beb:Lcom/google/android/gms/internal/zzans;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzans;->zzb(Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzanx;

    move-result-object v3

    new-instance v0, Lcom/google/android/gms/internal/zzaoc$zza;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzaoc$zza;-><init>(Lcom/google/android/gms/internal/zzams;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzank;Lcom/google/android/gms/internal/zzanx;)V

    goto :goto_11
.end method

###### Class com.google.android.gms.internal.zzaoc.zza (com.google.android.gms.internal.zzaoc$zza)
.class final Lcom/google/android/gms/internal/zzaoc$zza;
.super Lcom/google/android/gms/internal/zzank;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzank",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final bfH:Lcom/google/android/gms/internal/zzank;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzank",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final bfI:Lcom/google/android/gms/internal/zzanx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzanx",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzams;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzank;Lcom/google/android/gms/internal/zzanx;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzams;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzank",
            "<TE;>;",
            "Lcom/google/android/gms/internal/zzanx",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzank;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzaom;

    invoke-direct {v0, p1, p3, p2}, Lcom/google/android/gms/internal/zzaom;-><init>(Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzank;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaoc$zza;->bfH:Lcom/google/android/gms/internal/zzank;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaoc$zza;->bfI:Lcom/google/android/gms/internal/zzanx;

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzaoc$zza;->zza(Lcom/google/android/gms/internal/zzaor;Ljava/util/Collection;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaor;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaor;",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaor;->r()Lcom/google/android/gms/internal/zzaor;

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaor;->n()Lcom/google/android/gms/internal/zzaor;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaoc$zza;->bfH:Lcom/google/android/gms/internal/zzank;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/zzank;->zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V

    goto :goto_d

    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaor;->o()Lcom/google/android/gms/internal/zzaor;

    goto :goto_5
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaoc$zza;->zzj(Lcom/google/android/gms/internal/zzaop;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public zzj(Lcom/google/android/gms/internal/zzaop;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaop;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhH:Lcom/google/android/gms/internal/zzaoq;

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->nextNull()V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoc$zza;->bfI:Lcom/google/android/gms/internal/zzanx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->beginArray()V

    :goto_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaoc$zza;->bfH:Lcom/google/android/gms/internal/zzank;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzank;->zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->endArray()V

    goto :goto_c
.end method
