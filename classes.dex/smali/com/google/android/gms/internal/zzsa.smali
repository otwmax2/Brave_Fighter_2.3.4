###### Class com.google.android.gms.internal.zzsa (com.google.android.gms.internal.zzsa)
.class public interface abstract Lcom/google/android/gms/internal/zzsa;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzsa$zzb;,
        Lcom/google/android/gms/internal/zzsa$zzc;,
        Lcom/google/android/gms/internal/zzsa$zza;,
        Lcom/google/android/gms/internal/zzsa$zze;,
        Lcom/google/android/gms/internal/zzsa$zzd;
    }
.end annotation

###### Class com.google.android.gms.internal.zzsa.zza (com.google.android.gms.internal.zzsa$zza)
.class public final Lcom/google/android/gms/internal/zzsa$zza;
.super Lcom/google/android/gms/internal/zzaow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaow",
        "<",
        "Lcom/google/android/gms/internal/zzsa$zza;",
        ">;"
    }
.end annotation


# instance fields
.field public Eq:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaow;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsa$zza;->zzazl()Lcom/google/android/gms/internal/zzsa$zza;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/zzsa$zza;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzsa$zza;

    iget v2, p0, Lcom/google/android/gms/internal/zzsa$zza;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsa$zza;->type:I

    if-ne v2, v3, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zza;->Eq:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsa$zza;->Eq:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zza;->bib:Lcom/google/android/gms/internal/zzaoy;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zza;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaoy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_34

    :cond_26
    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zza;->bib:Lcom/google/android/gms/internal/zzaoy;

    if-eqz v2, :cond_32

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zza;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaoy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_32
    move v0, v1

    goto :goto_5

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zza;->bib:Lcom/google/android/gms/internal/zzaoy;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsa$zza;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaoy;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzsa$zza;->type:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zza;->Eq:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsa$zza;->Eq:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zza;->bib:Lcom/google/android/gms/internal/zzaoy;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zza;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    add-int/2addr v0, v1

    return v0

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zza;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoy;->hashCode()I

    move-result v0

    goto :goto_2e
.end method

