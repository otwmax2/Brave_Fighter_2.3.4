###### Class rx.BackpressureOverflow (rx.BackpressureOverflow)
.class public final Lrx/BackpressureOverflow;
.super Ljava/lang/Object;
.source "BackpressureOverflow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/BackpressureOverflow$Error;,
        Lrx/BackpressureOverflow$DropLatest;,
        Lrx/BackpressureOverflow$DropOldest;,
        Lrx/BackpressureOverflow$Strategy;
    }
.end annotation

.annotation build Lrx/annotations/Beta;
.end annotation


# static fields
.field public static final ON_OVERFLOW_DEFAULT:Lrx/BackpressureOverflow$Strategy;

.field public static final ON_OVERFLOW_DROP_LATEST:Lrx/BackpressureOverflow$Strategy;

.field public static final ON_OVERFLOW_DROP_OLDEST:Lrx/BackpressureOverflow$Strategy;

.field public static final ON_OVERFLOW_ERROR:Lrx/BackpressureOverflow$Strategy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lrx/BackpressureOverflow$Error;->INSTANCE:Lrx/BackpressureOverflow$Error;

    sput-object v0, Lrx/BackpressureOverflow;->ON_OVERFLOW_ERROR:Lrx/BackpressureOverflow$Strategy;

    .line 37
    sget-object v0, Lrx/BackpressureOverflow;->ON_OVERFLOW_ERROR:Lrx/BackpressureOverflow$Strategy;

    sput-object v0, Lrx/BackpressureOverflow;->ON_OVERFLOW_DEFAULT:Lrx/BackpressureOverflow$Strategy;

    .line 42
    sget-object v0, Lrx/BackpressureOverflow$DropOldest;->INSTANCE:Lrx/BackpressureOverflow$DropOldest;

    sput-object v0, Lrx/BackpressureOverflow;->ON_OVERFLOW_DROP_OLDEST:Lrx/BackpressureOverflow$Strategy;

    .line 47
    sget-object v0, Lrx/BackpressureOverflow$DropLatest;->INSTANCE:Lrx/BackpressureOverflow$DropLatest;

    sput-object v0, Lrx/BackpressureOverflow;->ON_OVERFLOW_DROP_LATEST:Lrx/BackpressureOverflow$Strategy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

###### Class rx.BackpressureOverflow.DropLatest (rx.BackpressureOverflow$DropLatest)
.class Lrx/BackpressureOverflow$DropLatest;
.super Ljava/lang/Object;
.source "BackpressureOverflow.java"

# interfaces
.implements Lrx/BackpressureOverflow$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/BackpressureOverflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DropLatest"
.end annotation


# static fields
.field static final INSTANCE:Lrx/BackpressureOverflow$DropLatest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    new-instance v0, Lrx/BackpressureOverflow$DropLatest;

    invoke-direct {v0}, Lrx/BackpressureOverflow$DropLatest;-><init>()V

    sput-object v0, Lrx/BackpressureOverflow$DropLatest;->INSTANCE:Lrx/BackpressureOverflow$DropLatest;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mayAttemptDrop()Z
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

###### Class rx.BackpressureOverflow.DropOldest (rx.BackpressureOverflow$DropOldest)
.class Lrx/BackpressureOverflow$DropOldest;
.super Ljava/lang/Object;
.source "BackpressureOverflow.java"

# interfaces
.implements Lrx/BackpressureOverflow$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/BackpressureOverflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DropOldest"
.end annotation


# static fields
.field static final INSTANCE:Lrx/BackpressureOverflow$DropOldest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    new-instance v0, Lrx/BackpressureOverflow$DropOldest;

    invoke-direct {v0}, Lrx/BackpressureOverflow$DropOldest;-><init>()V

    sput-object v0, Lrx/BackpressureOverflow$DropOldest;->INSTANCE:Lrx/BackpressureOverflow$DropOldest;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mayAttemptDrop()Z
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

###### Class rx.BackpressureOverflow.Error (rx.BackpressureOverflow$Error)
.class Lrx/BackpressureOverflow$Error;
.super Ljava/lang/Object;
.source "BackpressureOverflow.java"

# interfaces
.implements Lrx/BackpressureOverflow$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/BackpressureOverflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Error"
.end annotation


# static fields
.field static final INSTANCE:Lrx/BackpressureOverflow$Error;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    new-instance v0, Lrx/BackpressureOverflow$Error;

    invoke-direct {v0}, Lrx/BackpressureOverflow$Error;-><init>()V

    sput-object v0, Lrx/BackpressureOverflow$Error;->INSTANCE:Lrx/BackpressureOverflow$Error;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mayAttemptDrop()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrx/exceptions/MissingBackpressureException;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    const-string v1, "Overflowed buffer"

    invoke-direct {v0, v1}, Lrx/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class rx.BackpressureOverflow.Strategy (rx.BackpressureOverflow$Strategy)
.class public interface abstract Lrx/BackpressureOverflow$Strategy;
.super Ljava/lang/Object;
.source "BackpressureOverflow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/BackpressureOverflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Strategy"
.end annotation


# virtual methods
.method public abstract mayAttemptDrop()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrx/exceptions/MissingBackpressureException;
        }
    .end annotation
.end method
