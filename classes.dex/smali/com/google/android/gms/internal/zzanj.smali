###### Class com.google.android.gms.internal.zzanj (com.google.android.gms.internal.zzanj)
.class final Lcom/google/android/gms/internal/zzanj;
.super Lcom/google/android/gms/internal/zzank;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzanj$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzank",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final beA:Lcom/google/android/gms/internal/zzams;

.field private final beB:Lcom/google/android/gms/internal/zzaoo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaoo",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final beC:Lcom/google/android/gms/internal/zzanl;

.field private bej:Lcom/google/android/gms/internal/zzank;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzank",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final bey:Lcom/google/android/gms/internal/zzang;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzang",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final bez:Lcom/google/android/gms/internal/zzamx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzamx",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzang;Lcom/google/android/gms/internal/zzamx;Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzaoo;Lcom/google/android/gms/internal/zzanl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzang",
            "<TT;>;",
            "Lcom/google/android/gms/internal/zzamx",
            "<TT;>;",
            "Lcom/google/android/gms/internal/zzams;",
            "Lcom/google/android/gms/internal/zzaoo",
            "<TT;>;",
            "Lcom/google/android/gms/internal/zzanl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzank;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanj;->bey:Lcom/google/android/gms/internal/zzang;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzanj;->bez:Lcom/google/android/gms/internal/zzamx;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzanj;->beA:Lcom/google/android/gms/internal/zzams;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzanj;->beB:Lcom/google/android/gms/internal/zzaoo;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzanj;->beC:Lcom/google/android/gms/internal/zzanl;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzang;Lcom/google/android/gms/internal/zzamx;Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzaoo;Lcom/google/android/gms/internal/zzanl;Lcom/google/android/gms/internal/zzanj$1;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/zzanj;-><init>(Lcom/google/android/gms/internal/zzang;Lcom/google/android/gms/internal/zzamx;Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzaoo;Lcom/google/android/gms/internal/zzanl;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzaoo;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzanl;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaoo",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/zzanl;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzanj$zza;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzanj$zza;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzaoo;ZLjava/lang/Class;Lcom/google/android/gms/internal/zzanj$1;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzaoo;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzanl;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaoo",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/zzanl;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaoo;->t()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaoo;->s()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_15

    const/4 v3, 0x1

    :goto_c
    new-instance v0, Lcom/google/android/gms/internal/zzanj$zza;

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzanj$zza;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzaoo;ZLjava/lang/Class;Lcom/google/android/gms/internal/zzanj$1;)V

    return-object v0

    :cond_15
    const/4 v3, 0x0

    goto :goto_c
.end method

.method private zzczx()Lcom/google/android/gms/internal/zzank;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzank",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanj;->bej:Lcom/google/android/gms/internal/zzank;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanj;->beA:Lcom/google/android/gms/internal/zzams;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanj;->beC:Lcom/google/android/gms/internal/zzanl;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzanj;->beB:Lcom/google/android/gms/internal/zzaoo;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzams;->zza(Lcom/google/android/gms/internal/zzanl;Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzanj;->bej:Lcom/google/android/gms/internal/zzank;

    goto :goto_4
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaor;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanj;->bey:Lcom/google/android/gms/internal/zzang;

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanj;->zzczx()Lcom/google/android/gms/internal/zzank;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzank;->zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V

    :goto_b
    return-void

    :cond_c
    if-nez p2, :cond_12

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaor;->r()Lcom/google/android/gms/internal/zzaor;

    goto :goto_b

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanj;->bey:Lcom/google/android/gms/internal/zzang;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanj;->beB:Lcom/google/android/gms/internal/zzaoo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaoo;->t()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzanj;->beA:Lcom/google/android/gms/internal/zzams;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzams;->beh:Lcom/google/android/gms/internal/zzanf;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/android/gms/internal/zzang;->zza(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzanf;)Lcom/google/android/gms/internal/zzamy;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzanz;->zzb(Lcom/google/android/gms/internal/zzamy;Lcom/google/android/gms/internal/zzaor;)V

    goto :goto_b
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaop;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanj;->bez:Lcom/google/android/gms/internal/zzamx;

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanj;->zzczx()Lcom/google/android/gms/internal/zzank;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzank;->zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-static {p1}, Lcom/google/android/gms/internal/zzanz;->zzh(Lcom/google/android/gms/internal/zzaop;)Lcom/google/android/gms/internal/zzamy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamy;->zzczp()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x0

    goto :goto_c

    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanj;->bez:Lcom/google/android/gms/internal/zzamx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzanj;->beB:Lcom/google/android/gms/internal/zzaoo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaoo;->t()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzanj;->beA:Lcom/google/android/gms/internal/zzams;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzams;->beg:Lcom/google/android/gms/internal/zzamw;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzamx;->zzb(Lcom/google/android/gms/internal/zzamy;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzamw;)Ljava/lang/Object;
    :try_end_28
    .catch Lcom/google/android/gms/internal/zzanc; {:try_start_19 .. :try_end_28} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_28} :catch_2c

    move-result-object v0

    goto :goto_c

    :catch_2a
    move-exception v0

    throw v0

    :catch_2c
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzanc;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzanc;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class com.google.android.gms.internal.zzanj.AnonymousClass1 (com.google.android.gms.internal.zzanj$1)
.class synthetic Lcom/google/android/gms/internal/zzanj$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzanj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.internal.zzanj.zza (com.google.android.gms.internal.zzanj$zza)
.class Lcom/google/android/gms/internal/zzanj$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzanj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final beD:Lcom/google/android/gms/internal/zzaoo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaoo",
            "<*>;"
        }
    .end annotation
