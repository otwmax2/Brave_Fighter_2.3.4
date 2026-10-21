###### Class com.google.android.gms.internal.zzpm (com.google.android.gms.internal.zzpm)
.class public Lcom/google/android/gms/internal/zzpm;
.super Ljava/lang/Object;


# direct methods
.method public static zzd(JJ)J
    .registers 10

    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_e

    rem-long v0, p0, p2

    :goto_d
    return-wide v0

    :cond_e
    rem-long v0, v4, p2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    and-long v2, p0, v4

    rem-long/2addr v2, p2

    add-long/2addr v0, v2

    rem-long/2addr v0, p2

    goto :goto_d
.end method
