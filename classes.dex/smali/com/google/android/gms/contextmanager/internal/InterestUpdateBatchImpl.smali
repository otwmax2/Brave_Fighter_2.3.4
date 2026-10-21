###### Class com.google.android.gms.contextmanager.internal.InterestUpdateBatchImpl (com.google.android.gms.contextmanager.internal.InterestUpdateBatchImpl)
.class public Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;->mVersionCode:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;->fE:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;->fE:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/zzj;->zza(Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzaxh()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;->fE:Ljava/util/ArrayList;

    return-object v0
.end method

###### Class com.google.android.gms.contextmanager.internal.InterestUpdateBatchImpl.Operation (com.google.android.gms.contextmanager.internal.InterestUpdateBatchImpl$Operation)
.class public Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Operation"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CL:Lcom/google/android/contextmanager/interest/InterestRecordStub;

.field private final CM:Ljava/lang/String;

.field private final it:I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/contextmanager/interest/InterestRecordStub;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->it:I

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->CL:Lcom/google/android/contextmanager/interest/InterestRecordStub;

    iput-object p4, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->CM:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->it:I

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/zzk;->zza(Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzaxz()Lcom/google/android/contextmanager/interest/InterestRecordStub;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->CL:Lcom/google/android/contextmanager/interest/InterestRecordStub;

    return-object v0
.end method

.method zzaya()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->CM:Ljava/lang/String;

    return-object v0
.end method
