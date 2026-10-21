###### Class com.tendcloud.tenddata.TDGAAccount (com.tendcloud.tenddata.TDGAAccount)
.class public final Lcom/tendcloud/tenddata/TDGAAccount;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/TDGAAccount$a;,
        Lcom/tendcloud/tenddata/TDGAAccount$Gender;,
        Lcom/tendcloud/tenddata/TDGAAccount$AccountType;
    }
.end annotation


# static fields
.field public static a:Lcom/tendcloud/tenddata/TDGAAccount; = null

.field private static final l:Ljava/lang/String; = "accountId"

.field private static final m:Ljava/lang/String; = "userLevel"

.field private static final n:Ljava/lang/String; = "gender"

.field private static final o:Ljava/lang/String; = "accountName"

.field private static final p:Ljava/lang/String; = "age"

.field private static final q:Ljava/lang/String; = "accountType"

.field private static final r:Ljava/lang/String; = "account_file"

.field private static final s:Ljava/lang/String; = "levelup_duration"

.field private static final t:Ljava/lang/String; = "game_duration"

.field private static final u:Ljava/lang/String; = "mission_duration"

.field private static final v:I


# instance fields
.field b:Ljava/lang/String;

.field c:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field d:Ljava/lang/String;

.field e:I

.field f:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

.field g:I

.field h:Ljava/lang/String;

.field public i:J

.field public j:Ljava/util/concurrent/atomic/AtomicLong;

.field k:J


# direct methods
.method protected constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->ANONYMOUS:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->c:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->d:Ljava/lang/String;

    iput v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->e:I

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->UNKNOW:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->f:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    iput v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->g:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tendcloud/tenddata/TDGAAccount;->i:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->j:Ljava/util/concurrent/atomic/AtomicLong;

    iput-wide v2, p0, Lcom/tendcloud/tenddata/TDGAAccount;->k:J

    return-void
.end method

.method static final a(Landroid/content/Context;)Lcom/tendcloud/tenddata/TDGAAccount;
    .registers 3

    invoke-static {}, Lcom/tendcloud/tenddata/game/bq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object v0

    return-object v0
.end method

.method static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount;
    .registers 9

    const/4 v4, 0x0

    invoke-static {p0, p1, p2}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/TDGAAccount;-><init>()V

    iput-object p1, v1, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    iput-object p2, v1, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    if-eqz v0, :cond_67

    const-string v2, "accountType"

    sget-object v3, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->ANONYMOUS:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    move-result-object v2

    iput-object v2, v1, Lcom/tendcloud/tenddata/TDGAAccount;->c:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v2, "accountName"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tendcloud/tenddata/TDGAAccount;->d:Ljava/lang/String;

    const-string v2, "userLevel"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tendcloud/tenddata/TDGAAccount;->e:I

    const-string v2, "age"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tendcloud/tenddata/TDGAAccount;->g:I

    const-string v2, "gender"

    sget-object v3, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->UNKNOW:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    move-result-object v2

    iput-object v2, v1, Lcom/tendcloud/tenddata/TDGAAccount;->f:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    const-string v2, "game_duration"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    :cond_56
    iget-object v0, v1, Lcom/tendcloud/tenddata/TDGAAccount;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-object v0, v1, Lcom/tendcloud/tenddata/TDGAAccount;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v4, v5, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/TDGAAccount;->c()V

    :cond_67
    return-object v1
.end method

.method static final a(Landroid/content/Context;Lcom/tendcloud/tenddata/TDGAAccount;)V
    .registers 5

    iget-object v0, p1, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accountId"

    iget-object v2, p1, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "accountType"

    iget-object v2, p1, Lcom/tendcloud/tenddata/TDGAAccount;->c:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "accountName"

    iget-object v2, p1, Lcom/tendcloud/tenddata/TDGAAccount;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "userLevel"

    iget v2, p1, Lcom/tendcloud/tenddata/TDGAAccount;->e:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "age"

    iget v2, p1, Lcom/tendcloud/tenddata/TDGAAccount;->g:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gender"

    iget-object v2, p1, Lcom/tendcloud/tenddata/TDGAAccount;->f:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_43
    return-void
.end method

.method private static final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "account_file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private final d()J
    .registers 8

    const-wide/16 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "TDGAAccount.getLevelUpDuration() called."

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1d

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "TalkingDataGA.getContext() == null."

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V

    :goto_1c
    return-wide v0

    :cond_1d
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->b()J

    move-result-wide v4

    iget-object v3, p0, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "levelup_duration"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "levelup_duration"

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sub-long v0, v4, v0

    goto :goto_1c
.end method

