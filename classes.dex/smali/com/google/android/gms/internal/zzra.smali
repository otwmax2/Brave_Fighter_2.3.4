###### Class com.google.android.gms.internal.zzra (com.google.android.gms.internal.zzra)
.class public final Lcom/google/android/gms/internal/zzra;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Lcom/google/android/gms/internal/zzqp;


# static fields
.field private static vb:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzra;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private vc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzqo;",
            ">;"
        }
    .end annotation
.end field

.field private vd:Landroid/os/Bundle;

.field private zzblz:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzra;->vb:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->vc:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzra;->zzblz:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzra;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzra;->zzblz:I

    return v0
.end method

.method public static zza(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/internal/zzra;
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/zzra;->vb:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzra;

    if-eqz v0, :cond_13

    :goto_12
    return-object v0

    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "SupportLifecycleFragmentImpl"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzra;
    :try_end_1f
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_1f} :catch_48

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzra;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_3d

    :cond_27
    new-instance v0, Lcom/google/android/gms/internal/zzra;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzra;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "SupportLifecycleFragmentImpl"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_3d
    sget-object v1, Lcom/google/android/gms/internal/zzra;->vb:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :catch_48
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzra;)Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->vd:Landroid/os/Bundle;

    return-object v0
.end method

.method private zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzqo;)V
    .registers 5
    .param p2    # Lcom/google/android/gms/internal/zzqo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/google/android/gms/internal/zzra;->zzblz:I

    if-lez v0, :cond_15

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/gms/internal/zzra$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/zzra$1;-><init>(Lcom/google/android/gms/internal/zzra;Lcom/google/android/gms/internal/zzqo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->vc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqo;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzqo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->vc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzqo;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzra;->zzblz:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzra;->vd:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->vc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzqo;

    if-eqz p1, :cond_34

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_30
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqo;->onCreate(Landroid/os/Bundle;)V

    goto :goto_12

    :cond_34
    const/4 v0, 0x0

    goto :goto_30

    :cond_36
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-nez p1, :cond_6

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->vc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzqo;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzqo;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_10
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzra;->zzblz:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->vc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqo;->onStart()V

    goto :goto_10

    :cond_20
    return-void
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/zzra;->zzblz:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->vc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqo;->onStop()V

    goto :goto_10

    :cond_20
    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzqo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzqo;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->vc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqo;

    return-object v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzqo;)V
    .registers 6
    .param p2    # Lcom/google/android/gms/internal/zzqo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->vc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->vc:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzra;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzqo;)V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "LifecycleCallback with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already added to this fragment."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic zzaqp()Landroid/app/Activity;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->zzaqr()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public zzaqr()Landroid/support/v4/app/FragmentActivity;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzra.AnonymousClass1 (com.google.android.gms.internal.zzra$1)
.class Lcom/google/android/gms/internal/zzra$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzra;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzqo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ve:Lcom/google/android/gms/internal/zzqo;

.field final synthetic vj:Lcom/google/android/gms/internal/zzra;

.field final synthetic zzap:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzra;Lcom/google/android/gms/internal/zzqo;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzra$1;->vj:Lcom/google/android/gms/internal/zzra;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzra$1;->ve:Lcom/google/android/gms/internal/zzqo;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzra$1;->zzap:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra$1;->vj:Lcom/google/android/gms/internal/zzra;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzra;->zza(Lcom/google/android/gms/internal/zzra;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_22

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra$1;->ve:Lcom/google/android/gms/internal/zzqo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra$1;->vj:Lcom/google/android/gms/internal/zzra;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzra;->zzb(Lcom/google/android/gms/internal/zzra;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra$1;->vj:Lcom/google/android/gms/internal/zzra;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzra;->zzb(Lcom/google/android/gms/internal/zzra;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzra$1;->zzap:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_1f
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqo;->onCreate(Landroid/os/Bundle;)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra$1;->vj:Lcom/google/android/gms/internal/zzra;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzra;->zza(Lcom/google/android/gms/internal/zzra;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra$1;->ve:Lcom/google/android/gms/internal/zzqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqo;->onStart()V

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzra$1;->vj:Lcom/google/android/gms/internal/zzra;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzra;->zza(Lcom/google/android/gms/internal/zzra;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra$1;->ve:Lcom/google/android/gms/internal/zzqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqo;->onStop()V

    :cond_3e
    return-void

    :cond_3f
    const/4 v0, 0x0

    goto :goto_1f
.end method
