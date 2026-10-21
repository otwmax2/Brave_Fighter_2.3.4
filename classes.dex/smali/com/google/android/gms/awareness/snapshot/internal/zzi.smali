###### Class com.google.android.gms.awareness.snapshot.internal.zzi (com.google.android.gms.awareness.snapshot.internal.zzi)
.class public Lcom/google/android/gms/awareness/snapshot/internal/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/awareness/SnapshotApi;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/BeaconStateResult;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2713

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/awareness/snapshot/internal/zzi;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/util/ArrayList;)Lcom/google/android/gms/contextmanager/internal/zzc$zzb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/awareness/snapshot/internal/zzi$6;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$6;-><init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi;Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v1
.end method

.method private static zza(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/contextmanager/internal/zzc$zzb;
    .registers 3

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$7;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$7;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/util/ArrayList;)Lcom/google/android/gms/contextmanager/internal/zzc$zzb;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;",
            ">;)",
            "Lcom/google/android/gms/contextmanager/internal/zzc$zzb;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$8;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/util/ArrayList;)V

    return-object v0
.end method

.method private static varargs zza([Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "beaconTypes cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    if-lez v0, :cond_21

    const/4 v0, 0x1

    :goto_a
    const-string v2, "beaconTypes must not be empty"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p0

    :goto_15
    if-ge v1, v3, :cond_23

    aget-object v0, p0, v1

    check-cast v0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_21
    move v0, v1

    goto :goto_a

    :cond_23
    return-object v2
.end method

.method private static zze(Ljava/util/Collection;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;",
            ">;"
        }
    .end annotation

    const-string v0, "beaconTypes cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_2c

    const/4 v0, 0x1

    :goto_c
    const-string v1, "beaconTypes must not be empty"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;

    check-cast v0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2c
    const/4 v0, 0x0

    goto :goto_c

    :cond_2e
    return-object v1
.end method


# virtual methods
.method public getBeaconState(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Collection;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/BeaconStateResult;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/awareness/snapshot/internal/zzi;->zze(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzi;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public varargs getBeaconState(Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "[",
            "Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/BeaconStateResult;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/awareness/snapshot/internal/zzi;->zza([Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzi;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public getDetectedActivity(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/DetectedActivityResult;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2712

    invoke-static {p1, v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzi;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/contextmanager/internal/zzc$zzb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/awareness/snapshot/internal/zzi$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$1;-><init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi;Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v1
.end method

.method public getHeadphoneState(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/HeadphoneStateResult;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2714

    invoke-static {p1, v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzi;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/contextmanager/internal/zzc$zzb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/awareness/snapshot/internal/zzi$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$2;-><init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi;Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v1
.end method

.method public getLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/LocationResult;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2715

    invoke-static {p1, v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzi;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/contextmanager/internal/zzc$zzb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/awareness/snapshot/internal/zzi$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$3;-><init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi;Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v1
.end method

.method public getPlaces(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/PlacesResult;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2716

    invoke-static {p1, v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzi;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/contextmanager/internal/zzc$zzb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/awareness/snapshot/internal/zzi$4;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$4;-><init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi;Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v1
.end method

.method public getWeather(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/WeatherResult;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2717

    invoke-static {p1, v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzi;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/contextmanager/internal/zzc$zzb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/awareness/snapshot/internal/zzi$5;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$5;-><init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi;Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v1
.end method

###### Class com.google.android.gms.awareness.snapshot.internal.zzi.AnonymousClass1 (com.google.android.gms.awareness.snapshot.internal.zzi$1)
.class Lcom/google/android/gms/awareness/snapshot/internal/zzi$1;
.super Lcom/google/android/gms/internal/zzbt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/awareness/snapshot/internal/zzi;->getDetectedActivity(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbt",
        "<",
        "Lcom/google/android/gms/awareness/snapshot/DetectedActivityResult;",
        "Lcom/google/android/gms/awareness/snapshot/internal/zzl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic fY:Lcom/google/android/gms/awareness/snapshot/internal/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi;Lcom/google/android/gms/common/api/PendingResult;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$1;->fY:Lcom/google/android/gms/awareness/snapshot/internal/zzi;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbt;-><init>(Lcom/google/android/gms/common/api/PendingResult;)V

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/awareness/snapshot/internal/zzl;)Lcom/google/android/gms/awareness/snapshot/DetectedActivityResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$1$1;-><init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi$1;Lcom/google/android/gms/awareness/snapshot/internal/zzl;)V

    return-object v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    check-cast p1, Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$1;->zza(Lcom/google/android/gms/awareness/snapshot/internal/zzl;)Lcom/google/android/gms/awareness/snapshot/DetectedActivityResult;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.awareness.snapshot.internal.zzi.AnonymousClass1.C00681 (com.google.android.gms.awareness.snapshot.internal.zzi$1$1)
.class Lcom/google/android/gms/awareness/snapshot/internal/zzi$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/awareness/snapshot/DetectedActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/awareness/snapshot/internal/zzi$1;->zza(Lcom/google/android/gms/awareness/snapshot/internal/zzl;)Lcom/google/android/gms/awareness/snapshot/DetectedActivityResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

.field final synthetic ga:Lcom/google/android/gms/awareness/snapshot/internal/zzi$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi$1;Lcom/google/android/gms/awareness/snapshot/internal/zzl;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$1$1;->ga:Lcom/google/android/gms/awareness/snapshot/internal/zzi$1;

    iput-object p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$1$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityRecognitionResult()Lcom/google/android/gms/location/ActivityRecognitionResult;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$1$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzl;->zzahi()Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$1$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzl;->zzahi()Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->getActivityRecognitionResult()Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v0

    goto :goto_9
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$1$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzl;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.awareness.snapshot.internal.zzi.AnonymousClass2 (com.google.android.gms.awareness.snapshot.internal.zzi$2)
.class Lcom/google/android/gms/awareness/snapshot/internal/zzi$2;
.super Lcom/google/android/gms/internal/zzbt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/awareness/snapshot/internal/zzi;->getHeadphoneState(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbt",
        "<",
        "Lcom/google/android/gms/awareness/snapshot/HeadphoneStateResult;",
        "Lcom/google/android/gms/awareness/snapshot/internal/zzl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic fY:Lcom/google/android/gms/awareness/snapshot/internal/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi;Lcom/google/android/gms/common/api/PendingResult;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$2;->fY:Lcom/google/android/gms/awareness/snapshot/internal/zzi;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbt;-><init>(Lcom/google/android/gms/common/api/PendingResult;)V

    return-void
.end method


# virtual methods
.method protected synthetic zza(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    check-cast p1, Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$2;->zzb(Lcom/google/android/gms/awareness/snapshot/internal/zzl;)Lcom/google/android/gms/awareness/snapshot/HeadphoneStateResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzb(Lcom/google/android/gms/awareness/snapshot/internal/zzl;)Lcom/google/android/gms/awareness/snapshot/HeadphoneStateResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$2$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$2$1;-><init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi$2;Lcom/google/android/gms/awareness/snapshot/internal/zzl;)V

    return-object v0
.end method

###### Class com.google.android.gms.awareness.snapshot.internal.zzi.AnonymousClass2.AnonymousClass1 (com.google.android.gms.awareness.snapshot.internal.zzi$2$1)
.class Lcom/google/android/gms/awareness/snapshot/internal/zzi$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/awareness/snapshot/HeadphoneStateResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/awareness/snapshot/internal/zzi$2;->zzb(Lcom/google/android/gms/awareness/snapshot/internal/zzl;)Lcom/google/android/gms/awareness/snapshot/HeadphoneStateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

.field final synthetic gb:Lcom/google/android/gms/awareness/snapshot/internal/zzi$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi$2;Lcom/google/android/gms/awareness/snapshot/internal/zzl;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$2$1;->gb:Lcom/google/android/gms/awareness/snapshot/internal/zzi$2;

    iput-object p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$2$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeadphoneState()Lcom/google/android/gms/awareness/state/HeadphoneState;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$2$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzl;->zzahi()Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$2$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzl;->zzahi()Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->zzaha()Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;

    move-result-object v0

    goto :goto_9
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$2$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzl;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.awareness.snapshot.internal.zzi.AnonymousClass3 (com.google.android.gms.awareness.snapshot.internal.zzi$3)
.class Lcom/google/android/gms/awareness/snapshot/internal/zzi$3;
.super Lcom/google/android/gms/internal/zzbt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/awareness/snapshot/internal/zzi;->getLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbt",
        "<",
        "Lcom/google/android/gms/awareness/snapshot/LocationResult;",
        "Lcom/google/android/gms/awareness/snapshot/internal/zzl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic fY:Lcom/google/android/gms/awareness/snapshot/internal/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi;Lcom/google/android/gms/common/api/PendingResult;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$3;->fY:Lcom/google/android/gms/awareness/snapshot/internal/zzi;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbt;-><init>(Lcom/google/android/gms/common/api/PendingResult;)V

    return-void
.end method


# virtual methods
.method protected synthetic zza(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    check-cast p1, Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$3;->zzc(Lcom/google/android/gms/awareness/snapshot/internal/zzl;)Lcom/google/android/gms/awareness/snapshot/LocationResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzc(Lcom/google/android/gms/awareness/snapshot/internal/zzl;)Lcom/google/android/gms/awareness/snapshot/LocationResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$3$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$3$1;-><init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi$3;Lcom/google/android/gms/awareness/snapshot/internal/zzl;)V

    return-object v0
.end method

###### Class com.google.android.gms.awareness.snapshot.internal.zzi.AnonymousClass3.AnonymousClass1 (com.google.android.gms.awareness.snapshot.internal.zzi$3$1)
.class Lcom/google/android/gms/awareness/snapshot/internal/zzi$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/awareness/snapshot/LocationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/awareness/snapshot/internal/zzi$3;->zzc(Lcom/google/android/gms/awareness/snapshot/internal/zzl;)Lcom/google/android/gms/awareness/snapshot/LocationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

.field final synthetic gc:Lcom/google/android/gms/awareness/snapshot/internal/zzi$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi$3;Lcom/google/android/gms/awareness/snapshot/internal/zzl;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$3$1;->gc:Lcom/google/android/gms/awareness/snapshot/internal/zzi$3;

    iput-object p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$3$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$3$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzl;->zzahi()Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$3$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzl;->zzahi()Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->getLocation()Landroid/location/Location;

    move-result-object v0

    goto :goto_9
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$3$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzl;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.awareness.snapshot.internal.zzi.AnonymousClass4 (com.google.android.gms.awareness.snapshot.internal.zzi$4)
.class Lcom/google/android/gms/awareness/snapshot/internal/zzi$4;
.super Lcom/google/android/gms/internal/zzbt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/awareness/snapshot/internal/zzi;->getPlaces(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbt",
        "<",
        "Lcom/google/android/gms/awareness/snapshot/PlacesResult;",
        "Lcom/google/android/gms/awareness/snapshot/internal/zzl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic fY:Lcom/google/android/gms/awareness/snapshot/internal/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi;Lcom/google/android/gms/common/api/PendingResult;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$4;->fY:Lcom/google/android/gms/awareness/snapshot/internal/zzi;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbt;-><init>(Lcom/google/android/gms/common/api/PendingResult;)V

    return-void
.end method


# virtual methods
.method protected synthetic zza(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    check-cast p1, Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$4;->zzd(Lcom/google/android/gms/awareness/snapshot/internal/zzl;)Lcom/google/android/gms/awareness/snapshot/PlacesResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzd(Lcom/google/android/gms/awareness/snapshot/internal/zzl;)Lcom/google/android/gms/awareness/snapshot/PlacesResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$4$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$4$1;-><init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi$4;Lcom/google/android/gms/awareness/snapshot/internal/zzl;)V

    return-object v0
.end method

###### Class com.google.android.gms.awareness.snapshot.internal.zzi.AnonymousClass4.AnonymousClass1 (com.google.android.gms.awareness.snapshot.internal.zzi$4$1)
.class Lcom/google/android/gms/awareness/snapshot/internal/zzi$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/awareness/snapshot/PlacesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/awareness/snapshot/internal/zzi$4;->zzd(Lcom/google/android/gms/awareness/snapshot/internal/zzl;)Lcom/google/android/gms/awareness/snapshot/PlacesResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

.field private gd:Z

.field private ge:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceLikelihood;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic gf:Lcom/google/android/gms/awareness/snapshot/internal/zzi$4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi$4;Lcom/google/android/gms/awareness/snapshot/internal/zzl;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$4$1;->gf:Lcom/google/android/gms/awareness/snapshot/internal/zzi$4;

    iput-object p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$4$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$4$1;->gd:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$4$1;->ge:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getPlaceLikelihoods()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceLikelihood;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$4$1;->gd:Z

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$4$1;->ge:Ljava/util/List;

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$4$1;->gd:Z

    iget-object v1, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$4$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-interface {v1}, Lcom/google/android/gms/awareness/snapshot/internal/zzl;->zzahi()Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$4$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-interface {v1}, Lcom/google/android/gms/awareness/snapshot/internal/zzl;->zzahi()Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->zzahc()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v2, Lcom/google/android/gms/awareness/snapshot/internal/zze;

    invoke-direct {v2, v1}, Lcom/google/android/gms/awareness/snapshot/internal/zze;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_24
    invoke-virtual {v2}, Lcom/google/android/gms/awareness/snapshot/internal/zze;->getCount()I
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_43

    move-result v1

    if-gtz v1, :cond_2e

    invoke-virtual {v2}, Lcom/google/android/gms/awareness/snapshot/internal/zze;->release()V

    goto :goto_7

    :cond_2e
    const/4 v0, 0x0

    :try_start_2f
    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/data/zzd;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    check-cast v0, Lcom/google/android/gms/awareness/snapshot/internal/PlacesData;

    invoke-virtual {v0}, Lcom/google/android/gms/awareness/snapshot/internal/PlacesData;->getPlaceLikelihoods()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$4$1;->ge:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$4$1;->ge:Ljava/util/List;
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_43

    invoke-virtual {v2}, Lcom/google/android/gms/awareness/snapshot/internal/zze;->release()V

    goto :goto_7

    :catchall_43
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/gms/awareness/snapshot/internal/zze;->release()V

    throw v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$4$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzl;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.awareness.snapshot.internal.zzi.AnonymousClass5 (com.google.android.gms.awareness.snapshot.internal.zzi$5)
.class Lcom/google/android/gms/awareness/snapshot/internal/zzi$5;
.super Lcom/google/android/gms/internal/zzbt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/awareness/snapshot/internal/zzi;->getWeather(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbt",
        "<",
        "Lcom/google/android/gms/awareness/snapshot/WeatherResult;",
        "Lcom/google/android/gms/awareness/snapshot/internal/zzl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic fY:Lcom/google/android/gms/awareness/snapshot/internal/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi;Lcom/google/android/gms/common/api/PendingResult;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$5;->fY:Lcom/google/android/gms/awareness/snapshot/internal/zzi;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbt;-><init>(Lcom/google/android/gms/common/api/PendingResult;)V

    return-void
.end method


# virtual methods
.method protected synthetic zza(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    check-cast p1, Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$5;->zze(Lcom/google/android/gms/awareness/snapshot/internal/zzl;)Lcom/google/android/gms/awareness/snapshot/WeatherResult;

    move-result-object v0

    return-object v0
.end method

.method protected zze(Lcom/google/android/gms/awareness/snapshot/internal/zzl;)Lcom/google/android/gms/awareness/snapshot/WeatherResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$5$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$5$1;-><init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi$5;Lcom/google/android/gms/awareness/snapshot/internal/zzl;)V

    return-object v0
.end method

###### Class com.google.android.gms.awareness.snapshot.internal.zzi.AnonymousClass5.AnonymousClass1 (com.google.android.gms.awareness.snapshot.internal.zzi$5$1)
.class Lcom/google/android/gms/awareness/snapshot/internal/zzi$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/awareness/snapshot/WeatherResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/awareness/snapshot/internal/zzi$5;->zze(Lcom/google/android/gms/awareness/snapshot/internal/zzl;)Lcom/google/android/gms/awareness/snapshot/WeatherResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

.field final synthetic gg:Lcom/google/android/gms/awareness/snapshot/internal/zzi$5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi$5;Lcom/google/android/gms/awareness/snapshot/internal/zzl;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$5$1;->gg:Lcom/google/android/gms/awareness/snapshot/internal/zzi$5;

    iput-object p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$5$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$5$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzl;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method public getWeather()Lcom/google/android/gms/awareness/state/Weather;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$5$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzl;->zzahi()Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$5$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzl;->zzahi()Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->zzahf()Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;

    move-result-object v0

    goto :goto_9
.end method

###### Class com.google.android.gms.awareness.snapshot.internal.zzi.AnonymousClass6 (com.google.android.gms.awareness.snapshot.internal.zzi$6)
.class Lcom/google/android/gms/awareness/snapshot/internal/zzi$6;
.super Lcom/google/android/gms/internal/zzbt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/awareness/snapshot/internal/zzi;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbt",
        "<",
        "Lcom/google/android/gms/awareness/snapshot/BeaconStateResult;",
        "Lcom/google/android/gms/awareness/snapshot/internal/zzl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic fY:Lcom/google/android/gms/awareness/snapshot/internal/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi;Lcom/google/android/gms/common/api/PendingResult;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$6;->fY:Lcom/google/android/gms/awareness/snapshot/internal/zzi;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbt;-><init>(Lcom/google/android/gms/common/api/PendingResult;)V

    return-void
.end method


# virtual methods
.method protected synthetic zza(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    check-cast p1, Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$6;->zzf(Lcom/google/android/gms/awareness/snapshot/internal/zzl;)Lcom/google/android/gms/awareness/snapshot/BeaconStateResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzf(Lcom/google/android/gms/awareness/snapshot/internal/zzl;)Lcom/google/android/gms/awareness/snapshot/BeaconStateResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$6$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$6$1;-><init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi$6;Lcom/google/android/gms/awareness/snapshot/internal/zzl;)V

    return-object v0
.end method

###### Class com.google.android.gms.awareness.snapshot.internal.zzi.AnonymousClass6.AnonymousClass1 (com.google.android.gms.awareness.snapshot.internal.zzi$6$1)
.class Lcom/google/android/gms/awareness/snapshot/internal/zzi$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/awareness/snapshot/BeaconStateResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/awareness/snapshot/internal/zzi$6;->zzf(Lcom/google/android/gms/awareness/snapshot/internal/zzl;)Lcom/google/android/gms/awareness/snapshot/BeaconStateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

.field final synthetic gh:Lcom/google/android/gms/awareness/snapshot/internal/zzi$6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/awareness/snapshot/internal/zzi$6;Lcom/google/android/gms/awareness/snapshot/internal/zzl;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$6$1;->gh:Lcom/google/android/gms/awareness/snapshot/internal/zzi$6;

    iput-object p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$6$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBeaconState()Lcom/google/android/gms/awareness/state/BeaconState;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$6$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzl;->zzahi()Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$6$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzl;->zzahi()Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->zzagz()Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl;

    move-result-object v0

    goto :goto_9
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$6$1;->fZ:Lcom/google/android/gms/awareness/snapshot/internal/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzl;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.awareness.snapshot.internal.zzi.AnonymousClass7 (com.google.android.gms.awareness.snapshot.internal.zzi$7)
.class final Lcom/google/android/gms/awareness/snapshot/internal/zzi$7;
.super Lcom/google/android/gms/contextmanager/internal/zzc$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/awareness/snapshot/internal/zzi;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/contextmanager/internal/zzc$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gi:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .registers 3

    iput p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$7;->gi:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/contextmanager/internal/zzc$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/contextmanager/internal/zzd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$7;->zza(Lcom/google/android/gms/contextmanager/internal/zzd;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/contextmanager/internal/zzd;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;

    iget v1, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$7;->gi:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/contextmanager/internal/zzd;->zza(Lcom/google/android/gms/internal/zzpr$zzb;Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;)V

    return-void
.end method

###### Class com.google.android.gms.awareness.snapshot.internal.zzi.AnonymousClass8 (com.google.android.gms.awareness.snapshot.internal.zzi$8)
.class final Lcom/google/android/gms/awareness/snapshot/internal/zzi$8;
.super Lcom/google/android/gms/contextmanager/internal/zzc$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/awareness/snapshot/internal/zzi;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/util/ArrayList;)Lcom/google/android/gms/contextmanager/internal/zzc$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gi:I

.field final synthetic gj:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/util/ArrayList;)V
    .registers 4

    iput p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$8;->gi:I

    iput-object p3, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$8;->gj:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/google/android/gms/contextmanager/internal/zzc$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/contextmanager/internal/zzd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/awareness/snapshot/internal/zzi$8;->zza(Lcom/google/android/gms/contextmanager/internal/zzd;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/contextmanager/internal/zzd;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;

    iget v1, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$8;->gi:I

    iget-object v2, p0, Lcom/google/android/gms/awareness/snapshot/internal/zzi$8;->gj:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/contextmanager/internal/zzd;->zza(Lcom/google/android/gms/internal/zzpr$zzb;Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;)V

    return-void
.end method
