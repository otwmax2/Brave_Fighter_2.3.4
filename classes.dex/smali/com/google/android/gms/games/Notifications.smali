###### Class com.google.android.gms.games.Notifications (com.google.android.gms.games.Notifications)
.class public interface abstract Lcom/google/android/gms/games/Notifications;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/Notifications$InboxCountResult;,
        Lcom/google/android/gms/games/Notifications$ContactSettingLoadResult;,
        Lcom/google/android/gms/games/Notifications$GameMuteStatusLoadResult;,
        Lcom/google/android/gms/games/Notifications$GameMuteStatusChangeResult;
    }
.end annotation


# static fields
.field public static final NOTIFICATION_TYPES_ALL:I = 0x3f

.field public static final NOTIFICATION_TYPES_MULTIPLAYER:I = 0x3

.field public static final NOTIFICATION_TYPE_INVITATION:I = 0x1

.field public static final NOTIFICATION_TYPE_LEVEL_UP:I = 0x10

.field public static final NOTIFICATION_TYPE_MATCH_UPDATE:I = 0x2

.field public static final NOTIFICATION_TYPE_QUEST:I = 0x8

.field public static final NOTIFICATION_TYPE_REQUEST:I = 0x4


# virtual methods
.method public abstract clear(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
.end method

.method public abstract clearAll(Lcom/google/android/gms/common/api/GoogleApiClient;)V
.end method

###### Class com.google.android.gms.games.Notifications.ContactSettingLoadResult (com.google.android.gms.games.Notifications$ContactSettingLoadResult)
.class public interface abstract Lcom/google/android/gms/games/Notifications$ContactSettingLoadResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContactSettingLoadResult"
.end annotation

###### Class com.google.android.gms.games.Notifications.GameMuteStatusChangeResult (com.google.android.gms.games.Notifications$GameMuteStatusChangeResult)
.class public interface abstract Lcom/google/android/gms/games/Notifications$GameMuteStatusChangeResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GameMuteStatusChangeResult"
.end annotation

###### Class com.google.android.gms.games.Notifications.GameMuteStatusLoadResult (com.google.android.gms.games.Notifications$GameMuteStatusLoadResult)
.class public interface abstract Lcom/google/android/gms/games/Notifications$GameMuteStatusLoadResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GameMuteStatusLoadResult"
.end annotation

###### Class com.google.android.gms.games.Notifications.InboxCountResult (com.google.android.gms.games.Notifications$InboxCountResult)
.class public interface abstract Lcom/google/android/gms/games/Notifications$InboxCountResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InboxCountResult"
.end annotation
