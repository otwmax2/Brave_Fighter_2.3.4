###### Class android.support.v7.internal.widget.ActivityChooserModel (android.support.v7.internal.widget.ActivityChooserModel)
.class public Landroid/support/v7/internal/widget/ActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/ActivityChooserModel$1;,
        Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;,
        Landroid/support/v7/internal/widget/ActivityChooserModel$DefaultSorter;,
        Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;,
        Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;,
        Landroid/support/v7/internal/widget/ActivityChooserModel$OnChooseActivityListener;,
        Landroid/support/v7/internal/widget/ActivityChooserModel$ActivitySorter;,
        Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityChooserModelClient;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ATTRIBUTE_TIME:Ljava/lang/String; = "time"

.field private static final ATTRIBUTE_WEIGHT:Ljava/lang/String; = "weight"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ACTIVITY_INFLATION:I = 0x5

.field private static final DEFAULT_HISTORICAL_RECORD_WEIGHT:F = 1.0f

.field public static final DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String; = "activity_choser_model_history.xml"

.field public static final DEFAULT_HISTORY_MAX_LENGTH:I = 0x32

.field private static final HISTORY_FILE_EXTENSION:Ljava/lang/String; = ".xml"

.field private static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG_HISTORICAL_RECORD:Ljava/lang/String; = "historical-record"

.field private static final TAG_HISTORICAL_RECORDS:Ljava/lang/String; = "historical-records"

.field private static final sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/internal/widget/ActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistryLock:Ljava/lang/Object;


# instance fields
.field private final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityChoserModelPolicy:Landroid/support/v7/internal/widget/ActivityChooserModel$OnChooseActivityListener;

.field private mActivitySorter:Landroid/support/v7/internal/widget/ActivityChooserModel$ActivitySorter;

.field private mCanReadHistoricalData:Z

.field private final mContext:Landroid/content/Context;

.field private final mHistoricalRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoricalRecordsChanged:Z

.field private final mHistoryFileName:Ljava/lang/String;

.field private mHistoryMaxSize:I

.field private final mInstanceLock:Ljava/lang/Object;

.field private mIntent:Landroid/content/Intent;

.field private mReadShareHistoryCalled:Z

.field private mReloadActivities:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 160
    const-class v0, Landroid/support/v7/internal/widget/ActivityChooserModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/internal/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    .line 221
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/internal/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v7/internal/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "historyFileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 349
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 232
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 262
    new-instance v0, Landroid/support/v7/internal/widget/ActivityChooserModel$DefaultSorter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/support/v7/internal/widget/ActivityChooserModel;Landroid/support/v7/internal/widget/ActivityChooserModel$1;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/internal/widget/ActivityChooserModel$ActivitySorter;

    .line 267
    const/16 v0, 0x32

    iput v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoryMaxSize:I

    .line 277
    iput-boolean v3, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 288
    iput-boolean v2, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 296
    iput-boolean v3, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 301
    iput-boolean v2, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 350
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    .line 351
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    .line 357
    :goto_57
    return-void

    .line 355
    :cond_58
    iput-object p2, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    goto :goto_57
.end method

