###### Class com.google.android.gms.internal.zzkq (com.google.android.gms.internal.zzkq)
.class public Lcom/google/android/gms/internal/zzkq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzkq$zza;,
        Lcom/google/android/gms/internal/zzkq$zzb;
    }
.end annotation


# instance fields
.field private final zzclv:[Ljava/lang/String;

.field private final zzclw:[D

.field private final zzclx:[D

.field private final zzcly:[I

.field private zzclz:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzkq$zzb;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzkq$zzb;->zza(Lcom/google/android/gms/internal/zzkq$zzb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzkq$zzb;->zzb(Lcom/google/android/gms/internal/zzkq$zzb;)Ljava/util/List;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkq;->zzclv:[Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzkq$zzb;->zza(Lcom/google/android/gms/internal/zzkq$zzb;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzkq;->zzm(Ljava/util/List;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkq;->zzclw:[D

    invoke-static {p1}, Lcom/google/android/gms/internal/zzkq$zzb;->zzc(Lcom/google/android/gms/internal/zzkq$zzb;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzkq;->zzm(Ljava/util/List;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkq;->zzclx:[D

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkq;->zzcly:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzkq;->zzclz:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzkq$zzb;Lcom/google/android/gms/internal/zzkq$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzkq;-><init>(Lcom/google/android/gms/internal/zzkq$zzb;)V

    return-void
.end method

.method private zzm(Ljava/util/List;)[D
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)[D"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [D

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    array-length v0, v2

    if-ge v1, v0, :cond_1b

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_1b
    return-object v2
.end method


# virtual methods
.method public getBuckets()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzkq$zza;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkq;->zzclv:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v9, v0

    :goto_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkq;->zzclv:[Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_34

    new-instance v0, Lcom/google/android/gms/internal/zzkq$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkq;->zzclv:[Ljava/lang/String;

    aget-object v1, v1, v9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkq;->zzclx:[D

    aget-wide v2, v2, v9

    iget-object v4, p0, Lcom/google/android/gms/internal/zzkq;->zzclw:[D

    aget-wide v4, v4, v9

    iget-object v6, p0, Lcom/google/android/gms/internal/zzkq;->zzcly:[I

    aget v6, v6, v9

    int-to-double v6, v6

    iget v8, p0, Lcom/google/android/gms/internal/zzkq;->zzclz:I

    int-to-double v12, v8

    div-double/2addr v6, v12

    iget-object v8, p0, Lcom/google/android/gms/internal/zzkq;->zzcly:[I

    aget v8, v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzkq$zza;-><init>(Ljava/lang/String;DDDI)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_a

    :cond_34
    return-object v10
.end method

.method public zza(D)V
    .registers 8

    iget v0, p0, Lcom/google/android/gms/internal/zzkq;->zzclz:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzkq;->zzclz:I

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzkq;->zzclx:[D

    array-length v1, v1

    if-ge v0, v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkq;->zzclx:[D

    aget-wide v2, v1, v0

    cmpg-double v1, v2, p1

    if-gtz v1, :cond_24

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkq;->zzclw:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_24

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkq;->zzcly:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/internal/zzkq;->zzclx:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_2d

    :cond_2c
    return-void

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

###### Class com.google.android.gms.internal.zzkq.AnonymousClass1 (com.google.android.gms.internal.zzkq$1)
.class synthetic Lcom/google/android/gms/internal/zzkq$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.internal.zzkq.zza (com.google.android.gms.internal.zzkq$zza)
.class public Lcom/google/android/gms/internal/zzkq$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field public final count:I

.field public final name:Ljava/lang/String;

.field public final zzcma:D

.field public final zzcmb:D

.field public final zzcmc:D


# direct methods
.method public constructor <init>(Ljava/lang/String;DDDI)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkq$zza;->name:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzkq$zza;->zzcmb:D

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzkq$zza;->zzcma:D

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzkq$zza;->zzcmc:D

    iput p8, p0, Lcom/google/android/gms/internal/zzkq$zza;->count:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/zzkq$zza;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/zzkq$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkq$zza;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzkq$zza;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzkq$zza;->zzcma:D

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzkq$zza;->zzcma:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzkq$zza;->zzcmb:D

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzkq$zza;->zzcmb:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_5

    iget v1, p0, Lcom/google/android/gms/internal/zzkq$zza;->count:I

    iget v2, p1, Lcom/google/android/gms/internal/zzkq$zza;->count:I

    if-ne v1, v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzkq$zza;->zzcmc:D

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzkq$zza;->zzcmc:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkq$zza;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzkq$zza;->zzcma:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzkq$zza;->zzcmb:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzkq$zza;->zzcmc:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/zzkq$zza;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkq$zza;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "minBound"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzkq$zza;->zzcmb:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "maxBound"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzkq$zza;->zzcma:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "percent"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzkq$zza;->zzcmc:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "count"

    iget v2, p0, Lcom/google/android/gms/internal/zzkq$zza;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzkq.zzb (com.google.android.gms.internal.zzkq$zzb)
.class public Lcom/google/android/gms/internal/zzkq$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private final zzcmd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcme:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcmf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkq$zzb;->zzcmd:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkq$zzb;->zzcme:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkq$zzb;->zzcmf:Ljava/util/List;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzkq$zzb;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkq$zzb;->zzcme:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzkq$zzb;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkq$zzb;->zzcmd:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzkq$zzb;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkq$zzb;->zzcmf:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzkq$zzb;
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkq$zzb;->zzcmd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkq$zzb;->zzcmf:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkq$zzb;->zzcme:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v0, p2, v2

    if-gez v0, :cond_3e

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkq$zzb;->zzcmd:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkq$zzb;->zzcmf:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkq$zzb;->zzcme:Ljava/util/List;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0

    :cond_3e
    cmpl-double v0, v2, p2

    if-nez v0, :cond_46

    cmpg-double v0, p4, v4

    if-ltz v0, :cond_26

    :cond_46
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public zztp()Lcom/google/android/gms/internal/zzkq;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzkq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzkq;-><init>(Lcom/google/android/gms/internal/zzkq$zzb;Lcom/google/android/gms/internal/zzkq$1;)V

    return-object v0
.end method
