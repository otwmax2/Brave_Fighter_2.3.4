###### Class com.moat.analytics.mobile.cha.p (com.moat.analytics.mobile.cha.p)
.class Lcom/moat/analytics/mobile/cha/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/cha/p$d;,
        Lcom/moat/analytics/mobile/cha/p$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# static fields
.field private static final ˋ:[Ljava/lang/Object;


# instance fields
.field private final ˊ:Lcom/moat/analytics/mobile/cha/p$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/cha/p$c",
            "<TT;>;"
        }
    .end annotation
.end field

.field private ˎ:Z

.field private final ˏ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/moat/analytics/mobile/cha/p",
            "<TT;>.d;>;"
        }
    .end annotation
.end field

.field private final ॱ:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private ᐝ:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/moat/analytics/mobile/cha/p;->ˋ:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/moat/analytics/mobile/cha/p$c;Ljava/lang/Class;)V
    .registers 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moat/analytics/mobile/cha/p$c",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/base/asserts/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    invoke-static {p2}, Lcom/moat/analytics/mobile/cha/base/asserts/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 75
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/p;->ˊ:Lcom/moat/analytics/mobile/cha/p$c;

    .line 76
    iput-object p2, p0, Lcom/moat/analytics/mobile/cha/p;->ॱ:Ljava/lang/Class;

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/p;->ˏ:Ljava/util/LinkedList;

    .line 81
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˏ()Lcom/moat/analytics/mobile/cha/t;

    move-result-object v0

    new-instance v1, Lcom/moat/analytics/mobile/cha/p$1;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/cha/p$1;-><init>(Lcom/moat/analytics/mobile/cha/p;)V

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/cha/t;->ˊ(Lcom/moat/analytics/mobile/cha/t$b;)V

    .line 89
    return-void
.end method

