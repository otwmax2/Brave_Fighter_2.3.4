###### Class com.google.android.gms.contextmanager.internal.ContextManagerClientInfo (com.google.android.gms.contextmanager.internal.ContextManagerClientInfo)
.class public Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Ct:I

.field private final Cu:I

.field private Cv:Lcom/google/android/gms/internal/zzbr;

.field private final aQ:Ljava/lang/String;

.field private final cf:Ljava/lang/String;

.field private final fA:I

.field private final fB:Ljava/lang/String;

.field private final fC:Ljava/lang/String;

.field private final fD:I

.field private final fz:Ljava/lang/String;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/zze;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    .registers 11

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->cf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->aQ:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->Ct:I

    iput-object p5, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->fz:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->Cu:I

    iput p7, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->fA:I

    iput-object p8, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->fB:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->fC:Ljava/lang/String;

    iput p10, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->fD:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    .registers 21

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzhs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzab;->zzhs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzab;->zzhs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/awareness/AwarenessOptions;)Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;
    .registers 13

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p2}, Lcom/google/android/gms/awareness/AwarenessOptions;->zzagm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/gms/common/util/zzd;->zzo(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2}, Lcom/google/android/gms/awareness/AwarenessOptions;->zzagn()I

    move-result v6

    invoke-virtual {p2}, Lcom/google/android/gms/awareness/AwarenessOptions;->zzago()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/google/android/gms/awareness/AwarenessOptions;->zzagp()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/google/android/gms/awareness/AwarenessOptions;->zzagq()I

    move-result v9

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static zzs(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;
    .registers 12

    const/4 v7, 0x0

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/gms/common/util/zzd;->zzo(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    const/4 v9, -0x1

    move-object v1, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->cf:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->aQ:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->Ct:I

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->mVersionCode:I

    return v0
.end method

.method public toByteArray()[B
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->zzaxw()Lcom/google/android/gms/internal/zzbr;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->getUid()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->zzagm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->zzaxx()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->zzaxy()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->zzago()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->zzagp()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "(account="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thirdPartyPackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,  thirdPartyModuleId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/zze;->zza(Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzagm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->fz:Ljava/lang/String;

    return-object v0
.end method

.method zzagn()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->fA:I

    return v0
.end method

.method public zzago()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->fB:Ljava/lang/String;

    return-object v0
.end method

.method public zzagp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->fC:Ljava/lang/String;

    return-object v0
.end method

.method public zzagq()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->fD:I

    return v0
.end method

.method public zzaxw()Lcom/google/android/gms/internal/zzbr;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->cf:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->Cv:Lcom/google/android/gms/internal/zzbr;

    if-nez v0, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/zzbr;

    iget-object v1, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->cf:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbr;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->Cv:Lcom/google/android/gms/internal/zzbr;

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->Cv:Lcom/google/android/gms/internal/zzbr;

    goto :goto_5
.end method

.method public zzaxx()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->Cu:I

    return v0
.end method

.method public zzaxy()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->fA:I

    packed-switch v0, :pswitch_data_12

    :pswitch_5
    const-string v0, "unknownPartyType"

    :goto_7
    return-object v0

    :pswitch_8
    const-string v0, "0P"

    goto :goto_7

    :pswitch_b
    const-string v0, "1P"

    goto :goto_7

    :pswitch_e
    const-string v0, "3P"

    goto :goto_7

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_5
        :pswitch_e
    .end packed-switch
.end method
