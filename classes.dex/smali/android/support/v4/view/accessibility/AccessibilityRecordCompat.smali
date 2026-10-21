###### Class android.support.v4.view.accessibility.AccessibilityRecordCompat (android.support.v4.view.accessibility.AccessibilityRecordCompat)
.class public Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordJellyBeanImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsMr1Impl;,
        Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;


# instance fields
.field private final mRecord:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 506
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    .line 507
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordJellyBeanImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordJellyBeanImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    .line 515
    :goto_d
    return-void

    .line 508
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1c

    .line 509
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsMr1Impl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsMr1Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    goto :goto_d

    .line 510
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2a

    .line 511
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    goto :goto_d

    .line 513
    :cond_2a
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    goto :goto_d
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    .line 530
    return-void
.end method

.method public static obtain()Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .registers 2

    .prologue
    .line 560
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    invoke-interface {v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->obtain()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .registers 4
    .param p0, "record"    # Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    .prologue
    .line 550
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v2, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1025
    if-ne p0, p1, :cond_5

    .line 1042
    :cond_4
    :goto_4
    return v1

    .line 1028
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 1029
    goto :goto_4

    .line 1031
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 1032
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 1034
    check-cast v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    .line 1035
    .local v0, "other":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    iget-object v3, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    if-nez v3, :cond_22

    .line 1036
    iget-object v3, v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    if-eqz v3, :cond_4

    move v1, v2

    .line 1037
    goto :goto_4

    .line 1039
    :cond_22
    iget-object v3, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    iget-object v4, v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 1040
    goto :goto_4
.end method

.method public getAddedCount()I
    .registers 3

    .prologue
    .line 880
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getAddedCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getBeforeText()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 950
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 920
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 970
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItemIndex()I
    .registers 3

    .prologue
    .line 743
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getCurrentItemIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFromIndex()I
    .registers 3

    .prologue
    .line 766
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getFromIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getImpl()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 539
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemCount()I
    .registers 3

    .prologue
    .line 723
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getItemCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getMaxScrollX()I
    .registers 3

    .prologue
    .line 845
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getMaxScrollX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getMaxScrollY()I
    .registers 3

    .prologue
    .line 862
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getMaxScrollY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 990
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedCount()I
    .registers 3

    .prologue
    .line 900
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getRemovedCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getScrollX()I
    .registers 3

    .prologue
    .line 809
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getScrollX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getScrollY()I
    .registers 3

    .prologue
    .line 827
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getScrollY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSource()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3

    .prologue
    .line 605
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getSource(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 941
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getText(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToIndex()I
    .registers 3

    .prologue
    .line 790
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getToIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getWindowId()I
    .registers 3

    .prologue
    .line 614
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getWindowId(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1019
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public isChecked()Z
    .registers 3

    .prologue
    .line 623
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->isChecked(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    .line 643
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .registers 3

    .prologue
    .line 683
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->isFullScreen(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .registers 3

    .prologue
    .line 663
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->isPassword(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .registers 3

    .prologue
    .line 703
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->isScrollable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .registers 3

    .prologue
    .line 1014
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->recycle(Ljava/lang/Object;)V

    .line 1015
    return-void
.end method

.method public setAddedCount(I)V
    .registers 4
    .param p1, "addedCount"    # I

    .prologue
    .line 891
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setAddedCount(Ljava/lang/Object;I)V

    .line 892
    return-void
.end method

.method public setBeforeText(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "beforeText"    # Ljava/lang/CharSequence;

    .prologue
    .line 961
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 962
    return-void
.end method

.method public setChecked(Z)V
    .registers 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 634
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setChecked(Ljava/lang/Object;Z)V

    .line 635
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "className"    # Ljava/lang/CharSequence;

    .prologue
    .line 931
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 932
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 981
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 982
    return-void
.end method

.method public setCurrentItemIndex(I)V
    .registers 4
    .param p1, "currentItemIndex"    # I

    .prologue
    .line 754
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setCurrentItemIndex(Ljava/lang/Object;I)V

    .line 755
    return-void
.end method

.method public setEnabled(Z)V
    .registers 4
    .param p1, "isEnabled"    # Z

    .prologue
    .line 654
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setEnabled(Ljava/lang/Object;Z)V

    .line 655
    return-void
.end method

.method public setFromIndex(I)V
    .registers 4
    .param p1, "fromIndex"    # I

    .prologue
    .line 780
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setFromIndex(Ljava/lang/Object;I)V

    .line 781
    return-void
.end method

.method public setFullScreen(Z)V
    .registers 4
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 694
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setFullScreen(Ljava/lang/Object;Z)V

    .line 695
    return-void
.end method

.method public setItemCount(I)V
    .registers 4
    .param p1, "itemCount"    # I

    .prologue
    .line 734
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setItemCount(Ljava/lang/Object;I)V

    .line 735
    return-void
.end method

.method public setMaxScrollX(I)V
    .registers 4
    .param p1, "maxScrollX"    # I

    .prologue
    .line 853
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setMaxScrollX(Ljava/lang/Object;I)V

    .line 854
    return-void
.end method

.method public setMaxScrollY(I)V
    .registers 4
    .param p1, "maxScrollY"    # I

    .prologue
    .line 871
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setMaxScrollY(Ljava/lang/Object;I)V

    .line 872
    return-void
.end method

.method public setParcelableData(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "parcelableData"    # Landroid/os/Parcelable;

    .prologue
    .line 1001
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V

    .line 1002
    return-void
.end method

.method public setPassword(Z)V
    .registers 4
    .param p1, "isPassword"    # Z

    .prologue
    .line 674
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setPassword(Ljava/lang/Object;Z)V

    .line 675
    return-void
.end method

.method public setRemovedCount(I)V
    .registers 4
    .param p1, "removedCount"    # I

    .prologue
    .line 911
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setRemovedCount(Ljava/lang/Object;I)V

    .line 912
    return-void
.end method

.method public setScrollX(I)V
    .registers 4
    .param p1, "scrollX"    # I

    .prologue
    .line 818
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setScrollX(Ljava/lang/Object;I)V

    .line 819
    return-void
.end method

.method public setScrollY(I)V
    .registers 4
    .param p1, "scrollY"    # I

    .prologue
    .line 836
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setScrollY(Ljava/lang/Object;I)V

    .line 837
    return-void
.end method

.method public setScrollable(Z)V
    .registers 4
    .param p1, "scrollable"    # Z

    .prologue
    .line 714
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setScrollable(Ljava/lang/Object;Z)V

    .line 715
    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .registers 4
    .param p1, "source"    # Landroid/view/View;

    .prologue
    .line 571
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setSource(Ljava/lang/Object;Landroid/view/View;)V

    .line 572
    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .registers 5
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    .line 589
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setSource(Ljava/lang/Object;Landroid/view/View;I)V

    .line 590
    return-void
.end method

.method public setToIndex(I)V
    .registers 4
    .param p1, "toIndex"    # I

    .prologue
    .line 800
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setToIndex(Ljava/lang/Object;I)V

    .line 801
    return-void
.end method

###### Class android.support.v4.view.accessibility.AccessibilityRecordCompat.AccessibilityRecordIcsImpl (android.support.v4.view.accessibility.AccessibilityRecordCompat$AccessibilityRecordIcsImpl)
.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityRecordIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 268
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddedCount(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 281
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getAddedCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 286
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 291
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 296
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItemIndex(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 301
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getCurrentItemIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFromIndex(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 306
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getFromIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getItemCount(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 311
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getItemCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 316
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedCount(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 321
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getRemovedCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getScrollX(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 326
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getScrollX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getScrollY(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 331
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getScrollY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSource(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 336
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getSource(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getText(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getText(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToIndex(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 347
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getToIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getWindowId(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 352
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getWindowId(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isChecked(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 357
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isChecked(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 362
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFullScreen(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 367
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isFullScreen(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPassword(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 372
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isPassword(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isScrollable(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 377
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isScrollable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public obtain()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 271
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->obtain()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 276
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public recycle(Ljava/lang/Object;)V
    .registers 2
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 382
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->recycle(Ljava/lang/Object;)V

    .line 383
    return-void
.end method

.method public setAddedCount(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "addedCount"    # I

    .prologue
    .line 387
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setAddedCount(Ljava/lang/Object;I)V

    .line 388
    return-void
.end method

.method public setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "beforeText"    # Ljava/lang/CharSequence;

    .prologue
    .line 392
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 393
    return-void
.end method

.method public setChecked(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "isChecked"    # Z

    .prologue
    .line 397
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setChecked(Ljava/lang/Object;Z)V

    .line 398
    return-void
.end method

.method public setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "className"    # Ljava/lang/CharSequence;

    .prologue
    .line 402
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 403
    return-void
.end method

.method public setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 407
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 408
    return-void
.end method

.method public setCurrentItemIndex(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "currentItemIndex"    # I

    .prologue
    .line 412
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setCurrentItemIndex(Ljava/lang/Object;I)V

    .line 413
    return-void
.end method

.method public setEnabled(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "isEnabled"    # Z

    .prologue
    .line 417
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setEnabled(Ljava/lang/Object;Z)V

    .line 418
    return-void
.end method

.method public setFromIndex(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "fromIndex"    # I

    .prologue
    .line 422
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setFromIndex(Ljava/lang/Object;I)V

    .line 423
    return-void
.end method

.method public setFullScreen(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "isFullScreen"    # Z

    .prologue
    .line 427
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setFullScreen(Ljava/lang/Object;Z)V

    .line 428
    return-void
.end method

.method public setItemCount(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "itemCount"    # I

    .prologue
    .line 432
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setItemCount(Ljava/lang/Object;I)V

    .line 433
    return-void
.end method

.method public setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "parcelableData"    # Landroid/os/Parcelable;

    .prologue
    .line 437
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V

    .line 438
    return-void
.end method

.method public setPassword(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "isPassword"    # Z

    .prologue
    .line 442
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setPassword(Ljava/lang/Object;Z)V

    .line 443
    return-void
.end method

.method public setRemovedCount(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "removedCount"    # I

    .prologue
    .line 447
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setRemovedCount(Ljava/lang/Object;I)V

    .line 448
    return-void
.end method

.method public setScrollX(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "scrollX"    # I

    .prologue
    .line 452
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setScrollX(Ljava/lang/Object;I)V

    .line 453
    return-void
.end method

.method public setScrollY(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "scrollY"    # I

    .prologue
    .line 457
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setScrollY(Ljava/lang/Object;I)V

    .line 458
    return-void
.end method

.method public setScrollable(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "scrollable"    # Z

    .prologue
    .line 462
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setScrollable(Ljava/lang/Object;Z)V

    .line 463
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "source"    # Landroid/view/View;

    .prologue
    .line 467
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setSource(Ljava/lang/Object;Landroid/view/View;)V

    .line 468
    return-void
.end method

.method public setToIndex(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "toIndex"    # I

    .prologue
    .line 472
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setToIndex(Ljava/lang/Object;I)V

    .line 473
    return-void
.end method

###### Class android.support.v4.view.accessibility.AccessibilityRecordCompat.AccessibilityRecordIcsMr1Impl (android.support.v4.view.accessibility.AccessibilityRecordCompat$AccessibilityRecordIcsMr1Impl)
.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsMr1Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityRecordIcsMr1Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 476
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxScrollX(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 479
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcsMr1;->getMaxScrollX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getMaxScrollY(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 484
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcsMr1;->getMaxScrollY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setMaxScrollX(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "maxScrollX"    # I

    .prologue
    .line 489
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcsMr1;->setMaxScrollX(Ljava/lang/Object;I)V

    .line 490
    return-void
.end method

.method public setMaxScrollY(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "maxScrollY"    # I

    .prologue
    .line 494
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcsMr1;->setMaxScrollY(Ljava/lang/Object;I)V

    .line 495
    return-void
.end method

###### Class android.support.v4.view.accessibility.AccessibilityRecordCompat.AccessibilityRecordImpl (android.support.v4.view.accessibility.AccessibilityRecordCompat$AccessibilityRecordImpl)
.class interface abstract Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AccessibilityRecordImpl"
.end annotation


# virtual methods
.method public abstract getAddedCount(Ljava/lang/Object;)I
.end method

.method public abstract getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;
.end method

.method public abstract getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
.end method

.method public abstract getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
.end method

.method public abstract getCurrentItemIndex(Ljava/lang/Object;)I
.end method

.method public abstract getFromIndex(Ljava/lang/Object;)I
.end method

.method public abstract getItemCount(Ljava/lang/Object;)I
.end method

.method public abstract getMaxScrollX(Ljava/lang/Object;)I
.end method

.method public abstract getMaxScrollY(Ljava/lang/Object;)I
.end method

.method public abstract getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;
.end method

.method public abstract getRemovedCount(Ljava/lang/Object;)I
.end method

.method public abstract getScrollX(Ljava/lang/Object;)I
.end method

.method public abstract getScrollY(Ljava/lang/Object;)I
.end method

.method public abstract getSource(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end method

.method public abstract getText(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getToIndex(Ljava/lang/Object;)I
.end method

.method public abstract getWindowId(Ljava/lang/Object;)I
.end method

.method public abstract isChecked(Ljava/lang/Object;)Z
.end method

.method public abstract isEnabled(Ljava/lang/Object;)Z
.end method

.method public abstract isFullScreen(Ljava/lang/Object;)Z
.end method

.method public abstract isPassword(Ljava/lang/Object;)Z
.end method

.method public abstract isScrollable(Ljava/lang/Object;)Z
.end method

.method public abstract obtain()Ljava/lang/Object;
.end method

.method public abstract obtain(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract recycle(Ljava/lang/Object;)V
.end method

.method public abstract setAddedCount(Ljava/lang/Object;I)V
.end method

.method public abstract setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
.end method

.method public abstract setChecked(Ljava/lang/Object;Z)V
.end method

.method public abstract setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
.end method

.method public abstract setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
.end method

.method public abstract setCurrentItemIndex(Ljava/lang/Object;I)V
.end method

.method public abstract setEnabled(Ljava/lang/Object;Z)V
.end method

.method public abstract setFromIndex(Ljava/lang/Object;I)V
.end method

.method public abstract setFullScreen(Ljava/lang/Object;Z)V
.end method

.method public abstract setItemCount(Ljava/lang/Object;I)V
.end method

.method public abstract setMaxScrollX(Ljava/lang/Object;I)V
.end method

.method public abstract setMaxScrollY(Ljava/lang/Object;I)V
.end method

.method public abstract setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V
.end method

.method public abstract setPassword(Ljava/lang/Object;Z)V
.end method

.method public abstract setRemovedCount(Ljava/lang/Object;I)V
.end method

.method public abstract setScrollX(Ljava/lang/Object;I)V
.end method

.method public abstract setScrollY(Ljava/lang/Object;I)V
.end method

.method public abstract setScrollable(Ljava/lang/Object;Z)V
.end method

.method public abstract setSource(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public abstract setSource(Ljava/lang/Object;Landroid/view/View;I)V
.end method

.method public abstract setToIndex(Ljava/lang/Object;I)V
.end method

###### Class android.support.v4.view.accessibility.AccessibilityRecordCompat.AccessibilityRecordJellyBeanImpl (android.support.v4.view.accessibility.AccessibilityRecordCompat$AccessibilityRecordJellyBeanImpl)
.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordJellyBeanImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsMr1Impl;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityRecordJellyBeanImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 498
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsMr1Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public setSource(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "virtualDescendantId"    # I

    .prologue
    .line 501
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatJellyBean;->setSource(Ljava/lang/Object;Landroid/view/View;I)V

    .line 502
    return-void
.end method

###### Class android.support.v4.view.accessibility.AccessibilityRecordCompat.AccessibilityRecordStubImpl (android.support.v4.view.accessibility.AccessibilityRecordCompat$AccessibilityRecordStubImpl)
.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"

# interfaces
.implements Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityRecordStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddedCount(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentItemIndex(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getFromIndex(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public getItemCount(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxScrollX(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxScrollY(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemovedCount(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getScrollX(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public getScrollY(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getSource(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToIndex(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowId(Ljava/lang/Object;)I
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public isFullScreen(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public isPassword(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public isScrollable(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public obtain()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public recycle(Ljava/lang/Object;)V
    .registers 2
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 181
    return-void
.end method

.method public setAddedCount(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "addedCount"    # I

    .prologue
    .line 185
    return-void
.end method

.method public setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "beforeText"    # Ljava/lang/CharSequence;

    .prologue
    .line 189
    return-void
.end method

.method public setChecked(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "isChecked"    # Z

    .prologue
    .line 193
    return-void
.end method

.method public setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "className"    # Ljava/lang/CharSequence;

    .prologue
    .line 197
    return-void
.end method

.method public setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 201
    return-void
.end method

.method public setCurrentItemIndex(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "currentItemIndex"    # I

    .prologue
    .line 205
    return-void
.end method

.method public setEnabled(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "isEnabled"    # Z

    .prologue
    .line 209
    return-void
.end method

.method public setFromIndex(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "fromIndex"    # I

    .prologue
    .line 213
    return-void
.end method

.method public setFullScreen(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "isFullScreen"    # Z

    .prologue
    .line 217
    return-void
.end method

.method public setItemCount(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "itemCount"    # I

    .prologue
    .line 221
    return-void
.end method

.method public setMaxScrollX(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "maxScrollX"    # I

    .prologue
    .line 225
    return-void
.end method

.method public setMaxScrollY(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "maxScrollY"    # I

    .prologue
    .line 229
    return-void
.end method

.method public setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "parcelableData"    # Landroid/os/Parcelable;

    .prologue
    .line 233
    return-void
.end method

.method public setPassword(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "isPassword"    # Z

    .prologue
    .line 237
    return-void
.end method

.method public setRemovedCount(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "removedCount"    # I

    .prologue
    .line 241
    return-void
.end method

.method public setScrollX(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "scrollX"    # I

    .prologue
    .line 245
    return-void
.end method

.method public setScrollY(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "scrollY"    # I

    .prologue
    .line 249
    return-void
.end method

.method public setScrollable(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "scrollable"    # Z

    .prologue
    .line 253
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "source"    # Landroid/view/View;

    .prologue
    .line 257
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "virtualDescendantId"    # I

    .prologue
    .line 261
    return-void
.end method

.method public setToIndex(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "toIndex"    # I

    .prologue
    .line 265
    return-void
.end method
