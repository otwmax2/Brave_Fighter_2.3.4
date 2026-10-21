###### Class com.google.android.gms.awareness.snapshot.internal.NetworkStateImpl (com.google.android.gms.awareness.snapshot.internal.NetworkStateImpl)
.class public Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fK:I

.field private final fL:I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/awareness/snapshot/internal/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;->fK:I

    iput p3, p0, Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;->fL:I

    return-void
.end method

.method public static zzdi(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_22

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unknown connection state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0

    :pswitch_19
    const-string v0, "DISCONNECTED"

    goto :goto_18

    :pswitch_1c
    const-string v0, "ON_WIFI"

    goto :goto_18

    :pswitch_1f
    const-string v0, "ON_CELLULAR"

    goto :goto_18

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method

.method public static zzdj(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_20

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unknown meter state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0

    :pswitch_19
    const-string v0, "METERED"

    goto :goto_18

    :pswitch_1c
    const-string v0, "UNMETERED"

    goto :goto_18

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public getConnectionState()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;->fK:I

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;->mVersionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;->fK:I

    invoke-static {v0}, Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;->zzdi(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;->fL:I

    invoke-static {v1}, Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;->zzdj(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x29

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "ConnectionState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " NetworkMeteredState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/awareness/snapshot/internal/zzd;->zza(Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzagu()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;->fL:I

    return v0
.end method
