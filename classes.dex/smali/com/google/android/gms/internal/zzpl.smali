###### Class com.google.android.gms.internal.zzpl (com.google.android.gms.internal.zzpl)
.class public Lcom/google/android/gms/internal/zzpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/clearcut/zzb$zzb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzpl$zzb;,
        Lcom/google/android/gms/internal/zzpl$zza;
    }
.end annotation


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;

.field static qK:Ljava/lang/Boolean;


# instance fields
.field final qL:Lcom/google/android/gms/internal/zzpl$zza;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzpl;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzpl;->qK:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzpl$zza;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzpl$zza;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzpl;-><init>(Lcom/google/android/gms/internal/zzpl$zza;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzpl$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzpl$zza;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzpl;-><init>(Lcom/google/android/gms/internal/zzpl$zza;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzpl$zza;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpl$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpl;->qL:Lcom/google/android/gms/internal/zzpl$zza;

    return-void
.end method

.method static zza(JJJ)Z
    .registers 10

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-ltz v0, :cond_a

    cmp-long v0, p4, v2

    if-gez v0, :cond_2f

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x48

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "negative values not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    cmp-long v0, p4, v2

    if-lez v0, :cond_3d

    invoke-static {p0, p1, p4, p5}, Lcom/google/android/gms/internal/zzpm;->zzd(JJ)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-gez v0, :cond_3d

    const/4 v0, 0x1

    :goto_3c
    return v0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method static zzag(J)J
    .registers 4

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpi;->zzm([B)J

    move-result-wide v0

    return-wide v0
.end method

.method static zzd(Ljava/lang/String;J)J
    .registers 6

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_8
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzpl;->zzag(J)J

    move-result-wide v0

    :goto_c
    return-wide v0

    :cond_d
    sget-object v0, Lcom/google/android/gms/internal/zzpl;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpi;->zzm([B)J

    move-result-wide v0

    goto :goto_c
.end method

.method static zzgu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzpl$zzb;
    .registers 11

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    if-nez p0, :cond_8

    move-object v0, v6

    :goto_7
    return-object v0

    :cond_8
    const-string v1, ""

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_18

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v2, 0x1

    :cond_18
    const/16 v2, 0x2f

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gtz v4, :cond_3d

    const-string v1, "LogSamplerImpl"

    const-string v2, "Failed to parse the rule: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_37

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_32
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_7

    :cond_37
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_32

    :cond_3d
    :try_start_3d
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_4e} :catch_7d

    move-result-wide v4

    cmp-long v0, v2, v8

    if-ltz v0, :cond_57

    cmp-long v0, v4, v8

    if-gez v0, :cond_9d

    :cond_57
    const-string v0, "LogSamplerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v7, 0x48

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "negative values not supported: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_7

    :catch_7d
    move-exception v0

    move-object v1, v0

    const-string v2, "LogSamplerImpl"

    const-string v3, "parseLong() failed while parsing: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_97

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_91
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    goto/16 :goto_7

    :cond_97
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_91

    :cond_9d
    new-instance v0, Lcom/google/android/gms/internal/zzpl$zzb;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzpl$zzb;-><init>(Ljava/lang/String;JJ)V

    goto/16 :goto_7
.end method


# virtual methods
.method public zzg(Ljava/lang/String;I)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    :goto_a
    if-nez p1, :cond_14

    :cond_c
    :goto_c
    return v0

    :cond_d
    if-ltz p2, :cond_35

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpl;->qL:Lcom/google/android/gms/internal/zzpl$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzpl$zza;->zzanb()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpl;->qL:Lcom/google/android/gms/internal/zzpl$zza;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzpl$zza;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpl;->zzgu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzpl$zzb;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v0, v4, Lcom/google/android/gms/internal/zzpl$zzb;->qM:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzpl;->zzd(Ljava/lang/String;J)J

    move-result-wide v0

    iget-wide v2, v4, Lcom/google/android/gms/internal/zzpl$zzb;->qN:J

    iget-wide v4, v4, Lcom/google/android/gms/internal/zzpl$zzb;->qO:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzpl;->zza(JJJ)Z

    move-result v0

    goto :goto_c

    :cond_35
    move-object p1, v1

    goto :goto_a
.end method

###### Class com.google.android.gms.internal.zzpl.zza (com.google.android.gms.internal.zzpl$zza)
.class Lcom/google/android/gms/internal/zzpl$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_b

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpl$zza;->zzbm(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpl$zza;->mContentResolver:Landroid/content/ContentResolver;

    :goto_e
    return-void

    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpl$zza;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpl$zza;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "gms:playlog:service:sampling_"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaer;->zzb(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    goto :goto_e
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpl$zza;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_5

    :goto_4
    return-object p2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpl$zza;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/zzaer;->zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4
.end method

.method private static zzbm(Landroid/content/Context;)Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzpl;->qK:Ljava/lang/Boolean;

    if-nez v0, :cond_13

    const-string v0, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzpl;->qK:Ljava/lang/Boolean;

    :cond_13
    sget-object v0, Lcom/google/android/gms/internal/zzpl;->qK:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method zzanb()J
    .registers 5

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpl$zza;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v2, :cond_7

    :goto_6
    return-wide v0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpl$zza;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "android_id"

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/internal/zzaer;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_6
.end method

.method zzgv(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "gms:playlog:service:sampling_"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzpl$zza;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_14
.end method

###### Class com.google.android.gms.internal.zzpl.zzb (com.google.android.gms.internal.zzpl$zzb)
.class Lcom/google/android/gms/internal/zzpl$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field public final qM:Ljava/lang/String;

.field public final qN:J

.field public final qO:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpl$zzb;->qM:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzpl$zzb;->qN:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzpl$zzb;->qO:J

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzpl$zzb;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzpl$zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpl$zzb;->qM:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzpl$zzb;->qM:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpl$zzb;->qN:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzpl$zzb;->qN:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpl$zzb;->qO:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzpl$zzb;->qO:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3b
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpl$zzb;->qM:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpl$zzb;->qN:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpl$zzb;->qO:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
