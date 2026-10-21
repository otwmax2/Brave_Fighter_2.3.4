###### Class com.google.android.gms.contextmanager.internal.WriteBatchImpl (com.google.android.gms.contextmanager.internal.WriteBatchImpl)
.class public Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CW:Z

.field private CX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/ContextData;",
            ">;"
        }
    .end annotation
.end field

.field private CY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/Relation;",
            ">;"
        }
    .end annotation
.end field

.field private CZ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/Relation;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/zzs;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;-><init>(Z)V

    return-void
.end method

.method constructor <init>(IZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/ContextData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/Relation;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/Relation;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->CW:Z

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->CX:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->CY:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->CZ:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->mVersionCode:I

    iput-boolean p1, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->CW:Z

    return-void
.end method


# virtual methods
.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/zzs;->zza(Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzayk()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->CW:Z

    return v0
.end method

.method public zzayl()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/ContextData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->CX:Ljava/util/ArrayList;

    return-object v0
.end method

.method public zzaym()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/Relation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->CY:Ljava/util/ArrayList;

    return-object v0
.end method

.method public zzayn()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/Relation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->CZ:Ljava/util/ArrayList;

    return-object v0
.end method
