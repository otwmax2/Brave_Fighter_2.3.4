###### Class com.google.android.gms.awareness.fence.TimeFence (com.google.android.gms.awareness.fence.TimeFence)
.class public final Lcom/google/android/gms/awareness/fence/TimeFence;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inDailyInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .registers 12

    const/4 v0, 0x2

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/contextmanager/fence/internal/zzp;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/contextmanager/fence/internal/zzp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(Lcom/google/android/gms/contextmanager/fence/internal/zzp;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    move-result-object v0

    return-object v0
.end method

.method public static inFridayInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .registers 12

    const/16 v0, 0xa

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/contextmanager/fence/internal/zzp;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/contextmanager/fence/internal/zzp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(Lcom/google/android/gms/contextmanager/fence/internal/zzp;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    move-result-object v0

    return-object v0
.end method

.method public static inInterval(JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .registers 6

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/contextmanager/fence/internal/zzp;->zzf(JJ)Lcom/google/android/gms/contextmanager/fence/internal/zzp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(Lcom/google/android/gms/contextmanager/fence/internal/zzp;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    move-result-object v0

    return-object v0
.end method

.method public static inMondayInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .registers 12

    const/4 v0, 0x6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/contextmanager/fence/internal/zzp;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/contextmanager/fence/internal/zzp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(Lcom/google/android/gms/contextmanager/fence/internal/zzp;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    move-result-object v0

    return-object v0
.end method

.method public static inSaturdayInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .registers 12

    const/16 v0, 0xb

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/contextmanager/fence/internal/zzp;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/contextmanager/fence/internal/zzp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(Lcom/google/android/gms/contextmanager/fence/internal/zzp;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    move-result-object v0

    return-object v0
.end method

.method public static inSundayInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .registers 12

    const/4 v0, 0x5

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/contextmanager/fence/internal/zzp;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/contextmanager/fence/internal/zzp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(Lcom/google/android/gms/contextmanager/fence/internal/zzp;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    move-result-object v0

    return-object v0
.end method

.method public static inThursdayInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .registers 12

    const/16 v0, 0x9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/contextmanager/fence/internal/zzp;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/contextmanager/fence/internal/zzp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(Lcom/google/android/gms/contextmanager/fence/internal/zzp;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    move-result-object v0

    return-object v0
.end method

.method public static inTuesdayInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .registers 12

    const/4 v0, 0x7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/contextmanager/fence/internal/zzp;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/contextmanager/fence/internal/zzp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(Lcom/google/android/gms/contextmanager/fence/internal/zzp;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    move-result-object v0

    return-object v0
.end method

.method public static inWednesdayInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .registers 12

    const/16 v0, 0x8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/contextmanager/fence/internal/zzp;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/contextmanager/fence/internal/zzp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->zza(Lcom/google/android/gms/contextmanager/fence/internal/zzp;)Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    move-result-object v0

    return-object v0
.end method
