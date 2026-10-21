###### Class com.google.android.gms.contextmanager.fence.internal.FenceStateImpl (com.google.android.gms.contextmanager.fence.internal.FenceStateImpl)
.class public Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;
.super Lcom/google/android/gms/awareness/fence/FenceState;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BW:J

.field private final BX:Ljava/lang/String;

.field private final BY:I

.field private final mVersionCode:I

.field private final zzbry:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/fence/internal/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIJLjava/lang/String;I)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/awareness/fence/FenceState;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->zzbry:I

    iput-wide p3, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->BW:J

    iput-object p5, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->BX:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->BY:I

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;I)V
    .registers 14

    const/4 v2, 0x1

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;-><init>(IIJLjava/lang/String;I)V

    return-void
.end method

.method public static extract(Landroid/content/Intent;)Lcom/google/android/gms/awareness/fence/FenceState;
    .registers 8

    const/4 v6, 0x0

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;

    const-string v1, "context_fence_current_state"

    invoke-virtual {p0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "FenceState"

    invoke-static {v1, v2}, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->zzh(ILjava/lang/String;)I

    move-result v1

    const-string v2, "context_fence_last_updated_time"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "context_fence_key"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "context_fence_previous_state"

    invoke-virtual {p0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "FenceState"

    invoke-static {v5, v6}, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->zzh(ILjava/lang/String;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;-><init>(IJLjava/lang/String;I)V

    return-object v0
.end method

.method public static zzh(ILjava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_22

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid fence evaluation state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbu;->zzd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :goto_1c
    :pswitch_1c
    return v0

    :pswitch_1d
    const/4 v0, 0x2

    goto :goto_1c

    :pswitch_1f
    const/4 v0, 0x1

    goto :goto_1c

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public getCurrentState()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->zzbry:I

    return v0
.end method

.method public getFenceKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->BX:Ljava/lang/String;

    return-object v0
.end method

.method public getLastFenceUpdateTimeMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->BW:J

    return-wide v0
.end method

.method public getPreviousState()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->BY:I

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/fence/internal/zzi;->zza(Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;Landroid/os/Parcel;I)V

    return-void
.end method
