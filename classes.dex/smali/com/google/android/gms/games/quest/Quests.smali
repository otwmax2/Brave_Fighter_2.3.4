###### Class com.google.android.gms.games.quest.Quests (com.google.android.gms.games.quest.Quests)
.class public interface abstract Lcom/google/android/gms/games/quest/Quests;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;,
        Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;,
        Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;
    }
.end annotation


# static fields
.field public static final EXTRA_QUEST:Ljava/lang/String; = "quest"

.field public static final SELECT_ACCEPTED:I = 0x3

.field public static final SELECT_ALL_QUESTS:[I

.field public static final SELECT_COMPLETED:I = 0x4

.field public static final SELECT_COMPLETED_UNCLAIMED:I = 0x65

.field public static final SELECT_ENDING_SOON:I = 0x66

.field public static final SELECT_EXPIRED:I = 0x5

.field public static final SELECT_FAILED:I = 0x6

.field public static final SELECT_OPEN:I = 0x2

.field public static final SELECT_RECENTLY_FAILED:I = 0x67

.field public static final SELECT_UPCOMING:I = 0x1

.field public static final SORT_ORDER_ENDING_SOON_FIRST:I = 0x1

.field public static final SORT_ORDER_RECENTLY_UPDATED_FIRST:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/games/quest/Quests;->SELECT_ALL_QUESTS:[I

    return-void

    :array_a
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x65
        0x5
        0x66
        0x6
        0x67
    .end array-data
.end method


# virtual methods
.method public abstract accept(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract claim(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getQuestIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getQuestsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;[I)Landroid/content/Intent;
.end method

.method public abstract load(Lcom/google/android/gms/common/api/GoogleApiClient;[IIZ)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "[IIZ)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;",
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
            "Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerQuestUpdateListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/quest/QuestUpdateListener;)V
.end method

.method public abstract showStateChangedPopup(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
.end method

.method public abstract unregisterQuestUpdateListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V
.end method

###### Class com.google.android.gms.games.quest.Quests.AcceptQuestResult (com.google.android.gms.games.quest.Quests$AcceptQuestResult)
.class public interface abstract Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/quest/Quests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AcceptQuestResult"
.end annotation


# virtual methods
.method public abstract getQuest()Lcom/google/android/gms/games/quest/Quest;
.end method

###### Class com.google.android.gms.games.quest.Quests.ClaimMilestoneResult (com.google.android.gms.games.quest.Quests$ClaimMilestoneResult)
.class public interface abstract Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/quest/Quests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClaimMilestoneResult"
.end annotation


# virtual methods
.method public abstract getMilestone()Lcom/google/android/gms/games/quest/Milestone;
.end method

.method public abstract getQuest()Lcom/google/android/gms/games/quest/Quest;
.end method

###### Class com.google.android.gms.games.quest.Quests.LoadQuestsResult (com.google.android.gms.games.quest.Quests$LoadQuestsResult)
.class public interface abstract Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/quest/Quests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadQuestsResult"
.end annotation


# virtual methods
.method public abstract getQuests()Lcom/google/android/gms/games/quest/QuestBuffer;
.end method
