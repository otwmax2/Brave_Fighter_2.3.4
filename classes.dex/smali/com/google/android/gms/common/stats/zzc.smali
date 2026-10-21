###### Class com.google.android.gms.common.stats.zzc (com.google.android.gms.common.stats.zzc)
.class public final Lcom/google/android/gms/common/stats/zzc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/stats/zzc$zzb;,
        Lcom/google/android/gms/common/stats/zzc$zza;
    }
.end annotation


# static fields
.field public static Af:Lcom/google/android/gms/internal/zzre;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzre",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static Ag:Lcom/google/android/gms/internal/zzre;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzre",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v2, 0x64

    const-string v0, "gms:common:stats:max_num_of_events"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzre;->zza(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc;->Af:Lcom/google/android/gms/internal/zzre;

    const-string v0, "gms:common:stats:max_chunk_size"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzre;->zza(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc;->Ag:Lcom/google/android/gms/internal/zzre;

    return-void
.end method

###### Class com.google.android.gms.common.stats.zzc.zza (com.google.android.gms.common.stats.zzc$zza)
.class public final Lcom/google/android/gms/common/stats/zzc$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/stats/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# static fields
.field public static Ah:Lcom/google/android/gms/internal/zzre;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzre",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static Ai:Lcom/google/android/gms/internal/zzre;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzre",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static Aj:Lcom/google/android/gms/internal/zzre;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzre",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static Ak:Lcom/google/android/gms/internal/zzre;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzre",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static Al:Lcom/google/android/gms/internal/zzre;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzre",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static Am:Lcom/google/android/gms/internal/zzre;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzre",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "gms:common:stats:connections:level"

    sget v1, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzre;->zza(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Ah:Lcom/google/android/gms/internal/zzre;

    const-string v0, "gms:common:stats:connections:ignored_calling_processes"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzre;->zzab(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Ai:Lcom/google/android/gms/internal/zzre;

    const-string v0, "gms:common:stats:connections:ignored_calling_services"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzre;->zzab(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Aj:Lcom/google/android/gms/internal/zzre;

    const-string v0, "gms:common:stats:connections:ignored_target_processes"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzre;->zzab(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Ak:Lcom/google/android/gms/internal/zzre;

    const-string v0, "gms:common:stats:connections:ignored_target_services"

    const-string v1, "com.google.android.gms.auth.GetToken"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzre;->zzab(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Al:Lcom/google/android/gms/internal/zzre;

    const-string v0, "gms:common:stats:connections:time_out_duration"

    const-wide/32 v2, 0x927c0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzre;->zza(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Am:Lcom/google/android/gms/internal/zzre;

    return-void
.end method

###### Class com.google.android.gms.common.stats.zzc.zzb (com.google.android.gms.common.stats.zzc$zzb)
.class public final Lcom/google/android/gms/common/stats/zzc$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/stats/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation


# static fields
.field public static Ah:Lcom/google/android/gms/internal/zzre;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzre",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static Am:Lcom/google/android/gms/internal/zzre;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzre",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "gms:common:stats:wakeLocks:level"

    sget v1, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzre;->zza(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zzb;->Ah:Lcom/google/android/gms/internal/zzre;

    const-string v0, "gms:common:stats:wakelocks:time_out_duration"

    const-wide/32 v2, 0x927c0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzre;->zza(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zzb;->Am:Lcom/google/android/gms/internal/zzre;

    return-void
.end method
