###### Class com.google.android.gms.contextmanager.fence.internal.ContextFenceStub (com.google.android.gms.contextmanager.fence.internal.ContextFenceStub)
.class public Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;
.super Lcom/google/android/gms/awareness/fence/AwarenessFence;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private BS:Lcom/google/android/gms/internal/zzry$zzd;

.field private BT:[B

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/fence/internal/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/awareness/fence/AwarenessFence;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->mVersionCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->BS:Lcom/google/android/gms/internal/zzry$zzd;

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->BT:[B

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zzawr()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzry$zzd;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/awareness/fence/AwarenessFence;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->mVersionCode:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzry$zzd;

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->BS:Lcom/google/android/gms/internal/zzry$zzd;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->BT:[B

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zzawr()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;
    .registers 15

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    const/4 v0, 0x3

    invoke-static {v1}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zzi(Ljava/util/Collection;)[Lcom/google/android/gms/internal/zzry$zzd;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    move-object v11, v2

    move-object v12, v2

    invoke-static/range {v0 .. v12}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(I[Lcom/google/android/gms/internal/zzry$zzd;Lcom/google/android/gms/internal/zzry$zzm;Lcom/google/android/gms/internal/zzry$zzf;Lcom/google/android/gms/internal/zzry$zzi;Lcom/google/android/gms/internal/zzry$zza;Lcom/google/android/gms/internal/zzry$zzk;Lcom/google/android/gms/internal/zzry$zzj;Lcom/google/android/gms/internal/zzry$zzh;Lcom/google/android/gms/internal/zzry$zzb;Lcom/google/android/gms/internal/zzry$zzc;Lcom/google/android/gms/internal/zzry$zzg;Lcom/google/android/gms/internal/zzry$zzn;)Lcom/google/android/gms/internal/zzry$zzd;

    move-result-object v0

    invoke-direct {v13, v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;-><init>(Lcom/google/android/gms/internal/zzry$zzd;)V

    return-object v13
.end method

.method public static zza(Lcom/google/android/gms/contextmanager/fence/internal/zza;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;
    .registers 15

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/fence/internal/zza;->zzawu()Lcom/google/android/gms/internal/zzry$zza;

    move-result-object v5

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    move-object v11, v1

    move-object v12, v1

    invoke-static/range {v0 .. v12}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(I[Lcom/google/android/gms/internal/zzry$zzd;Lcom/google/android/gms/internal/zzry$zzm;Lcom/google/android/gms/internal/zzry$zzf;Lcom/google/android/gms/internal/zzry$zzi;Lcom/google/android/gms/internal/zzry$zza;Lcom/google/android/gms/internal/zzry$zzk;Lcom/google/android/gms/internal/zzry$zzj;Lcom/google/android/gms/internal/zzry$zzh;Lcom/google/android/gms/internal/zzry$zzb;Lcom/google/android/gms/internal/zzry$zzc;Lcom/google/android/gms/internal/zzry$zzg;Lcom/google/android/gms/internal/zzry$zzn;)Lcom/google/android/gms/internal/zzry$zzd;

    move-result-object v0

    invoke-direct {v13, v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;-><init>(Lcom/google/android/gms/internal/zzry$zzd;)V

    return-object v13
.end method

.method public static zza(Lcom/google/android/gms/contextmanager/fence/internal/zzb;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;
    .registers 15

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/fence/internal/zzb;->zzawx()Lcom/google/android/gms/internal/zzry$zzb;

    move-result-object v9

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v10, v1

    move-object v11, v1

    move-object v12, v1

    invoke-static/range {v0 .. v12}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(I[Lcom/google/android/gms/internal/zzry$zzd;Lcom/google/android/gms/internal/zzry$zzm;Lcom/google/android/gms/internal/zzry$zzf;Lcom/google/android/gms/internal/zzry$zzi;Lcom/google/android/gms/internal/zzry$zza;Lcom/google/android/gms/internal/zzry$zzk;Lcom/google/android/gms/internal/zzry$zzj;Lcom/google/android/gms/internal/zzry$zzh;Lcom/google/android/gms/internal/zzry$zzb;Lcom/google/android/gms/internal/zzry$zzc;Lcom/google/android/gms/internal/zzry$zzg;Lcom/google/android/gms/internal/zzry$zzn;)Lcom/google/android/gms/internal/zzry$zzd;

    move-result-object v0

    invoke-direct {v13, v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;-><init>(Lcom/google/android/gms/internal/zzry$zzd;)V

    return-object v13
.end method

.method public static zza(Lcom/google/android/gms/contextmanager/fence/internal/zzd;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;
    .registers 15

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/fence/internal/zzd;->zzawy()Lcom/google/android/gms/internal/zzry$zzc;

    move-result-object v10

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move-object v11, v1

    move-object v12, v1

    invoke-static/range {v0 .. v12}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(I[Lcom/google/android/gms/internal/zzry$zzd;Lcom/google/android/gms/internal/zzry$zzm;Lcom/google/android/gms/internal/zzry$zzf;Lcom/google/android/gms/internal/zzry$zzi;Lcom/google/android/gms/internal/zzry$zza;Lcom/google/android/gms/internal/zzry$zzk;Lcom/google/android/gms/internal/zzry$zzj;Lcom/google/android/gms/internal/zzry$zzh;Lcom/google/android/gms/internal/zzry$zzb;Lcom/google/android/gms/internal/zzry$zzc;Lcom/google/android/gms/internal/zzry$zzg;Lcom/google/android/gms/internal/zzry$zzn;)Lcom/google/android/gms/internal/zzry$zzd;

    move-result-object v0

    invoke-direct {v13, v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;-><init>(Lcom/google/android/gms/internal/zzry$zzd;)V

    return-object v13
.end method

.method public static zza(Lcom/google/android/gms/contextmanager/fence/internal/zzn;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;
    .registers 15

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/fence/internal/zzn;->zzaxi()Lcom/google/android/gms/internal/zzry$zzf;

    move-result-object v3

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    move-object v11, v1

    move-object v12, v1

    invoke-static/range {v0 .. v12}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(I[Lcom/google/android/gms/internal/zzry$zzd;Lcom/google/android/gms/internal/zzry$zzm;Lcom/google/android/gms/internal/zzry$zzf;Lcom/google/android/gms/internal/zzry$zzi;Lcom/google/android/gms/internal/zzry$zza;Lcom/google/android/gms/internal/zzry$zzk;Lcom/google/android/gms/internal/zzry$zzj;Lcom/google/android/gms/internal/zzry$zzh;Lcom/google/android/gms/internal/zzry$zzb;Lcom/google/android/gms/internal/zzry$zzc;Lcom/google/android/gms/internal/zzry$zzg;Lcom/google/android/gms/internal/zzry$zzn;)Lcom/google/android/gms/internal/zzry$zzd;

    move-result-object v0

    invoke-direct {v13, v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;-><init>(Lcom/google/android/gms/internal/zzry$zzd;)V

    return-object v13
.end method

.method public static zza(Lcom/google/android/gms/contextmanager/fence/internal/zzp;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;
    .registers 15

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/fence/internal/zzp;->zzaxj()Lcom/google/android/gms/internal/zzry$zzm;

    move-result-object v2

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    move-object v11, v1

    move-object v12, v1

    invoke-static/range {v0 .. v12}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(I[Lcom/google/android/gms/internal/zzry$zzd;Lcom/google/android/gms/internal/zzry$zzm;Lcom/google/android/gms/internal/zzry$zzf;Lcom/google/android/gms/internal/zzry$zzi;Lcom/google/android/gms/internal/zzry$zza;Lcom/google/android/gms/internal/zzry$zzk;Lcom/google/android/gms/internal/zzry$zzj;Lcom/google/android/gms/internal/zzry$zzh;Lcom/google/android/gms/internal/zzry$zzb;Lcom/google/android/gms/internal/zzry$zzc;Lcom/google/android/gms/internal/zzry$zzg;Lcom/google/android/gms/internal/zzry$zzn;)Lcom/google/android/gms/internal/zzry$zzd;

    move-result-object v0

    invoke-direct {v13, v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;-><init>(Lcom/google/android/gms/internal/zzry$zzd;)V

    return-object v13
.end method

.method public static zza(I[Lcom/google/android/gms/internal/zzry$zzd;Lcom/google/android/gms/internal/zzry$zzm;Lcom/google/android/gms/internal/zzry$zzf;Lcom/google/android/gms/internal/zzry$zzi;Lcom/google/android/gms/internal/zzry$zza;Lcom/google/android/gms/internal/zzry$zzk;Lcom/google/android/gms/internal/zzry$zzj;Lcom/google/android/gms/internal/zzry$zzh;Lcom/google/android/gms/internal/zzry$zzb;Lcom/google/android/gms/internal/zzry$zzc;Lcom/google/android/gms/internal/zzry$zzg;Lcom/google/android/gms/internal/zzry$zzn;)Lcom/google/android/gms/internal/zzry$zzd;
    .registers 18

    new-instance v1, Lcom/google/android/gms/internal/zzry$zzd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzry$zzd;-><init>()V

    iput p0, v1, Lcom/google/android/gms/internal/zzry$zzd;->type:I

    packed-switch p0, :pswitch_data_3e

    const-string v2, "ContextFenceStub"

    const-string v3, "Unknown context fence type=%s"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zzbu;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    :goto_15
    return-object v1

    :pswitch_16
    iput-object p1, v1, Lcom/google/android/gms/internal/zzry$zzd;->Dm:[Lcom/google/android/gms/internal/zzry$zzd;

    goto :goto_15

    :pswitch_19
    iput-object p2, v1, Lcom/google/android/gms/internal/zzry$zzd;->Dn:Lcom/google/android/gms/internal/zzry$zzm;

    goto :goto_15

    :pswitch_1c
    iput-object p3, v1, Lcom/google/android/gms/internal/zzry$zzd;->Do:Lcom/google/android/gms/internal/zzry$zzf;

    goto :goto_15

    :pswitch_1f
    iput-object p4, v1, Lcom/google/android/gms/internal/zzry$zzd;->Dp:Lcom/google/android/gms/internal/zzry$zzi;

    goto :goto_15

    :pswitch_22
    iput-object p5, v1, Lcom/google/android/gms/internal/zzry$zzd;->Dq:Lcom/google/android/gms/internal/zzry$zza;

    goto :goto_15

    :pswitch_25
    iput-object p6, v1, Lcom/google/android/gms/internal/zzry$zzd;->Dr:Lcom/google/android/gms/internal/zzry$zzk;

    goto :goto_15

    :pswitch_28
    iput-object p7, v1, Lcom/google/android/gms/internal/zzry$zzd;->Ds:Lcom/google/android/gms/internal/zzry$zzj;

    goto :goto_15

    :pswitch_2b
    iput-object p8, v1, Lcom/google/android/gms/internal/zzry$zzd;->Dt:Lcom/google/android/gms/internal/zzry$zzh;

    goto :goto_15

    :pswitch_2e
    iput-object p9, v1, Lcom/google/android/gms/internal/zzry$zzd;->Du:Lcom/google/android/gms/internal/zzry$zzb;

    goto :goto_15

    :pswitch_31
    iput-object p10, v1, Lcom/google/android/gms/internal/zzry$zzd;->Dv:Lcom/google/android/gms/internal/zzry$zzc;

    goto :goto_15

    :pswitch_34
    move-object/from16 v0, p11

    iput-object v0, v1, Lcom/google/android/gms/internal/zzry$zzd;->Dw:Lcom/google/android/gms/internal/zzry$zzg;

    goto :goto_15

    :pswitch_39
    move-object/from16 v0, p12

    iput-object v0, v1, Lcom/google/android/gms/internal/zzry$zzd;->Dy:Lcom/google/android/gms/internal/zzry$zzn;

    goto :goto_15

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_39
    .end packed-switch
.end method

.method private zzawp()V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zzawq()Z

    move-result v0

    if-nez v0, :cond_11

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->BT:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzry$zzd;->zzt([B)Lcom/google/android/gms/internal/zzry$zzd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->BS:Lcom/google/android/gms/internal/zzry$zzd;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->BT:[B
    :try_end_11
    .catch Lcom/google/android/gms/internal/zzapb; {:try_start_6 .. :try_end_11} :catch_15

    :cond_11
    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zzawr()V

    return-void

    :catch_15
    move-exception v0

    const-string v1, "ContextFenceStub"

    const-string v2, "Could not deserialize context fence bytes."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zzbu;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private zzawq()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->BS:Lcom/google/android/gms/internal/zzry$zzd;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private zzawr()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->BS:Lcom/google/android/gms/internal/zzry$zzd;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->BT:[B

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->BS:Lcom/google/android/gms/internal/zzry$zzd;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->BT:[B

    if-eqz v0, :cond_8

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->BS:Lcom/google/android/gms/internal/zzry$zzd;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->BT:[B

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->BS:Lcom/google/android/gms/internal/zzry$zzd;

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->BT:[B

    if-nez v0, :cond_31

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzg(Ljava/util/Collection;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;",
            ">;)",
            "Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    move v1, v0

    :goto_c
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    new-instance v13, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    invoke-static {p0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zzi(Ljava/util/Collection;)[Lcom/google/android/gms/internal/zzry$zzd;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    move-object v11, v2

    move-object v12, v2

    invoke-static/range {v0 .. v12}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(I[Lcom/google/android/gms/internal/zzry$zzd;Lcom/google/android/gms/internal/zzry$zzm;Lcom/google/android/gms/internal/zzry$zzf;Lcom/google/android/gms/internal/zzry$zzi;Lcom/google/android/gms/internal/zzry$zza;Lcom/google/android/gms/internal/zzry$zzk;Lcom/google/android/gms/internal/zzry$zzj;Lcom/google/android/gms/internal/zzry$zzh;Lcom/google/android/gms/internal/zzry$zzb;Lcom/google/android/gms/internal/zzry$zzc;Lcom/google/android/gms/internal/zzry$zzg;Lcom/google/android/gms/internal/zzry$zzn;)Lcom/google/android/gms/internal/zzry$zzd;

    move-result-object v0

    invoke-direct {v13, v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;-><init>(Lcom/google/android/gms/internal/zzry$zzd;)V

    return-object v13

    :cond_27
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public static zzh(Ljava/util/Collection;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;",
            ">;)",
            "Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    new-instance v13, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    const/4 v0, 0x2

    invoke-static {p0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zzi(Ljava/util/Collection;)[Lcom/google/android/gms/internal/zzry$zzd;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    move-object v11, v2

    move-object v12, v2

    invoke-static/range {v0 .. v12}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(I[Lcom/google/android/gms/internal/zzry$zzd;Lcom/google/android/gms/internal/zzry$zzm;Lcom/google/android/gms/internal/zzry$zzf;Lcom/google/android/gms/internal/zzry$zzi;Lcom/google/android/gms/internal/zzry$zza;Lcom/google/android/gms/internal/zzry$zzk;Lcom/google/android/gms/internal/zzry$zzj;Lcom/google/android/gms/internal/zzry$zzh;Lcom/google/android/gms/internal/zzry$zzb;Lcom/google/android/gms/internal/zzry$zzc;Lcom/google/android/gms/internal/zzry$zzg;Lcom/google/android/gms/internal/zzry$zzn;)Lcom/google/android/gms/internal/zzry$zzd;

    move-result-object v0

    invoke-direct {v13, v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;-><init>(Lcom/google/android/gms/internal/zzry$zzd;)V

    return-object v13

    :cond_27
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static zzi(Ljava/util/Collection;)[Lcom/google/android/gms/internal/zzry$zzd;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;",
            ">;)[",
            "Lcom/google/android/gms/internal/zzry$zzd;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v3, v0, [Lcom/google/android/gms/internal/zzry$zzd;

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zzaxc()Lcom/google/android/gms/internal/zzry$zzd;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_c

    :cond_22
    return-object v3
.end method


# virtual methods
.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->mVersionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zzawp()V

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->BS:Lcom/google/android/gms/internal/zzry$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzry$zzd;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/fence/internal/zzg;->zza(Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzaxb()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->BT:[B

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->BT:[B

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->BS:Lcom/google/android/gms/internal/zzry$zzd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapc;->zzf(Lcom/google/android/gms/internal/zzapc;)[B

    move-result-object v0

    goto :goto_6
.end method

.method public zzaxc()Lcom/google/android/gms/internal/zzry$zzd;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zzawp()V

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->BS:Lcom/google/android/gms/internal/zzry$zzd;

    return-object v0
.end method