.method static synthetic access$200(Landroid/support/v7/internal/widget/ActivityChooserModel;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ActivityChooserModel;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 93
    sget-object v0, Landroid/support/v7/internal/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/internal/widget/ActivityChooserModel;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ActivityChooserModel;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Landroid/support/v7/internal/widget/ActivityChooserModel;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/internal/widget/ActivityChooserModel;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    return p1
.end method

.method private addHisoricalRecord(Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;)Z
    .registers 4
    .param p1, "historicalRecord"    # Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;

    .prologue
    .line 743
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 744
    .local v0, "added":Z
    if-eqz v0, :cond_17

    .line 745
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 746
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 747
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->persistHistoricalDataIfNeeded()V

    .line 748
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    .line 749
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->notifyChanged()V

    .line 751
    :cond_17
    return v0
.end method

.method private ensureConsistentState()V
    .registers 3

    .prologue
    .line 670
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->loadActivitiesIfNeeded()Z

    move-result v0

    .line 671
    .local v0, "stateChanged":Z
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->readHistoricalDataIfNeeded()Z

    move-result v1

    or-int/2addr v0, v1

    .line 672
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 673
    if-eqz v0, :cond_14

    .line 674
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    .line 675
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->notifyChanged()V

    .line 677
    :cond_14
    return-void
.end method

.method private executePersistHistoryAsyncTaskBase()V
    .registers 6

    .prologue
    .line 586
    new-instance v0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/support/v7/internal/widget/ActivityChooserModel;Landroid/support/v7/internal/widget/ActivityChooserModel$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 588
    return-void
.end method

.method private executePersistHistoryAsyncTaskSDK11()V
    .registers 7

    .prologue
    .line 591
    new-instance v0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/support/v7/internal/widget/ActivityChooserModel;Landroid/support/v7/internal/widget/ActivityChooserModel$1;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 593
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/internal/widget/ActivityChooserModel;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "historyFileName"    # Ljava/lang/String;

    .prologue
    .line 333
    sget-object v2, Landroid/support/v7/internal/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 334
    :try_start_3
    sget-object v1, Landroid/support/v7/internal/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActivityChooserModel;

    .line 335
    .local v0, "dataModel":Landroid/support/v7/internal/widget/ActivityChooserModel;
    if-nez v0, :cond_17

    .line 336
    new-instance v0, Landroid/support/v7/internal/widget/ActivityChooserModel;

    .end local v0    # "dataModel":Landroid/support/v7/internal/widget/ActivityChooserModel;
    invoke-direct {v0, p0, p1}, Landroid/support/v7/internal/widget/ActivityChooserModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 337
    .restart local v0    # "dataModel":Landroid/support/v7/internal/widget/ActivityChooserModel;
    sget-object v1, Landroid/support/v7/internal/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_17
    monitor-exit v2

    return-object v0

    .line 340
    .end local v0    # "dataModel":Landroid/support/v7/internal/widget/ActivityChooserModel;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private loadActivitiesIfNeeded()Z
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 703
    iget-boolean v5, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mReloadActivities:Z

    if-eqz v5, :cond_37

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v5, :cond_37

    .line 704
    iput-boolean v4, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 705
    iget-object v5, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 706
    iget-object v5, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 708
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 709
    .local v2, "resolveInfoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    if-ge v0, v2, :cond_36

    .line 710
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 711
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    new-instance v5, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;

    invoke-direct {v5, p0, v1}, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;-><init>(Landroid/support/v7/internal/widget/ActivityChooserModel;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 713
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_36
    const/4 v4, 0x1

    .line 715
    .end local v0    # "i":I
    .end local v2    # "resolveInfoCount":I
    .end local v3    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_37
    return v4
.end method

.method private persistHistoricalDataIfNeeded()V
    .registers 3

    .prologue
    .line 569
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    if-nez v0, :cond_c

    .line 570
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_c
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-nez v0, :cond_11

    .line 583
    :cond_10
    :goto_10
    return-void

    .line 575
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 576
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 577
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_26

    .line 578
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->executePersistHistoryAsyncTaskSDK11()V

    goto :goto_10

    .line 580
    :cond_26
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->executePersistHistoryAsyncTaskBase()V

    goto :goto_10
.end method

.method private pruneExcessiveHistoricalRecordsIfNeeded()V
    .registers 5

    .prologue
    .line 758
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoryMaxSize:I

    sub-int v1, v2, v3

    .line 759
    .local v1, "pruneCount":I
    if-gtz v1, :cond_d

    .line 769
    :cond_c
    return-void

    .line 762
    :cond_d
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 763
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v1, :cond_c

    .line 764
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;

    .line 763
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method private readHistoricalDataIfNeeded()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 726
    iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v2, :cond_1a

    iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 728
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 729
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 730
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->readHistoricalDataImpl()V

    .line 733
    :goto_19
    return v0

    :cond_1a
    move v0, v1

    goto :goto_19
.end method

.method private readHistoricalDataImpl()V
    .registers 19

    .prologue
    .line 976
    const/4 v3, 0x0

    .line 978
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_e} :catch_23

    move-result-object v3

    .line 986
    :try_start_f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 987
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v15, 0x0

    invoke-interface {v8, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 989
    const/4 v12, 0x0

    .line 990
    .local v12, "type":I
    :goto_18
    const/4 v15, 0x1

    if-eq v12, v15, :cond_25

    const/4 v15, 0x2

    if-eq v12, v15, :cond_25

    .line 991
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    goto :goto_18

    .line 979
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catch_23
    move-exception v4

    .line 1044
    :cond_24
    :goto_24
    return-void

    .line 994
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_25
    const-string v15, "historical-records"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_62

    .line 995
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v16, "Share records file does not start with historical-records tag."

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_39
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_39} :catch_39
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_39} :catch_92
    .catchall {:try_start_f .. :try_end_39} :catchall_e9

    .line 1031
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catch_39
    move-exception v14

    .line 1032
    .local v14, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3a
    sget-object v15, Landroid/support/v7/internal/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error reading historical recrod file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_3a .. :try_end_5a} :catchall_e9

    .line 1036
    if-eqz v3, :cond_24

    .line 1038
    :try_start_5c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_24

    .line 1039
    :catch_60
    move-exception v15

    goto :goto_24

    .line 999
    .end local v14    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_62
    :try_start_62
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 1000
    .local v5, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1003
    :cond_69
    :goto_69
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_6c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_62 .. :try_end_6c} :catch_39
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_6c} :catch_92
    .catchall {:try_start_62 .. :try_end_6c} :catchall_e9

    move-result v12

    .line 1004
    const/4 v15, 0x1

    if-ne v12, v15, :cond_78

    .line 1036
    if-eqz v3, :cond_24

    .line 1038
    :try_start_72
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_24

    .line 1039
    :catch_76
    move-exception v15

    goto :goto_24

    .line 1007
    :cond_78
    const/4 v15, 0x3

    if-eq v12, v15, :cond_69

    const/4 v15, 0x4

    if-eq v12, v15, :cond_69

    .line 1010
    :try_start_7e
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1011
    .local v7, "nodeName":Ljava/lang/String;
    const-string v15, "historical-record"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_bd

    .line 1012
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v16, "Share records file not well-formed."

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7e .. :try_end_92} :catch_39
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_92} :catch_92
    .catchall {:try_start_7e .. :try_end_92} :catchall_e9

    .line 1033
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catch_92
    move-exception v6

    .line 1034
    .local v6, "ioe":Ljava/io/IOException;
    :try_start_93
    sget-object v15, Landroid/support/v7/internal/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error reading historical recrod file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b3
    .catchall {:try_start_93 .. :try_end_b3} :catchall_e9

    .line 1036
    if-eqz v3, :cond_24

    .line 1038
    :try_start_b5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_ba

    goto/16 :goto_24

    .line 1039
    :catch_ba
    move-exception v15

    goto/16 :goto_24

    .line 1015
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v7    # "nodeName":Ljava/lang/String;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_bd
    const/4 v15, 0x0

    :try_start_be
    const-string v16, "activity"

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1016
    .local v2, "activity":Ljava/lang/String;
    const/4 v15, 0x0

    const-string v16, "time"

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1018
    .local v10, "time":J
    const/4 v15, 0x0

    const-string v16, "weight"

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .line 1020
    .local v13, "weight":F
    new-instance v9, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;

    invoke-direct {v9, v2, v10, v11, v13}, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    .line 1021
    .local v9, "readRecord":Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_be .. :try_end_e8} :catch_39
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_e8} :catch_92
    .catchall {:try_start_be .. :try_end_e8} :catchall_e9

    goto :goto_69

    .line 1036
    .end local v2    # "activity":Ljava/lang/String;
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "readRecord":Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;
    .end local v10    # "time":J
    .end local v12    # "type":I
    .end local v13    # "weight":F
    :catchall_e9
    move-exception v15

    if-eqz v3, :cond_ef

    .line 1038
    :try_start_ec
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ef} :catch_f0

    .line 1041
    :cond_ef
    :goto_ef
    throw v15

    .line 1039
    :catch_f0
    move-exception v16

    goto :goto_ef
