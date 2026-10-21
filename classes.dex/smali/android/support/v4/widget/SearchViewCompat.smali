###### Class android.support.v4.widget.SearchViewCompat (android.support.v4.widget.SearchViewCompat)
.class public final Landroid/support/v4/widget/SearchViewCompat;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;,
        Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;,
        Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl;,
        Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;,
        Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;,
        Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    .line 256
    new-instance v0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    .line 262
    :goto_d
    return-void

    .line 257
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1c

    .line 258
    new-instance v0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    goto :goto_d

    .line 260
    :cond_1c
    new-instance v0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    goto :goto_d
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    return-void
.end method

.method static synthetic access$000()Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    return-object v0
.end method

.method public static getQuery(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "searchView"    # Landroid/view/View;

    .prologue
    .line 408
    sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->getQuery(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static isIconified(Landroid/view/View;)Z
    .registers 2
    .param p0, "searchView"    # Landroid/view/View;

    .prologue
    .line 458
    sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->isIconified(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isQueryRefinementEnabled(Landroid/view/View;)Z
    .registers 2
    .param p0, "searchView"    # Landroid/view/View;

    .prologue
    .line 509
    sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->isQueryRefinementEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isSubmitButtonEnabled(Landroid/view/View;)Z
    .registers 2
    .param p0, "searchView"    # Landroid/view/View;

    .prologue
    .line 481
    sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->isSubmitButtonEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static newSearchView(Landroid/content/Context;)Landroid/view/View;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 276
    sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->newSearchView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static setIconified(Landroid/view/View;Z)V
    .registers 3
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "iconify"    # Z

    .prologue
    .line 447
    sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setIconified(Landroid/view/View;Z)V

    .line 448
    return-void
.end method

.method public static setImeOptions(Landroid/view/View;I)V
    .registers 3
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "imeOptions"    # I

    .prologue
    .line 303
    sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setImeOptions(Landroid/view/View;I)V

    .line 304
    return-void
.end method

.method public static setInputType(Landroid/view/View;I)V
    .registers 3
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "inputType"    # I

    .prologue
    .line 316
    sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setInputType(Landroid/view/View;I)V

    .line 317
    return-void
.end method

.method public static setMaxWidth(Landroid/view/View;I)V
    .registers 3
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "maxpixels"    # I

    .prologue
    .line 517
    sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setMaxWidth(Landroid/view/View;I)V

    .line 518
    return-void
.end method

.method public static setOnCloseListener(Landroid/view/View;Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;)V
    .registers 4
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;

    .prologue
    .line 376
    sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    iget-object v1, p1, Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;->mListener:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setOnCloseListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 377
    return-void
.end method

.method public static setOnQueryTextListener(Landroid/view/View;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V
    .registers 4
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

    .prologue
    .line 327
    sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    iget-object v1, p1, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;->mListener:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    return-void
.end method

.method public static setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .registers 4
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    .prologue
    .line 421
    sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    .line 422
    return-void
.end method

.method public static setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 432
    sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 433
    return-void
.end method

.method public static setQueryRefinementEnabled(Landroid/view/View;Z)V
    .registers 3
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "enable"    # Z

    .prologue
    .line 500
    sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setQueryRefinementEnabled(Landroid/view/View;Z)V

    .line 501
    return-void
.end method

.method public static setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V
    .registers 3
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "searchableComponent"    # Landroid/content/ComponentName;

    .prologue
    .line 290
    sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V

    .line 291
    return-void
.end method

.method public static setSubmitButtonEnabled(Landroid/view/View;Z)V
    .registers 3
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "enabled"    # Z

    .prologue
    .line 471
    sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->setSubmitButtonEnabled(Landroid/view/View;Z)V

    .line 472
    return-void
.end method

###### Class android.support.v4.widget.SearchViewCompat.OnCloseListenerCompat (android.support.v4.widget.SearchViewCompat$OnCloseListenerCompat)
.class public abstract Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SearchViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnCloseListenerCompat"
.end annotation


# instance fields
.field final mListener:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    invoke-static {}, Landroid/support/v4/widget/SearchViewCompat;->access$000()Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->newOnCloseListener(Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;->mListener:Ljava/lang/Object;

    .line 387
    return-void
.end method


# virtual methods
.method public onClose()Z
    .registers 2

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

###### Class android.support.v4.widget.SearchViewCompat.OnQueryTextListenerCompat (android.support.v4.widget.SearchViewCompat$OnQueryTextListenerCompat)
.class public abstract Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SearchViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnQueryTextListenerCompat"
.end annotation


# instance fields
.field final mListener:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    invoke-static {}, Landroid/support/v4/widget/SearchViewCompat;->access$000()Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;->mListener:Ljava/lang/Object;

    .line 338
    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 3
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

###### Class android.support.v4.widget.SearchViewCompat.SearchViewCompatHoneycombImpl (android.support.v4.widget.SearchViewCompat$SearchViewCompatHoneycombImpl)
.class Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;
.super Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;
.source "SearchViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SearchViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchViewCompatHoneycombImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuery(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 185
    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->getQuery(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isIconified(Landroid/view/View;)Z
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 205
    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->isIconified(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isQueryRefinementEnabled(Landroid/view/View;)Z
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 225
    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->isQueryRefinementEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isSubmitButtonEnabled(Landroid/view/View;)Z
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 215
    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->isSubmitButtonEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public newOnCloseListener(Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;)Ljava/lang/Object;
    .registers 3
    .param p1, "listener"    # Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;

    .prologue
    .line 169
    new-instance v0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2;-><init>(Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;)V

    invoke-static {v0}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->newOnCloseListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)Ljava/lang/Object;
    .registers 3
    .param p1, "listener"    # Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

    .prologue
    .line 149
    new-instance v0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;-><init>(Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V

    invoke-static {v0}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newSearchView(Landroid/content/Context;)Landroid/view/View;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->newSearchView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setIconified(Landroid/view/View;Z)V
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "iconify"    # Z

    .prologue
    .line 200
    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setIconified(Landroid/view/View;Z)V

    .line 201
    return-void
.end method

.method public setMaxWidth(Landroid/view/View;I)V
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "maxpixels"    # I

    .prologue
    .line 230
    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setMaxWidth(Landroid/view/View;I)V

    .line 231
    return-void
.end method

.method public setOnCloseListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1, "searchView"    # Ljava/lang/Object;
    .param p2, "listener"    # Ljava/lang/Object;

    .prologue
    .line 180
    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setOnCloseListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method public setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1, "searchView"    # Ljava/lang/Object;
    .param p2, "listener"    # Ljava/lang/Object;

    .prologue
    .line 164
    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method public setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .registers 4
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "query"    # Ljava/lang/CharSequence;
    .param p3, "submit"    # Z

    .prologue
    .line 190
    invoke-static {p1, p2, p3}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    .line 191
    return-void
.end method

.method public setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 195
    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method

.method public setQueryRefinementEnabled(Landroid/view/View;Z)V
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "enable"    # Z

    .prologue
    .line 220
    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setQueryRefinementEnabled(Landroid/view/View;Z)V

    .line 221
    return-void
.end method

.method public setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "searchableComponent"    # Landroid/content/ComponentName;

    .prologue
    .line 144
    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V

    .line 145
    return-void
.end method

.method public setSubmitButtonEnabled(Landroid/view/View;Z)V
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 210
    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setSubmitButtonEnabled(Landroid/view/View;Z)V

    .line 211
    return-void
.end method

###### Class android.support.v4.widget.SearchViewCompat.SearchViewCompatHoneycombImpl.AnonymousClass1 (android.support.v4.widget.SearchViewCompat$SearchViewCompatHoneycombImpl$1)
.class Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"

# interfaces
.implements Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;

.field final synthetic val$listener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V
    .registers 3

    .prologue
    .line 150
    iput-object p1, p0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;->this$0:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;

    iput-object p2, p0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;->val$listener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 3
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;->val$listener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;->val$listener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

###### Class android.support.v4.widget.SearchViewCompat.SearchViewCompatHoneycombImpl.AnonymousClass2 (android.support.v4.widget.SearchViewCompat$SearchViewCompatHoneycombImpl$2)
.class Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"

# interfaces
.implements Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->newOnCloseListener(Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;

.field final synthetic val$listener:Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;)V
    .registers 3

    .prologue
    .line 170
    iput-object p1, p0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2;->this$0:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;

    iput-object p2, p0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2;->val$listener:Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2;->val$listener:Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;->onClose()Z

    move-result v0

    return v0
.end method

###### Class android.support.v4.widget.SearchViewCompat.SearchViewCompatIcsImpl (android.support.v4.widget.SearchViewCompat$SearchViewCompatIcsImpl)
.class Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl;
.super Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;
.source "SearchViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SearchViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchViewCompatIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 234
    invoke-direct {p0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public newSearchView(Landroid/content/Context;)Landroid/view/View;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatIcs;->newSearchView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setImeOptions(Landroid/view/View;I)V
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "imeOptions"    # I

    .prologue
    .line 243
    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatIcs;->setImeOptions(Landroid/view/View;I)V

    .line 244
    return-void
.end method

.method public setInputType(Landroid/view/View;I)V
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "inputType"    # I

    .prologue
    .line 248
    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatIcs;->setInputType(Landroid/view/View;I)V

    .line 249
    return-void
.end method

###### Class android.support.v4.widget.SearchViewCompat.SearchViewCompatImpl (android.support.v4.widget.SearchViewCompat$SearchViewCompatImpl)
.class interface abstract Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SearchViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SearchViewCompatImpl"
.end annotation


# virtual methods
.method public abstract getQuery(Landroid/view/View;)Ljava/lang/CharSequence;
.end method

.method public abstract isIconified(Landroid/view/View;)Z
.end method

.method public abstract isQueryRefinementEnabled(Landroid/view/View;)Z
.end method

.method public abstract isSubmitButtonEnabled(Landroid/view/View;)Z
.end method

.method public abstract newOnCloseListener(Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;)Ljava/lang/Object;
.end method

.method public abstract newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)Ljava/lang/Object;
.end method

.method public abstract newSearchView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract setIconified(Landroid/view/View;Z)V
.end method

.method public abstract setImeOptions(Landroid/view/View;I)V
.end method

.method public abstract setInputType(Landroid/view/View;I)V
.end method

.method public abstract setMaxWidth(Landroid/view/View;I)V
.end method

.method public abstract setOnCloseListener(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V
.end method

.method public abstract setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V
.end method

.method public abstract setQueryRefinementEnabled(Landroid/view/View;Z)V
.end method

.method public abstract setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V
.end method

.method public abstract setSubmitButtonEnabled(Landroid/view/View;Z)V
.end method

###### Class android.support.v4.widget.SearchViewCompat.SearchViewCompatStubImpl (android.support.v4.widget.SearchViewCompat$SearchViewCompatStubImpl)
.class Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"

# interfaces
.implements Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SearchViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchViewCompatStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuery(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public isIconified(Landroid/view/View;)Z
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public isQueryRefinementEnabled(Landroid/view/View;)Z
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public isSubmitButtonEnabled(Landroid/view/View;)Z
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public newOnCloseListener(Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;)Ljava/lang/Object;
    .registers 3
    .param p1, "listener"    # Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)Ljava/lang/Object;
    .registers 3
    .param p1, "listener"    # Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public newSearchView(Landroid/content/Context;)Landroid/view/View;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public setIconified(Landroid/view/View;Z)V
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "iconify"    # Z

    .prologue
    .line 105
    return-void
.end method

.method public setImeOptions(Landroid/view/View;I)V
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "imeOptions"    # I

    .prologue
    .line 66
    return-void
.end method

.method public setInputType(Landroid/view/View;I)V
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "inputType"    # I

    .prologue
    .line 70
    return-void
.end method

.method public setMaxWidth(Landroid/view/View;I)V
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "maxpixels"    # I

    .prologue
    .line 132
    return-void
.end method

.method public setOnCloseListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1, "searchView"    # Ljava/lang/Object;
    .param p2, "listener"    # Ljava/lang/Object;

    .prologue
    .line 88
    return-void
.end method

.method public setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1, "searchView"    # Ljava/lang/Object;
    .param p2, "listener"    # Ljava/lang/Object;

    .prologue
    .line 79
    return-void
.end method

.method public setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .registers 4
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "query"    # Ljava/lang/CharSequence;
    .param p3, "submit"    # Z

    .prologue
    .line 97
    return-void
.end method

.method public setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 101
    return-void
.end method

.method public setQueryRefinementEnabled(Landroid/view/View;Z)V
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "enable"    # Z

    .prologue
    .line 123
    return-void
.end method

.method public setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "searchableComponent"    # Landroid/content/ComponentName;

    .prologue
    .line 62
    return-void
.end method

.method public setSubmitButtonEnabled(Landroid/view/View;Z)V
    .registers 3
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 114
    return-void
.end method
