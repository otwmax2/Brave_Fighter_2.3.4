###### Class com.google.android.gms.flags.impl.zzb (com.google.android.gms.flags.impl.zzb)
.class public Lcom/google/android/gms/flags/impl/zzb;
.super Ljava/lang/Object;


# static fields
.field private static QA:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/flags/impl/zzb;->QA:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static zzn(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    const-class v1, Landroid/content/SharedPreferences;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/flags/impl/zzb;->QA:Landroid/content/SharedPreferences;

    if-nez v0, :cond_14

    new-instance v0, Lcom/google/android/gms/flags/impl/zzb$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/flags/impl/zzb$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzui;->zzb(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    sput-object v0, Lcom/google/android/gms/flags/impl/zzb;->QA:Landroid/content/SharedPreferences;

    :cond_14
    sget-object v0, Lcom/google/android/gms/flags/impl/zzb;->QA:Landroid/content/SharedPreferences;

    monitor-exit v1

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

###### Class com.google.android.gms.flags.impl.zzb.AnonymousClass1 (com.google.android.gms.flags.impl.zzb$1)
.class final Lcom/google/android/gms/flags/impl/zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/flags/impl/zzb;->zzn(Landroid/content/Context;)Landroid/content/SharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaky:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/flags/impl/zzb$1;->zzaky:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/flags/impl/zzb$1;->zzbfv()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public zzbfv()Landroid/content/SharedPreferences;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/flags/impl/zzb$1;->zzaky:Landroid/content/Context;

    const-string v1, "google_sdk_flags"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
