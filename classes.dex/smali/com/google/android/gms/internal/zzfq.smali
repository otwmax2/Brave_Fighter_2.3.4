###### Class com.google.android.gms.internal.zzfq (com.google.android.gms.internal.zzfq)
.class Lcom/google/android/gms/internal/zzfq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfq$zza;
    }
.end annotation


# instance fields
.field private final zzall:Ljava/lang/String;

.field private final zzbkv:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/zzfq$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzbkw:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field private final zzbkx:I

.field private zzbky:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzbkv:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfq;->zzbkw:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfq;->zzall:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/zzfq;->zzbkx:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfq;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzall:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzfq;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzbkw:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-object v0
.end method


# virtual methods
.method getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzall:Ljava/lang/String;

    return-object v0
.end method

.method getNetworkType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzfq;->zzbkx:I

    return v0
.end method

.method size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzbkv:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method zza(Lcom/google/android/gms/internal/zzfl;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/zzfq$zza;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzfq$zza;-><init>(Lcom/google/android/gms/internal/zzfq;Lcom/google/android/gms/internal/zzfl;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq;->zzbkv:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzfl;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzfq$zza;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzfq$zza;-><init>(Lcom/google/android/gms/internal/zzfq;Lcom/google/android/gms/internal/zzfl;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq;->zzbkv:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfq$zza;->zzlx()V

    return-void
.end method

.method zzls()Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzbkw:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-object v0
.end method

.method zzlt()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq;->zzbkv:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfq$zza;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzfq$zza;->zzbld:Z

    if-eqz v0, :cond_1d

    add-int/lit8 v0, v1, 0x1

    :goto_1a
    move v1, v0

    goto :goto_8

    :cond_1c
    return v1

    :cond_1d
    move v0, v1

    goto :goto_1a
.end method

.method zzlu()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzbkv:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfq$zza;->zzlx()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method zzlv()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfq;->zzbky:Z

    return-void
.end method

.method zzlw()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfq;->zzbky:Z

    return v0
.end method

.method zzm(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/internal/zzfq$zza;
    .registers 3

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfq;->zzbkw:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzbkv:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfq$zza;

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzfq.zza (com.google.android.gms.internal.zzfq$zza)
.class Lcom/google/android/gms/internal/zzfq$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field zzbkz:Lcom/google/android/gms/ads/internal/zzl;

.field zzbla:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field zzblb:Lcom/google/android/gms/internal/zzfm;

.field zzblc:J

.field zzbld:Z

.field zzble:Z

.field final synthetic zzblf:Lcom/google/android/gms/internal/zzfq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfq;Lcom/google/android/gms/internal/zzfl;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzblf:Lcom/google/android/gms/internal/zzfq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfq;->zza(Lcom/google/android/gms/internal/zzfq;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzfl;->zzbe(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzbkz:Lcom/google/android/gms/ads/internal/zzl;

    new-instance v0, Lcom/google/android/gms/internal/zzfm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzblb:Lcom/google/android/gms/internal/zzfm;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzblb:Lcom/google/android/gms/internal/zzfm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzbkz:Lcom/google/android/gms/ads/internal/zzl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfm;->zzc(Lcom/google/android/gms/ads/internal/zzl;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzfq;Lcom/google/android/gms/internal/zzfl;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzfq$zza;-><init>(Lcom/google/android/gms/internal/zzfq;Lcom/google/android/gms/internal/zzfl;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzbla:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-void
.end method


# virtual methods
.method zzlx()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzbld:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzbla:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzbla:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    :goto_b
    invoke-static {v0}, Lcom/google/android/gms/internal/zzfo;->zzj(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzbkz:Lcom/google/android/gms/ads/internal/zzl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzble:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzbld:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzblc:J

    goto :goto_4

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq$zza;->zzblf:Lcom/google/android/gms/internal/zzfq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfq;->zzb(Lcom/google/android/gms/internal/zzfq;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v0

    goto :goto_b
.end method