.end method

.method private sortActivitiesIfNeeded()Z
    .registers 5

    .prologue
    .line 687
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/internal/widget/ActivityChooserModel$ActivitySorter;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 689
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/internal/widget/ActivityChooserModel$ActivitySorter;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivitySorter;->sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 691
    const/4 v0, 0x1

    .line 693
    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method


# virtual methods
.method public chooseActivity(I)Landroid/content/Intent;
    .registers 12
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 460
    iget-object v7, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v7

    .line 461
    :try_start_4
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-nez v8, :cond_b

    .line 462
    monitor-exit v7

    move-object v0, v6

    .line 490
    :goto_a
    return-object v0

    .line 465
    :cond_b
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 467
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 469
    .local v2, "chosenActivity":Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v8, v2, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .local v3, "chosenName":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    iget-object v8, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 474
    .local v0, "choiceIntent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 476
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/support/v7/internal/widget/ActivityChooserModel$OnChooseActivityListener;

    if-eqz v8, :cond_45

    .line 478
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 479
    .local v1, "choiceIntentCopy":Landroid/content/Intent;
    iget-object v8, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/support/v7/internal/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-interface {v8, p0, v1}, Landroid/support/v7/internal/widget/ActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Landroid/support/v7/internal/widget/ActivityChooserModel;Landroid/content/Intent;)Z

    move-result v4

    .line 481
    .local v4, "handled":Z
    if-eqz v4, :cond_45

    .line 482
    monitor-exit v7

    move-object v0, v6

    goto :goto_a

    .line 486
    .end local v1    # "choiceIntentCopy":Landroid/content/Intent;
    .end local v4    # "handled":Z
    :cond_45
    new-instance v5, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v8, v9, v6}, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 488
    .local v5, "historicalRecord":Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v5}, Landroid/support/v7/internal/widget/ActivityChooserModel;->addHisoricalRecord(Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;)Z

    .line 490
    monitor-exit v7

    goto :goto_a

    .line 491
    .end local v0    # "choiceIntent":Landroid/content/Intent;
    .end local v2    # "chosenActivity":Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v3    # "chosenName":Landroid/content/ComponentName;
    .end local v5    # "historicalRecord":Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;
    :catchall_55
    move-exception v6

    monitor-exit v7
    :try_end_57
    .catchall {:try_start_4 .. :try_end_57} :catchall_55

    throw v6
