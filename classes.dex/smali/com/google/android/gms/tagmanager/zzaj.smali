###### Class com.google.android.gms.tagmanager.zzaj (com.google.android.gms.tagmanager.zzaj)
.class Lcom/google/android/gms/tagmanager/zzaj;
.super Lcom/google/android/gms/tagmanager/zzal;


# static fields
.field private static final ID:Ljava/lang/String;


# instance fields
.field private final avb:Lcom/google/android/gms/tagmanager/zzcw;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzaf;->zzgs:Lcom/google/android/gms/internal/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaf;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzaj;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tagmanager/zzcw;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/tagmanager/zzaj;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzal;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzaj;->avb:Lcom/google/android/gms/tagmanager/zzcw;

    return-void
.end method


# virtual methods
.method public zzav(Ljava/util/Map;)Lcom/google/android/gms/internal/zzai$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzai$zza;",
            ">;)",
            "Lcom/google/android/gms/internal/zzai$zza;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaj;->avb:Lcom/google/android/gms/tagmanager/zzcw;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcw;->zzcco()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzcdq()Lcom/google/android/gms/internal/zzai$zza;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzar(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzai$zza;

    move-result-object v0

    goto :goto_c
.end method

.method public zzcac()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
