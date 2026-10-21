###### Class com.google.android.gms.contextmanager.fence.internal.zzb (com.google.android.gms.contextmanager.fence.internal.zzb)
.class public Lcom/google/android/gms/contextmanager/fence/internal/zzb;
.super Ljava/lang/Object;


# instance fields
.field private final BI:Lcom/google/android/gms/internal/zzry$zzb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzry$zzb;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzry$zzb;

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/zzb;->BI:Lcom/google/android/gms/internal/zzry$zzb;

    return-void
.end method

.method private static zza(IJI)Lcom/google/android/gms/internal/zzry$zzb;
    .registers 9

    new-instance v0, Lcom/google/android/gms/internal/zzry$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzry$zzb;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/zzry$zzb;->Da:I

    iput-wide p1, v0, Lcom/google/android/gms/internal/zzry$zzb;->Db:J

    packed-switch p0, :pswitch_data_2a

    const-string v1, "AudioStateFenceStub"

    const-string v2, "Unknown trigger type=%s"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzbu;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    :goto_17
    return-object v0

    :pswitch_18
    iput p3, v0, Lcom/google/android/gms/internal/zzry$zzb;->Dd:I

    goto :goto_17

    :pswitch_1b
    iput p3, v0, Lcom/google/android/gms/internal/zzry$zzb;->De:I

    goto :goto_17

    :pswitch_1e
    iput p3, v0, Lcom/google/android/gms/internal/zzry$zzb;->Df:I

    goto :goto_17

    :pswitch_21
    iput p3, v0, Lcom/google/android/gms/internal/zzry$zzb;->Dg:I

    goto :goto_17

    :pswitch_24
    iput p3, v0, Lcom/google/android/gms/internal/zzry$zzb;->Dh:I

    goto :goto_17

    :pswitch_27
    iput p3, v0, Lcom/google/android/gms/internal/zzry$zzb;->Di:I

    goto :goto_17

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_27
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method

.method public static zzawv()Lcom/google/android/gms/contextmanager/fence/internal/zzb;
    .registers 5

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/zzb;

    const/4 v1, 0x2

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/contextmanager/fence/internal/zzb;->zza(IJI)Lcom/google/android/gms/internal/zzry$zzb;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/contextmanager/fence/internal/zzb;-><init>(Lcom/google/android/gms/internal/zzry$zzb;)V

    return-object v0
.end method

.method public static zzaww()Lcom/google/android/gms/contextmanager/fence/internal/zzb;
    .registers 5

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/zzb;

    const/4 v1, 0x3

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/contextmanager/fence/internal/zzb;->zza(IJI)Lcom/google/android/gms/internal/zzry$zzb;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/contextmanager/fence/internal/zzb;-><init>(Lcom/google/android/gms/internal/zzry$zzb;)V

    return-object v0
.end method

.method public static zzhj(I)Lcom/google/android/gms/contextmanager/fence/internal/zzb;
    .registers 5

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/zzb;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, p0}, Lcom/google/android/gms/contextmanager/fence/internal/zzb;->zza(IJI)Lcom/google/android/gms/internal/zzry$zzb;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/contextmanager/fence/internal/zzb;-><init>(Lcom/google/android/gms/internal/zzry$zzb;)V

    return-object v0
.end method


# virtual methods
.method public zzawx()Lcom/google/android/gms/internal/zzry$zzb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/zzb;->BI:Lcom/google/android/gms/internal/zzry$zzb;

    return-object v0
.end method