.end field

.field private final beE:Z

.field private final beF:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final bey:Lcom/google/android/gms/internal/zzang;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzang",
            "<*>;"
        }
    .end annotation
.end field

.field private final bez:Lcom/google/android/gms/internal/zzamx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzamx",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzaoo;ZLjava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzaoo",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/google/android/gms/internal/zzang;

    if-eqz v0, :cond_28

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzang;

    :goto_b
    iput-object v0, p0, Lcom/google/android/gms/internal/zzanj$zza;->bey:Lcom/google/android/gms/internal/zzang;

    instance-of v0, p1, Lcom/google/android/gms/internal/zzamx;

    if-eqz v0, :cond_2a

    check-cast p1, Lcom/google/android/gms/internal/zzamx;

    :goto_13
    iput-object p1, p0, Lcom/google/android/gms/internal/zzanj$zza;->bez:Lcom/google/android/gms/internal/zzamx;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanj$zza;->bey:Lcom/google/android/gms/internal/zzang;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanj$zza;->bez:Lcom/google/android/gms/internal/zzamx;

    if-eqz v0, :cond_2c

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    invoke-static {v0}, Lcom/google/android/gms/internal/zzanq;->zzbn(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzanj$zza;->beD:Lcom/google/android/gms/internal/zzaoo;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzanj$zza;->beE:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzanj$zza;->beF:Ljava/lang/Class;

    return-void

    :cond_28
    move-object v0, v1

    goto :goto_b

    :cond_2a
    move-object p1, v1

    goto :goto_13

    :cond_2c
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzaoo;ZLjava/lang/Class;Lcom/google/android/gms/internal/zzanj$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzanj$zza;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzaoo;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;
    .registers 10
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

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanj$zza;->beD:Lcom/google/android/gms/internal/zzaoo;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanj$zza;->beD:Lcom/google/android/gms/internal/zzaoo;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzaoo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzanj$zza;->beE:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanj$zza;->beD:Lcom/google/android/gms/internal/zzaoo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoo;->t()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaoo;->s()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2d

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    if-eqz v0, :cond_3a

    new-instance v0, Lcom/google/android/gms/internal/zzanj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanj$zza;->bey:Lcom/google/android/gms/internal/zzang;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzanj$zza;->bez:Lcom/google/android/gms/internal/zzamx;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzanj;-><init>(Lcom/google/android/gms/internal/zzang;Lcom/google/android/gms/internal/zzamx;Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzaoo;Lcom/google/android/gms/internal/zzanl;Lcom/google/android/gms/internal/zzanj$1;)V

    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_1e

    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanj$zza;->beF:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaoo;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_1e

    :cond_3a
    move-object v0, v6

    goto :goto_2c
.end method
