###### Class com.google.android.contextmanager.interest.InterestRecordStub (com.google.android.contextmanager.interest.InterestRecordStub)
.class public Lcom/google/android/contextmanager/interest/InterestRecordStub;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/contextmanager/interest/InterestRecordStub;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzahu:Lcom/google/android/gms/internal/zzsa$zzb;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/contextmanager/interest/zza;

    invoke-direct {v0}, Lcom/google/android/contextmanager/interest/zza;-><init>()V

    sput-object v0, Lcom/google/android/contextmanager/interest/InterestRecordStub;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/contextmanager/interest/InterestRecordStub;->mVersionCode:I

    const/4 v0, 0x0

    :try_start_6
    invoke-static {p2}, Lcom/google/android/gms/internal/zzsa$zzb;->zzw([B)Lcom/google/android/gms/internal/zzsa$zzb;
    :try_end_9
    .catch Lcom/google/android/gms/internal/zzapb; {:try_start_6 .. :try_end_9} :catch_d

    move-result-object v0

    :goto_a
    iput-object v0, p0, Lcom/google/android/contextmanager/interest/InterestRecordStub;->zzahu:Lcom/google/android/gms/internal/zzsa$zzb;

    return-void

    :catch_d
    move-exception v1

    const-string v2, "InterestRecordStub"

    const-string v3, "Could not deserialize interest bytes."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method


# virtual methods
.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/contextmanager/interest/InterestRecordStub;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/contextmanager/interest/zza;->zza(Lcom/google/android/contextmanager/interest/InterestRecordStub;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzdb()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/contextmanager/interest/InterestRecordStub;->zzahu:Lcom/google/android/gms/internal/zzsa$zzb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapc;->zzf(Lcom/google/android/gms/internal/zzapc;)[B

    move-result-object v0

    return-object v0
.end method
