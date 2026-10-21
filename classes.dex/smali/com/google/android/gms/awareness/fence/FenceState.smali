###### Class com.google.android.gms.awareness.fence.FenceState (com.google.android.gms.awareness.fence.FenceState)
.class public abstract Lcom/google/android/gms/awareness/fence/FenceState;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/awareness/fence/FenceState$State;
    }
.end annotation


# static fields
.field public static final FALSE:I = 0x1

.field public static final TRUE:I = 0x2

.field public static final UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method public static extract(Landroid/content/Intent;)Lcom/google/android/gms/awareness/fence/FenceState;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->extract(Landroid/content/Intent;)Lcom/google/android/gms/awareness/fence/FenceState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getCurrentState()I
.end method

.method public abstract getFenceKey()Ljava/lang/String;
.end method

.method public abstract getLastFenceUpdateTimeMillis()J
.end method

.method public abstract getPreviousState()I
.end method

###### Class com.google.android.gms.awareness.fence.FenceState.State (com.google.android.gms.awareness.fence.FenceState$State)
.class public interface abstract annotation Lcom/google/android/gms/awareness/fence/FenceState$State;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/awareness/fence/FenceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "State"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
