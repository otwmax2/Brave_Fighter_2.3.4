###### Class com.google.android.gms.internal.zzaom (com.google.android.gms.internal.zzaom)
.class final Lcom/google/android/gms/internal/zzaom;
.super Lcom/google/android/gms/internal/zzank;


# annotations
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
.field private final bej:Lcom/google/android/gms/internal/zzank;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzank",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final bgf:Lcom/google/android/gms/internal/zzams;

.field private final bgg:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzank;Ljava/lang/reflect/Type;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzams;",
            "Lcom/google/android/gms/internal/zzank",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzank;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaom;->bgf:Lcom/google/android/gms/internal/zzams;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaom;->bej:Lcom/google/android/gms/internal/zzank;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaom;->bgg:Ljava/lang/reflect/Type;

    return-void
.end method

.method private zzb(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .registers 4

    if-eqz p2, :cond_12

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_e

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_e

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_12

    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_12
    return-object p1
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaom;->bej:Lcom/google/android/gms/internal/zzank;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaom;->bgg:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/internal/zzaom;->zzb(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaom;->bgg:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaom;->bgf:Lcom/google/android/gms/internal/zzams;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaoo;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzaoo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzams;->zza(Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzaoj$zza;

    if-nez v1, :cond_1e

    :cond_1a
    :goto_1a
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzank;->zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V

    return-void

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaom;->bej:Lcom/google/android/gms/internal/zzank;

    instance-of v1, v1, Lcom/google/android/gms/internal/zzaoj$zza;

    if-nez v1, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaom;->bej:Lcom/google/android/gms/internal/zzank;

    goto :goto_1a
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;
    .registers 3
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaom;->bej:Lcom/google/android/gms/internal/zzank;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzank;->zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
