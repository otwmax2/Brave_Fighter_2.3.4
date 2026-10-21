###### Class com.google.android.gms.contextmanager.internal.ContextDataFilterImpl (com.google.android.gms.contextmanager.internal.ContextDataFilterImpl)
.class public Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;",
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
            "Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;",
            ">;"
        }
    .end annotation
.end field

.field private final Ci:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Cj:Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/zza;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->Ch:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->Ci:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->Cj:Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;

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
    instance-of v2, p1, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->Ch:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->Ch:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->Ci:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->Ci:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->Ch:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->Ci:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "contexts=["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->Ch:Ljava/util/ArrayList;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->Ch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->Ch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;

    invoke-virtual {v0}, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->zzaxs()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_36
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/zza;->zza(Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzaxo()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->Ch:Ljava/util/ArrayList;

    return-object v0
.end method

.method public zzaxp()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->Ci:Ljava/util/ArrayList;

    return-object v0
.end method

.method public zzaxq()Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->Cj:Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;

    return-object v0
.end method

###### Class com.google.android.gms.contextmanager.internal.ContextDataFilterImpl.Inclusion (com.google.android.gms.contextmanager.internal.ContextDataFilterImpl$Inclusion)
.class public Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;
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
            "Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Ck:I

.field private final Cl:I

.field private final Cm:Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;

.field private final Cn:Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIILcom/google/android/gms/contextmanager/internal/TimeFilterImpl;Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->Ck:I

    iput p3, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->Cl:I

    iput-object p4, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->Cm:Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;

    iput-object p5, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->Cn:Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;

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
    instance-of v2, p1, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;

    iget v2, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->Ck:I

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->zzaxr()I

    move-result v3

    if-ne v2, v3, :cond_35

    iget v2, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->Cl:I

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->zzaxs()I

    move-result v3

    if-ne v2, v3, :cond_35

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->Cm:Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->zzaxt()Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->Cn:Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->zzaxu()Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_35
    move v0, v1

    goto :goto_4
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->Ck:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->Cl:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->Cm:Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->Cn:Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/zzb;->zza(Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzaxr()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->Ck:I

    return v0
.end method

.method public zzaxs()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->Cl:I

    return v0
.end method

.method public zzaxt()Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->Cm:Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;

    return-object v0
.end method

.method public zzaxu()Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->Cn:Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;

    return-object v0
.end method
