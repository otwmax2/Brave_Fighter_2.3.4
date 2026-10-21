###### Class com.google.android.gms.contextmanager.fence.internal.zzp (com.google.android.gms.contextmanager.fence.internal.zzp)
.class public Lcom/google/android/gms/contextmanager/fence/internal/zzp;
.super Ljava/lang/Object;


# instance fields
.field private final Cc:Lcom/google/android/gms/internal/zzry$zzm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzry$zzm;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzry$zzm;

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/zzp;->Cc:Lcom/google/android/gms/internal/zzry$zzm;

    return-void
.end method

.method public static zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/contextmanager/fence/internal/zzp;
    .registers 14

    const-wide/32 v6, 0x5265c00

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_41

    move v0, v1

    :goto_a
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long v0, p2, v4

    if-ltz v0, :cond_43

    move v0, v1

    :goto_15
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    cmp-long v0, p2, v6

    if-gtz v0, :cond_45

    move v0, v1

    :goto_1d
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    cmp-long v0, p4, v4

    if-ltz v0, :cond_47

    move v0, v1

    :goto_25
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    cmp-long v0, p4, v6

    if-gtz v0, :cond_49

    move v0, v1

    :goto_2d
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    cmp-long v0, p2, p4

    if-gtz v0, :cond_4b

    :goto_34
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/zzp;

    invoke-static/range {p0 .. p5}, Lcom/google/android/gms/contextmanager/fence/internal/zzp;->zzb(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzry$zzm;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/contextmanager/fence/internal/zzp;-><init>(Lcom/google/android/gms/internal/zzry$zzm;)V

    return-object v0

    :cond_41
    move v0, v2

    goto :goto_a

    :cond_43
    move v0, v2

    goto :goto_15

    :cond_45
    move v0, v2

    goto :goto_1d

    :cond_47
    move v0, v2

    goto :goto_25

    :cond_49
    move v0, v2

    goto :goto_2d

    :cond_4b
    move v1, v2

    goto :goto_34
.end method

.method private static zzb(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzry$zzm;
    .registers 8

    new-instance v0, Lcom/google/android/gms/internal/zzry$zzm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzry$zzm;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/zzry$zzm;->Da:I

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzry$zzm;->DQ:Ljava/lang/String;

    :cond_19
    iput-wide p2, v0, Lcom/google/android/gms/internal/zzry$zzm;->DR:J

    iput-wide p4, v0, Lcom/google/android/gms/internal/zzry$zzm;->DS:J

    return-object v0
.end method

.method public static zzf(JJ)Lcom/google/android/gms/contextmanager/fence/internal/zzp;
    .registers 12

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    cmp-long v1, p0, v4

    if-ltz v1, :cond_29

    move v1, v0

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    cmp-long v1, p2, v4

    if-ltz v1, :cond_2b

    move v1, v0

    :goto_11
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    cmp-long v1, p0, p2

    if-gtz v1, :cond_19

    move v2, v0

    :cond_19
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    new-instance v6, Lcom/google/android/gms/contextmanager/fence/internal/zzp;

    const/4 v1, 0x0

    move-wide v2, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/contextmanager/fence/internal/zzp;->zzb(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzry$zzm;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/google/android/gms/contextmanager/fence/internal/zzp;-><init>(Lcom/google/android/gms/internal/zzry$zzm;)V

    return-object v6

    :cond_29
    move v1, v2

    goto :goto_9

    :cond_2b
    move v1, v2

    goto :goto_11
.end method


# virtual methods
.method public zzaxj()Lcom/google/android/gms/internal/zzry$zzm;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/zzp;->Cc:Lcom/google/android/gms/internal/zzry$zzm;

    return-object v0
.end method
