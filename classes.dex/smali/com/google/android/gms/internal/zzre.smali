###### Class com.google.android.gms.internal.zzre (com.google.android.gms.internal.zzre)
.class public abstract Lcom/google/android/gms/internal/zzre;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzre$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static vA:Lcom/google/android/gms/internal/zzre$zza;

.field private static vB:I

.field private static vC:Ljava/lang/String;

.field private static final zzamp:Ljava/lang/Object;


# instance fields
.field private vD:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final zzaxn:Ljava/lang/String;

.field protected final zzaxo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzre;->zzamp:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzre;->vA:Lcom/google/android/gms/internal/zzre$zza;

    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/internal/zzre;->vB:I

    const-string v0, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    sput-object v0, Lcom/google/android/gms/internal/zzre;->vC:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzre;->vD:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzre;->zzaxn:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzre;->zzaxo:Ljava/lang/Object;

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/internal/zzre;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Lcom/google/android/gms/internal/zzre",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzre$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzre$4;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    return-object v0
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/zzre;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/google/android/gms/internal/zzre",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzre$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzre$3;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/internal/zzre;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/google/android/gms/internal/zzre",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzre$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzre$2;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static zzab(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzre;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzre",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzre$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzre$5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic zzaqx()Lcom/google/android/gms/internal/zzre$zza;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static zzm(Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzre;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/zzre",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzre$1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzre$1;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzre;->zzaxn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzre;->zzgz(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzre;->zzaxn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzre;->zzgz(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_16

    move-result-object v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :catchall_16
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method protected abstract zzgz(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

###### Class com.google.android.gms.internal.zzre.AnonymousClass1 (com.google.android.gms.internal.zzre$1)
.class final Lcom/google/android/gms/internal/zzre$1;
.super Lcom/google/android/gms/internal/zzre;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzre;->zzm(Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzre;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzre",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzre;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzgz(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzre$1;->zzha(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected zzha(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/zzre;->zzaqx()Lcom/google/android/gms/internal/zzre$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzre$1;->zzaxn:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzre$1;->zzaxo:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzre$zza;->zza(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzre.AnonymousClass2 (com.google.android.gms.internal.zzre$2)
.class final Lcom/google/android/gms/internal/zzre$2;
.super Lcom/google/android/gms/internal/zzre;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzre;->zza(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/internal/zzre;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzre",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzre;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzgz(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzre$2;->zzhb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected zzhb(Ljava/lang/String;)Ljava/lang/Long;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/zzre;->zzaqx()Lcom/google/android/gms/internal/zzre$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzre$2;->zzaxn:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzre$2;->zzaxo:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzre$zza;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzre.AnonymousClass3 (com.google.android.gms.internal.zzre$3)
.class final Lcom/google/android/gms/internal/zzre$3;
.super Lcom/google/android/gms/internal/zzre;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzre;->zza(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/zzre;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzre",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzre;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzgz(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzre$3;->zzhc(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected zzhc(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/zzre;->zzaqx()Lcom/google/android/gms/internal/zzre$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzre$3;->zzaxn:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzre$3;->zzaxo:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzre$zza;->zzb(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzre.AnonymousClass4 (com.google.android.gms.internal.zzre$4)
.class final Lcom/google/android/gms/internal/zzre$4;
.super Lcom/google/android/gms/internal/zzre;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzre;->zza(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/internal/zzre;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzre",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Float;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzre;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzgz(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzre$4;->zzhd(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected zzhd(Ljava/lang/String;)Ljava/lang/Float;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/zzre;->zzaqx()Lcom/google/android/gms/internal/zzre$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzre$4;->zzaxn:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzre$4;->zzaxo:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzre$zza;->zzb(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzre.AnonymousClass5 (com.google.android.gms.internal.zzre$5)
.class final Lcom/google/android/gms/internal/zzre$5;
.super Lcom/google/android/gms/internal/zzre;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzre;->zzab(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzre;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzre",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzre;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzgz(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzre$5;->zzhe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected zzhe(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/zzre;->zzaqx()Lcom/google/android/gms/internal/zzre$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzre$5;->zzaxn:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzre$5;->zzaxo:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzre$zza;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzre.zza (com.google.android.gms.internal.zzre$zza)
.class interface abstract Lcom/google/android/gms/internal/zzre$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzre;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "zza"
.end annotation


# virtual methods
.method public abstract getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract zza(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
.end method

.method public abstract zzb(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
.end method

.method public abstract zzb(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
.end method
