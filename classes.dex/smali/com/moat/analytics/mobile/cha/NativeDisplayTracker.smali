###### Class com.moat.analytics.mobile.cha.NativeDisplayTracker (com.moat.analytics.mobile.cha.NativeDisplayTracker)
.class public interface abstract Lcom/moat/analytics/mobile/cha/NativeDisplayTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/UiThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;
    }
.end annotation


# virtual methods
.method public abstract removeListener()V
.end method

.method public abstract reportUserInteractionEvent(Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;)V
.end method

.method public abstract setActivity(Landroid/app/Activity;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setListener(Lcom/moat/analytics/mobile/cha/TrackerListener;)V
.end method

.method public abstract startTracking()V
.end method

.method public abstract stopTracking()V
.end method

###### Class com.moat.analytics.mobile.cha.NativeDisplayTracker.MoatUserInteractionType (com.moat.analytics.mobile.cha.NativeDisplayTracker$MoatUserInteractionType)
.class public final enum Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/cha/NativeDisplayTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MoatUserInteractionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLICK:Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;

.field public static final enum TOUCH:Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;

.field private static final synthetic ˏ:[Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;

    const-string v1, "TOUCH"

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;->TOUCH:Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;

    .line 25
    new-instance v0, Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v3}, Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;->CLICK:Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;

    sget-object v1, Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;->TOUCH:Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;->CLICK:Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;->ˏ:[Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;
    .registers 2

    .prologue
    .line 21
    const-class v0, Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;

    return-object v0
.end method

.method public static values()[Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;->ˏ:[Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;

    invoke-virtual {v0}, [Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;

    return-object v0
.end method
