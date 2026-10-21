###### Class com.google.android.gms.awareness.snapshot.internal.ScreenStateImpl (com.google.android.gms.awareness.snapshot.internal.ScreenStateImpl)
.class public final Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fP:I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;->fP:I

    return-void
.end method


# virtual methods
.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;->mVersionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;->fP:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const-string v0, "ScreenState: SCREEN_OFF"

    :goto_7
    return-object v0

    :cond_8
    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;->fP:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    const-string v0, "ScreenState: SCREEN_ON"

    goto :goto_7

    :cond_10
    const-string v0, "ScreenState: UNKNOWN"

    goto :goto_7
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/awareness/snapshot/internal/zzh;->zza(Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzagy()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;->fP:I

    return v0
.end method
