###### Class com.google.android.gms.contextmanager.fence.internal.ContextFenceRegistrationStub (com.google.android.gms.contextmanager.fence.internal.ContextFenceRegistrationStub)
.class public Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BQ:Ljava/lang/String;

.field private BR:Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/fence/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->BQ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->BR:Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;)V
    .registers 6

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzhs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;-><init>(ILjava/lang/String;Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;)V

    return-void
.end method

.method public static zza(Ljava/lang/String;Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;
    .registers 3

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;-><init>(Ljava/lang/String;Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    check-cast p1, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->zzawz()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->zzawz()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_3
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->BQ:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/fence/internal/zzf;->zza(Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzawz()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->BQ:Ljava/lang/String;

    return-object v0
.end method

.method public zzaxa()Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->BR:Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    return-object v0
.end method
