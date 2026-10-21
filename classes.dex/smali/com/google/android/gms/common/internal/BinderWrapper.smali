###### Class com.google.android.gms.common.internal.BinderWrapper (com.google.android.gms.common.internal.BinderWrapper)
.class public final Lcom/google/android/gms/common/internal/BinderWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/BinderWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private xA:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/internal/BinderWrapper$1;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/BinderWrapper$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/BinderWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BinderWrapper;->xA:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BinderWrapper;->xA:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BinderWrapper;->xA:Landroid/os/IBinder;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BinderWrapper;->xA:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BinderWrapper;->xA:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/gms/common/internal/BinderWrapper$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BinderWrapper;->xA:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method

###### Class com.google.android.gms.common.internal.BinderWrapper.AnonymousClass1 (com.google.android.gms.common.internal.BinderWrapper$1)
.class final Lcom/google/android/gms/common/internal/BinderWrapper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BinderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/common/internal/BinderWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/BinderWrapper$1;->zzce(Landroid/os/Parcel;)Lcom/google/android/gms/common/internal/BinderWrapper;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/BinderWrapper$1;->zzfz(I)[Lcom/google/android/gms/common/internal/BinderWrapper;

    move-result-object v0

    return-object v0
.end method

.method public zzce(Landroid/os/Parcel;)Lcom/google/android/gms/common/internal/BinderWrapper;
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/internal/BinderWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/Parcel;Lcom/google/android/gms/common/internal/BinderWrapper$1;)V

    return-object v0
.end method

.method public zzfz(I)[Lcom/google/android/gms/common/internal/BinderWrapper;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/common/internal/BinderWrapper;

    return-object v0
.end method
