###### Class android.support.v4.widget.PopupWindowCompat (android.support.v4.widget.PopupWindowCompat)
.class public final Landroid/support/v4/widget/PopupWindowCompat;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/PopupWindowCompat$Api23PopupWindowImpl;,
        Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;,
        Landroid/support/v4/widget/PopupWindowCompat$KitKatPopupWindowImpl;,
        Landroid/support/v4/widget/PopupWindowCompat$GingerbreadPopupWindowImpl;,
        Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;,
        Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 136
    .local v0, "version":I
    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    .line 137
    new-instance v1, Landroid/support/v4/widget/PopupWindowCompat$Api23PopupWindowImpl;

    invoke-direct {v1}, Landroid/support/v4/widget/PopupWindowCompat$Api23PopupWindowImpl;-><init>()V

    sput-object v1, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    .line 147
    :goto_d
    return-void

    .line 138
    :cond_e
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1a

    .line 139
    new-instance v1, Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;

    invoke-direct {v1}, Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;-><init>()V

    sput-object v1, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    goto :goto_d

    .line 140
    :cond_1a
    const/16 v1, 0x13

    if-lt v0, v1, :cond_26

    .line 141
    new-instance v1, Landroid/support/v4/widget/PopupWindowCompat$KitKatPopupWindowImpl;

    invoke-direct {v1}, Landroid/support/v4/widget/PopupWindowCompat$KitKatPopupWindowImpl;-><init>()V

    sput-object v1, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    goto :goto_d

    .line 142
    :cond_26
    const/16 v1, 0x9

    if-lt v0, v1, :cond_32

    .line 143
    new-instance v1, Landroid/support/v4/widget/PopupWindowCompat$GingerbreadPopupWindowImpl;

    invoke-direct {v1}, Landroid/support/v4/widget/PopupWindowCompat$GingerbreadPopupWindowImpl;-><init>()V

    sput-object v1, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    goto :goto_d

    .line 145
    :cond_32
    new-instance v1, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;

    invoke-direct {v1}, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;-><init>()V

    sput-object v1, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method public static getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .registers 2
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 191
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;->getOverlapAnchor(Landroid/widget/PopupWindow;)Z

    move-result v0

    return v0
.end method

.method public static getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .registers 2
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 213
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;->getWindowLayoutType(Landroid/widget/PopupWindow;)I

    move-result v0

    return v0
.end method

.method public static setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .registers 3
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "overlapAnchor"    # Z

    .prologue
    .line 181
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    .line 182
    return-void
.end method

.method public static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .registers 3
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "layoutType"    # I

    .prologue
    .line 204
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 205
    return-void
.end method

.method public static showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .registers 11
    .param p0, "popup"    # Landroid/widget/PopupWindow;
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    .line 171
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 172
    return-void
.end method

###### Class android.support.v4.widget.PopupWindowCompat.Api21PopupWindowImpl (android.support.v4.widget.PopupWindowCompat$Api21PopupWindowImpl)
.class Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;
.super Landroid/support/v4/widget/PopupWindowCompat$KitKatPopupWindowImpl;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21PopupWindowImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/support/v4/widget/PopupWindowCompat$KitKatPopupWindowImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .registers 3
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 104
    invoke-static {p1}, Landroid/support/v4/widget/PopupWindowCompatApi21;->getOverlapAnchor(Landroid/widget/PopupWindow;)Z

    move-result v0

    return v0
.end method

.method public setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .registers 3
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "overlapAnchor"    # Z

    .prologue
    .line 99
    invoke-static {p1, p2}, Landroid/support/v4/widget/PopupWindowCompatApi21;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    .line 100
    return-void
.end method

###### Class android.support.v4.widget.PopupWindowCompat.Api23PopupWindowImpl (android.support.v4.widget.PopupWindowCompat$Api23PopupWindowImpl)
.class Landroid/support/v4/widget/PopupWindowCompat$Api23PopupWindowImpl;
.super Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23PopupWindowImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .registers 3
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 116
    invoke-static {p1}, Landroid/support/v4/widget/PopupWindowCompatApi23;->getOverlapAnchor(Landroid/widget/PopupWindow;)Z

    move-result v0

    return v0
.end method

.method public getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .registers 3
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 126
    invoke-static {p1}, Landroid/support/v4/widget/PopupWindowCompatApi23;->getWindowLayoutType(Landroid/widget/PopupWindow;)I

    move-result v0

    return v0
.end method

.method public setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .registers 3
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "overlapAnchor"    # Z

    .prologue
    .line 111
    invoke-static {p1, p2}, Landroid/support/v4/widget/PopupWindowCompatApi23;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    .line 112
    return-void
.end method

.method public setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .registers 3
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "layoutType"    # I

    .prologue
    .line 121
    invoke-static {p1, p2}, Landroid/support/v4/widget/PopupWindowCompatApi23;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 122
    return-void
.end method

###### Class android.support.v4.widget.PopupWindowCompat.BasePopupWindowImpl (android.support.v4.widget.PopupWindowCompat$BasePopupWindowImpl)
.class Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"

# interfaces
.implements Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BasePopupWindowImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .registers 3
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .registers 3
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .registers 3
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "overlapAnchor"    # Z

    .prologue
    .line 52
    return-void
.end method

.method public setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .registers 3
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "layoutType"    # I

    .prologue
    .line 62
    return-void
.end method

.method public showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .registers 6
    .param p1, "popup"    # Landroid/widget/PopupWindow;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    .prologue
    .line 46
    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 47
    return-void
.end method

###### Class android.support.v4.widget.PopupWindowCompat.GingerbreadPopupWindowImpl (android.support.v4.widget.PopupWindowCompat$GingerbreadPopupWindowImpl)
.class Landroid/support/v4/widget/PopupWindowCompat$GingerbreadPopupWindowImpl;
.super Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GingerbreadPopupWindowImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .registers 3
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 81
    invoke-static {p1}, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->getWindowLayoutType(Landroid/widget/PopupWindow;)I

    move-result v0

    return v0
.end method

.method public setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .registers 3
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "layoutType"    # I

    .prologue
    .line 76
    invoke-static {p1, p2}, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 77
    return-void
.end method

###### Class android.support.v4.widget.PopupWindowCompat.KitKatPopupWindowImpl (android.support.v4.widget.PopupWindowCompat$KitKatPopupWindowImpl)
.class Landroid/support/v4/widget/PopupWindowCompat$KitKatPopupWindowImpl;
.super Landroid/support/v4/widget/PopupWindowCompat$GingerbreadPopupWindowImpl;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KitKatPopupWindowImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/support/v4/widget/PopupWindowCompat$GingerbreadPopupWindowImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .registers 6
    .param p1, "popup"    # Landroid/widget/PopupWindow;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    .prologue
    .line 92
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/widget/PopupWindowCompatKitKat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 93
    return-void
.end method

###### Class android.support.v4.widget.PopupWindowCompat.PopupWindowImpl (android.support.v4.widget.PopupWindowCompat$PopupWindowImpl)
.class interface abstract Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PopupWindowImpl"
.end annotation


# virtual methods
.method public abstract getOverlapAnchor(Landroid/widget/PopupWindow;)Z
.end method

.method public abstract getWindowLayoutType(Landroid/widget/PopupWindow;)I
.end method

.method public abstract setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
.end method

.method public abstract setWindowLayoutType(Landroid/widget/PopupWindow;I)V
.end method

.method public abstract showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
.end method
