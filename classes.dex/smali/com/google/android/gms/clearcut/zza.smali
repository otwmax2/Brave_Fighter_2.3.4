###### Class com.google.android.gms.clearcut.zza (com.google.android.gms.clearcut.zza)
.class public Lcom/google/android/gms/clearcut/zza;
.super Ljava/lang/Object;


# static fields
.field private static pN:I

.field public static final pO:Lcom/google/android/gms/clearcut/zza;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/clearcut/zza;->pN:I

    new-instance v0, Lcom/google/android/gms/clearcut/zza;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/zza;->pO:Lcom/google/android/gms/clearcut/zza;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzbk(Landroid/content/Context;)I
    .registers 5

    sget v0, Lcom/google/android/gms/clearcut/zza;->pN:I

    if-gez v0, :cond_14

    const-string v0, "bootCount"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "bootCount"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/google/android/gms/clearcut/zza;->pN:I

    :cond_14
    sget v0, Lcom/google/android/gms/clearcut/zza;->pN:I

    return v0
.end method
