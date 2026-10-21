###### Class com.google.android.gms.contextmanager.fence.internal.FenceQueryRequestImpl (com.google.android.gms.contextmanager.fence.internal.FenceQueryRequestImpl)
.class public Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;
.super Lcom/google/android/gms/awareness/fence/FenceQueryRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BU:Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/fence/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;->zza(ILjava/util/List;)Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;-><init>(ILcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;)V

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/awareness/fence/FenceQueryRequest;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;->BU:Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;->zza(ILjava/util/List;)Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;-><init>(ILcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;->zza(ILjava/util/List;)Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;-><init>(ILcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;)V

    return-void
.end method


# virtual methods
.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/fence/internal/zzh;->zza(Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzaxd()Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;->BU:Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;

    return-object v0
.end method

###### Class com.google.android.gms.contextmanager.fence.internal.FenceQueryRequestImpl.QueryFenceOperation (com.google.android.gms.contextmanager.fence.internal.FenceQueryRequestImpl$QueryFenceOperation)
.class public Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryFenceOperation"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final it:I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/fence/internal/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;->it:I

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;->BV:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;-><init>(IILjava/util/List;)V

    return-void
.end method

.method public static zza(ILjava/util/List;)Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;-><init>(ILjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;->it:I

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/fence/internal/zzo;->zza(Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzaxe()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;->BV:Ljava/util/List;

    return-object v0
.end method
