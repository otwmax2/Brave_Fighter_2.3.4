###### Class com.google.android.gms.analytics.Logger (com.google.android.gms.analytics.Logger)
.class public interface abstract Lcom/google/android/gms/analytics/Logger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/Logger$LogLevel;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract error(Ljava/lang/Exception;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract error(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLogLevel()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract info(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setLogLevel(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract verbose(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract warn(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

###### Class com.google.android.gms.analytics.Logger.LogLevel (com.google.android.gms.analytics.Logger$LogLevel)
.class public Lcom/google/android/gms/analytics/Logger$LogLevel;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogLevel"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ERROR:I = 0x3

.field public static final INFO:I = 0x1

.field public static final VERBOSE:I = 0x0

.field public static final WARNING:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
