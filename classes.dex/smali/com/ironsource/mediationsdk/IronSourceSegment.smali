###### Class com.ironsource.mediationsdk.IronSourceSegment (com.ironsource.mediationsdk.IronSourceSegment)
.class public Lcom/ironsource/mediationsdk/IronSourceSegment;
.super Ljava/lang/Object;
.source "IronSourceSegment.java"


# static fields
.field public static final AGE:Ljava/lang/String; = "age"

.field public static final GENDER:Ljava/lang/String; = "gen"

.field public static final IAPT:Ljava/lang/String; = "iapt"

.field public static final LEVEL:Ljava/lang/String; = "lvl"

.field public static final PAYING:Ljava/lang/String; = "pay"

.field private static final SEGMENT_NAME:Ljava/lang/String; = "segName"

.field public static final USER_CREATION_DATE:Ljava/lang/String; = "ucd"


# instance fields
.field private final CUSTOM:Ljava/lang/String;

.field private final MAX_CUSTOMS:I

.field private MAX_IAPT:D

.field private MAX_LEVEL:I

.field private mAge:I

.field private mCustoms:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGender:Ljava/lang/String;

.field private mIapt:D

.field private mIsPaying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLevel:I

.field private mSegmentName:Ljava/lang/String;

.field private mUcd:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const v0, 0xf423f

    iput v0, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->MAX_LEVEL:I

    .line 32
    const-wide v0, 0x412e847ffae147aeL    # 999999.99

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->MAX_IAPT:D

    .line 34
    const-string v0, "custom"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->CUSTOM:Ljava/lang/String;

    .line 35
    const/4 v0, 0x5

    iput v0, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->MAX_CUSTOMS:I

    .line 37
    iput v2, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mAge:I

    .line 39
    iput v2, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mLevel:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mIsPaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mIapt:D

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mUcd:J

    .line 76
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mCustoms:Ljava/util/Vector;

    .line 77
    return-void
.end method

