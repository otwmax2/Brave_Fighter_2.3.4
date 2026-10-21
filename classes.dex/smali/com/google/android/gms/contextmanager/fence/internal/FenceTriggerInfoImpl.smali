###### Class com.google.android.gms.contextmanager.fence.internal.FenceTriggerInfoImpl (com.google.android.gms.contextmanager.fence.internal.FenceTriggerInfoImpl)
.class public Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Ca:Z

.field private final mVersionCode:I

.field private final zzaxn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/fence/internal/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;->Ca:Z

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;->zzaxn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;->zzaxn:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/fence/internal/zzk;->zza(Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzaxg()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;->Ca:Z

    return v0
.end method
