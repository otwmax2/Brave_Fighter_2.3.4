###### Class android.support.v4.view.ScaleGestureDetectorCompat (android.support.v4.view.ScaleGestureDetectorCompat)
.class public final Landroid/support/v4/view/ScaleGestureDetectorCompat;
.super Ljava/lang/Object;
.source "ScaleGestureDetectorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ScaleGestureDetectorCompat$1;,
        Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorCompatKitKatImpl;,
        Landroid/support/v4/view/ScaleGestureDetectorCompat$BaseScaleGestureDetectorImpl;,
        Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    .local v0, "version":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_f

    .line 60
    new-instance v1, Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorCompatKitKatImpl;

    invoke-direct {v1, v2}, Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorCompatKitKatImpl;-><init>(Landroid/support/v4/view/ScaleGestureDetectorCompat$1;)V

    sput-object v1, Landroid/support/v4/view/ScaleGestureDetectorCompat;->IMPL:Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;

    .line 64
    :goto_e
    return-void

    .line 62
    :cond_f
    new-instance v1, Landroid/support/v4/view/ScaleGestureDetectorCompat$BaseScaleGestureDetectorImpl;

    invoke-direct {v1, v2}, Landroid/support/v4/view/ScaleGestureDetectorCompat$BaseScaleGestureDetectorImpl;-><init>(Landroid/support/v4/view/ScaleGestureDetectorCompat$1;)V

    sput-object v1, Landroid/support/v4/view/ScaleGestureDetectorCompat;->IMPL:Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;

    goto :goto_e
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isQuickScaleEnabled(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "scaleGestureDetector"    # Ljava/lang/Object;

    .prologue
    .line 83
    sget-object v0, Landroid/support/v4/view/ScaleGestureDetectorCompat;->IMPL:Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;->isQuickScaleEnabled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setQuickScaleEnabled(Ljava/lang/Object;Z)V
    .registers 3
    .param p0, "scaleGestureDetector"    # Ljava/lang/Object;
    .param p1, "enabled"    # Z

    .prologue
    .line 75
    sget-object v0, Landroid/support/v4/view/ScaleGestureDetectorCompat;->IMPL:Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;->setQuickScaleEnabled(Ljava/lang/Object;Z)V

    .line 76
    return-void
.end method

###### Class android.support.v4.view.ScaleGestureDetectorCompat.AnonymousClass1 (android.support.v4.view.ScaleGestureDetectorCompat$1)
.class synthetic Landroid/support/v4/view/ScaleGestureDetectorCompat$1;
.super Ljava/lang/Object;
.source "ScaleGestureDetectorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ScaleGestureDetectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class android.support.v4.view.ScaleGestureDetectorCompat.BaseScaleGestureDetectorImpl (android.support.v4.view.ScaleGestureDetectorCompat$BaseScaleGestureDetectorImpl)
.class Landroid/support/v4/view/ScaleGestureDetectorCompat$BaseScaleGestureDetectorImpl;
.super Ljava/lang/Object;
.source "ScaleGestureDetectorCompat.java"

# interfaces
.implements Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ScaleGestureDetectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseScaleGestureDetectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/ScaleGestureDetectorCompat$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/support/v4/view/ScaleGestureDetectorCompat$1;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/view/ScaleGestureDetectorCompat$BaseScaleGestureDetectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public isQuickScaleEnabled(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public setQuickScaleEnabled(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "enabled"    # Z

    .prologue
    .line 37
    return-void
.end method

###### Class android.support.v4.view.ScaleGestureDetectorCompat.ScaleGestureDetectorCompatKitKatImpl (android.support.v4.view.ScaleGestureDetectorCompat$ScaleGestureDetectorCompatKitKatImpl)
.class Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorCompatKitKatImpl;
.super Ljava/lang/Object;
.source "ScaleGestureDetectorCompat.java"

# interfaces
.implements Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ScaleGestureDetectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleGestureDetectorCompatKitKatImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/ScaleGestureDetectorCompat$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/support/v4/view/ScaleGestureDetectorCompat$1;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorCompatKitKatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public isQuickScaleEnabled(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 53
    invoke-static {p1}, Landroid/support/v4/view/ScaleGestureDetectorCompatKitKat;->isQuickScaleEnabled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setQuickScaleEnabled(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "enabled"    # Z

    .prologue
    .line 48
    invoke-static {p1, p2}, Landroid/support/v4/view/ScaleGestureDetectorCompatKitKat;->setQuickScaleEnabled(Ljava/lang/Object;Z)V

    .line 49
    return-void
.end method

###### Class android.support.v4.view.ScaleGestureDetectorCompat.ScaleGestureDetectorImpl (android.support.v4.view.ScaleGestureDetectorCompat$ScaleGestureDetectorImpl)
.class interface abstract Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;
.super Ljava/lang/Object;
.source "ScaleGestureDetectorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ScaleGestureDetectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ScaleGestureDetectorImpl"
.end annotation


# virtual methods
.method public abstract isQuickScaleEnabled(Ljava/lang/Object;)Z
.end method

.method public abstract setQuickScaleEnabled(Ljava/lang/Object;Z)V
.end method
