###### Class com.google.android.gms.games.internal.PopupLocationInfoParcelable (com.google.android.gms.games.internal.PopupLocationInfoParcelable)
.class public final Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/internal/PopupLocationInfoParcelableCreator;


# instance fields
.field private final Uo:Landroid/os/Bundle;

.field private final Up:Landroid/os/IBinder;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/internal/PopupLocationInfoParcelableCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/PopupLocationInfoParcelableCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;->CREATOR:Lcom/google/android/gms/games/internal/PopupLocationInfoParcelableCreator;

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;Landroid/os/IBinder;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;->Uo:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;->Up:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;->mVersionCode:I

    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->zzbjn()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;->Uo:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->Us:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;->Up:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;->mVersionCode:I

    return v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;->Up:Landroid/os/IBinder;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/internal/PopupLocationInfoParcelableCreator;->zza(Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbjn()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;->Uo:Landroid/os/Bundle;

    return-object v0
.end method