.method private static ˊ(Ljava/lang/reflect/Method;)Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 207
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 208
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    .line 214
    :goto_11
    return-object v0

    .line 211
    :catch_12
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    .line 214
    :cond_16
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static ˋ(Lcom/moat/analytics/mobile/cha/p$c;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/cha/p$c",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/moat/analytics/mobile/cha/p;

    invoke-direct {v1, p0, p1}, Lcom/moat/analytics/mobile/cha/p;-><init>(Lcom/moat/analytics/mobile/cha/p$c;Ljava/lang/Class;)V

    .line 114
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private ˎ()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 177
    .line 2164
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/p;->ˎ:Z

    if-nez v0, :cond_15

    .line 2166
    :try_start_5
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/p;->ˊ:Lcom/moat/analytics/mobile/cha/p$c;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/cha/p$c;->ˋ()Lcom/moat/analytics/mobile/cha/base/functional/Optional;

    move-result-object v0

    .line 2167
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/p;->ᐝ:Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_1a

    .line 2172
    :goto_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/p;->ˎ:Z

    .line 178
    :cond_15
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/p;->ᐝ:Ljava/lang/Object;

    if-nez v0, :cond_26

    .line 196
    :goto_19
    return-void

    .line 2168
    :catch_1a
    move-exception v0

    .line 2169
    const-string v1, "OnOffTrackerProxy"

    const-string v3, "Could not create instance"

    invoke-static {v1, p0, v3, v0}, Lcom/moat/analytics/mobile/cha/a;->ॱ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2170
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto :goto_12

    .line 182
    :cond_26
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/p;->ˏ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/cha/p$d;

    .line 184
    :try_start_38
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/p$d;->ˊ(Lcom/moat/analytics/mobile/cha/p$d;)[Ljava/lang/ref/WeakReference;

    move-result-object v1

    array-length v1, v1

    new-array v6, v1, [Ljava/lang/Object;

    .line 186
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/p$d;->ˊ(Lcom/moat/analytics/mobile/cha/p$d;)[Ljava/lang/ref/WeakReference;

    move-result-object v7

    array-length v8, v7

    move v1, v2

    move v3, v2

    :goto_46
    if-ge v1, v8, :cond_56

    aget-object v9, v7, v1

    .line 187
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v6, v3

    .line 186
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_46

    .line 189
    :cond_56
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/p$d;->ˋ(Lcom/moat/analytics/mobile/cha/p$d;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/p;->ᐝ:Ljava/lang/Object;

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_5f} :catch_60

    goto :goto_2c

    .line 191
    :catch_60
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto :goto_2c

    .line 194
    :cond_65
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/p;->ˏ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_19
.end method

.method static synthetic ˎ(Lcom/moat/analytics/mobile/cha/p;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/p;->ˎ()V

    return-void
.end method

.method static synthetic ˏ()[Ljava/lang/Object;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/moat/analytics/mobile/cha/p;->ˋ:[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 120
    .line 1128
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 1129
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˏ()Lcom/moat/analytics/mobile/cha/t;

    move-result-object v1

    .line 1130
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1131
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1132
    const-string v1, "getClass"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1133
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/p;->ॱ:Ljava/lang/Class;

    .line 1152
    :goto_1e
    return-object v0

    .line 1135
    :cond_1f
    const-string v1, "toString"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1136
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1137
    const-class v1, Lcom/moat/analytics/mobile/cha/p;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1138
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/p;->ॱ:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1139
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 1142
    :cond_40
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1e

    .line 1144
    :cond_45
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/p;->ˎ:Z

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/p;->ᐝ:Ljava/lang/Object;

    if-nez v0, :cond_57

    .line 1146
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/p;->ˏ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1147
    invoke-static {p2}, Lcom/moat/analytics/mobile/cha/p;->ˊ(Ljava/lang/reflect/Method;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1e

    .line 1149
    :cond_57
    iget v0, v1, Lcom/moat/analytics/mobile/cha/t;->ˎ:I

    sget v2, Lcom/moat/analytics/mobile/cha/t$a;->ˎ:I

    if-ne v0, v2, :cond_6b

    .line 1150
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/p;->ˎ()V

    .line 1151
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/p;->ᐝ:Ljava/lang/Object;

    if-eqz v0, :cond_6b

    .line 1152
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/p;->ᐝ:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1e

    .line 1155
    :cond_6b
    iget v0, v1, Lcom/moat/analytics/mobile/cha/t;->ˎ:I

    sget v1, Lcom/moat/analytics/mobile/cha/t$a;->ॱ:I

    if-ne v0, v1, :cond_94

    .line 1156
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/p;->ˎ:Z

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/p;->ᐝ:Ljava/lang/Object;

    if-eqz v0, :cond_94

    .line 1199
    :cond_79
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/p;->ˏ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_89

    .line 1200
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/p;->ˏ:Ljava/util/LinkedList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 1202
    :cond_89
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/p;->ˏ:Ljava/util/LinkedList;

    new-instance v1, Lcom/moat/analytics/mobile/cha/p$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p3, v2}, Lcom/moat/analytics/mobile/cha/p$d;-><init>(Lcom/moat/analytics/mobile/cha/p;Ljava/lang/reflect/Method;[Ljava/lang/Object;B)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1160
    :cond_94
    invoke-static {p2}, Lcom/moat/analytics/mobile/cha/p;->ˊ(Ljava/lang/reflect/Method;)Ljava/lang/Boolean;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_97} :catch_99

    move-result-object v0

    goto :goto_1e

    .line 122
    :catch_99
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    .line 123
    invoke-static {p2}, Lcom/moat/analytics/mobile/cha/p;->ˊ(Ljava/lang/reflect/Method;)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1e
.end method

###### Class com.moat.analytics.mobile.cha.p.AnonymousClass1 (com.moat.analytics.mobile.cha.p$1)
.class final Lcom/moat/analytics/mobile/cha/p$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moat/analytics/mobile/cha/t$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/cha/p;-><init>(Lcom/moat/analytics/mobile/cha/p$c;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ॱ:Lcom/moat/analytics/mobile/cha/p;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/cha/p;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/p$1;->ॱ:Lcom/moat/analytics/mobile/cha/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ˎ()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/p$1;->ॱ:Lcom/moat/analytics/mobile/cha/p;

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/p;->ˎ(Lcom/moat/analytics/mobile/cha/p;)V

    .line 85
    return-void
.end method

###### Class com.moat.analytics.mobile.cha.p.c (com.moat.analytics.mobile.cha.p$c)
.class interface abstract Lcom/moat/analytics/mobile/cha/p$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/cha/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract ˋ()Lcom/moat/analytics/mobile/cha/base/functional/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/cha/base/functional/Optional",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation
.end method

###### Class com.moat.analytics.mobile.cha.p.d (com.moat.analytics.mobile.cha.p$d)
.class final Lcom/moat/analytics/mobile/cha/p$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/cha/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private final ˊ:[Ljava/lang/ref/WeakReference;

.field private final ˋ:Ljava/lang/reflect/Method;

.field private final ˎ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic ॱ:Lcom/moat/analytics/mobile/cha/p;


# direct methods
.method private varargs constructor <init>(Lcom/moat/analytics/mobile/cha/p;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 45
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/p$d;->ॱ:Lcom/moat/analytics/mobile/cha/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/moat/analytics/mobile/cha/p$d;->ˎ:Ljava/util/LinkedList;

    .line 46
    if-nez p3, :cond_13

    invoke-static {}, Lcom/moat/analytics/mobile/cha/p;->ˏ()[Ljava/lang/Object;

    move-result-object p3

    .line 47
    :cond_13
    array-length v1, p3

    new-array v3, v1, [Ljava/lang/ref/WeakReference;

    .line 49
    array-length v4, p3

    move v1, v0

    :goto_18
    if-ge v0, v4, :cond_3a

    aget-object v5, p3, v0

    .line 50
    instance-of v2, v5, Ljava/util/Map;

    if-nez v2, :cond_28

    instance-of v2, v5, Ljava/lang/Integer;

    if-nez v2, :cond_28

    instance-of v2, v5, Ljava/lang/Double;

    if-eqz v2, :cond_2d

    .line 53
    :cond_28
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/p$d;->ˎ:Ljava/util/LinkedList;

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_2d
    add-int/lit8 v2, v1, 0x1

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v6, v3, v1

    .line 49
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_18

    .line 57
    :cond_3a
    iput-object v3, p0, Lcom/moat/analytics/mobile/cha/p$d;->ˊ:[Ljava/lang/ref/WeakReference;

    .line 58
    iput-object p2, p0, Lcom/moat/analytics/mobile/cha/p$d;->ˋ:Ljava/lang/reflect/Method;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/moat/analytics/mobile/cha/p;Ljava/lang/reflect/Method;[Ljava/lang/Object;B)V
    .registers 5

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/cha/p$d;-><init>(Lcom/moat/analytics/mobile/cha/p;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic ˊ(Lcom/moat/analytics/mobile/cha/p$d;)[Ljava/lang/ref/WeakReference;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/p$d;->ˊ:[Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic ˋ(Lcom/moat/analytics/mobile/cha/p$d;)Ljava/lang/reflect/Method;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/p$d;->ˋ:Ljava/lang/reflect/Method;

    return-object v0
.end method
