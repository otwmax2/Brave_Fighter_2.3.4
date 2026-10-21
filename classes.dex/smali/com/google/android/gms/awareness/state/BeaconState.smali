###### Class com.google.android.gms.awareness.state.BeaconState (com.google.android.gms.awareness.state.BeaconState)
.class public interface abstract Lcom/google/android/gms/awareness/state/BeaconState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;,
        Lcom/google/android/gms/awareness/state/BeaconState$BeaconInfo;
    }
.end annotation


# virtual methods
.method public abstract getBeaconInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/awareness/state/BeaconState$BeaconInfo;",
            ">;"
        }
    .end annotation
.end method

###### Class com.google.android.gms.awareness.state.BeaconState.BeaconInfo (com.google.android.gms.awareness.state.BeaconState$BeaconInfo)
.class public interface abstract Lcom/google/android/gms/awareness/state/BeaconState$BeaconInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/awareness/state/BeaconState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BeaconInfo"
.end annotation


# virtual methods
.method public abstract getContent()[B
.end method

.method public abstract getNamespace()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

###### Class com.google.android.gms.awareness.state.BeaconState.TypeFilter (com.google.android.gms.awareness.state.BeaconState$TypeFilter)
.class public abstract Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/awareness/state/BeaconState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TypeFilter"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method public static with(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;
    .registers 3

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static with(Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;
    .registers 4

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method