.end method

.method public getActivity(I)Landroid/content/pm/ResolveInfo;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 413
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 415
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    return-object v0

    .line 416
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getActivityCount()I
    .registers 3

    .prologue
    .line 398
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 399
    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 400
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 401
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public getActivityIndex(Landroid/content/pm/ResolveInfo;)I
    .registers 8
    .param p1, "activity"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 427
    iget-object v5, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 428
    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 429
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 430
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 431
    .local v1, "activityCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v1, :cond_1e

    .line 432
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 433
    .local v2, "currentActivity":Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v4, v2, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-ne v4, p1, :cond_1b

    .line 434
    monitor-exit v5

    .line 437
    .end local v2    # "currentActivity":Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v3    # "i":I
    :goto_1a
    return v3

    .line 431
    .restart local v2    # "currentActivity":Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;
    .restart local v3    # "i":I
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 437
    .end local v2    # "currentActivity":Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;
    :cond_1e
    const/4 v3, -0x1

    monitor-exit v5

    goto :goto_1a

    .line 438
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    .end local v1    # "activityCount":I
    .end local v3    # "i":I
    :catchall_21
    move-exception v4

    monitor-exit v5
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v4
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .registers 4

    .prologue
    .line 515
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 516
    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 517
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 518
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    .line 521
    :goto_1a
    return-object v0

    .line 520
    :cond_1b
    monitor-exit v1

    .line 521
    const/4 v0, 0x0

    goto :goto_1a

    .line 520
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public getHistoryMaxSize()I
    .registers 3

    .prologue
    .line 646
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 647
    :try_start_3
    iget v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoryMaxSize:I

    monitor-exit v1

    return v0

    .line 648
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getHistorySize()I
    .registers 3

    .prologue
    .line 657
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 658
    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 659
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 660
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 385
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 386
    :try_start_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    monitor-exit v1

    return-object v0

    .line 387
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setActivitySorter(Landroid/support/v7/internal/widget/ActivityChooserModel$ActivitySorter;)V
    .registers 4
    .param p1, "activitySorter"    # Landroid/support/v7/internal/widget/ActivityChooserModel$ActivitySorter;

    .prologue
    .line 603
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 604
    :try_start_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/internal/widget/ActivityChooserModel$ActivitySorter;

    if-ne v0, p1, :cond_9

    .line 605
    monitor-exit v1

    .line 612
    :goto_8
    return-void

    .line 607
    :cond_9
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/internal/widget/ActivityChooserModel$ActivitySorter;

    .line 608
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 609
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->notifyChanged()V

    .line 611
    :cond_14
    monitor-exit v1

    goto :goto_8

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public setDefaultActivity(I)V
    .registers 12
    .param p1, "index"    # I

    .prologue
    .line 535
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v6

    .line 536
    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 538
    iget-object v5, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 539
    .local v2, "newDefaultActivity":Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v5, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 542
    .local v3, "oldDefaultActivity":Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;
    if-eqz v3, :cond_41

    .line 544
    iget v5, v3, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v7, v2, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    sub-float/2addr v5, v7

    const/high16 v7, 0x40a00000    # 5.0f

    add-float v4, v5, v7

    .line 550
    .local v4, "weight":F
    :goto_22
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .local v0, "defaultName":Landroid/content/ComponentName;
    new-instance v1, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v0, v8, v9, v4}, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 555
    .local v1, "historicalRecord":Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v1}, Landroid/support/v7/internal/widget/ActivityChooserModel;->addHisoricalRecord(Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;)Z

    .line 556
    monitor-exit v6

    .line 557
    return-void

    .line 547
    .end local v0    # "defaultName":Landroid/content/ComponentName;
    .end local v1    # "historicalRecord":Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;
    .end local v4    # "weight":F
    :cond_41
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "weight":F
    goto :goto_22

    .line 556
    .end local v2    # "newDefaultActivity":Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v3    # "oldDefaultActivity":Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v4    # "weight":F
    :catchall_44
    move-exception v5

    monitor-exit v6
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v5
.end method

