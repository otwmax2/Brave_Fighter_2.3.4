###### Class com.google.android.gms.awareness.snapshot.internal.HeadphoneStateImpl (com.google.android.gms.awareness.snapshot.internal.HeadphoneStateImpl)
.class public final Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/awareness/state/HeadphoneState;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fJ:I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;->fJ:I

    return-void
.end method


# virtual methods
.method public getState()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;->fJ:I

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;->mVersionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;->fJ:I

    packed-switch v0, :pswitch_data_24

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;->fJ:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "unknown headphone state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    :pswitch_1d
    const-string v0, "HEADPHONE_PLUGGED"

    goto :goto_1c

    :pswitch_20
    const-string v0, "HEADPHONE_UNPLUGGED"

    goto :goto_1c

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/awareness/snapshot/internal/zzc;->zza(Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;Landroid/os/Parcel;I)V

    return-void
.end method
