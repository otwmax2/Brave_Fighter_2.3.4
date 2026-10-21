###### Class rx.AsyncEmitter (rx.AsyncEmitter)
.class public interface abstract Lrx/AsyncEmitter;
.super Ljava/lang/Object;
.source "AsyncEmitter.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/AsyncEmitter$BackpressureMode;,
        Lrx/AsyncEmitter$Cancellable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation

.annotation build Lrx/annotations/Experimental;
.end annotation


# virtual methods
.method public abstract requested()J
.end method

.method public abstract setCancellation(Lrx/AsyncEmitter$Cancellable;)V
.end method

.method public abstract setSubscription(Lrx/Subscription;)V
.end method

###### Class rx.AsyncEmitter.BackpressureMode (rx.AsyncEmitter$BackpressureMode)
.class public final enum Lrx/AsyncEmitter$BackpressureMode;
.super Ljava/lang/Enum;
.source "AsyncEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/AsyncEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackpressureMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/AsyncEmitter$BackpressureMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx/AsyncEmitter$BackpressureMode;

.field public static final enum BUFFER:Lrx/AsyncEmitter$BackpressureMode;

.field public static final enum DROP:Lrx/AsyncEmitter$BackpressureMode;

.field public static final enum ERROR:Lrx/AsyncEmitter$BackpressureMode;

.field public static final enum LATEST:Lrx/AsyncEmitter$BackpressureMode;

.field public static final enum NONE:Lrx/AsyncEmitter$BackpressureMode;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lrx/AsyncEmitter$BackpressureMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lrx/AsyncEmitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/AsyncEmitter$BackpressureMode;->NONE:Lrx/AsyncEmitter$BackpressureMode;

    .line 82
    new-instance v0, Lrx/AsyncEmitter$BackpressureMode;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lrx/AsyncEmitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/AsyncEmitter$BackpressureMode;->ERROR:Lrx/AsyncEmitter$BackpressureMode;

    .line 86
    new-instance v0, Lrx/AsyncEmitter$BackpressureMode;

    const-string v1, "BUFFER"

    invoke-direct {v0, v1, v4}, Lrx/AsyncEmitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/AsyncEmitter$BackpressureMode;->BUFFER:Lrx/AsyncEmitter$BackpressureMode;

    .line 90
    new-instance v0, Lrx/AsyncEmitter$BackpressureMode;

    const-string v1, "DROP"

    invoke-direct {v0, v1, v5}, Lrx/AsyncEmitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/AsyncEmitter$BackpressureMode;->DROP:Lrx/AsyncEmitter$BackpressureMode;

    .line 95
    new-instance v0, Lrx/AsyncEmitter$BackpressureMode;

    const-string v1, "LATEST"

    invoke-direct {v0, v1, v6}, Lrx/AsyncEmitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/AsyncEmitter$BackpressureMode;->LATEST:Lrx/AsyncEmitter$BackpressureMode;

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/AsyncEmitter$BackpressureMode;

    sget-object v1, Lrx/AsyncEmitter$BackpressureMode;->NONE:Lrx/AsyncEmitter$BackpressureMode;

    aput-object v1, v0, v2

    sget-object v1, Lrx/AsyncEmitter$BackpressureMode;->ERROR:Lrx/AsyncEmitter$BackpressureMode;

    aput-object v1, v0, v3

    sget-object v1, Lrx/AsyncEmitter$BackpressureMode;->BUFFER:Lrx/AsyncEmitter$BackpressureMode;

    aput-object v1, v0, v4

    sget-object v1, Lrx/AsyncEmitter$BackpressureMode;->DROP:Lrx/AsyncEmitter$BackpressureMode;

    aput-object v1, v0, v5

    sget-object v1, Lrx/AsyncEmitter$BackpressureMode;->LATEST:Lrx/AsyncEmitter$BackpressureMode;

    aput-object v1, v0, v6

    sput-object v0, Lrx/AsyncEmitter$BackpressureMode;->$VALUES:[Lrx/AsyncEmitter$BackpressureMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/AsyncEmitter$BackpressureMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lrx/AsyncEmitter$BackpressureMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/AsyncEmitter$BackpressureMode;

    return-object v0
.end method

.method public static values()[Lrx/AsyncEmitter$BackpressureMode;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Lrx/AsyncEmitter$BackpressureMode;->$VALUES:[Lrx/AsyncEmitter$BackpressureMode;

    invoke-virtual {v0}, [Lrx/AsyncEmitter$BackpressureMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/AsyncEmitter$BackpressureMode;

    return-object v0
.end method

###### Class rx.AsyncEmitter.Cancellable (rx.AsyncEmitter$Cancellable)
.class public interface abstract Lrx/AsyncEmitter$Cancellable;
.super Ljava/lang/Object;
.source "AsyncEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/AsyncEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Cancellable"
.end annotation


# virtual methods
.method public abstract cancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
