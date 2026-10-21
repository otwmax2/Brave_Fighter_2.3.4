###### Class com.google.android.gms.contextmanager.fence.internal.zzn (com.google.android.gms.contextmanager.fence.internal.zzn)
.class public Lcom/google/android/gms/contextmanager/fence/internal/zzn;
.super Ljava/lang/Object;


# instance fields
.field private final Cb:Lcom/google/android/gms/internal/zzry$zzf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzry$zzf;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzry$zzf;

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/zzn;->Cb:Lcom/google/android/gms/internal/zzry$zzf;

    return-void
.end method

.method public static zza(IID)Lcom/google/android/gms/contextmanager/fence/internal/zzn;
    .registers 18

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_20

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    new-instance v12, Lcom/google/android/gms/contextmanager/fence/internal/zzn;

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-wide/16 v8, 0xbb8

    const-wide/16 v10, 0x0

    move v2, p0

    move v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p2

    invoke-static/range {v0 .. v11}, Lcom/google/android/gms/contextmanager/fence/internal/zzn;->zza(IIIIDDJJ)Lcom/google/android/gms/internal/zzry$zzf;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/google/android/gms/contextmanager/fence/internal/zzn;-><init>(Lcom/google/android/gms/internal/zzry$zzf;)V

    return-object v12

    :cond_20
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static zza(IIDJ)Lcom/google/android/gms/contextmanager/fence/internal/zzn;
    .registers 20

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_20

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    new-instance v12, Lcom/google/android/gms/contextmanager/fence/internal/zzn;

    const/4 v0, 0x1

    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    move v2, p0

    move v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p2

    move-wide/from16 v10, p4

    invoke-static/range {v0 .. v11}, Lcom/google/android/gms/contextmanager/fence/internal/zzn;->zza(IIIIDDJJ)Lcom/google/android/gms/internal/zzry$zzf;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/google/android/gms/contextmanager/fence/internal/zzn;-><init>(Lcom/google/android/gms/internal/zzry$zzf;)V

    return-object v12

    :cond_20
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static zza(IIIIDDJJ)Lcom/google/android/gms/internal/zzry$zzf;
    .registers 14

    new-instance v0, Lcom/google/android/gms/internal/zzry$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzry$zzf;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/zzry$zzf;->Da:I

    iput p1, v0, Lcom/google/android/gms/internal/zzry$zzf;->Dz:I

    iput-wide p8, v0, Lcom/google/android/gms/internal/zzry$zzf;->Db:J

    iput-wide p10, v0, Lcom/google/android/gms/internal/zzry$zzf;->DE:J

    const/4 v1, 0x1

    if-ne p1, v1, :cond_18

    iput p2, v0, Lcom/google/android/gms/internal/zzry$zzf;->DA:I

    iput p3, v0, Lcom/google/android/gms/internal/zzry$zzf;->DB:I

    iput-wide p4, v0, Lcom/google/android/gms/internal/zzry$zzf;->DC:D

    iput-wide p6, v0, Lcom/google/android/gms/internal/zzry$zzf;->DD:D

    :cond_18
    return-object v0
.end method

.method public static zzb(IID)Lcom/google/android/gms/contextmanager/fence/internal/zzn;
    .registers 18

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_20

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    new-instance v12, Lcom/google/android/gms/contextmanager/fence/internal/zzn;

    const/4 v0, 0x3

    const/4 v1, 0x1

    const-wide/16 v8, 0xbb8

    const-wide/16 v10, 0x0

    move v2, p0

    move v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p2

    invoke-static/range {v0 .. v11}, Lcom/google/android/gms/contextmanager/fence/internal/zzn;->zza(IIIIDDJJ)Lcom/google/android/gms/internal/zzry$zzf;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/google/android/gms/contextmanager/fence/internal/zzn;-><init>(Lcom/google/android/gms/internal/zzry$zzf;)V

    return-object v12

    :cond_20
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public zzaxi()Lcom/google/android/gms/internal/zzry$zzf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/zzn;->Cb:Lcom/google/android/gms/internal/zzry$zzf;

    return-object v0
.end method