.method public zza(Lcom/google/android/gms/internal/zzaov;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzsa$zza;->type:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzsa$zza;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzae(II)V

    :cond_a
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzsa$zza;->Eq:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zza;->Eq:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzaov;->zzb(IJ)V

    :cond_18
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaow;->zza(Lcom/google/android/gms/internal/zzaov;)V

    return-void
.end method

.method public zzap(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzsa$zza;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->J()I

    move-result v0

    sparse-switch v0, :sswitch_data_20

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzaow;->zza(Lcom/google/android/gms/internal/zzaou;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->N()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    goto :goto_0

    :pswitch_16
    iput v0, p0, Lcom/google/android/gms/internal/zzsa$zza;->type:I

    goto :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->M()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsa$zza;->Eq:J

    goto :goto_0

    :sswitch_data_20
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public zzazl()Lcom/google/android/gms/internal/zzsa$zza;
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzsa$zza;->type:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsa$zza;->Eq:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zza;->bib:Lcom/google/android/gms/internal/zzaoy;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsa$zza;->bik:I

    return-object p0
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzapc;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsa$zza;->zzap(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzsa$zza;

    move-result-object v0

    return-object v0
.end method

.method protected zzy()I
    .registers 7

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaow;->zzy()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzsa$zza;->type:I

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzsa$zza;->type:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzag(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zza;->Eq:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zza;->Eq:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzaov;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    return v0
.end method

###### Class com.google.android.gms.internal.zzsa.zzb (com.google.android.gms.internal.zzsa$zzb)
.class public final Lcom/google/android/gms/internal/zzsa$zzb;
.super Lcom/google/android/gms/internal/zzaow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzsa$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaow",
        "<",
        "Lcom/google/android/gms/internal/zzsa$zzb;",
        ">;"
    }
.end annotation


# instance fields
.field public DZ:I

.field public Er:J

.field public Es:Lcom/google/android/gms/internal/zzsa$zzc;

.field public Et:Lcom/google/android/gms/internal/zzsa$zzd;

.field public Eu:Lcom/google/android/gms/internal/zzsa$zze;

.field public Ev:Lcom/google/android/gms/internal/zzsa$zza;

.field public Ew:Lcom/google/android/gms/internal/zzsa$zzb$zza;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaow;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsa$zzb;->zzazm()Lcom/google/android/gms/internal/zzsa$zzb;

    return-void
.end method

.method public static zzw([B)Lcom/google/android/gms/internal/zzsa$zzb;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzapb;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzsa$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsa$zzb;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzapc;->zza(Lcom/google/android/gms/internal/zzapc;[B)Lcom/google/android/gms/internal/zzapc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzsa$zzb;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/zzsa$zzb;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzsa$zzb;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Er:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsa$zzb;->Er:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->DZ:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsa$zzb;->DZ:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Es:Lcom/google/android/gms/internal/zzsa$zzc;

    if-nez v2, :cond_5c

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zzb;->Es:Lcom/google/android/gms/internal/zzsa$zzc;

    if-nez v2, :cond_5

    :cond_22
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Et:Lcom/google/android/gms/internal/zzsa$zzd;

    if-nez v2, :cond_67

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zzb;->Et:Lcom/google/android/gms/internal/zzsa$zzd;

    if-nez v2, :cond_5

    :cond_2a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Eu:Lcom/google/android/gms/internal/zzsa$zze;

    if-nez v2, :cond_72

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zzb;->Eu:Lcom/google/android/gms/internal/zzsa$zze;

    if-nez v2, :cond_5

    :cond_32
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ev:Lcom/google/android/gms/internal/zzsa$zza;

    if-nez v2, :cond_7d

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zzb;->Ev:Lcom/google/android/gms/internal/zzsa$zza;

    if-nez v2, :cond_5

    :cond_3a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ew:Lcom/google/android/gms/internal/zzsa$zzb$zza;

    if-nez v2, :cond_89

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zzb;->Ew:Lcom/google/android/gms/internal/zzsa$zzb$zza;

    if-nez v2, :cond_5

    :cond_42
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->bib:Lcom/google/android/gms/internal/zzaoy;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaoy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_95

    :cond_4e
    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zzb;->bib:Lcom/google/android/gms/internal/zzaoy;

    if-eqz v2, :cond_5a

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zzb;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaoy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_5a
    move v0, v1

    goto :goto_5

    :cond_5c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Es:Lcom/google/android/gms/internal/zzsa$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsa$zzb;->Es:Lcom/google/android/gms/internal/zzsa$zzc;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzsa$zzc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_5

    :cond_67
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Et:Lcom/google/android/gms/internal/zzsa$zzd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsa$zzb;->Et:Lcom/google/android/gms/internal/zzsa$zzd;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzsa$zzd;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_5

    :cond_72
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Eu:Lcom/google/android/gms/internal/zzsa$zze;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsa$zzb;->Eu:Lcom/google/android/gms/internal/zzsa$zze;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzsa$zze;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_5

    :cond_7d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ev:Lcom/google/android/gms/internal/zzsa$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsa$zzb;->Ev:Lcom/google/android/gms/internal/zzsa$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzsa$zza;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto/16 :goto_5

    :cond_89
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ew:Lcom/google/android/gms/internal/zzsa$zzb$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsa$zzb;->Ew:Lcom/google/android/gms/internal/zzsa$zzb$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzsa$zzb$zza;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    goto/16 :goto_5

    :cond_95
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->bib:Lcom/google/android/gms/internal/zzaoy;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsa$zzb;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaoy;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_5
.end method

.method public hashCode()I
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Er:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Er:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->DZ:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Es:Lcom/google/android/gms/internal/zzsa$zzc;

    if-nez v0, :cond_58

    move v0, v1

    :goto_27
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Et:Lcom/google/android/gms/internal/zzsa$zzd;

    if-nez v0, :cond_5f

    move v0, v1

    :goto_2f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Eu:Lcom/google/android/gms/internal/zzsa$zze;

    if-nez v0, :cond_66

    move v0, v1

    :goto_37
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ev:Lcom/google/android/gms/internal/zzsa$zza;

    if-nez v0, :cond_6d

    move v0, v1

    :goto_3f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ew:Lcom/google/android/gms/internal/zzsa$zzb$zza;

    if-nez v0, :cond_74

    move v0, v1

    :goto_47
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->bib:Lcom/google/android/gms/internal/zzaoy;

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaoy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7b

    :cond_56
    :goto_56
    add-int/2addr v0, v1

    return v0

    :cond_58
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Es:Lcom/google/android/gms/internal/zzsa$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa$zzc;->hashCode()I

    move-result v0

    goto :goto_27

    :cond_5f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Et:Lcom/google/android/gms/internal/zzsa$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa$zzd;->hashCode()I

    move-result v0

    goto :goto_2f

    :cond_66
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Eu:Lcom/google/android/gms/internal/zzsa$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa$zze;->hashCode()I

    move-result v0

    goto :goto_37

    :cond_6d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ev:Lcom/google/android/gms/internal/zzsa$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa$zza;->hashCode()I

    move-result v0

    goto :goto_3f

    :cond_74
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ew:Lcom/google/android/gms/internal/zzsa$zzb$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa$zzb$zza;->hashCode()I

    move-result v0

    goto :goto_47

    :cond_7b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzb;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaoy;->hashCode()I

    move-result v1

    goto :goto_56
.end method

.method public zza(Lcom/google/android/gms/internal/zzaov;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Er:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Er:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzaov;->zzb(IJ)V

    :cond_e
    iget v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->DZ:I

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzsa$zzb;->DZ:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzae(II)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Es:Lcom/google/android/gms/internal/zzsa$zzc;

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Es:Lcom/google/android/gms/internal/zzsa$zzc;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zza(ILcom/google/android/gms/internal/zzapc;)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Et:Lcom/google/android/gms/internal/zzsa$zzd;

    if-eqz v0, :cond_2c

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Et:Lcom/google/android/gms/internal/zzsa$zzd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zza(ILcom/google/android/gms/internal/zzapc;)V

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Eu:Lcom/google/android/gms/internal/zzsa$zze;

    if-eqz v0, :cond_36

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Eu:Lcom/google/android/gms/internal/zzsa$zze;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zza(ILcom/google/android/gms/internal/zzapc;)V

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ev:Lcom/google/android/gms/internal/zzsa$zza;

    if-eqz v0, :cond_40

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ev:Lcom/google/android/gms/internal/zzsa$zza;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zza(ILcom/google/android/gms/internal/zzapc;)V

    :cond_40
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ew:Lcom/google/android/gms/internal/zzsa$zzb$zza;

    if-eqz v0, :cond_4a

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ew:Lcom/google/android/gms/internal/zzsa$zzb$zza;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zza(ILcom/google/android/gms/internal/zzapc;)V

    :cond_4a
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaow;->zza(Lcom/google/android/gms/internal/zzaov;)V

    return-void
.end method

.method public zzaq(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzsa$zzb;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->J()I

    move-result v0

    sparse-switch v0, :sswitch_data_76

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzaow;->zza(Lcom/google/android/gms/internal/zzaou;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->M()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Er:J

    goto :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->N()I

    move-result v0

    sparse-switch v0, :sswitch_data_98

    goto :goto_0

    :sswitch_1d
    iput v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->DZ:I

    goto :goto_0

    :sswitch_20
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Es:Lcom/google/android/gms/internal/zzsa$zzc;

    if-nez v0, :cond_2b

    new-instance v0, Lcom/google/android/gms/internal/zzsa$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsa$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Es:Lcom/google/android/gms/internal/zzsa$zzc;

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Es:Lcom/google/android/gms/internal/zzsa$zzc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaou;->zza(Lcom/google/android/gms/internal/zzapc;)V

    goto :goto_0

    :sswitch_31
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Et:Lcom/google/android/gms/internal/zzsa$zzd;

    if-nez v0, :cond_3c

    new-instance v0, Lcom/google/android/gms/internal/zzsa$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsa$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Et:Lcom/google/android/gms/internal/zzsa$zzd;

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Et:Lcom/google/android/gms/internal/zzsa$zzd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaou;->zza(Lcom/google/android/gms/internal/zzapc;)V

    goto :goto_0

    :sswitch_42
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Eu:Lcom/google/android/gms/internal/zzsa$zze;

    if-nez v0, :cond_4d

    new-instance v0, Lcom/google/android/gms/internal/zzsa$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsa$zze;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Eu:Lcom/google/android/gms/internal/zzsa$zze;

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Eu:Lcom/google/android/gms/internal/zzsa$zze;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaou;->zza(Lcom/google/android/gms/internal/zzapc;)V

    goto :goto_0

    :sswitch_53
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ev:Lcom/google/android/gms/internal/zzsa$zza;

    if-nez v0, :cond_5e

    new-instance v0, Lcom/google/android/gms/internal/zzsa$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsa$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ev:Lcom/google/android/gms/internal/zzsa$zza;

    :cond_5e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ev:Lcom/google/android/gms/internal/zzsa$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaou;->zza(Lcom/google/android/gms/internal/zzapc;)V

    goto :goto_0

    :sswitch_64
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ew:Lcom/google/android/gms/internal/zzsa$zzb$zza;

    if-nez v0, :cond_6f

    new-instance v0, Lcom/google/android/gms/internal/zzsa$zzb$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsa$zzb$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ew:Lcom/google/android/gms/internal/zzsa$zzb$zza;

    :cond_6f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ew:Lcom/google/android/gms/internal/zzsa$zzb$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaou;->zza(Lcom/google/android/gms/internal/zzapc;)V

    goto :goto_0

    nop

    :sswitch_data_76
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_15
        0x1a -> :sswitch_20
        0x22 -> :sswitch_31
        0x2a -> :sswitch_42
        0x32 -> :sswitch_53
        0x3a -> :sswitch_64
    .end sparse-switch

    :sswitch_data_98
    .sparse-switch
        0x0 -> :sswitch_1d
        0x1 -> :sswitch_1d
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_1d
        0x4 -> :sswitch_1d
        0x5 -> :sswitch_1d
        0x6 -> :sswitch_1d
        0x7 -> :sswitch_1d
        0x8 -> :sswitch_1d
        0x9 -> :sswitch_1d
        0xa -> :sswitch_1d
        0xb -> :sswitch_1d
        0xc -> :sswitch_1d
        0xd -> :sswitch_1d
        0xe -> :sswitch_1d
        0xf -> :sswitch_1d
        0x10 -> :sswitch_1d
        0x11 -> :sswitch_1d
        0x12 -> :sswitch_1d
        0x13 -> :sswitch_1d
        0x14 -> :sswitch_1d
        0x15 -> :sswitch_1d
        0x16 -> :sswitch_1d
        0x17 -> :sswitch_1d
        0x18 -> :sswitch_1d
        0x19 -> :sswitch_1d
        0x1a -> :sswitch_1d
        0x1b -> :sswitch_1d
        0x1c -> :sswitch_1d
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1d
        0x1f -> :sswitch_1d
        0x20 -> :sswitch_1d
        0x2710 -> :sswitch_1d
        0x2711 -> :sswitch_1d
        0x2712 -> :sswitch_1d
        0x2713 -> :sswitch_1d
        0x2714 -> :sswitch_1d
        0x2715 -> :sswitch_1d
        0x2716 -> :sswitch_1d
        0x1869f -> :sswitch_1d
    .end sparse-switch
.end method

.method public zzazm()Lcom/google/android/gms/internal/zzsa$zzb;
    .registers 4

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Er:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->DZ:I

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Es:Lcom/google/android/gms/internal/zzsa$zzc;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Et:Lcom/google/android/gms/internal/zzsa$zzd;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Eu:Lcom/google/android/gms/internal/zzsa$zze;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ev:Lcom/google/android/gms/internal/zzsa$zza;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ew:Lcom/google/android/gms/internal/zzsa$zzb$zza;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->bib:Lcom/google/android/gms/internal/zzaoy;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsa$zzb;->bik:I

    return-object p0
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzapc;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsa$zzb;->zzaq(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzsa$zzb;

    move-result-object v0

    return-object v0
.end method

.method protected zzy()I
    .registers 7

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaow;->zzy()I

    move-result v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Er:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Er:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzaov;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget v1, p0, Lcom/google/android/gms/internal/zzsa$zzb;->DZ:I

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->DZ:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzag(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Es:Lcom/google/android/gms/internal/zzsa$zzc;

    if-eqz v1, :cond_2c

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Es:Lcom/google/android/gms/internal/zzsa$zzc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzc(ILcom/google/android/gms/internal/zzapc;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Et:Lcom/google/android/gms/internal/zzsa$zzd;

    if-eqz v1, :cond_38

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Et:Lcom/google/android/gms/internal/zzsa$zzd;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzc(ILcom/google/android/gms/internal/zzapc;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_38
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Eu:Lcom/google/android/gms/internal/zzsa$zze;

    if-eqz v1, :cond_44

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Eu:Lcom/google/android/gms/internal/zzsa$zze;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzc(ILcom/google/android/gms/internal/zzapc;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_44
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ev:Lcom/google/android/gms/internal/zzsa$zza;

    if-eqz v1, :cond_50

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ev:Lcom/google/android/gms/internal/zzsa$zza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzc(ILcom/google/android/gms/internal/zzapc;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_50
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ew:Lcom/google/android/gms/internal/zzsa$zzb$zza;

    if-eqz v1, :cond_5c

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb;->Ew:Lcom/google/android/gms/internal/zzsa$zzb$zza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzc(ILcom/google/android/gms/internal/zzapc;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5c
    return v0
.end method

###### Class com.google.android.gms.internal.zzsa.zzb.zza (com.google.android.gms.internal.zzsa$zzb$zza)
.class public final Lcom/google/android/gms/internal/zzsa$zzb$zza;
.super Lcom/google/android/gms/internal/zzaow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsa$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaow",
        "<",
        "Lcom/google/android/gms/internal/zzsa$zzb$zza;",
        ">;"
    }
.end annotation


# instance fields
.field public Ex:Ljava/lang/String;

.field public moduleId:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaow;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsa$zzb$zza;->zzazn()Lcom/google/android/gms/internal/zzsa$zzb$zza;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/zzsa$zzb$zza;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzsa$zzb$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->packageName:Ljava/lang/String;

    if-nez v2, :cond_3e

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zzb$zza;->packageName:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->moduleId:Ljava/lang/String;

    if-nez v2, :cond_49

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zzb$zza;->moduleId:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->Ex:Ljava/lang/String;

    if-nez v2, :cond_54

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zzb$zza;->Ex:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_24
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->bib:Lcom/google/android/gms/internal/zzaoy;

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaoy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5f

    :cond_30
    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zzb$zza;->bib:Lcom/google/android/gms/internal/zzaoy;

    if-eqz v2, :cond_3c

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zzb$zza;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaoy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3c
    move v0, v1

    goto :goto_5

    :cond_3e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsa$zzb$zza;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_49
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->moduleId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsa$zzb$zza;->moduleId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_5

    :cond_54
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->Ex:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsa$zzb$zza;->Ex:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_5

    :cond_5f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->bib:Lcom/google/android/gms/internal/zzaoy;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsa$zzb$zza;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaoy;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->packageName:Ljava/lang/String;

    if-nez v0, :cond_37

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->moduleId:Ljava/lang/String;

    if-nez v0, :cond_3e

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->Ex:Ljava/lang/String;

    if-nez v0, :cond_45

    move v0, v1

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->bib:Lcom/google/android/gms/internal/zzaoy;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaoy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4c

    :cond_35
    :goto_35
    add-int/2addr v0, v1

    return v0

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->moduleId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->Ex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_26

    :cond_4c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaoy;->hashCode()I

    move-result v1

    goto :goto_35
.end method

.method public zza(Lcom/google/android/gms/internal/zzaov;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->packageName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzr(ILjava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->moduleId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->moduleId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzr(ILjava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->Ex:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->Ex:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzr(ILjava/lang/String;)V

    :cond_30
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaow;->zza(Lcom/google/android/gms/internal/zzaov;)V

    return-void
.end method

.method public zzar(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzsa$zzb$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->J()I

    move-result v0

    sparse-switch v0, :sswitch_data_24

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzaow;->zza(Lcom/google/android/gms/internal/zzaou;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->packageName:Ljava/lang/String;

    goto :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->moduleId:Ljava/lang/String;

    goto :goto_0

    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->Ex:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_15
        0x1a -> :sswitch_1c
    .end sparse-switch
.end method

.method public zzazn()Lcom/google/android/gms/internal/zzsa$zzb$zza;
    .registers 2

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->packageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->moduleId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->Ex:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->bib:Lcom/google/android/gms/internal/zzaoy;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->bik:I

    return-object p0
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzapc;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsa$zzb$zza;->zzar(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzsa$zzb$zza;

    move-result-object v0

    return-object v0
.end method

.method protected zzy()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaow;->zzy()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->packageName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->moduleId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->moduleId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_28
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->Ex:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzb$zza;->Ex:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3a
    return v0
.end method

###### Class com.google.android.gms.internal.zzsa.zzc (com.google.android.gms.internal.zzsa$zzc)
.class public final Lcom/google/android/gms/internal/zzsa$zzc;
.super Lcom/google/android/gms/internal/zzaow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaow",
        "<",
        "Lcom/google/android/gms/internal/zzsa$zzc;",
        ">;"
    }
.end annotation


# instance fields
.field public durationMillis:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaow;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsa$zzc;->zzazo()Lcom/google/android/gms/internal/zzsa$zzc;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/zzsa$zzc;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzsa$zzc;

    iget v2, p0, Lcom/google/android/gms/internal/zzsa$zzc;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsa$zzc;->type:I

    if-ne v2, v3, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zzc;->durationMillis:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsa$zzc;->durationMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzc;->bib:Lcom/google/android/gms/internal/zzaoy;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzc;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaoy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_34

    :cond_26
    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zzc;->bib:Lcom/google/android/gms/internal/zzaoy;

    if-eqz v2, :cond_32

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zzc;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaoy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_32
    move v0, v1

    goto :goto_5

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzc;->bib:Lcom/google/android/gms/internal/zzaoy;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsa$zzc;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaoy;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzsa$zzc;->type:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zzc;->durationMillis:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsa$zzc;->durationMillis:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzc;->bib:Lcom/google/android/gms/internal/zzaoy;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzc;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    add-int/2addr v0, v1

    return v0

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzc;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoy;->hashCode()I

    move-result v0

    goto :goto_2e
.end method

.method public zza(Lcom/google/android/gms/internal/zzaov;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzsa$zzc;->type:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzsa$zzc;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzae(II)V

    :cond_a
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzsa$zzc;->durationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zzc;->durationMillis:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzaov;->zzb(IJ)V

    :cond_18
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaow;->zza(Lcom/google/android/gms/internal/zzaov;)V

    return-void
.end method

.method public zzas(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzsa$zzc;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->J()I

    move-result v0

    sparse-switch v0, :sswitch_data_20

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzaow;->zza(Lcom/google/android/gms/internal/zzaou;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->N()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    goto :goto_0

    :pswitch_16
    iput v0, p0, Lcom/google/android/gms/internal/zzsa$zzc;->type:I

    goto :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->M()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsa$zzc;->durationMillis:J

    goto :goto_0

    :sswitch_data_20
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public zzazo()Lcom/google/android/gms/internal/zzsa$zzc;
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzsa$zzc;->type:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsa$zzc;->durationMillis:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzc;->bib:Lcom/google/android/gms/internal/zzaoy;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsa$zzc;->bik:I

    return-object p0
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzapc;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsa$zzc;->zzas(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzsa$zzc;

    move-result-object v0

    return-object v0
.end method

.method protected zzy()I
    .registers 7

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaow;->zzy()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzsa$zzc;->type:I

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzsa$zzc;->type:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzag(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zzc;->durationMillis:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zzc;->durationMillis:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzaov;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    return v0
.end method

###### Class com.google.android.gms.internal.zzsa.zzd (com.google.android.gms.internal.zzsa$zzd)
.class public final Lcom/google/android/gms/internal/zzsa$zzd;
.super Lcom/google/android/gms/internal/zzaow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaow",
        "<",
        "Lcom/google/android/gms/internal/zzsa$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field public DI:[I

.field public DJ:[Ljava/lang/String;

.field public DV:I

.field public EA:Ljava/lang/String;

.field public EB:[B

.field public EC:J

.field public Ey:J

.field public Ez:Ljava/lang/String;

.field public priority:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaow;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsa$zzd;->zzazp()Lcom/google/android/gms/internal/zzsa$zzd;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/zzsa$zzd;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzsa$zzd;

    iget v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsa$zzd;->type:I

    if-ne v2, v3, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->Ey:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsa$zzd;->Ey:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->priority:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsa$zzd;->priority:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->Ez:Ljava/lang/String;

    if-nez v2, :cond_76

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zzd;->Ez:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_28
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EA:Ljava/lang/String;

    if-nez v2, :cond_81

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zzd;->EA:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_30
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EB:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsa$zzd;->EB:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DI:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsa$zzd;->DI:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzapa;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DJ:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsa$zzd;->DJ:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzapa;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EC:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsa$zzd;->EC:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DV:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsa$zzd;->DV:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->bib:Lcom/google/android/gms/internal/zzaoy;

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaoy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8d

    :cond_68
    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zzd;->bib:Lcom/google/android/gms/internal/zzaoy;

    if-eqz v2, :cond_74

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zzd;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaoy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_74
    move v0, v1

    goto :goto_5

    :cond_76
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->Ez:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsa$zzd;->Ez:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_5

    :cond_81
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EA:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsa$zzd;->EA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto/16 :goto_5

    :cond_8d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->bib:Lcom/google/android/gms/internal/zzaoy;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsa$zzd;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaoy;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_5
.end method

.method public hashCode()I
    .registers 8

    const/16 v6, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->type:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->Ey:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsa$zzd;->Ey:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->priority:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->Ez:Ljava/lang/String;

    if-nez v0, :cond_6f

    move v0, v1

    :goto_2c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EA:Ljava/lang/String;

    if-nez v0, :cond_76

    move v0, v1

    :goto_34
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EB:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DI:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzapa;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DJ:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzapa;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EC:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EC:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DV:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->bib:Lcom/google/android/gms/internal/zzaoy;

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaoy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7d

    :cond_6d
    :goto_6d
    add-int/2addr v0, v1

    return v0

    :cond_6f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->Ez:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2c

    :cond_76
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EA:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_34

    :cond_7d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzd;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaoy;->hashCode()I

    move-result v1

    goto :goto_6d
.end method

.method public zza(Lcom/google/android/gms/internal/zzaov;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->type:I

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->type:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzaov;->zzae(II)V

    :cond_b
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->Ey:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_19

    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->Ey:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzaov;->zzb(IJ)V

    :cond_19
    iget v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->priority:I

    if-eqz v0, :cond_23

    const/4 v0, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->priority:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzaov;->zzae(II)V

    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->Ez:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->Ez:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzaov;->zzr(ILjava/lang/String;)V

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EA:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EA:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzaov;->zzr(ILjava/lang/String;)V

    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EB:[B

    sget-object v2, Lcom/google/android/gms/internal/zzapf;->bit:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_53

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EB:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzaov;->zza(I[B)V

    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DI:[I

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DI:[I

    array-length v0, v0

    if-lez v0, :cond_6d

    move v0, v1

    :goto_5d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DI:[I

    array-length v2, v2

    if-ge v0, v2, :cond_6d

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DI:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzaov;->zzae(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_6d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DJ:[Ljava/lang/String;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DJ:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_89

    :goto_76
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DJ:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_89

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DJ:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_86

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzaov;->zzr(ILjava/lang/String;)V

    :cond_86
    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    :cond_89
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EC:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_98

    const/16 v0, 0x9

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EC:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzaov;->zzb(IJ)V

    :cond_98
    iget v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DV:I

    if-eqz v0, :cond_a3

    const/16 v0, 0xa

    iget v1, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DV:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzae(II)V

    :cond_a3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaow;->zza(Lcom/google/android/gms/internal/zzaov;)V

    return-void
.end method

.method public zzat(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzsa$zzd;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->J()I

    move-result v0

    sparse-switch v0, :sswitch_data_fa

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzaow;->zza(Lcom/google/android/gms/internal/zzaou;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->N()I

    move-result v0

    packed-switch v0, :pswitch_data_12c

    goto :goto_1

    :pswitch_17
    iput v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->type:I

    goto :goto_1

    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->M()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->Ey:J

    goto :goto_1

    :sswitch_21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->N()I

    move-result v0

    packed-switch v0, :pswitch_data_142

    goto :goto_1

    :pswitch_29
    iput v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->priority:I

    goto :goto_1

    :sswitch_2c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->Ez:Ljava/lang/String;

    goto :goto_1

    :sswitch_33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EA:Ljava/lang/String;

    goto :goto_1

    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EB:[B

    goto :goto_1

    :sswitch_41
    const/16 v0, 0x38

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapf;->zzc(Lcom/google/android/gms/internal/zzaou;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DI:[I

    if-nez v0, :cond_67

    move v0, v1

    :goto_4c
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_56

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DI:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_56
    :goto_56
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->N()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->J()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    :cond_67
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DI:[I

    array-length v0, v0

    goto :goto_4c

    :cond_6b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->N()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DI:[I

    goto :goto_1

    :sswitch_74
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->S()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaou;->zzaei(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->getPosition()I

    move-result v2

    move v0, v1

    :goto_81
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->X()I

    move-result v4

    if-lez v4, :cond_8d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->N()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    :cond_8d
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzaou;->zzaek(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DI:[I

    if-nez v2, :cond_ab

    move v2, v1

    :goto_95
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_9f

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DI:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9f
    :goto_9f
    array-length v4, v0

    if-ge v2, v4, :cond_af

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->N()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9f

    :cond_ab
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DI:[I

    array-length v2, v2

    goto :goto_95

    :cond_af
    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DI:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzaou;->zzaej(I)V

    goto/16 :goto_1

    :sswitch_b6
    const/16 v0, 0x42

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapf;->zzc(Lcom/google/android/gms/internal/zzaou;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DJ:[Ljava/lang/String;

    if-nez v0, :cond_dc

    move v0, v1

    :goto_c1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_cb

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DJ:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_cb
    :goto_cb
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_e0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->J()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_cb

    :cond_dc
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DJ:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_c1

    :cond_e0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DJ:[Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_ea
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->M()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EC:J

    goto/16 :goto_1

    :sswitch_f2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->N()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DV:I

    goto/16 :goto_1

    :sswitch_data_fa
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x10 -> :sswitch_1a
        0x18 -> :sswitch_21
        0x22 -> :sswitch_2c
        0x2a -> :sswitch_33
        0x32 -> :sswitch_3a
        0x38 -> :sswitch_41
        0x3a -> :sswitch_74
        0x42 -> :sswitch_b6
        0x48 -> :sswitch_ea
        0x50 -> :sswitch_f2
    .end sparse-switch

    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_142
    .packed-switch 0x0
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method public zzazp()Lcom/google/android/gms/internal/zzsa$zzd;
    .registers 4

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->type:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->Ey:J

    iput v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->priority:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->Ez:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EA:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzapf;->bit:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EB:[B

    sget-object v0, Lcom/google/android/gms/internal/zzapf;->bim:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DI:[I

    sget-object v0, Lcom/google/android/gms/internal/zzapf;->bir:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DJ:[Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EC:J

    iput v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DV:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->bib:Lcom/google/android/gms/internal/zzaoy;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsa$zzd;->bik:I

    return-object p0
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzapc;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsa$zzd;->zzat(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzsa$zzd;

    move-result-object v0

    return-object v0
.end method

.method protected zzy()I
    .registers 9

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaow;->zzy()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzsa$zzd;->type:I

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/zzsa$zzd;->type:I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzaov;->zzag(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsa$zzd;->Ey:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_21

    const/4 v1, 0x2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsa$zzd;->Ey:J

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/zzaov;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    iget v1, p0, Lcom/google/android/gms/internal/zzsa$zzd;->priority:I

    if-eqz v1, :cond_2d

    const/4 v1, 0x3

    iget v3, p0, Lcom/google/android/gms/internal/zzsa$zzd;->priority:I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzaov;->zzag(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzd;->Ez:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    const/4 v1, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsa$zzd;->Ez:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzaov;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EA:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EA:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzaov;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_51
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EB:[B

    sget-object v3, Lcom/google/android/gms/internal/zzapf;->bit:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_63

    const/4 v1, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EB:[B

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzaov;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_63
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DI:[I

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DI:[I

    array-length v1, v1

    if-lez v1, :cond_86

    move v1, v2

    move v3, v2

    :goto_6e
    iget-object v4, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DI:[I

    array-length v4, v4

    if-ge v1, v4, :cond_7f

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DI:[I

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzaov;->zzaeo(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    :cond_7f
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DI:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_86
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DJ:[Ljava/lang/String;

    if-eqz v1, :cond_aa

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DJ:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_aa

    move v1, v2

    move v3, v2

    :goto_91
    iget-object v4, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DJ:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_a6

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DJ:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eqz v4, :cond_a3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzaov;->zztg(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_a3
    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    :cond_a6
    add-int/2addr v0, v1

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    :cond_aa
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EC:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_bb

    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->EC:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzaov;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_bb
    iget v1, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DV:I

    if-eqz v1, :cond_c8

    const/16 v1, 0xa

    iget v2, p0, Lcom/google/android/gms/internal/zzsa$zzd;->DV:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzag(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c8
    return v0
.end method

###### Class com.google.android.gms.internal.zzsa.zze (com.google.android.gms.internal.zzsa$zze)
.class public final Lcom/google/android/gms/internal/zzsa$zze;
.super Lcom/google/android/gms/internal/zzaow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaow",
        "<",
        "Lcom/google/android/gms/internal/zzsa$zze;",
        ">;"
    }
.end annotation


# instance fields
.field public count:I

.field public durationMillis:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaow;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsa$zze;->zzazq()Lcom/google/android/gms/internal/zzsa$zze;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/zzsa$zze;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzsa$zze;

    iget v2, p0, Lcom/google/android/gms/internal/zzsa$zze;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsa$zze;->type:I

    if-ne v2, v3, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zze;->durationMillis:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsa$zze;->durationMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/zzsa$zze;->count:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsa$zze;->count:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zze;->bib:Lcom/google/android/gms/internal/zzaoy;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa$zze;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaoy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3a

    :cond_2c
    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zze;->bib:Lcom/google/android/gms/internal/zzaoy;

    if-eqz v2, :cond_38

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsa$zze;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaoy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_38
    move v0, v1

    goto :goto_5

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zze;->bib:Lcom/google/android/gms/internal/zzaoy;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsa$zze;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaoy;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzsa$zze;->type:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zze;->durationMillis:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsa$zze;->durationMillis:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzsa$zze;->count:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zze;->bib:Lcom/google/android/gms/internal/zzaoy;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zze;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_32
    const/4 v0, 0x0

    :goto_33
    add-int/2addr v0, v1

    return v0

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa$zze;->bib:Lcom/google/android/gms/internal/zzaoy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoy;->hashCode()I

    move-result v0

    goto :goto_33
.end method

.method public zza(Lcom/google/android/gms/internal/zzaov;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzsa$zze;->type:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzsa$zze;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzae(II)V

    :cond_a
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzsa$zze;->durationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zze;->durationMillis:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzaov;->zzb(IJ)V

    :cond_18
    iget v0, p0, Lcom/google/android/gms/internal/zzsa$zze;->count:I

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/zzsa$zze;->count:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzae(II)V

    :cond_22
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaow;->zza(Lcom/google/android/gms/internal/zzaov;)V

    return-void
.end method

.method public zzau(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzsa$zze;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->J()I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzaow;->zza(Lcom/google/android/gms/internal/zzaou;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->N()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    goto :goto_0

    :pswitch_16
    iput v0, p0, Lcom/google/android/gms/internal/zzsa$zze;->type:I

    goto :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->M()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsa$zze;->durationMillis:J

    goto :goto_0

    :sswitch_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->N()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzsa$zze;->count:I

    goto :goto_0

    nop

    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_19
        0x18 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public zzazq()Lcom/google/android/gms/internal/zzsa$zze;
    .registers 4

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/zzsa$zze;->type:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsa$zze;->durationMillis:J

    iput v2, p0, Lcom/google/android/gms/internal/zzsa$zze;->count:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsa$zze;->bib:Lcom/google/android/gms/internal/zzaoy;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsa$zze;->bik:I

    return-object p0
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzapc;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsa$zze;->zzau(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzsa$zze;

    move-result-object v0

    return-object v0
.end method

.method protected zzy()I
    .registers 7

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaow;->zzy()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzsa$zze;->type:I

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzsa$zze;->type:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzag(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zze;->durationMillis:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsa$zze;->durationMillis:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzaov;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget v1, p0, Lcom/google/android/gms/internal/zzsa$zze;->count:I

    if-eqz v1, :cond_2c

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/zzsa$zze;->count:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzag(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2c
    return v0
.end method
