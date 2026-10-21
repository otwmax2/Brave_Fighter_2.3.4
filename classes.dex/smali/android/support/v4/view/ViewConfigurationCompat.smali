###### Class android.support.v4.view.ViewConfigurationCompat (android.support.v4.view.ViewConfigurationCompat)
.class public final Landroid/support/v4/view/ViewConfigurationCompat;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewConfigurationCompat$IcsViewConfigurationVersionImpl;,
        Landroid/support/v4/view/ViewConfigurationCompat$HoneycombViewConfigurationVersionImpl;,
        Landroid/support/v4/view/ViewConfigurationCompat$FroyoViewConfigurationVersionImpl;,
        Landroid/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;,
        Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    .line 87
    new-instance v0, Landroid/support/v4/view/ViewConfigurationCompat$IcsViewConfigurationVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewConfigurationCompat$IcsViewConfigurationVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->IMPL:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;

    .line 95
    :goto_d
    return-void

    .line 88
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1c

    .line 89
    new-instance v0, Landroid/support/v4/view/ViewConfigurationCompat$HoneycombViewConfigurationVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewConfigurationCompat$HoneycombViewConfigurationVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->IMPL:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;

    goto :goto_d

    .line 90
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2a

    .line 91
    new-instance v0, Landroid/support/v4/view/ViewConfigurationCompat$FroyoViewConfigurationVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewConfigurationCompat$FroyoViewConfigurationVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->IMPL:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;

    goto :goto_d

    .line 93
    :cond_2a
    new-instance v0, Landroid/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->IMPL:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
    .registers 2
    .param p0, "config"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 105
    sget-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->IMPL:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method

.method public static hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
    .registers 2
    .param p0, "config"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 113
    sget-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->IMPL:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v0

    return v0
.end method

###### Class android.support.v4.view.ViewConfigurationCompat.BaseViewConfigurationVersionImpl (android.support.v4.view.ViewConfigurationCompat$BaseViewConfigurationVersionImpl)
.class Landroid/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewConfigurationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewConfigurationVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
    .registers 3
    .param p1, "config"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    return v0
.end method

.method public hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
    .registers 3
    .param p1, "config"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

###### Class android.support.v4.view.ViewConfigurationCompat.FroyoViewConfigurationVersionImpl (android.support.v4.view.ViewConfigurationCompat$FroyoViewConfigurationVersionImpl)
.class Landroid/support/v4/view/ViewConfigurationCompat$FroyoViewConfigurationVersionImpl;
.super Landroid/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewConfigurationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FroyoViewConfigurationVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
    .registers 3
    .param p1, "config"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 56
    invoke-static {p1}, Landroid/support/v4/view/ViewConfigurationCompatFroyo;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method

###### Class android.support.v4.view.ViewConfigurationCompat.HoneycombViewConfigurationVersionImpl (android.support.v4.view.ViewConfigurationCompat$HoneycombViewConfigurationVersionImpl)
.class Landroid/support/v4/view/ViewConfigurationCompat$HoneycombViewConfigurationVersionImpl;
.super Landroid/support/v4/view/ViewConfigurationCompat$FroyoViewConfigurationVersionImpl;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewConfigurationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombViewConfigurationVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v4/view/ViewConfigurationCompat$FroyoViewConfigurationVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
    .registers 3
    .param p1, "config"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

###### Class android.support.v4.view.ViewConfigurationCompat.IcsViewConfigurationVersionImpl (android.support.v4.view.ViewConfigurationCompat$IcsViewConfigurationVersionImpl)
.class Landroid/support/v4/view/ViewConfigurationCompat$IcsViewConfigurationVersionImpl;
.super Landroid/support/v4/view/ViewConfigurationCompat$HoneycombViewConfigurationVersionImpl;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewConfigurationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IcsViewConfigurationVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/support/v4/view/ViewConfigurationCompat$HoneycombViewConfigurationVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
    .registers 3
    .param p1, "config"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 77
    invoke-static {p1}, Landroid/support/v4/view/ViewConfigurationCompatICS;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v0

    return v0
.end method

###### Class android.support.v4.view.ViewConfigurationCompat.ViewConfigurationVersionImpl (android.support.v4.view.ViewConfigurationCompat$ViewConfigurationVersionImpl)
.class interface abstract Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewConfigurationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ViewConfigurationVersionImpl"
.end annotation


# virtual methods
.method public abstract getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
.end method

.method public abstract hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
.end method
