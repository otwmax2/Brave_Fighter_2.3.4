###### Class com.google.android.gms.internal.zzao (com.google.android.gms.internal.zzao)
.class public abstract Lcom/google/android/gms/internal/zzao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzan;


# instance fields
.field protected zzafd:Landroid/view/MotionEvent;

.field protected zzafe:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected zzaff:J

.field protected zzafg:J

.field protected zzafh:J

.field protected zzafi:J

.field protected zzafj:J

.field private zzafk:Z

.field protected zzafl:Landroid/util/DisplayMetrics;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 6

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafe:Ljava/util/LinkedList;

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzao;->zzaff:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzao;->zzafg:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzao;->zzafh:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzao;->zzafi:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzao;->zzafj:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzao;->zzafk:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzak;->zzas()V

    :try_start_1c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafl:Landroid/util/DisplayMetrics;
    :try_end_26
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1c .. :try_end_26} :catch_27

    :goto_26
    return-void

    :catch_27
    move-exception v0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafl:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafl:Landroid/util/DisplayMetrics;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_26
.end method

.method private zza(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8

    const/4 v3, 0x7

    const/4 v0, 0x1

    if-eqz p3, :cond_19

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzao;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/zzae$zza;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzao;->zzafk:Z

    :goto_b
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzae$zza;->ao()I

    move-result v2

    if-nez v2, :cond_1e

    :cond_13
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzao;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/zzae$zza;

    move-result-object v1

    goto :goto_b

    :cond_1e
    invoke-static {p3}, Lcom/google/android/gms/internal/zzao;->zzb(Z)Z

    move-result v2

    if-nez v2, :cond_29

    :goto_24
    invoke-static {v1, p2, v0}, Lcom/google/android/gms/internal/zzak;->zza(Lcom/google/android/gms/internal/zzae$zza;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_27
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_27} :catch_2b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_27} :catch_31
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_27} :catch_37

    move-result-object v0

    goto :goto_18

    :cond_29
    const/4 v0, 0x0

    goto :goto_24

    :catch_2b
    move-exception v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :catch_31
    move-exception v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :catch_37
    move-exception v0

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method private zzaw()V
    .registers 7

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbbr:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_41

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v1, 0x0

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_1e
    if-ltz v1, :cond_3e

    add-int/lit8 v0, v0, 0x1

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.ads."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3e

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.gms."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    :cond_3e
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzao;->zzafj:J

    :cond_41
    return-void

    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e
.end method

.method private static zzb(Z)Z
    .registers 3

    const/4 v1, 0x1

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbbj:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_10
    return v0

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbbs:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    if-eqz p0, :cond_23

    move v0, v1

    goto :goto_10

    :cond_23
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public zza(III)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzao;->zzafd:Landroid/view/MotionEvent;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzao;->zzafd:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_d
    const-wide/16 v2, 0x0

    move/from16 v0, p3

    int-to-long v4, v0

    const/4 v6, 0x1

    move/from16 v0, p1

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzao;->zzafl:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    move/from16 v0, p2

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzao;->zzafl:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/zzao;->zzafd:Landroid/view/MotionEvent;

    return-void
.end method

.method public zza(Landroid/view/MotionEvent;)V
    .registers 6

    const-wide/16 v2, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzao;->zzafk:Z

    if-eqz v0, :cond_33

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzao;->zzafi:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzao;->zzafh:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzao;->zzafg:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzao;->zzaff:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzao;->zzafj:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafe:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_18

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafe:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafd:Landroid/view/MotionEvent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzao;->zzafk:Z

    :cond_33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_7e

    :goto_3a
    return-void

    :pswitch_3b
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafd:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafe:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzao;->zzafd:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafe:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_5c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzao;->zzafe:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_5c
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzao;->zzafh:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzao;->zzafh:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzao;->zzaw()V

    goto :goto_3a

    :pswitch_65
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzao;->zzaff:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzao;->zzaff:J

    goto :goto_3a

    :pswitch_6b
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzao;->zzafi:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzao;->zzafi:J

    goto :goto_3a

    :pswitch_71
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzao;->zzafg:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzao;->zzafg:J

    goto :goto_3a

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_65
        :pswitch_3b
        :pswitch_71
        :pswitch_6b
    .end packed-switch
.end method

.method public zzb(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzao;->zza(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzao;->zza(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/zzae$zza;
.end method

.method protected abstract zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/zzae$zza;
.end method