.method private validateAlphanumeric(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 171
    if-nez p1, :cond_4

    .line 172
    const/4 v1, 0x0

    .line 175
    :goto_3
    return v1

    .line 174
    :cond_4
    const-string v0, "^[a-zA-Z0-9]*$"

    .line 175
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    goto :goto_3
.end method

.method private validateLength(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I

    .prologue
    .line 178
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p2, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p3, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public getAge()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mAge:I

    return v0
.end method

.method public getGender()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mGender:Ljava/lang/String;

    return-object v0
.end method

.method public getIapt()D
    .registers 3

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mIapt:D

    return-wide v0
.end method

.method public getIsPaying()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mIsPaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public getLevel()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mLevel:I

    return v0
.end method

.method getSegmentData()Ljava/util/Vector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 150
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 151
    .local v0, "res":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget v1, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mAge:I

    if-eq v1, v5, :cond_29

    .line 152
    new-instance v1, Landroid/util/Pair;

    const-string v2, "age"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mAge:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_29
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mGender:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 154
    new-instance v1, Landroid/util/Pair;

    const-string v2, "gen"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mGender:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_3d
    iget v1, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mLevel:I

    if-eq v1, v5, :cond_60

    .line 156
    new-instance v1, Landroid/util/Pair;

    const-string v2, "lvl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_60
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mIsPaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_83

    .line 158
    new-instance v1, Landroid/util/Pair;

    const-string v2, "pay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mIsPaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_83
    iget-wide v2, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mIapt:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_aa

    .line 160
    new-instance v1, Landroid/util/Pair;

    const-string v2, "iapt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mIapt:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_aa
    iget-wide v2, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mUcd:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_d1

    .line 162
    new-instance v1, Landroid/util/Pair;

    const-string v2, "ucd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mUcd:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_d1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mSegmentName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e5

    .line 164
    new-instance v1, Landroid/util/Pair;

    const-string v2, "segName"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mSegmentName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_e5
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mCustoms:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 167
    return-object v0
.end method

.method public getSegmentName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mSegmentName:Ljava/lang/String;

    return-object v0
.end method

.method public getUcd()J
    .registers 3

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mUcd:J

    return-wide v0
.end method

.method public setAge(I)V
    .registers 6
    .param p1, "age"    # I

    .prologue
    .line 80
    if-lez p1, :cond_9

    const/16 v0, 0xc7

    if-gt p1, v0, :cond_9

    .line 81
    iput p1, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mAge:I

    .line 85
    :goto_8
    return-void

    .line 82
    :cond_9
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAge( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) age must be between 1-199"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_8
.end method

.method public setCustom(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 131
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->validateAlphanumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/IronSourceSegment;->validateAlphanumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const/4 v2, 0x1

    const/16 v3, 0x20

    invoke-direct {p0, p1, v2, v3}, Lcom/ironsource/mediationsdk/IronSourceSegment;->validateLength(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_5b

    const/4 v2, 0x1

    const/16 v3, 0x20

    invoke-direct {p0, p2, v2, v3}, Lcom/ironsource/mediationsdk/IronSourceSegment;->validateLength(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "newKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mCustoms:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_45

    .line 134
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mCustoms:Ljava/util/Vector;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v1    # "newKey":Ljava/lang/String;
    :goto_44
    return-void

    .line 136
    .restart local v1    # "newKey":Ljava/lang/String;
    :cond_45
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mCustoms:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 137
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mCustoms:Ljava/util/Vector;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_55} :catch_56

    goto :goto_44

    .line 143
    .end local v1    # "newKey":Ljava/lang/String;
    :catch_56
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5b
    :try_start_5b
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCustom( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) key and value must be alphanumeric and 1-32 in length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_88} :catch_56

    goto :goto_44
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 6
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "male"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "female"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 89
    :cond_1e
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mGender:Ljava/lang/String;

    .line 92
    :goto_20
    return-void

    .line 90
    :cond_21
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGender( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) is invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_20
.end method

.method public setIAPTotal(D)V
    .registers 10
    .param p1, "iAPTotal"    # D

    .prologue
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 109
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_18

    iget-wide v0, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->MAX_IAPT:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_18

    .line 110
    mul-double v0, p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mIapt:D

    .line 113
    :goto_17
    return-void

    .line 111
    :cond_18
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIAPTotal( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) iapt must be between 0-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->MAX_IAPT:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_17
.end method

.method public setIsPaying(Z)V
    .registers 3
    .param p1, "isPaying"    # Z

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mIsPaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_b

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mIsPaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    :cond_b
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mIsPaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106
    return-void
.end method

.method public setLevel(I)V
    .registers 6
    .param p1, "level"    # I

    .prologue
    .line 95
    if-lez p1, :cond_9

    iget v0, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->MAX_LEVEL:I

    if-ge p1, v0, :cond_9

    .line 96
    iput p1, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mLevel:I

    .line 99
    :goto_8
    return-void

    .line 97
    :cond_9
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLevel( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) level must be between 1-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->MAX_LEVEL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_8
.end method

.method public setSegmentName(Ljava/lang/String;)V
    .registers 6
    .param p1, "segmentName"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->validateAlphanumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    const/16 v1, 0x20

    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->validateLength(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 123
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mSegmentName:Ljava/lang/String;

    .line 127
    :goto_11
    return-void

    .line 125
    :cond_12
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSegmentName( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) segment name must be alphanumeric and 1-32 in length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_11
.end method

.method public setUserCreationDate(J)V
    .registers 8
    .param p1, "ucd"    # J

    .prologue
    .line 116
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_9

    .line 117
    iput-wide p1, p0, Lcom/ironsource/mediationsdk/IronSourceSegment;->mUcd:J

    .line 119
    :goto_8
    return-void

    .line 118
    :cond_9
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUserCreationDate( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) is an invalid timestamp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_8
.end method
