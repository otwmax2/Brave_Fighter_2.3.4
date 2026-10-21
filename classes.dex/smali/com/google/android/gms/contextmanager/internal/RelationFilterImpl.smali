###### Class com.google.android.gms.contextmanager.internal.RelationFilterImpl (com.google.android.gms.contextmanager.internal.RelationFilterImpl)
.class public Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Ch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;",
            ">;"
        }
    .end annotation
.end field

.field private final Cj:Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;",
            ">;",
            "Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->Ch:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->Cj:Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    check-cast p1, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->Ch:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->Ch:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->Ch:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/zzo;->zza(Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzaxo()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->Ch:Ljava/util/ArrayList;

    return-object v0
.end method

.method public zzaxq()Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->Cj:Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;

    return-object v0
.end method

###### Class com.google.android.gms.contextmanager.internal.RelationFilterImpl.Inclusion (com.google.android.gms.contextmanager.internal.RelationFilterImpl$Inclusion)
.class public Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Inclusion"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Cm:Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;

.field private final Cn:Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;

.field private final it:I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/contextmanager/internal/TimeFilterImpl;Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;->it:I

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;->Cm:Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;

    iput-object p4, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;->Cn:Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;->getType()I

    move-result v3

    if-ne v2, v3, :cond_33

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;->zzaxt()Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;->zzaxt()Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;->zzaxu()Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;->zzaxu()Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_33
    move v0, v1

    goto :goto_4
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;->it:I

    return v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;->it:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;->Cm:Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;->Cn:Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/zzp;->zza(Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzaxt()Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;->Cm:Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;

    return-object v0
.end method

.method public zzaxu()Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl$Inclusion;->Cn:Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;

    return-object v0
.end method
