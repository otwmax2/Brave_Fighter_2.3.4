###### Class com.google.android.gms.awareness.snapshot.internal.Snapshot (com.google.android.gms.awareness.snapshot.internal.Snapshot)
.class public final Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fQ:Lcom/google/android/gms/location/ActivityRecognitionResult;

.field private final fR:Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl;

.field private final fS:Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;

.field private final fT:Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;

.field private final fU:Lcom/google/android/gms/common/data/DataHolder;

.field private final fV:Lcom/google/android/gms/awareness/snapshot/internal/PowerStateImpl;

.field private final fW:Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;

.field private final fX:Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;

.field private final mVersionCode:I

.field private final zzft:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/location/ActivityRecognitionResult;Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl;Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;Landroid/location/Location;Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/awareness/snapshot/internal/PowerStateImpl;Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;)V
    .registers 11

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->fQ:Lcom/google/android/gms/location/ActivityRecognitionResult;

    iput-object p3, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->fR:Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl;

    iput-object p4, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->fS:Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;

    iput-object p5, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->zzft:Landroid/location/Location;

    iput-object p6, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->fT:Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;

    iput-object p7, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->fU:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p8, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->fV:Lcom/google/android/gms/awareness/snapshot/internal/PowerStateImpl;

    iput-object p9, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->fW:Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;

    iput-object p10, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->fX:Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;

    return-void
.end method


# virtual methods
.method public getActivityRecognitionResult()Lcom/google/android/gms/location/ActivityRecognitionResult;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->fQ:Lcom/google/android/gms/location/ActivityRecognitionResult;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->zzft:Landroid/location/Location;

    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/awareness/snapshot/internal/zzj;->zza(Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzagz()Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->fR:Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl;

    return-object v0
.end method

.method public zzaha()Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->fS:Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;

    return-object v0
.end method

.method public zzahb()Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->fT:Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;

    return-object v0
.end method

.method public zzahc()Lcom/google/android/gms/common/data/DataHolder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->fU:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public zzahd()Lcom/google/android/gms/awareness/snapshot/internal/PowerStateImpl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->fV:Lcom/google/android/gms/awareness/snapshot/internal/PowerStateImpl;

    return-object v0
.end method

.method public zzahe()Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->fW:Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;

    return-object v0
.end method

.method public zzahf()Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->fX:Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;

    return-object v0
.end method
