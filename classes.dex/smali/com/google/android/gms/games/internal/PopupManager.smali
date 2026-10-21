###### Class com.google.android.gms.games.internal.PopupManager (com.google.android.gms.games.internal.PopupManager)
.class public Lcom/google/android/gms/games/internal/PopupManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;,
        Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;
    }
.end annotation


# instance fields
.field protected Uq:Lcom/google/android/gms/games/internal/GamesClientImpl;

.field protected Ur:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/PopupManager;->Uq:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/games/internal/PopupManager;->zzqr(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;ILcom/google/android/gms/games/internal/PopupManager$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/PopupManager;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;I)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/games/internal/GamesClientImpl;I)Lcom/google/android/gms/games/internal/PopupManager;
    .registers 3

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzavk()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;I)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/android/gms/games/internal/PopupManager;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/PopupManager;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;I)V

    goto :goto_b
.end method


# virtual methods
.method public setGravity(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->Ur:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    iput p1, v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->gravity:I

    return-void
.end method

.method public zzbjo()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->Uq:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/PopupManager;->Ur:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->Us:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/PopupManager;->Ur:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->zzbjn()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public zzbjp()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->Ur:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->zzbjn()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public zzbjq()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->Ur:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->Us:Landroid/os/IBinder;

    return-object v0
.end method

.method public zzbjr()Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->Ur:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    return-object v0
.end method

.method protected zzqr(I)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/games/internal/PopupManager$1;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->Ur:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    return-void
.end method

.method public zzr(Landroid/view/View;)V
    .registers 2

    return-void
.end method

###### Class com.google.android.gms.games.internal.PopupManager.AnonymousClass1 (com.google.android.gms.games.internal.PopupManager$1)
.class synthetic Lcom/google/android/gms/games/internal/PopupManager$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/PopupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.games.internal.PopupManager.PopupLocationInfo (com.google.android.gms.games.internal.PopupManager$PopupLocationInfo)
.class public final Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/PopupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PopupLocationInfo"
.end annotation


# instance fields
.field public Us:Landroid/os/IBinder;

.field public Ut:I

.field public bottom:I

.field public gravity:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method private constructor <init>(ILandroid/os/IBinder;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->Ut:I

    iput v1, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->left:I

    iput v1, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->top:I

    iput v1, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->right:I

    iput v1, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->bottom:I

    iput p1, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->gravity:I

    iput-object p2, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->Us:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/games/internal/PopupManager$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;-><init>(ILandroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public zzbjn()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "popupLocationInfo.gravity"

    iget v2, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "popupLocationInfo.displayId"

    iget v2, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->Ut:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "popupLocationInfo.left"

    iget v2, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->left:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "popupLocationInfo.top"

    iget v2, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "popupLocationInfo.right"

    iget v2, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->right:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "popupLocationInfo.bottom"

    iget v2, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->bottom:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.PopupManager.PopupManagerHCMR1 (com.google.android.gms.games.internal.PopupManager$PopupManagerHCMR1)
.class final Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;
.super Lcom/google/android/gms/games/internal/PopupManager;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/PopupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PopupManagerHCMR1"
.end annotation


# instance fields
.field private SE:Z

.field private Uu:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/games/internal/PopupManager;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;ILcom/google/android/gms/games/internal/PopupManager$1;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->SE:Z

    return-void
.end method

.method private zzs(Landroid/view/View;)V
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v7, 0x1

    const/4 v0, -0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzavo()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Ur:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    iput v0, v5, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->Ut:I

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Ur:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    iput-object v1, v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->Us:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Ur:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    aget v1, v2, v6

    iput v1, v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->left:I

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Ur:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    aget v1, v2, v7

    iput v1, v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->top:I

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Ur:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    aget v1, v2, v6

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->right:I

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Ur:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    aget v1, v2, v7

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->bottom:I

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->SE:Z

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->zzbjo()V

    iput-boolean v6, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->SE:Z

    :cond_50
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Uu:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Uu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->zzs(Landroid/view/View;)V

    goto :goto_4
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->zzs(Landroid/view/View;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Uq:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzbiz()V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public zzbjo()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Ur:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->Us:Landroid/os/IBinder;

    if-eqz v0, :cond_a

    invoke-super {p0}, Lcom/google/android/gms/games/internal/PopupManager;->zzbjo()V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Uu:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->SE:Z

    goto :goto_9

    :cond_12
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected zzqr(I)V
    .registers 4

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    invoke-direct {v0, p1, v1, v1}, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/games/internal/PopupManager$1;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Ur:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    return-void
.end method

.method public zzr(Landroid/view/View;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Uq:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzbiz()V

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Uu:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Uu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Uq:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v0, :cond_28

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_28

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    :cond_28
    if-eqz v0, :cond_3a

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzavn()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Uu:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Uq:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez p1, :cond_67

    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_67

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5f

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    :cond_5f
    const-string v1, "PopupManager"

    const-string v2, "You have not specified a View to use as content view for popups. Falling back to the Activity content view. Note that this may not work as expected in multi-screen environments"

    invoke-static {v1, v2}, Lcom/google/android/gms/games/internal/GamesLog;->zzaf(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :cond_67
    if-eqz p1, :cond_82

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->zzs(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Uu:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_7d
    return-void

    :cond_7e
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_3a

    :cond_82
    const-string v0, "PopupManager"

    const-string v1, "No content view usable to display popups. Popups will not be displayed in response to this client\'s calls. Use setViewForPopups() to set your content view."

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->zzag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d
.end method
