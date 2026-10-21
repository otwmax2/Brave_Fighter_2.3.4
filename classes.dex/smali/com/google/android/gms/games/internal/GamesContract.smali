###### Class com.google.android.gms.games.internal.GamesContract (com.google.android.gms.games.internal.GamesContract)
.class public final Lcom/google/android/gms/games/internal/GamesContract;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/GamesContract$SocialInvitationsColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$VideoColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$SnapshotColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$RequestSummaryColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$RequestRecipientsColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$RequestPendingOpsColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$RequestsColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$ParticipantsColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$NotificationsColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$MatchesPendingOpsColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$MatchesColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$InvitationsColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$ImagesColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$StockAvatarImageColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$UpdateProfileSettingsResponseColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$ProfileSettingsColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$ContactSettingsColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$AclsColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$LeaderboardScoresColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$PageType;,
        Lcom/google/android/gms/games/internal/GamesContract$LeaderboardInstancesColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$LeaderboardsColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$ClientContextsColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$AchievementPendingOpsColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$AchievementInstancesColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$AchievementDefinitionsColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$EventPendingOpsColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$EventInstancesColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$EventDefinitionColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$AccountMetadataColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$QuestsColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$MilestoneColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$ExperienceEventColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$PlayersColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$PlayerStatsColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$PlayerLevelColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$ApplicationSessionColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$GameInstancesColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$GameBadgesColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$GameSearchSuggestionsColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$GamesColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$AppContentTupleColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$AppContentSectionColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$AppContentConditionColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$AppContentCardColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$AppContentAnnotationColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$AppContentActionColumns;,
        Lcom/google/android/gms/games/internal/GamesContract$AppContentColumns;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.AccountMetadataColumns (com.google.android.gms.games.internal.GamesContract$AccountMetadataColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$AccountMetadataColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccountMetadataColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "external_player_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "match_sync_token"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "last_package_scan_timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "quest_sync_token"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "quest_sync_metadata_token"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "request_sync_token"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "xp_sync_token"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cover_photo_image_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cover_photo_image_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cover_photo_image_url"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "legacy_external_player_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "social_invite_sync_token"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$AccountMetadataColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.AchievementDefinitionsColumns (com.google.android.gms.games.internal.GamesContract$AchievementDefinitionsColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$AchievementDefinitionsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AchievementDefinitionsColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "game_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "external_achievement_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "unlocked_icon_image_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "unlocked_icon_image_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "unlocked_icon_image_url"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "revealed_icon_image_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "revealed_icon_image_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "revealed_icon_image_url"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "total_steps"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "formatted_total_steps"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "initial_state"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sorting_rank"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "definition_xp_value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$AchievementDefinitionsColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.AchievementInstancesColumns (com.google.android.gms.games.internal.GamesContract$AchievementInstancesColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$AchievementInstancesColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AchievementInstancesColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "definition_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "player_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "current_steps"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "formatted_current_steps"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "last_updated_timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "instance_xp_value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$AchievementInstancesColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.AchievementPendingOpsColumns (com.google.android.gms.games.internal.GamesContract$AchievementPendingOpsColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$AchievementPendingOpsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AchievementPendingOpsColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "client_context_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "external_achievement_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "achievement_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "new_state"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "steps_to_increment"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "min_steps_to_set"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "external_game_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "external_player_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$AchievementPendingOpsColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.AclsColumns (com.google.android.gms.games.internal.GamesContract$AclsColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$AclsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AclsColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "specified_by_user"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pacl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$AclsColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.AppContentActionColumns (com.google.android.gms.games.internal.GamesContract$AppContentActionColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$AppContentActionColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppContentActionColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "action_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "action_annotation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "action_conditions"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "action_content_description"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "action_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "overflow_text"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "action_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$AppContentActionColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.AppContentAnnotationColumns (com.google.android.gms.games.internal.GamesContract$AppContentAnnotationColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$AppContentAnnotationColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppContentAnnotationColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "annotation_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "annotation_description"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "annotation_image_default_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "annotation_image_height"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "annotation_image_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "annotation_image_width"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "annotation_layout_slot"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "annotation_modifiers"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "annotation_title"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$AppContentAnnotationColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.AppContentCardColumns (com.google.android.gms.games.internal.GamesContract$AppContentCardColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$AppContentCardColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppContentCardColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "card_actions"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "card_annotations"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "card_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "card_conditions"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "card_content_description"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "card_current_steps"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "card_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "card_description"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "card_subtitle"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "card_title"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "card_total_steps"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "card_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$AppContentCardColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.AppContentColumns (com.google.android.gms.games.internal.GamesContract$AppContentColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$AppContentColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppContentColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "experiments"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "json"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "page_token"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "screen_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "server_cookie"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$AppContentColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.AppContentConditionColumns (com.google.android.gms.games.internal.GamesContract$AppContentConditionColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$AppContentConditionColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppContentConditionColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "condition_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "condition_default_value"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "condition_expected_value"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "condition_predicate"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "condition_predicate_parameters"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$AppContentConditionColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.AppContentSectionColumns (com.google.android.gms.games.internal.GamesContract$AppContentSectionColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$AppContentSectionColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppContentSectionColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "section_actions"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "section_annotations"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "section_card_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "section_content_description"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "section_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "section_description"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "section_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "section_subtitle"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "section_title"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "section_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$AppContentSectionColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.AppContentTupleColumns (com.google.android.gms.games.internal.GamesContract$AppContentTupleColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$AppContentTupleColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppContentTupleColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tuple_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tuple_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tuple_value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$AppContentTupleColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.ApplicationSessionColumns (com.google.android.gms.games.internal.GamesContract$ApplicationSessionColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$ApplicationSessionColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApplicationSessionColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "client_context_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "end_time"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "external_game_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "session_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "start_time"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ad_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "limit_ad_tracking"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$ApplicationSessionColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.ClientContextsColumns (com.google.android.gms.games.internal.GamesContract$ClientContextsColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$ClientContextsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClientContextsColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "package_uid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "is_games_lite"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$ClientContextsColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.ContactSettingsColumns (com.google.android.gms.games.internal.GamesContract$ContactSettingsColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$ContactSettingsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContactSettingsColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mobile_notifications_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "loud_notifications_allowed"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "match_notifications_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "quest_notifications_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "request_notifications_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "level_notifications_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "friend_notifications_enabled"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$ContactSettingsColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.EventDefinitionColumns (com.google.android.gms.games.internal.GamesContract$EventDefinitionColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$EventDefinitionColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventDefinitionColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "event_definitions_game_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "external_event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "visibility"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "icon_image_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "icon_image_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "icon_image_url"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sorting_rank"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$EventDefinitionColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.EventInstancesColumns (com.google.android.gms.games.internal.GamesContract$EventInstancesColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$EventInstancesColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventInstancesColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "definition_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "player_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "formatted_value"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "last_updated_timestamp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$EventInstancesColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.EventPendingOpsColumns (com.google.android.gms.games.internal.GamesContract$EventPendingOpsColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$EventPendingOpsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventPendingOpsColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "client_context_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "instance_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "window_start_time"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "window_end_time"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "increment"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "request_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$EventPendingOpsColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.ExperienceEventColumns (com.google.android.gms.games.internal.GamesContract$ExperienceEventColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$ExperienceEventColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExperienceEventColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "external_experience_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "game_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "created_timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "current_xp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "xp_earned"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "display_title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "display_description"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "display_string"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "icon_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "icon_url"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "icon_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "newLevel"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$ExperienceEventColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.GameBadgesColumns (com.google.android.gms.games.internal.GamesContract$GameBadgesColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$GameBadgesColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GameBadgesColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "badge_game_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "badge_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "badge_title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "badge_description"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "badge_icon_image_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "badge_icon_image_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$GameBadgesColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.GameInstancesColumns (com.google.android.gms.games.internal.GamesContract$GameInstancesColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$GameInstancesColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GameInstancesColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;

.field public static final Ul:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "instance_game_id"

    aput-object v1, v0, v3

    const-string v1, "real_time_support"

    aput-object v1, v0, v4

    const-string v1, "turn_based_support"

    aput-object v1, v0, v5

    const-string v1, "platform_type"

    aput-object v1, v0, v6

    const-string v1, "instance_display_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "piracy_check"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "installed"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "preferred"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "gamepad_support"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$GameInstancesColumns;->Uk:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "installed"

    aput-object v1, v0, v3

    const-string v1, "package_name"

    aput-object v1, v0, v4

    const-string v1, "real_time_support"

    aput-object v1, v0, v5

    const-string v1, "turn_based_support"

    aput-object v1, v0, v6

    const-string v1, "gamepad_support"

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$GameInstancesColumns;->Ul:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.GameSearchSuggestionsColumns (com.google.android.gms.games.internal.GamesContract$GameSearchSuggestionsColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$GameSearchSuggestionsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GameSearchSuggestionsColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "suggestion"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$GameSearchSuggestionsColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.GamesColumns (com.google.android.gms.games.internal.GamesContract$GamesColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$GamesColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GamesColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "external_game_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "primary_category"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "secondary_category"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "developer_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "game_description"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "game_icon_image_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "game_icon_image_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "game_icon_image_url"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "game_hi_res_image_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "game_hi_res_image_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "game_hi_res_image_url"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "featured_image_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "featured_image_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "featured_image_url"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "screenshot_image_ids"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "video_url"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "play_enabled_game"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "last_played_server_time"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "last_connection_local_time"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "last_synced_local_time"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "metadata_version"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sync_token"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "target_instance"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "gameplay_acl_status"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "achievement_total_count"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "leaderboard_count"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "muted"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "identity_sharing_confirmed"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "snapshots_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "theme_color"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$GamesColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.ImagesColumns (com.google.android.gms.games.internal.GamesContract$ImagesColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$ImagesColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImagesColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "local"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "filesize"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "download_timestamp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$ImagesColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.InvitationsColumns (com.google.android.gms.games.internal.GamesContract$InvitationsColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$InvitationsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InvitationsColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "game_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "external_invitation_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "external_inviter_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "creation_timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "last_modified_timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "variant"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "has_automatch_criteria"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "automatch_min_players"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "automatch_max_players"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "inviter_in_circles"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$InvitationsColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.LeaderboardInstancesColumns (com.google.android.gms.games.internal.GamesContract$LeaderboardInstancesColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$LeaderboardInstancesColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LeaderboardInstancesColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "leaderboard_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "timespan"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "collection"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "player_raw_score"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "player_display_score"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "player_rank"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "player_display_rank"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "player_score_tag"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "total_scores"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "top_page_token_next"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "window_page_token_prev"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "window_page_token_next"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$LeaderboardInstancesColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.LeaderboardScoresColumns (com.google.android.gms.games.internal.GamesContract$LeaderboardScoresColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$LeaderboardScoresColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LeaderboardScoresColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "instance_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "page_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "player_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "default_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "default_display_image_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "default_display_image_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "default_display_image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rank"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "display_rank"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "raw_score"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "display_score"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "achieved_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "score_tag"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$LeaderboardScoresColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.LeaderboardsColumns (com.google.android.gms.games.internal.GamesContract$LeaderboardsColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$LeaderboardsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LeaderboardsColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "game_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "external_leaderboard_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "board_icon_image_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "board_icon_image_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "board_icon_image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sorting_rank"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "score_order"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$LeaderboardsColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.MatchesColumns (com.google.android.gms.games.internal.GamesContract$MatchesColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$MatchesColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MatchesColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "game_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "external_match_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "creator_external"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "creation_timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "last_updater_external"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "last_updated_timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pending_participant_external"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "version"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "variant"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "notification_text"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "user_match_status"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "has_automatch_criteria"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "automatch_min_players"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "automatch_max_players"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "automatch_bit_mask"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "automatch_wait_estimate_sec"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "rematch_id"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "match_number"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "previous_match_data"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "upsync_required"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "description_participant_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$MatchesColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.MatchesPendingOpsColumns (com.google.android.gms.games.internal.GamesContract$MatchesPendingOpsColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$MatchesPendingOpsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MatchesPendingOpsColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "client_context_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "external_game_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "external_match_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pending_participant_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "version"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_turn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "results"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$MatchesPendingOpsColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.MilestoneColumns (com.google.android.gms.games.internal.GamesContract$MilestoneColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$MilestoneColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MilestoneColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "completion_reward_data"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "event_instance_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "external_milestone_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "initial_value"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "quest_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "milestones_sorting_rank"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "milestone_state"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "target_value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$MilestoneColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.NotificationsColumns (com.google.android.gms.games.internal.GamesContract$NotificationsColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$NotificationsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationsColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "notification_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "game_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "external_sub_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "image_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ticker"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "coalesced_text"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "acknowledged"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "alert_level"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$NotificationsColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.PageType (com.google.android.gms.games.internal.GamesContract$PageType)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$PageType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PageType"
.end annotation

###### Class com.google.android.gms.games.internal.GamesContract.ParticipantsColumns (com.google.android.gms.games.internal.GamesContract$ParticipantsColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$ParticipantsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ParticipantsColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "match_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "invitation_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "external_participant_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "player_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "default_display_image_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "default_display_image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "default_display_hi_res_image_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "default_display_hi_res_image_url"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "default_display_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "player_status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "client_address"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "result_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "placing"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "connected"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "capabilities"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$ParticipantsColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.PlayerLevelColumns (com.google.android.gms.games.internal.GamesContract$PlayerLevelColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$PlayerLevelColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayerLevelColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "level_value"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "level_min_xp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "level_max_xp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$PlayerLevelColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.PlayerStatsColumns (com.google.android.gms.games.internal.GamesContract$PlayerStatsColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$PlayerStatsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayerStatsColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ave_session_length_minutes"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "churn_probability"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "days_since_last_played"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "game_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "num_purchases"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "num_sessions"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "num_sessions_percentile"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "player_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "unknown_raw_keys"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "unknown_raw_values"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "spend_percentile"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "spend_probability"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "high_spender_probability"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "total_spend_next_28_days"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$PlayerStatsColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.PlayersColumns (com.google.android.gms.games.internal.GamesContract$PlayersColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$PlayersColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayersColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x29

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "external_player_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "profile_icon_image_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "profile_hi_res_image_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "profile_icon_image_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "profile_icon_image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "profile_hi_res_image_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "profile_hi_res_image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "profile_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "last_updated"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "is_in_circles"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "has_all_public_acls"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_debug_access"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "is_profile_visible"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "current_xp_total"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "current_level"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "current_level_min_xp"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "current_level_max_xp"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "next_level"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "next_level_max_xp"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "last_level_up_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "player_title"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "most_recent_external_game_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "most_recent_game_name"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "most_recent_activity_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "most_recent_game_icon_id"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "most_recent_game_icon_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "most_recent_game_hi_res_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "most_recent_game_hi_res_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "most_recent_game_featured_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "most_recent_game_featured_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "gamer_tag"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "real_name"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "banner_image_landscape_id"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "banner_image_landscape_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "banner_image_landscape_url"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "banner_image_portrait_id"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "banner_image_portrait_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "banner_image_portrait_url"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "gamer_friend_status"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "gamer_friend_update_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "is_muted"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$PlayersColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.ProfileSettingsColumns (com.google.android.gms.games.internal.GamesContract$ProfileSettingsColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$ProfileSettingsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProfileSettingsColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "profile_visible"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "profile_visibility_explicitly_set"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gamer_tag"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gamer_tag_explicitly_set"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "gamer_tag_is_default"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "stock_avatar_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "stock_avatar_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "profile_discoverable"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "auto_sign_in"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "player_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$ProfileSettingsColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.QuestsColumns (com.google.android.gms.games.internal.GamesContract$QuestsColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$QuestsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QuestsColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "accepted_ts"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "quest_banner_image_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "quest_banner_image_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "quest_banner_image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "quest_description"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "quest_end_ts"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "external_quest_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "game_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "quest_icon_image_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "quest_icon_image_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "quest_icon_image_url"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "quest_last_updated_ts"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "quest_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "notified"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "notification_ts"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "quest_start_ts"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "quest_state"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "quest_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$QuestsColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.RequestPendingOpsColumns (com.google.android.gms.games.internal.GamesContract$RequestPendingOpsColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$RequestPendingOpsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestPendingOpsColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "client_context_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "external_request_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "external_game_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$RequestPendingOpsColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.RequestRecipientsColumns (com.google.android.gms.games.internal.GamesContract$RequestRecipientsColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$RequestRecipientsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestRecipientsColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "request_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "player_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "recipient_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$RequestRecipientsColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.RequestSummaryColumns (com.google.android.gms.games.internal.GamesContract$RequestSummaryColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$RequestSummaryColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestSummaryColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wish_count"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gift_count"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "player_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$RequestSummaryColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.RequestsColumns (com.google.android.gms.games.internal.GamesContract$RequestsColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$RequestsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestsColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "external_request_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "game_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sender_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "creation_timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "expiration_timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$RequestsColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.SnapshotColumns (com.google.android.gms.games.internal.GamesContract$SnapshotColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$SnapshotColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SnapshotColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "game_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "owner_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "external_snapshot_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "drive_resolved_id_string"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "drive_resource_id_string"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cover_icon_image_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cover_icon_image_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cover_icon_image_url"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cover_icon_image_width"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cover_icon_image_height"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "last_modified_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "unique_name"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "pending_change_count"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "progress_value"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "device_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$SnapshotColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.SocialInvitationsColumns (com.google.android.gms.games.internal.GamesContract$SocialInvitationsColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$SocialInvitationsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SocialInvitationsColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "player_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "external_social_invite_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "direction"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "last_modified_timestamp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$SocialInvitationsColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.StockAvatarImageColumns (com.google.android.gms.games.internal.GamesContract$StockAvatarImageColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$StockAvatarImageColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StockAvatarImageColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "image_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "image_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$StockAvatarImageColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.UpdateProfileSettingsResponseColumns (com.google.android.gms.games.internal.GamesContract$UpdateProfileSettingsResponseColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$UpdateProfileSettingsResponseColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateProfileSettingsResponseColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggested_gamer_tags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$UpdateProfileSettingsResponseColumns;->Uk:[Ljava/lang/String;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesContract.VideoColumns (com.google.android.gms.games.internal.GamesContract$VideoColumns)
.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$VideoColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoColumns"
.end annotation


# static fields
.field public static final Uk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "filepath"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "filesize"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "package"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "start_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$VideoColumns;->Uk:[Ljava/lang/String;

    return-void
.end method