.method public setHistoryMaxSize(I)V
    .registers 4
    .param p1, "historyMaxSize"    # I

    .prologue
    .line 628
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 629
    :try_start_3
    iget v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoryMaxSize:I

    if-ne v0, p1, :cond_9

    .line 630
    monitor-exit v1

    .line 638
    :goto_8
    return-void

    .line 632
    :cond_9
    iput p1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoryMaxSize:I

    .line 633
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 634
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 635
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->notifyChanged()V

    .line 637
    :cond_17
    monitor-exit v1

    goto :goto_8

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 369
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 370
    :try_start_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-ne v0, p1, :cond_9

    .line 371
    monitor-exit v1

    .line 377
    :goto_8
    return-void

    .line 373
    :cond_9
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 375
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 376
    monitor-exit v1

    goto :goto_8

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public setOnChooseActivityListener(Landroid/support/v7/internal/widget/ActivityChooserModel$OnChooseActivityListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/support/v7/internal/widget/ActivityChooserModel$OnChooseActivityListener;

    .prologue
    .line 500
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 501
    :try_start_3
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/support/v7/internal/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 502
    monitor-exit v1

    .line 503
    return-void

    .line 502
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

###### Class android.support.v7.internal.widget.ActivityChooserModel.AnonymousClass1 (android.support.v7.internal.widget.ActivityChooserModel$1)
.class synthetic Landroid/support/v7/internal/widget/ActivityChooserModel$1;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class android.support.v7.internal.widget.ActivityChooserModel.ActivityChooserModelClient (android.support.v7.internal.widget.ActivityChooserModel$ActivityChooserModelClient)
.class public interface abstract Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityChooserModelClient;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityChooserModelClient"
.end annotation


# virtual methods
.method public abstract setActivityChooserModel(Landroid/support/v7/internal/widget/ActivityChooserModel;)V
.end method

###### Class android.support.v7.internal.widget.ActivityChooserModel.ActivityResolveInfo (android.support.v7.internal.widget.ActivityChooserModel$ActivityResolveInfo)
.class public final Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActivityResolveInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final resolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

.field public weight:F


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserModel;Landroid/content/pm/ResolveInfo;)V
    .registers 3
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 885
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 886
    iput-object p2, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 887
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;)I
    .registers 4
    .param p1, "another"    # Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;

    .prologue
    .line 913
    iget v0, p1, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 868
    check-cast p1, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->compareTo(Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 896
    if-ne p0, p1, :cond_5

    .line 909
    :cond_4
    :goto_4
    return v1

    .line 899
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 900
    goto :goto_4

    .line 902
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 903
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 905
    check-cast v0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 906
    .local v0, "other":Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;
    iget v3, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 907
    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 891
    iget v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 919
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    const-string v1, "resolveInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    const-string v1, "; weight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    iget v3, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    float-to-double v4, v3

    invoke-direct {v2, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 922
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class android.support.v7.internal.widget.ActivityChooserModel.ActivitySorter (android.support.v7.internal.widget.ActivityChooserModel$ActivitySorter)
.class public interface abstract Landroid/support/v7/internal/widget/ActivityChooserModel$ActivitySorter;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivitySorter"
.end annotation


# virtual methods
.method public abstract sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;",
            ">;)V"
        }
    .end annotation
.end method

###### Class android.support.v7.internal.widget.ActivityChooserModel.DefaultSorter (android.support.v7.internal.widget.ActivityChooserModel$DefaultSorter)
.class final Landroid/support/v7/internal/widget/ActivityChooserModel$DefaultSorter;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Landroid/support/v7/internal/widget/ActivityChooserModel$ActivitySorter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultSorter"
.end annotation


# static fields
.field private static final WEIGHT_DECAY_COEFFICIENT:F = 0.95f


# instance fields
.field private final mPackageNameToActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserModel;)V
    .registers 3

    .prologue
    .line 930
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$DefaultSorter;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserModel;Landroid/support/v7/internal/widget/ActivityChooserModel$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v7/internal/widget/ActivityChooserModel;
    .param p2, "x1"    # Landroid/support/v7/internal/widget/ActivityChooserModel$1;

    .prologue
    .line 930
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/support/v7/internal/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 938
    .local p2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    .local p3, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    iget-object v7, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    .line 940
    .local v7, "packageNameToActivityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 942
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 943
    .local v1, "activityCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v1, :cond_21

    .line 944
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 945
    .local v0, "activity":Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;
    const/4 v8, 0x0

    iput v8, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 946
    iget-object v8, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 947
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 950
    .end local v0    # "activity":Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_21
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 951
    .local v4, "lastShareIndex":I
    const/high16 v5, 0x3f800000    # 1.0f

    .line 952
    .local v5, "nextRecordWeight":F
    move v3, v4

    :goto_2a
    if-ltz v3, :cond_4f

    .line 953
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;

    .line 954
    .local v2, "historicalRecord":Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;
    iget-object v8, v2, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 955
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 956
    .restart local v0    # "activity":Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;
    if-eqz v0, :cond_4c

    .line 957
    iget v8, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v9, v2, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iput v8, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 958
    const v8, 0x3f733333    # 0.95f

    mul-float/2addr v5, v8

    .line 952
    :cond_4c
    add-int/lit8 v3, v3, -0x1

    goto :goto_2a

    .line 962
    .end local v0    # "activity":Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v2    # "historicalRecord":Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_4f
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 969
    return-void
