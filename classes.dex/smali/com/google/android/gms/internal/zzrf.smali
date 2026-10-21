###### Class com.google.android.gms.internal.zzrf (com.google.android.gms.internal.zzrf)
.class public final Lcom/google/android/gms/internal/zzrf;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzrf$zza;,
        Lcom/google/android/gms/internal/zzrf$zzb;
    }
.end annotation


# instance fields
.field private mFrom:I

.field private wE:I

.field private wF:I

.field private wG:I

.field private wH:I

.field private wI:I

.field private wJ:Z

.field private wK:Lcom/google/android/gms/internal/zzrf$zzb;

.field private wL:Landroid/graphics/drawable/Drawable;

.field private wM:Landroid/graphics/drawable/Drawable;

.field private wN:Z

.field private wO:Z

.field private wP:Z

.field private wQ:I

.field private wy:Z

.field private zzczk:J


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrf;-><init>(Lcom/google/android/gms/internal/zzrf$zzb;)V

    if-nez p1, :cond_a

    invoke-static {}, Lcom/google/android/gms/internal/zzrf$zza;->zzarn()Lcom/google/android/gms/internal/zzrf$zza;

    move-result-object p1

    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/internal/zzrf;->wL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->wK:Lcom/google/android/gms/internal/zzrf$zzb;

    iget v1, v0, Lcom/google/android/gms/internal/zzrf$zzb;->wU:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/zzrf$zzb;->wU:I

    if-nez p2, :cond_20

    invoke-static {}, Lcom/google/android/gms/internal/zzrf$zza;->zzarn()Lcom/google/android/gms/internal/zzrf$zza;

    move-result-object p2

    :cond_20
    iput-object p2, p0, Lcom/google/android/gms/internal/zzrf;->wM:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->wK:Lcom/google/android/gms/internal/zzrf$zzb;

    iget v1, v0, Lcom/google/android/gms/internal/zzrf$zzb;->wU:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/zzrf$zzb;->wU:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzrf$zzb;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput v1, p0, Lcom/google/android/gms/internal/zzrf;->wE:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/gms/internal/zzrf;->wG:I

    iput v1, p0, Lcom/google/android/gms/internal/zzrf;->wI:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrf;->wy:Z

    new-instance v0, Lcom/google/android/gms/internal/zzrf$zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzrf$zzb;-><init>(Lcom/google/android/gms/internal/zzrf$zzb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrf;->wK:Lcom/google/android/gms/internal/zzrf$zzb;

    return-void
.end method


# virtual methods
.method public canConstantState()Z
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrf;->wN:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->wL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->wM:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrf;->wO:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzrf;->wN:Z

    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrf;->wO:Z

    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    const/4 v1, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/zzrf;->wE:I

    packed-switch v2, :pswitch_data_84

    :cond_9
    :goto_9
    move v0, v1

    :goto_a
    iget v1, p0, Lcom/google/android/gms/internal/zzrf;->wI:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzrf;->wy:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrf;->wL:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzrf;->wM:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_60

    if-eqz v2, :cond_18

    if-nez v1, :cond_1b

    :cond_18
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1b
    iget v0, p0, Lcom/google/android/gms/internal/zzrf;->wG:I

    if-ne v1, v0, :cond_27

    iget v0, p0, Lcom/google/android/gms/internal/zzrf;->wG:I

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_27
    :goto_27
    return-void

    :pswitch_28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzrf;->zzczk:J

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/zzrf;->wE:I

    goto :goto_a

    :pswitch_32
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzrf;->zzczk:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzrf;->zzczk:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/google/android/gms/internal/zzrf;->wH:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v2, v6

    if-ltz v3, :cond_5e

    :goto_4a
    if-eqz v1, :cond_4e

    iput v0, p0, Lcom/google/android/gms/internal/zzrf;->wE:I

    :cond_4e
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/zzrf;->wF:I

    add-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/zzrf;->wI:I

    goto :goto_9

    :cond_5e
    move v1, v0

    goto :goto_4a

    :cond_60
    if-eqz v2, :cond_68

    iget v0, p0, Lcom/google/android/gms/internal/zzrf;->wG:I

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_68
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v2, :cond_72

    iget v0, p0, Lcom/google/android/gms/internal/zzrf;->wG:I

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_72
    if-lez v1, :cond_7f

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzrf;->wG:I

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrf;->invalidateSelf()V

    goto :goto_27

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_28
        :pswitch_32
    .end packed-switch
.end method

.method public getChangingConfigurations()I
    .registers 3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrf;->wK:Lcom/google/android/gms/internal/zzrf$zzb;

    iget v1, v1, Lcom/google/android/gms/internal/zzrf$zzb;->wT:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrf;->wK:Lcom/google/android/gms/internal/zzrf$zzb;

    iget v1, v1, Lcom/google/android/gms/internal/zzrf$zzb;->wU:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrf;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->wK:Lcom/google/android/gms/internal/zzrf$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrf;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/zzrf$zzb;->wT:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->wK:Lcom/google/android/gms/internal/zzrf$zzb;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getIntrinsicHeight()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->wL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrf;->wM:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->wL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrf;->wM:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrf;->wP:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->wL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrf;->wM:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzrf;->wQ:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrf;->wP:Z

    :cond_19
    iget v0, p0, Lcom/google/android/gms/internal/zzrf;->wQ:I

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzavj()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrf;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrf;->wJ:Z

    if-nez v0, :cond_25

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_25

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrf;->canConstantState()Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->wL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->wM:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrf;->wJ:Z

    :cond_25
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->wL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->wM:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzavj()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrf;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_f
    return-void
.end method

.method public setAlpha(I)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/zzrf;->wI:I

    iget v1, p0, Lcom/google/android/gms/internal/zzrf;->wG:I

    if-ne v0, v1, :cond_8

    iput p1, p0, Lcom/google/android/gms/internal/zzrf;->wI:I

    :cond_8
    iput p1, p0, Lcom/google/android/gms/internal/zzrf;->wG:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrf;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->wL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->wM:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public startTransition(I)V
    .registers 4

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/zzrf;->mFrom:I

    iget v0, p0, Lcom/google/android/gms/internal/zzrf;->wG:I

    iput v0, p0, Lcom/google/android/gms/internal/zzrf;->wF:I

    iput v1, p0, Lcom/google/android/gms/internal/zzrf;->wI:I

    iput p1, p0, Lcom/google/android/gms/internal/zzrf;->wH:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzrf;->wE:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrf;->invalidateSelf()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzavj()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrf;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_f
    return-void
.end method

.method public zzarm()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->wM:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzrf.AnonymousClass1 (com.google.android.gms.internal.zzrf$1)
.class synthetic Lcom/google/android/gms/internal/zzrf$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.internal.zzrf.zza (com.google.android.gms.internal.zzrf$zza)
.class final Lcom/google/android/gms/internal/zzrf$zza;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzrf$zza$zza;
    }
