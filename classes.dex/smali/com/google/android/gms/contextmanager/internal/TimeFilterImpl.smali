###### Class com.google.android.gms.contextmanager.internal.TimeFilterImpl (com.google.android.gms.contextmanager.internal.TimeFilterImpl)
.class public Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;",
            ">;"
        }
    .end annotation
.end field

.field private final CU:[I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;[I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;",
            ">;[I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->CT:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->CU:[I

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
    instance-of v2, p1, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->CT:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->CT:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->CU:[I

    iget-object v3, p1, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->CU:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->CT:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->CU:[I

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/zzq;->zza(Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzayh()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->CT:Ljava/util/ArrayList;

    return-object v0
.end method

.method public zzayi()[I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;->CU:[I

    return-object v0
.end method

###### Class com.google.android.gms.contextmanager.internal.TimeFilterImpl.Interval (com.google.android.gms.contextmanager.internal.TimeFilterImpl$Interval)
.class public Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Interval"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CV:J

.field private final mVersionCode:I

.field private final zzczk:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/zzr;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/zzr;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJ)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->zzczk:J

    iput-wide p4, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->CV:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;

    iget-wide v2, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->zzczk:J

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->zzadw()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_21

    iget-wide v2, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->CV:J

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->zzayj()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->zzczk:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->CV:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/zzr;->zza(Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzadw()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->zzczk:J

    return-wide v0
.end method

.method public zzayj()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->CV:J

    return-wide v0
.end method
