###### Class com.google.android.gms.common.util.zzt (com.google.android.gms.common.util.zzt)
.class public Lcom/google/android/gms/common/util/zzt;
.super Ljava/lang/Object;


# static fields
.field private static AY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/util/zzt;->AY:Ljava/lang/String;

    return-void
.end method

.method public static zzavu()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzt;->zzgy(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzavv()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/util/zzt;->AY:Ljava/lang/String;

    if-nez v0, :cond_e

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzt;->zzgy(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzt;->AY:Ljava/lang/String;

    :cond_e
    sget-object v0, Lcom/google/android/gms/common/util/zzt;->AY:Ljava/lang/String;

    return-object v0
.end method

.method private static zzgy(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x19

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cmdline"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_26} :catch_3f
    .catchall {:try_start_1 .. :try_end_26} :catchall_5b

    :try_start_26
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2d} :catch_71
    .catchall {:try_start_26 .. :try_end_2d} :catchall_6f

    move-result-object v0

    if-eqz v2, :cond_33

    :try_start_30
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    :cond_33
    :goto_33
    return-object v0

    :catch_34
    move-exception v1

    const-string v2, "ProcessUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    :catch_3f
    move-exception v1

    move-object v2, v0

    :goto_41
    :try_start_41
    const-string v3, "ProcessUtils"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_6f

    if-eqz v2, :cond_33

    :try_start_4c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_33

    :catch_50
    move-exception v1

    const-string v2, "ProcessUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    :catchall_5b
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5e
    if-eqz v2, :cond_63

    :try_start_60
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_64

    :cond_63
    :goto_63
    throw v0

    :catch_64
    move-exception v1

    const-string v2, "ProcessUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    :catchall_6f
    move-exception v0

    goto :goto_5e

    :catch_71
    move-exception v1

    goto :goto_41
.end method
