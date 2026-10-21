###### Class com.google.android.gms.analytics.internal.zzai (com.google.android.gms.analytics.internal.zzai)
.class public Lcom/google/android/gms/analytics/internal/zzai;
.super Lcom/google/android/gms/analytics/internal/zzd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/internal/zzai$zza;
    }
.end annotation


# instance fields
.field private al:Landroid/content/SharedPreferences;

.field private am:J

.field private an:J

.field private final ao:Lcom/google/android/gms/analytics/internal/zzai$zza;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->an:J

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzai$zza;

    const-string v3, "monitoring"

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzyy()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzaci()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/analytics/internal/zzai$zza;-><init>(Lcom/google/android/gms/analytics/internal/zzai;Ljava/lang/String;JLcom/google/android/gms/analytics/internal/zzai$1;)V

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/zzai;->ao:Lcom/google/android/gms/analytics/internal/zzai$zza;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/internal/zzai;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->al:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public zzadn()J
    .registers 5

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzzg()V

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->am:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->al:Landroid/content/SharedPreferences;

    const-string v1, "first_run"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1f

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->am:J

    :cond_1c
    :goto_1c
    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->am:J

    return-wide v0

    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzyw()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzai;->al:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "first_run"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_3d

    const-string v2, "Failed to commit first run time"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/analytics/internal/zzai;->zzel(Ljava/lang/String;)V

    :cond_3d
    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->am:J

    goto :goto_1c
.end method

.method public zzado()Lcom/google/android/gms/analytics/internal/zzal;
    .registers 5

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzyw()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzadn()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/analytics/internal/zzal;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    return-object v0
.end method

.method public zzadp()J
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzzg()V

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->an:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->al:Landroid/content/SharedPreferences;

    const-string v1, "last_dispatch"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->an:J

    :cond_1a
    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->an:J

    return-wide v0
.end method

.method public zzadq()V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzzg()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzyw()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzai;->al:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_dispatch"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->an:J

    return-void
.end method

.method public zzadr()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzzg()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzai;->al:Landroid/content/SharedPreferences;

    const-string v2, "installation_campaign"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    :goto_15
    return-object v0

    :cond_16
    move-object v0, v1

    goto :goto_15
.end method

.method public zzads()Lcom/google/android/gms/analytics/internal/zzai$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->ao:Lcom/google/android/gms/analytics/internal/zzai$zza;

    return-object v0
.end method

.method public zzev(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzwu()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->zzzg()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->al:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "installation_campaign"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_17
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "Failed to commit campaign data"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzel(Ljava/lang/String;)V

    :cond_22
    return-void

    :cond_23
    const-string v1, "installation_campaign"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_17
.end method

.method protected zzwv()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms.analytics.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->al:Landroid/content/SharedPreferences;

    return-void
.end method

###### Class com.google.android.gms.analytics.internal.zzai.AnonymousClass1 (com.google.android.gms.analytics.internal.zzai$1)
.class synthetic Lcom/google/android/gms/analytics/internal/zzai$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/internal/zzai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.analytics.internal.zzai.zza (com.google.android.gms.analytics.internal.zzai$zza)
.class public final Lcom/google/android/gms/analytics/internal/zzai$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/internal/zzai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "zza"
.end annotation


# instance fields
.field private final ap:J

.field final synthetic aq:Lcom/google/android/gms/analytics/internal/zzai;

.field private final mName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/internal/zzai;Ljava/lang/String;J)V
    .registers 8

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->aq:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzab;->zzhs(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->mName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->ap:J

    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/internal/zzai;Ljava/lang/String;JLcom/google/android/gms/analytics/internal/zzai$1;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/analytics/internal/zzai$zza;-><init>(Lcom/google/android/gms/analytics/internal/zzai;Ljava/lang/String;J)V

    return-void
.end method

.method private zzadt()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->aq:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzyw()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->aq:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/zzai;->zza(Lcom/google/android/gms/analytics/internal/zzai;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzady()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzadz()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzadx()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private zzadu()J
    .registers 6

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzadw()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_b

    :goto_a
    return-wide v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->aq:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzyw()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    goto :goto_a
.end method

.method private zzadw()J
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->aq:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zza(Lcom/google/android/gms/analytics/internal/zzai;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzadx()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private zzadx()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zzady()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":count"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zzadv()Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzadu()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->ap:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_e

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    iget-wide v4, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->ap:J

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzadt()V

    goto :goto_d

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->aq:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-static {v1}, Lcom/google/android/gms/analytics/internal/zzai;->zza(Lcom/google/android/gms/analytics/internal/zzai;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzadz()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->aq:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/zzai;->zza(Lcom/google/android/gms/analytics/internal/zzai;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzady()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzadt()V

    if-eqz v1, :cond_d

    cmp-long v4, v2, v8

    if-lez v4, :cond_d

    new-instance v0, Landroid/util/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method protected zzadz()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzew(Ljava/lang/String;)V
    .registers 12

    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v8, 0x1

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzadw()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzadt()V

    :cond_14
    if-nez p1, :cond_18

    const-string p1, ""

    :cond_18
    monitor-enter p0

    :try_start_19
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->aq:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zza(Lcom/google/android/gms/analytics/internal/zzai;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzady()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gtz v0, :cond_4c

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->aq:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zza(Lcom/google/android/gms/analytics/internal/zzai;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzadz()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzady()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit p0

    :goto_4b
    return-void

    :cond_4c
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    and-long/2addr v0, v6

    const-wide v4, 0x7fffffffffffffffL

    add-long v6, v2, v8

    div-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-gez v0, :cond_85

    const/4 v0, 0x1

    :goto_62
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzai$zza;->aq:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-static {v1}, Lcom/google/android/gms/analytics/internal/zzai;->zza(Lcom/google/android/gms/analytics/internal/zzai;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v0, :cond_75

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzadz()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_75
    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzady()Ljava/lang/String;

    move-result-object v0

    add-long/2addr v2, v8

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit p0

    goto :goto_4b

    :catchall_82
    move-exception v0

    monitor-exit p0
    :try_end_84
    .catchall {:try_start_19 .. :try_end_84} :catchall_82

    throw v0

    :cond_85
    const/4 v0, 0x0

    goto :goto_62
.end method