.end method

###### Class android.support.v7.internal.widget.ActivityChooserModel.HistoricalRecord (android.support.v7.internal.widget.ActivityChooserModel$HistoricalRecord)
.class public final Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoricalRecord"
.end annotation


# instance fields
.field public final activity:Landroid/content/ComponentName;

.field public final time:J

.field public final weight:F


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;JF)V
    .registers 5
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .param p2, "time"    # J
    .param p4, "weight"    # F

    .prologue
    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    .line 811
    iput-wide p2, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->time:J

    .line 812
    iput p4, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    .line 813
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JF)V
    .registers 7
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "weight"    # F

    .prologue
    .line 799
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 800
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 827
    if-ne p0, p1, :cond_5

    .line 850
    :cond_4
    :goto_4
    return v1

    .line 830
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 831
    goto :goto_4

    .line 833
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 834
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 836
    check-cast v0, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;

    .line 837
    .local v0, "other":Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    if-nez v3, :cond_22

    .line 838
    iget-object v3, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    if-eqz v3, :cond_2e

    move v1, v2

    .line 839
    goto :goto_4

    .line 841
    :cond_22
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    move v1, v2

    .line 842
    goto :goto_4

    .line 844
    :cond_2e
    iget-wide v4, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->time:J

    iget-wide v6, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->time:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_38

    move v1, v2

    .line 845
    goto :goto_4

    .line 847
    :cond_38
    iget v3, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 848
    goto :goto_4
