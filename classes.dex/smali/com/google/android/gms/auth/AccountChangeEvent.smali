###### Class com.google.android.gms.auth.AccountChangeEvent (com.google.android.gms.auth.AccountChangeEvent)
.class public Lcom/google/android/gms/auth/AccountChangeEvent;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/AccountChangeEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final ce:J

.field final cf:Ljava/lang/String;

.field final cg:I

.field final ch:I

.field final ci:Ljava/lang/String;

.field final mVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/auth/zza;

    invoke-direct {v0}, Lcom/google/android/gms/auth/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/AccountChangeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJLjava/lang/String;IILjava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->mVersion:I

    iput-wide p2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->ce:J

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->cf:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->cg:I

    iput p6, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->ch:I

    iput-object p7, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->ci:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IILjava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->mVersion:I

    iput-wide p1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->ce:J

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->cf:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->cg:I

    iput p5, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->ch:I

    iput-object p6, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->ci:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/auth/AccountChangeEvent;

    if-eqz v2, :cond_3b

    check-cast p1, Lcom/google/android/gms/auth/AccountChangeEvent;

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->mVersion:I

    iget v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->mVersion:I

    if-ne v2, v3, :cond_39

    iget-wide v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->ce:J

    iget-wide v4, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->ce:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_39

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->cf:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->cf:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->cg:I

    iget v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->cg:I

    if-ne v2, v3, :cond_39

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->ch:I

    iget v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->ch:I

    if-ne v2, v3, :cond_39

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->ci:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->ci:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_39
    move v0, v1

    goto :goto_4

    :cond_3b
    move v0, v1

    goto :goto_4
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->cf:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeData()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->ci:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->cg:I

    return v0
.end method

.method public getEventIndex()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->ch:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->mVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->ce:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->cf:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->cg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->ch:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->ci:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    const-string v0, "UNKNOWN"

    iget v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->cg:I

    packed-switch v1, :pswitch_data_6e

    :goto_7
    iget-object v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->cf:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->ci:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->ch:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x5b

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "AccountChangeEvent {accountName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", changeType = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", changeData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_61
    const-string v0, "ADDED"

    goto :goto_7

    :pswitch_64
    const-string v0, "REMOVED"

    goto :goto_7

    :pswitch_67
    const-string v0, "RENAMED_TO"

    goto :goto_7

    :pswitch_6a
    const-string v0, "RENAMED_FROM"

    goto :goto_7

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_61
        :pswitch_64
        :pswitch_6a
        :pswitch_67
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/zza;->zza(Lcom/google/android/gms/auth/AccountChangeEvent;Landroid/os/Parcel;I)V

    return-void
.end method
