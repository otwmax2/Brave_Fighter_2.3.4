###### Class com.google.android.gms.contextmanager.internal.KeyFilterImpl (com.google.android.gms.contextmanager.internal.KeyFilterImpl)
.class public Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;",
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
            "Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;->Ch:Ljava/util/ArrayList;

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
    instance-of v0, p1, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    check-cast p1, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;->zzaxo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;->zzaxo()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;->Ch:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/zzl;->zza(Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzaxo()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;->Ch:Ljava/util/ArrayList;

    return-object v0
.end method

###### Class com.google.android.gms.contextmanager.internal.KeyFilterImpl.Inclusion (com.google.android.gms.contextmanager.internal.KeyFilterImpl$Inclusion)
.class public Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl;
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
            "Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CN:[Ljava/lang/String;

.field private final CO:[Ljava/lang/String;

.field private final CP:[Ljava/lang/String;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->CN:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->CO:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->CP:[Ljava/lang/String;

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
    instance-of v2, p1, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->zzayb()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->zzayb()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->zzayc()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->zzayc()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->zzayd()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->zzayd()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_37
    move v0, v1

    goto :goto_4
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->CN:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->CO:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->CP:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/zzm;->zza(Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzayb()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->CN:[Ljava/lang/String;

    return-object v0
.end method

.method public zzayc()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->CO:[Ljava/lang/String;

    return-object v0
.end method

.method public zzayd()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->CP:[Ljava/lang/String;

    return-object v0
.end method
