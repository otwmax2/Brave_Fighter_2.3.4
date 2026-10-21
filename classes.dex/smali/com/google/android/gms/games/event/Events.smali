###### Class com.google.android.gms.games.event.Events (com.google.android.gms.games.event.Events)
.class public interface abstract Lcom/google/android/gms/games/event/Events;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/event/Events$LoadEventsResult;
    }
.end annotation


# virtual methods
.method public abstract increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
.end method

.method public abstract load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/event/Events$LoadEventsResult;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract loadByIds(Lcom/google/android/gms/common/api/GoogleApiClient;Z[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Z[",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/event/Events$LoadEventsResult;",
            ">;"
        }
    .end annotation
.end method

###### Class com.google.android.gms.games.event.Events.LoadEventsResult (com.google.android.gms.games.event.Events$LoadEventsResult)
.class public interface abstract Lcom/google/android/gms/games/event/Events$LoadEventsResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/event/Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadEventsResult"
.end annotation


# virtual methods
.method public abstract getEvents()Lcom/google/android/gms/games/event/EventBuffer;
.end method
