###### Class com.google.android.gms.internal.zzja (com.google.android.gms.internal.zzja)
.class public final Lcom/google/android/gms/internal/zzja;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzja$zza;
    }
.end annotation


# instance fields
.field private zzche:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzja$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzja;->zzche:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public zzy(Landroid/content/Context;)Lcom/google/android/gms/internal/zziz;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja;->zzche:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzja$zza;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzja$zza;->hasExpired()Z

    move-result v1

    if-nez v1, :cond_34

    sget-object v1, Lcom/google/android/gms/internal/zzdc;->zzbaq:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_34

    new-instance v1, Lcom/google/android/gms/internal/zziz$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzja$zza;->zzchg:Lcom/google/android/gms/internal/zziz;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/zziz$zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zziz;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zziz$zza;->zzro()Lcom/google/android/gms/internal/zziz;

    move-result-object v0

    :goto_29
    iget-object v1, p0, Lcom/google/android/gms/internal/zzja;->zzche:Ljava/util/WeakHashMap;

    new-instance v2, Lcom/google/android/gms/internal/zzja$zza;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzja$zza;-><init>(Lcom/google/android/gms/internal/zzja;Lcom/google/android/gms/internal/zziz;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_34
    new-instance v0, Lcom/google/android/gms/internal/zziz$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zziz$zza;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zziz$zza;->zzro()Lcom/google/android/gms/internal/zziz;

    move-result-object v0

    goto :goto_29
.end method

###### Class com.google.android.gms.internal.zzja.zza (com.google.android.gms.internal.zzja$zza)
.class Lcom/google/android/gms/internal/zzja$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field public final zzchf:J

.field public final zzchg:Lcom/google/android/gms/internal/zziz;

.field final synthetic zzchh:Lcom/google/android/gms/internal/zzja;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzja;Lcom/google/android/gms/internal/zziz;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzja$zza;->zzchh:Lcom/google/android/gms/internal/zzja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzja$zza;->zzchf:J

    iput-object p2, p0, Lcom/google/android/gms/internal/zzja$zza;->zzchg:Lcom/google/android/gms/internal/zziz;

    return-void
.end method


# virtual methods
.method public hasExpired()Z
    .registers 5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzja$zza;->zzchf:J

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbar:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method