.end method

.method public hashCode()I
    .registers 9

    .prologue
    .line 817
    const/16 v0, 0x1f

    .line 818
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 819
    .local v1, "result":I
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    if-nez v2, :cond_22

    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v1, v2, 0x1f

    .line 820
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->time:J

    iget-wide v6, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->time:J

    const/16 v3, 0x20

    ushr-long/2addr v6, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v1, v2, v3

    .line 821
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 822
    return v1

    .line 819
    :cond_22
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    move-result v2

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 856
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    const-string v1, "; activity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 858
    const-string v1, "; time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 859
    const-string v1, "; weight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    iget v3, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    float-to-double v4, v3

    invoke-direct {v2, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 860
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class android.support.v7.internal.widget.ActivityChooserModel.OnChooseActivityListener (android.support.v7.internal.widget.ActivityChooserModel$OnChooseActivityListener)
.class public interface abstract Landroid/support/v7/internal/widget/ActivityChooserModel$OnChooseActivityListener;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnChooseActivityListener"
.end annotation


# virtual methods
.method public abstract onChooseActivity(Landroid/support/v7/internal/widget/ActivityChooserModel;Landroid/content/Intent;)Z
.end method

###### Class android.support.v7.internal.widget.ActivityChooserModel.PersistHistoryAsyncTask (android.support.v7.internal.widget.ActivityChooserModel$PersistHistoryAsyncTask)
.class final Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersistHistoryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserModel;)V
    .registers 2

    .prologue
    .line 1049
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserModel;Landroid/support/v7/internal/widget/ActivityChooserModel$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v7/internal/widget/ActivityChooserModel;
    .param p2, "x1"    # Landroid/support/v7/internal/widget/ActivityChooserModel$1;

    .prologue
    .line 1049
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/support/v7/internal/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1049
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 20
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1054
    const/4 v13, 0x0

    aget-object v4, p1, v13

    check-cast v4, Ljava/util/List;

    .line 1055
    .local v4, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    const/4 v13, 0x1

    aget-object v5, p1, v13

    check-cast v5, Ljava/lang/String;

    .line 1057
    .local v5, "hostoryFileName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1060
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    invoke-static {v13}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$200(Landroid/support/v7/internal/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v5, v14}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_17} :catch_73

    move-result-object v3

    .line 1066
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v12

    .line 1069
    .local v12, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v13, 0x0

    :try_start_1d
    invoke-interface {v12, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1070
    const-string v13, "UTF-8"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1071
    const/4 v13, 0x0

    const-string v14, "historical-records"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1073
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    .line 1074
    .local v11, "recordCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_35
    if-ge v6, v11, :cond_90

    .line 1075
    const/4 v13, 0x0

    invoke-interface {v4, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;

    .line 1076
    .local v10, "record":Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;
    const/4 v13, 0x0

    const-string v14, "historical-record"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1077
    const/4 v13, 0x0

    const-string v14, "activity"

    iget-object v15, v10, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1079
    const/4 v13, 0x0

    const-string v14, "time"

    iget-wide v0, v10, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->time:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1080
    const/4 v13, 0x0

    const-string v14, "weight"

    iget v15, v10, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1081
    const/4 v13, 0x0

    const-string v14, "historical-record"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_70
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_70} :catch_a8
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_70} :catch_db
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_70} :catch_10e
    .catchall {:try_start_1d .. :try_end_70} :catchall_143

    .line 1074
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    .line 1061
    .end local v6    # "i":I
    .end local v10    # "record":Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;
    .end local v11    # "recordCount":I
    .end local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_73
    move-exception v2

    .line 1062
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    invoke-static {}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1063
    const/4 v13, 0x0

    .line 1109
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_8f
    return-object v13

    .line 1087
    .restart local v6    # "i":I
    .restart local v11    # "recordCount":I
    .restart local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_90
    const/4 v13, 0x0

    :try_start_91
    const-string v14, "historical-records"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1088
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_99
    .catch Ljava/lang/IllegalArgumentException; {:try_start_91 .. :try_end_99} :catch_a8
    .catch Ljava/lang/IllegalStateException; {:try_start_91 .. :try_end_99} :catch_db
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_99} :catch_10e
    .catchall {:try_start_91 .. :try_end_99} :catchall_143

    .line 1100
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$502(Landroid/support/v7/internal/widget/ActivityChooserModel;Z)Z

    .line 1101
    if-eqz v3, :cond_a6

    .line 1103
    :try_start_a3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_152

    .line 1109
    .end local v6    # "i":I
    .end local v11    # "recordCount":I
    :cond_a6
    :goto_a6
    const/4 v13, 0x0

    goto :goto_8f

    .line 1093
    :catch_a8
    move-exception v7

    .line 1094
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_a9
    invoke-static {}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    invoke-static {v15}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$400(Landroid/support/v7/internal/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cb
    .catchall {:try_start_a9 .. :try_end_cb} :catchall_143

    .line 1100
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$502(Landroid/support/v7/internal/widget/ActivityChooserModel;Z)Z

    .line 1101
    if-eqz v3, :cond_a6

    .line 1103
    :try_start_d5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_d9

    goto :goto_a6

    .line 1104
    :catch_d9
    move-exception v13

    goto :goto_a6

    .line 1095
    .end local v7    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_db
    move-exception v9

    .line 1096
    .local v9, "ise":Ljava/lang/IllegalStateException;
    :try_start_dc
    invoke-static {}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    invoke-static {v15}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$400(Landroid/support/v7/internal/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fe
    .catchall {:try_start_dc .. :try_end_fe} :catchall_143

    .line 1100
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$502(Landroid/support/v7/internal/widget/ActivityChooserModel;Z)Z

    .line 1101
    if-eqz v3, :cond_a6

    .line 1103
    :try_start_108
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_10b} :catch_10c

    goto :goto_a6

    .line 1104
    :catch_10c
    move-exception v13

    goto :goto_a6

    .line 1097
    .end local v9    # "ise":Ljava/lang/IllegalStateException;
    :catch_10e
    move-exception v8

    .line 1098
    .local v8, "ioe":Ljava/io/IOException;
    :try_start_10f
    invoke-static {}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    invoke-static {v15}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$400(Landroid/support/v7/internal/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_131
    .catchall {:try_start_10f .. :try_end_131} :catchall_143

    .line 1100
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$502(Landroid/support/v7/internal/widget/ActivityChooserModel;Z)Z

    .line 1101
    if-eqz v3, :cond_a6

    .line 1103
    :try_start_13b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_13e} :catch_140

    goto/16 :goto_a6

    .line 1104
    :catch_140
    move-exception v13

    goto/16 :goto_a6

    .line 1100
    .end local v8    # "ioe":Ljava/io/IOException;
    :catchall_143
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$502(Landroid/support/v7/internal/widget/ActivityChooserModel;Z)Z

    .line 1101
    if-eqz v3, :cond_151

    .line 1103
    :try_start_14e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_151} :catch_155

    .line 1106
    :cond_151
    :goto_151
    throw v13

    .line 1104
    .restart local v6    # "i":I
    .restart local v11    # "recordCount":I
    :catch_152
    move-exception v13

    goto/16 :goto_a6

    .end local v6    # "i":I
    .end local v11    # "recordCount":I
    :catch_155
    move-exception v14

    goto :goto_151
.end method
