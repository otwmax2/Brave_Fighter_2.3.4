###### Class com.google.android.gms.contextmanager.fence.internal.UpdateFenceOperation (com.google.android.gms.contextmanager.fence.internal.UpdateFenceOperation)
.class public Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BX:Ljava/lang/String;

.field private final Cd:Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;

.field private Ce:Lcom/google/android/gms/contextmanager/fence/internal/zzm;

.field private final Cf:Lcom/google/android/gms/awareness/fence/zza;

.field private final Cg:J

.field private final it:I

.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final mVersionCode:I

.field private final zzcte:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/fence/internal/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;Landroid/os/IBinder;Landroid/app/PendingIntent;Ljava/lang/String;JJ)V
    .registers 14

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->it:I

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Cd:Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;

    if-nez p4, :cond_1a

    move-object v0, v1

    :goto_d
    iput-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Ce:Lcom/google/android/gms/contextmanager/fence/internal/zzm;

    iput-object v1, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Cf:Lcom/google/android/gms/awareness/fence/zza;

    iput-object p5, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object p6, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->BX:Ljava/lang/String;

    iput-wide p7, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Cg:J

    iput-wide p9, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->zzcte:J

    return-void

    :cond_1a
    invoke-static {p4}, Lcom/google/android/gms/contextmanager/fence/internal/zzm$zza;->zzee(Landroid/os/IBinder;)Lcom/google/android/gms/contextmanager/fence/internal/zzm;

    move-result-object v0

    goto :goto_d
.end method

.method private constructor <init>(ILcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;Lcom/google/android/gms/awareness/fence/zza;Landroid/app/PendingIntent;Ljava/lang/String;JJ)V
    .registers 12

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->mVersionCode:I

    iput p1, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->it:I

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Cd:Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Ce:Lcom/google/android/gms/contextmanager/fence/internal/zzm;

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Cf:Lcom/google/android/gms/awareness/fence/zza;

    iput-object p4, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->BX:Ljava/lang/String;

    iput-wide p6, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Cg:J

    iput-wide p8, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->zzcte:J

    return-void
.end method

.method public static final zza(Landroid/app/PendingIntent;)Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;
    .registers 11

    const-wide/16 v6, -0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;

    const/4 v1, 0x4

    move-object v3, v2

    move-object v4, p0

    move-object v5, v2

    move-wide v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;-><init>(ILcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;Lcom/google/android/gms/awareness/fence/zza;Landroid/app/PendingIntent;Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public static final zza(Ljava/lang/String;Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;Landroid/app/PendingIntent;)Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;
    .registers 13

    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;

    const/4 v1, 0x2

    invoke-static {p0, p1}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->zza(Ljava/lang/String;Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;

    move-result-object v2

    move-object v4, p2

    move-object v5, v3

    move-wide v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;-><init>(ILcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;Lcom/google/android/gms/awareness/fence/zza;Landroid/app/PendingIntent;Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public static final zzie(Ljava/lang/String;)Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;
    .registers 11

    const-wide/16 v6, -0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;

    const/4 v1, 0x5

    move-object v3, v2

    move-object v4, v2

    move-object v5, p0

    move-wide v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;-><init>(ILcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;Lcom/google/android/gms/awareness/fence/zza;Landroid/app/PendingIntent;Ljava/lang/String;JJ)V

    return-object v0
.end method


# virtual methods
.method public getFenceKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->BX:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->it:I

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/fence/internal/zzq;->zza(Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzaoi()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method zzaxk()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Ce:Lcom/google/android/gms/contextmanager/fence/internal/zzm;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Ce:Lcom/google/android/gms/contextmanager/fence/internal/zzm;

    invoke-interface {v0}, Lcom/google/android/gms/contextmanager/fence/internal/zzm;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_5
.end method

.method public zzaxl()Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Cd:Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;

    return-object v0
.end method

.method public zzaxm()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Cg:J

    return-wide v0
.end method

.method public zzaxn()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->zzcte:J

    return-wide v0
.end method

.method zzb(Lcom/google/android/gms/internal/zzbv;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbv",
            "<",
            "Lcom/google/android/gms/awareness/fence/zza;",
            "Lcom/google/android/gms/contextmanager/fence/internal/zze;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Ce:Lcom/google/android/gms/contextmanager/fence/internal/zzm;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Cf:Lcom/google/android/gms/awareness/fence/zza;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Cf:Lcom/google/android/gms/awareness/fence/zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbv;->zzc(Ljava/lang/Object;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/fence/internal/zzm;

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Ce:Lcom/google/android/gms/contextmanager/fence/internal/zzm;

    :cond_12
    return-void
.end method
