###### Class com.google.android.gms.internal.zzct (com.google.android.gms.internal.zzct)
.class public Lcom/google/android/gms/internal/zzct;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzct$zza;
    }
.end annotation


# direct methods
.method static zza(IIJJJ)J
    .registers 16

    const-wide/32 v6, 0x7fffffff

    const-wide/32 v4, 0x4000ffff

    int-to-long v0, p0

    add-long/2addr v0, v6

    rem-long/2addr v0, v4

    mul-long/2addr v0, p4

    rem-long/2addr v0, v4

    add-long v2, p2, v4

    sub-long v0, v2, v0

    rem-long/2addr v0, v4

    mul-long/2addr v0, p6

    rem-long/2addr v0, v4

    int-to-long v2, p1

    add-long/2addr v2, v6

    rem-long/2addr v2, v4

    add-long/2addr v0, v2

    rem-long/2addr v0, v4

    return-wide v0
.end method

.method static zza(JI)J
    .registers 9

    const-wide/32 v4, 0x4000ffff

    if-nez p2, :cond_8

    const-wide/16 p0, 0x1

    :cond_7
    :goto_7
    return-wide p0

    :cond_8
    const/4 v0, 0x1

    if-eq p2, v0, :cond_7

    rem-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_1b

    mul-long v0, p0, p0

    rem-long/2addr v0, v4

    div-int/lit8 v2, p2, 0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzct;->zza(JI)J

    move-result-wide v0

    rem-long p0, v0, v4

    goto :goto_7

    :cond_1b
    mul-long v0, p0, p0

    rem-long/2addr v0, v4

    div-int/lit8 v2, p2, 0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzct;->zza(JI)J

    move-result-wide v0

    rem-long/2addr v0, v4

    mul-long/2addr v0, p0

    rem-long p0, v0, v4

    goto :goto_7
.end method

.method static zza([Ljava/lang/String;II)Ljava/lang/String;
    .registers 6

    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_d

    const-string v0, "Unable to construct shingle"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->e(Ljava/lang/String;)V

    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move v0, p1

    :goto_13
    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_26

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_26
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method static zza(IJLjava/lang/String;ILjava/util/PriorityQueue;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/google/android/gms/internal/zzct$zza;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzct$zza;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzct$zza;-><init>(JLjava/lang/String;I)V

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-ne v0, p0, :cond_26

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzct$zza;

    iget v0, v0, Lcom/google/android/gms/internal/zzct$zza;->zzath:I

    iget v2, v1, Lcom/google/android/gms/internal/zzct$zza;->zzath:I

    if-gt v0, v2, :cond_25

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzct$zza;

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzct$zza;->value:J

    iget-wide v4, v1, Lcom/google/android/gms/internal/zzct$zza;->value:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_26

    :cond_25
    :goto_25
    return-void

    :cond_26
    invoke-virtual {p5, v1}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p5, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-le v0, p0, :cond_25

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    goto :goto_25
.end method

.method public static zza([Ljava/lang/String;IILjava/util/PriorityQueue;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/google/android/gms/internal/zzct$zza;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    array-length v2, v0

    move/from16 v0, p2

    if-ge v2, v0, :cond_26

    const/4 v2, 0x0

    move-object/from16 v0, p0

    array-length v3, v0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzct;->zzb([Ljava/lang/String;II)J

    move-result-wide v4

    const/4 v2, 0x0

    move-object/from16 v0, p0

    array-length v3, v0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzct;->zza([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    array-length v7, v0

    move/from16 v3, p1

    move-object/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/zzct;->zza(IJLjava/lang/String;ILjava/util/PriorityQueue;)V

    :cond_25
    return-void

    :cond_26
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/zzct;->zzb([Ljava/lang/String;II)J

    move-result-wide v4

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/zzct;->zza([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    move/from16 v3, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/zzct;->zza(IJLjava/lang/String;ILjava/util/PriorityQueue;)V

    const-wide/32 v2, 0x1001fff

    add-int/lit8 v6, p2, -0x1

    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/zzct;->zza(JI)J

    move-result-wide v6

    const/4 v2, 0x1

    move v15, v2

    :goto_4c
    move-object/from16 v0, p0

    array-length v2, v0

    sub-int v2, v2, p2

    add-int/lit8 v2, v2, 0x1

    if-ge v15, v2, :cond_25

    add-int/lit8 v2, v15, -0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcr;->zzac(Ljava/lang/String;)I

    move-result v2

    add-int v3, v15, p2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, p0, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcr;->zzac(Ljava/lang/String;)I

    move-result v3

    const-wide/32 v8, 0x1001fff

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/zzct;->zza(IIJJJ)J

    move-result-wide v10

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v15, v1}, Lcom/google/android/gms/internal/zzct;->zza([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    array-length v13, v0

    move/from16 v9, p1

    move-object/from16 v14, p3

    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/zzct;->zza(IJLjava/lang/String;ILjava/util/PriorityQueue;)V

    add-int/lit8 v2, v15, 0x1

    move v15, v2

    move-wide v4, v10

    goto :goto_4c
.end method

.method private static zzb([Ljava/lang/String;II)J
    .registers 13

    const-wide/32 v8, 0x7fffffff

    const-wide/32 v6, 0x4000ffff

    aget-object v0, p0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcr;->zzac(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v8

    rem-long v2, v0, v6

    add-int/lit8 v0, p1, 0x1

    :goto_12
    add-int v1, p1, p2

    if-ge v0, v1, :cond_29

    const-wide/32 v4, 0x1001fff

    mul-long/2addr v2, v4

    rem-long/2addr v2, v6

    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcr;->zzac(Ljava/lang/String;)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v4, v8

    rem-long/2addr v4, v6

    add-long/2addr v2, v4

    rem-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_29
    return-wide v2
.end method

###### Class com.google.android.gms.internal.zzct.zza (com.google.android.gms.internal.zzct$zza)
.class public Lcom/google/android/gms/internal/zzct$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field final value:J

.field final zzatg:Ljava/lang/String;

.field final zzath:I


# direct methods
.method constructor <init>(JLjava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzct$zza;->value:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzct$zza;->zzatg:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/zzct$zza;->zzath:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    instance-of v0, p1, Lcom/google/android/gms/internal/zzct$zza;

    if-nez v0, :cond_9

    :cond_7
    move v0, v1

    :goto_8
    return v0

    :cond_9
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzct$zza;

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzct$zza;->value:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzct$zza;->value:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1e

    check-cast p1, Lcom/google/android/gms/internal/zzct$zza;

    iget v0, p1, Lcom/google/android/gms/internal/zzct$zza;->zzath:I

    iget v2, p0, Lcom/google/android/gms/internal/zzct$zza;->zzath:I

    if-ne v0, v2, :cond_1e

    const/4 v0, 0x1

    goto :goto_8

    :cond_1e
    move v0, v1

    goto :goto_8
.end method

.method public hashCode()I
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzct$zza;->value:J

    long-to-int v0, v0

    return v0
.end method