.end annotation


# static fields
.field private static final wR:Lcom/google/android/gms/internal/zzrf$zza;

.field private static final wS:Lcom/google/android/gms/internal/zzrf$zza$zza;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zzrf$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzrf$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzrf$zza;->wR:Lcom/google/android/gms/internal/zzrf$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzrf$zza$zza;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzrf$zza$zza;-><init>(Lcom/google/android/gms/internal/zzrf$1;)V

    sput-object v0, Lcom/google/android/gms/internal/zzrf$zza;->wS:Lcom/google/android/gms/internal/zzrf$zza$zza;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method static synthetic zzarn()Lcom/google/android/gms/internal/zzrf$zza;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzrf$zza;->wR:Lcom/google/android/gms/internal/zzrf$zza;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzrf$zza;->wS:Lcom/google/android/gms/internal/zzrf$zza$zza;

    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

###### Class com.google.android.gms.internal.zzrf.zza.C0148zza (com.google.android.gms.internal.zzrf$zza$zza)
.class final Lcom/google/android/gms/internal/zzrf$zza$zza;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrf$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzrf$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrf$zza$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/zzrf$zza;->zzarn()Lcom/google/android/gms/internal/zzrf$zza;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzrf.zzb (com.google.android.gms.internal.zzrf$zzb)
.class final Lcom/google/android/gms/internal/zzrf$zzb;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzb"
.end annotation


# instance fields
.field wT:I

.field wU:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrf$zzb;)V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_d

    iget v0, p1, Lcom/google/android/gms/internal/zzrf$zzb;->wT:I

    iput v0, p0, Lcom/google/android/gms/internal/zzrf$zzb;->wT:I

    iget v0, p1, Lcom/google/android/gms/internal/zzrf$zzb;->wU:I

    iput v0, p0, Lcom/google/android/gms/internal/zzrf$zzb;->wU:I

    :cond_d
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzrf$zzb;->wT:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zzrf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzrf;-><init>(Lcom/google/android/gms/internal/zzrf$zzb;)V

    return-object v0
.end method
