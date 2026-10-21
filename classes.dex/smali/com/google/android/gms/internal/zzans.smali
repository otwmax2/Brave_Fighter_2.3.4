###### Class com.google.android.gms.internal.zzans (com.google.android.gms.internal.zzans)
.class public final Lcom/google/android/gms/internal/zzans;
.super Ljava/lang/Object;


# instance fields
.field private final ben:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzamu",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzamu",
            "<*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzans;->ben:Ljava/util/Map;

    return-void
.end method

.method private zzc(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanx;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/google/android/gms/internal/zzanx",
            "<TT;>;"
        }
    .end annotation

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/google/android/gms/internal/zzans$7;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzans$7;-><init>(Lcom/google/android/gms/internal/zzans;)V

    :goto_15
    return-object v0

    :cond_16
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Lcom/google/android/gms/internal/zzans$8;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzans$8;-><init>(Lcom/google/android/gms/internal/zzans;Ljava/lang/reflect/Type;)V

    goto :goto_15

    :cond_24
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Lcom/google/android/gms/internal/zzans$9;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzans$9;-><init>(Lcom/google/android/gms/internal/zzans;)V

    goto :goto_15

    :cond_32
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Lcom/google/android/gms/internal/zzans$10;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzans$10;-><init>(Lcom/google/android/gms/internal/zzans;)V

    goto :goto_15

    :cond_40
    new-instance v0, Lcom/google/android/gms/internal/zzans$11;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzans$11;-><init>(Lcom/google/android/gms/internal/zzans;)V

    goto :goto_15

    :cond_46
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_85

    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5c

    new-instance v0, Lcom/google/android/gms/internal/zzans$12;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzans$12;-><init>(Lcom/google/android/gms/internal/zzans;)V

    goto :goto_15

    :cond_5c
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_7f

    const-class v0, Ljava/lang/String;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaoo;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzaoo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaoo;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7f

    new-instance v0, Lcom/google/android/gms/internal/zzans$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzans$2;-><init>(Lcom/google/android/gms/internal/zzans;)V

    goto :goto_15

    :cond_7f
    new-instance v0, Lcom/google/android/gms/internal/zzans$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzans$3;-><init>(Lcom/google/android/gms/internal/zzans;)V

    goto :goto_15

    :cond_85
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private zzd(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanx;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/google/android/gms/internal/zzanx",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzans$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/zzans$4;-><init>(Lcom/google/android/gms/internal/zzans;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private zzl(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanx;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/google/android/gms/internal/zzanx",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/zzans$6;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzans$6;-><init>(Lcom/google/android/gms/internal/zzans;Ljava/lang/reflect/Constructor;)V
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_16} :catch_17

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzans;->ben:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzanx;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzaoo",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzanx",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoo;->t()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoo;->s()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzans;->ben:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzamu;

    if-eqz v0, :cond_19

    new-instance v1, Lcom/google/android/gms/internal/zzans$1;

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/zzans$1;-><init>(Lcom/google/android/gms/internal/zzans;Lcom/google/android/gms/internal/zzamu;Ljava/lang/reflect/Type;)V

    move-object v0, v1

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/zzans;->ben:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzamu;

    if-eqz v0, :cond_2a

    new-instance v1, Lcom/google/android/gms/internal/zzans$5;

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/zzans$5;-><init>(Lcom/google/android/gms/internal/zzans;Lcom/google/android/gms/internal/zzamu;Ljava/lang/reflect/Type;)V

    move-object v0, v1

    goto :goto_18

    :cond_2a
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzans;->zzl(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanx;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/zzans;->zzc(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanx;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/zzans;->zzd(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanx;

    move-result-object v0

    goto :goto_18
.end method

###### Class com.google.android.gms.internal.zzans.AnonymousClass1 (com.google.android.gms.internal.zzans$1)
.class Lcom/google/android/gms/internal/zzans$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzans;->zzb(Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzanx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzanx",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic beN:Lcom/google/android/gms/internal/zzamu;

.field final synthetic beO:Ljava/lang/reflect/Type;

.field final synthetic beP:Lcom/google/android/gms/internal/zzans;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzans;Lcom/google/android/gms/internal/zzamu;Ljava/lang/reflect/Type;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzans$1;->beP:Lcom/google/android/gms/internal/zzans;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzans$1;->beN:Lcom/google/android/gms/internal/zzamu;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzans$1;->beO:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzans$1;->beN:Lcom/google/android/gms/internal/zzamu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzans$1;->beO:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzamu;->zza(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzans.AnonymousClass10 (com.google.android.gms.internal.zzans$10)
.class Lcom/google/android/gms/internal/zzans$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzans;->zzc(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzanx",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic beP:Lcom/google/android/gms/internal/zzans;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzans;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzans$10;->beP:Lcom/google/android/gms/internal/zzans;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzans.AnonymousClass11 (com.google.android.gms.internal.zzans$11)
.class Lcom/google/android/gms/internal/zzans$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzans;->zzc(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzanx",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic beP:Lcom/google/android/gms/internal/zzans;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzans;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzans$11;->beP:Lcom/google/android/gms/internal/zzans;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzans.AnonymousClass12 (com.google.android.gms.internal.zzans$12)
.class Lcom/google/android/gms/internal/zzans$12;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzans;->zzc(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzanx",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic beP:Lcom/google/android/gms/internal/zzans;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzans;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzans$12;->beP:Lcom/google/android/gms/internal/zzans;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzans.AnonymousClass2 (com.google.android.gms.internal.zzans$2)
.class Lcom/google/android/gms/internal/zzans$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzans;->zzc(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzanx",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic beP:Lcom/google/android/gms/internal/zzans;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzans;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzans$2;->beP:Lcom/google/android/gms/internal/zzans;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzans.AnonymousClass3 (com.google.android.gms.internal.zzans$3)
.class Lcom/google/android/gms/internal/zzans$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzans;->zzc(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzanx",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic beP:Lcom/google/android/gms/internal/zzans;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzans;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzans$3;->beP:Lcom/google/android/gms/internal/zzans;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzanw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzanw;-><init>()V

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzans.AnonymousClass4 (com.google.android.gms.internal.zzans$4)
.class Lcom/google/android/gms/internal/zzans$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzans;->zzd(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzanx",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic beO:Ljava/lang/reflect/Type;

.field final synthetic beP:Lcom/google/android/gms/internal/zzans;

.field private final beQ:Lcom/google/android/gms/internal/zzaoa;

.field final synthetic beR:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzans;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzans$4;->beP:Lcom/google/android/gms/internal/zzans;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzans$4;->beR:Ljava/lang/Class;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzans$4;->beO:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzaoa;->f()Lcom/google/android/gms/internal/zzaoa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzans$4;->beQ:Lcom/google/android/gms/internal/zzaoa;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzans$4;->beQ:Lcom/google/android/gms/internal/zzaoa;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzans$4;->beR:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaoa;->zzf(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzans$4;->beO:Ljava/lang/reflect/Type;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x74

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unable to invoke no-args constructor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Register an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class com.google.android.gms.internal.zzans.AnonymousClass5 (com.google.android.gms.internal.zzans$5)
.class Lcom/google/android/gms/internal/zzans$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzans;->zzb(Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzanx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzanx",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic beO:Ljava/lang/reflect/Type;

.field final synthetic beP:Lcom/google/android/gms/internal/zzans;

.field final synthetic beS:Lcom/google/android/gms/internal/zzamu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzans;Lcom/google/android/gms/internal/zzamu;Ljava/lang/reflect/Type;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzans$5;->beP:Lcom/google/android/gms/internal/zzans;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzans$5;->beS:Lcom/google/android/gms/internal/zzamu;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzans$5;->beO:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzans$5;->beS:Lcom/google/android/gms/internal/zzamu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzans$5;->beO:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzamu;->zza(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzans.AnonymousClass6 (com.google.android.gms.internal.zzans$6)
.class Lcom/google/android/gms/internal/zzans$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzans;->zzl(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzanx",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic beP:Lcom/google/android/gms/internal/zzans;

.field final synthetic beT:Ljava/lang/reflect/Constructor;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzans;Ljava/lang/reflect/Constructor;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzans$6;->beP:Lcom/google/android/gms/internal/zzans;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzans$6;->beT:Ljava/lang/reflect/Constructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzans$6;->beT:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_6} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_6} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_6} :catch_6c

    move-result-object v0

    return-object v0

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzans$6;->beT:Ljava/lang/reflect/Constructor;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to invoke "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with no args"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_38
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzans$6;->beT:Ljava/lang/reflect/Constructor;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to invoke "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with no args"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_6c
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

###### Class com.google.android.gms.internal.zzans.AnonymousClass7 (com.google.android.gms.internal.zzans$7)
.class Lcom/google/android/gms/internal/zzans$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzans;->zzc(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzanx",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic beP:Lcom/google/android/gms/internal/zzans;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzans;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzans$7;->beP:Lcom/google/android/gms/internal/zzans;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzans.AnonymousClass8 (com.google.android.gms.internal.zzans$8)
.class Lcom/google/android/gms/internal/zzans$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzans;->zzc(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzanx",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic beO:Ljava/lang/reflect/Type;

.field final synthetic beP:Lcom/google/android/gms/internal/zzans;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzans;Ljava/lang/reflect/Type;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzans$8;->beP:Lcom/google/android/gms/internal/zzans;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzans$8;->beO:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzans$8;->beO:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzans$8;->beO:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1c

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    :cond_1c
    new-instance v1, Lcom/google/android/gms/internal/zzamz;

    const-string v2, "Invalid EnumSet type: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzans$8;->beO:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_34
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzamz;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_34

    :cond_3e
    new-instance v1, Lcom/google/android/gms/internal/zzamz;

    const-string v2, "Invalid EnumSet type: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzans$8;->beO:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5a

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_56
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzamz;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_56
.end method

###### Class com.google.android.gms.internal.zzans.AnonymousClass9 (com.google.android.gms.internal.zzans$9)
.class Lcom/google/android/gms/internal/zzans$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzans;->zzc(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzanx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzanx",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic beP:Lcom/google/android/gms/internal/zzans;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzans;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzans$9;->beP:Lcom/google/android/gms/internal/zzans;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method
