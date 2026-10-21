###### Class com.google.android.gms.internal.zzbr (com.google.android.gms.internal.zzbr)
.class public Lcom/google/android/gms/internal/zzbr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbr$zza;
    }
.end annotation


# static fields
.field public static final zzaho:Lcom/google/android/gms/internal/zzbr;

.field private static zzahp:Lcom/google/android/gms/internal/zzbr$zza;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zzbr;

    const-string v1, "@@ContextManagerNullAccount@@"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbr;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbr;->zzaho:Lcom/google/android/gms/internal/zzbr;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzbr;->zzahp:Lcom/google/android/gms/internal/zzbr$zza;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzhs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbr;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/zzbr;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/zzbr;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_3
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbr;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "#account#"

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzbr.zza (com.google.android.gms.internal.zzbr$zza)
.class public interface abstract Lcom/google/android/gms/internal/zzbr$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zza"
.end annotation