.method private final e()V
    .registers 4

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/TDGAAccount;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/bv;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tendcloud/tenddata/game/cn;

    sget-object v2, Lcom/tendcloud/tenddata/game/br;->a:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Lcom/tendcloud/tenddata/game/cn;-><init>(Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;)V

    const/16 v2, 0xd

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private final f()V
    .registers 4

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/bq;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/TDGAAccount;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/bv;->a()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static setAccount(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount;
    .registers 5

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->a()Z

    move-result v1

    if-nez v1, :cond_13

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "TDGAAccount.setAccount()#SDK not initialized. "

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    :goto_12
    return-object v0

    :cond_13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "TDGAAccount.setAccount()#accountid is null, please check it."

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    goto :goto_12

    :cond_23
    new-array v0, v2, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDGAAccount.setAccount()#accountid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iget-object v0, v0, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_68

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iput-object p0, v0, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    :goto_4d
    invoke-static {}, Lcom/tendcloud/tenddata/game/bq;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/az;->e()V

    :cond_5f
    sget-object v1, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/TDGAAccount;)V

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)V

    goto :goto_12

    :cond_68
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iget-object v0, v0, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    goto :goto_4d

    :cond_75
    invoke-static {}, Lcom/tendcloud/tenddata/game/bv;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {v2, p0, v0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object v0

    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/TDGAAccount;->a()V

    new-instance v2, Lcom/tendcloud/tenddata/TDGAAccount$a;

    invoke-direct {v2}, Lcom/tendcloud/tenddata/TDGAAccount$a;-><init>()V

    sget-object v3, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iput-object v3, v2, Lcom/tendcloud/tenddata/TDGAAccount$a;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iput-object v0, v2, Lcom/tendcloud/tenddata/TDGAAccount$a;->b:Lcom/tendcloud/tenddata/TDGAAccount;

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    const/16 v3, 0xc

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4d
.end method


# virtual methods
.method public final a()V
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TDGAAccount.updateGameDuration() called."

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1b

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TalkingDataGA.getContext() == null."

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    :goto_1a
    return-void

    :cond_1b
    iget-object v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->b()J

    move-result-wide v4

    iget-object v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "game_duration"

    iget-object v2, p0, Lcom/tendcloud/tenddata/TDGAAccount;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->c()V

    goto :goto_1a
.end method

.method final a(Ljava/lang/String;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_12

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "TalkingDataGA.getContext() == null."

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->b()J

    move-result-wide v2

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "TDGAAccount.setMissionStart() called. missionId="

    aput-object v4, v1, v5

    aput-object p1, v1, v6

    const/4 v4, 0x2

    const-string v5, "   gameduration="

    aput-object v5, v1, v4

    const/4 v4, 0x3

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mission_duration_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_11
.end method

.method final b()J
    .registers 5

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tendcloud/tenddata/TDGAAccount;->k:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method final b(Ljava/lang/String;)J
    .registers 9

    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v2, v6, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TDGAAccount.getMissionDuration() called. missionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TalkingDataGA.getContext() == null."

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V

    :goto_2d
    return-wide v0

    :cond_2e
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->b()J

    move-result-wide v4

    iget-object v3, p0, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mission_duration_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sub-long v0, v4, v0

    goto :goto_2d
.end method

.method final c()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->k:J

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p0

    :goto_4
    return-object p0

    :catch_5
    move-exception v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Cloning not allowed."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public final getAccountId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getAccountName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getAccountType()Lcom/tendcloud/tenddata/TDGAAccount$AccountType;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->c:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    return-object v0
.end method

.method public final getAge()I
    .registers 2

    iget v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->g:I

    return v0
.end method

.method public final getGameServer()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getGender()Lcom/tendcloud/tenddata/TDGAAccount$Gender;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->f:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    return-object v0
.end method

.method public final getLevel()I
    .registers 2

    iget v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->e:I

    return v0
.end method

.method public final setAccountName(Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TDGAAccount.setAccountName()#setAccountName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    :cond_1e
    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->e()V

    return-void
.end method

.method public final setAccountType(Lcom/tendcloud/tenddata/TDGAAccount$AccountType;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TDGAAccount.setAccountType()#accountType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->c:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->e()V

    return-void
.end method

.method public final setAge(I)V
    .registers 6

    iget v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->g:I

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TDGAAccount.setAge()#age:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    iput p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->g:I

    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->e()V

    goto :goto_4
.end method

.method public final setGameServer(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TDGAAccount.setGameServer()#gameServer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->f()V

    :cond_2f
    return-void
.end method

.method public final setGender(Lcom/tendcloud/tenddata/TDGAAccount$Gender;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TDGAAccount.setGender()#setGender:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->f:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->e()V

    return-void
.end method

.method public final setLevel(I)V
    .registers 10

    iget v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->e:I

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TDGAAccount.setLevel()#setLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    iget v5, p0, Lcom/tendcloud/tenddata/TDGAAccount;->e:I

    iput p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->e:I

    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->d()J

    move-result-wide v6

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataGA;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/TDGAAccount;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/bv;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tendcloud/tenddata/game/ce;

    sget-object v2, Lcom/tendcloud/tenddata/game/br;->a:Ljava/lang/String;

    sget-object v4, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/tendcloud/tenddata/game/ce;-><init>(Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;IJ)V

    const/16 v2, 0xf

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

###### Class com.tendcloud.tenddata.TDGAAccount.AccountType (com.tendcloud.tenddata.TDGAAccount$AccountType)
.class public final enum Lcom/tendcloud/tenddata/TDGAAccount$AccountType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/TDGAAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccountType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum ANONYMOUS:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum ND91:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum QQ:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum QQ_WEIBO:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum REGISTERED:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum SINA_WEIBO:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum TYPE1:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum TYPE10:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum TYPE2:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum TYPE3:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum TYPE4:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum TYPE5:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum TYPE6:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum TYPE7:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum TYPE8:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum TYPE9:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v1, "ANONYMOUS"

    invoke-direct {v0, v1, v4, v4}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->ANONYMOUS:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v1, "REGISTERED"

    invoke-direct {v0, v1, v5, v5}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->REGISTERED:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v1, "SINA_WEIBO"

    invoke-direct {v0, v1, v6, v6}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->SINA_WEIBO:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v1, "QQ"

    invoke-direct {v0, v1, v7, v7}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->QQ:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v1, "QQ_WEIBO"

    invoke-direct {v0, v1, v8, v8}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->QQ_WEIBO:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v1, "ND91"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->ND91:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v1, "TYPE1"

    const/4 v2, 0x6

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE1:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v1, "TYPE2"

    const/4 v2, 0x7

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE2:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v1, "TYPE3"

    const/16 v2, 0x8

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE3:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v1, "TYPE4"

    const/16 v2, 0x9

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE4:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v1, "TYPE5"

    const/16 v2, 0xa

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE5:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v1, "TYPE6"

    const/16 v2, 0xb

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE6:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v1, "TYPE7"

    const/16 v2, 0xc

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE7:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v1, "TYPE8"

    const/16 v2, 0xd

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE8:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v1, "TYPE9"

    const/16 v2, 0xe

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE9:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v1, "TYPE10"

    const/16 v2, 0xf

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE10:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    sget-object v1, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->ANONYMOUS:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->REGISTERED:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->SINA_WEIBO:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->QQ:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->QQ_WEIBO:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->ND91:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE1:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE2:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE3:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE4:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE5:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE6:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE7:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE8:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE9:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE10:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->$VALUES:[Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount$AccountType;
    .registers 2

    const-class v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    return-object v0
.end method

.method public static values()[Lcom/tendcloud/tenddata/TDGAAccount$AccountType;
    .registers 1

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->$VALUES:[Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    return-object v0
.end method


# virtual methods
.method public index()I
    .registers 2

    iget v0, p0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->a:I

    return v0
.end method

###### Class com.tendcloud.tenddata.TDGAAccount.Gender (com.tendcloud.tenddata.TDGAAccount$Gender)
.class public final enum Lcom/tendcloud/tenddata/TDGAAccount$Gender;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/TDGAAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tendcloud/tenddata/TDGAAccount$Gender;

.field public static final enum FEMALE:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

.field public static final enum MALE:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

.field public static final enum UNKNOW:Lcom/tendcloud/tenddata/TDGAAccount$Gender;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    const-string v1, "UNKNOW"

    invoke-direct {v0, v1, v2, v2}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->UNKNOW:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v3, v3}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->MALE:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v4, v4}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->FEMALE:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    sget-object v1, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->UNKNOW:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->MALE:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->FEMALE:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->$VALUES:[Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount$Gender;
    .registers 2

    const-class v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    return-object v0
.end method

.method public static values()[Lcom/tendcloud/tenddata/TDGAAccount$Gender;
    .registers 1

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->$VALUES:[Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/TDGAAccount$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    return-object v0
.end method


# virtual methods
.method public index()I
    .registers 2

    iget v0, p0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->a:I

    return v0
.end method

###### Class com.tendcloud.tenddata.TDGAAccount.a (com.tendcloud.tenddata.TDGAAccount$a)
.class public Lcom/tendcloud/tenddata/TDGAAccount$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/TDGAAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/tendcloud/tenddata/TDGAAccount;

.field public b:Lcom/tendcloud/tenddata/TDGAAccount;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
