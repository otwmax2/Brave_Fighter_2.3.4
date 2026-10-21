###### Class rx.exceptions.CompositeException (rx.exceptions.CompositeException)
.class public final Lrx/exceptions/CompositeException;
.super Ljava/lang/RuntimeException;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;,
        Lrx/exceptions/CompositeException$WrappedPrintWriter;,
        Lrx/exceptions/CompositeException$WrappedPrintStream;,
        Lrx/exceptions/CompositeException$PrintStreamOrWriter;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x29ffcc6947b49592L


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 9
    .param p1, "messagePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    .local p2, "errors":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 53
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 54
    .local v0, "deDupedExceptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v3, "localExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    if-eqz p2, :cond_3c

    .line 56
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 57
    .local v1, "ex":Ljava/lang/Throwable;
    instance-of v4, v1, Lrx/exceptions/CompositeException;

    if-eqz v4, :cond_2d

    .line 58
    check-cast v1, Lrx/exceptions/CompositeException;

    .end local v1    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Lrx/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_13

    .line 60
    .restart local v1    # "ex":Ljava/lang/Throwable;
    :cond_2d
    if-eqz v1, :cond_33

    .line 61
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 63
    :cond_33
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 67
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3c
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_44
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lrx/exceptions/CompositeException;->exceptions:Ljava/util/List;

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lrx/exceptions/CompositeException;->exceptions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exceptions occurred. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lrx/exceptions/CompositeException;->message:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "errors":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lrx/exceptions/CompositeException;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    .line 83
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Throwable;)V
    .registers 10
    .param p1, "errors"    # [Ljava/lang/Throwable;
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 91
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 92
    .local v1, "deDupedExceptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v5, "localExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    if-eqz p1, :cond_35

    .line 94
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Throwable;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_12
    if-ge v3, v4, :cond_3d

    aget-object v2, v0, v3

    .line 95
    .local v2, "ex":Ljava/lang/Throwable;
    instance-of v6, v2, Lrx/exceptions/CompositeException;

    if-eqz v6, :cond_26

    .line 96
    check-cast v2, Lrx/exceptions/CompositeException;

    .end local v2    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v2}, Lrx/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 94
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 98
    .restart local v2    # "ex":Ljava/lang/Throwable;
    :cond_26
    if-eqz v2, :cond_2c

    .line 99
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 101
    :cond_2c
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 105
    .end local v0    # "arr$":[Ljava/lang/Throwable;
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_35
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_3d
    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lrx/exceptions/CompositeException;->exceptions:Ljava/util/List;

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lrx/exceptions/CompositeException;->exceptions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exceptions occurred. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lrx/exceptions/CompositeException;->message:Ljava/lang/String;

    .line 111
    return-void
.end method

.method private appendStackTrace(Ljava/lang/StringBuilder;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 10
    .param p1, "b"    # Ljava/lang/StringBuilder;
    .param p2, "ex"    # Ljava/lang/Throwable;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xa

    .line 218
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_13
    if-ge v1, v2, :cond_27

    aget-object v3, v0, v1

    .line 220
    .local v3, "stackElement":Ljava/lang/StackTraceElement;
    const-string v4, "\t\tat "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 222
    .end local v3    # "stackElement":Ljava/lang/StackTraceElement;
    :cond_27
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 223
    const-string v4, "\tCaused by: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    const-string v5, ""

    invoke-direct {p0, p1, v4, v5}, Lrx/exceptions/CompositeException;->appendStackTrace(Ljava/lang/StringBuilder;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 226
    :cond_3b
    return-void
.end method

.method private getListOfCauses(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 5
    .param p1, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 288
    .local v2, "root":Ljava/lang/Throwable;
    if-eqz v2, :cond_d

    if-ne v2, p1, :cond_12

    .line 295
    :cond_d
    :goto_d
    return-object v1

    .line 297
    .local v0, "cause":Ljava/lang/Throwable;
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 292
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_12
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 294
    .restart local v0    # "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_d

    if-ne v0, v2, :cond_e

    goto :goto_d
.end method

.method private getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 310
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 311
    .local v1, "root":Ljava/lang/Throwable;
    if-eqz v1, :cond_8

    if-ne v1, p1, :cond_d

    .line 317
    .end local p1    # "e":Ljava/lang/Throwable;
    :cond_8
    :goto_8
    return-object p1

    .line 319
    .local v0, "cause":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 315
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 316
    .restart local v0    # "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_15

    if-ne v0, v1, :cond_9

    :cond_15
    move-object p1, v1

    .line 317
    goto :goto_8
.end method

.method private printStackTrace(Lrx/exceptions/CompositeException$PrintStreamOrWriter;)V
    .registers 11
    .param p1, "s"    # Lrx/exceptions/CompositeException$PrintStreamOrWriter;

    .prologue
    const/16 v8, 0xa

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v7, 0x80

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 202
    .local v1, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p0}, Lrx/exceptions/CompositeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_16
    if-ge v4, v5, :cond_2a

    aget-object v6, v0, v4

    .line 204
    .local v6, "myStackElement":Ljava/lang/StackTraceElement;
    const-string v7, "\tat "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 206
    .end local v6    # "myStackElement":Ljava/lang/StackTraceElement;
    :cond_2a
    const/4 v3, 0x1

    .line 207
    .local v3, "i":I
    iget-object v7, p0, Lrx/exceptions/CompositeException;->exceptions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 208
    .local v2, "ex":Ljava/lang/Throwable;
    const-string v7, "  ComposedException "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " :\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v7, "\t"

    invoke-direct {p0, v1, v2, v7}, Lrx/exceptions/CompositeException;->appendStackTrace(Ljava/lang/StringBuilder;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 210
    add-int/lit8 v3, v3, 0x1

    .line 211
    goto :goto_31

    .line 212
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_54
    invoke-virtual {p1}, Lrx/exceptions/CompositeException$PrintStreamOrWriter;->lock()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 213
    :try_start_59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lrx/exceptions/CompositeException$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 214
    monitor-exit v8

    .line 215
    return-void

    .line 214
    :catchall_62
    move-exception v7

    monitor-exit v8
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_62

    throw v7
.end method


# virtual methods
.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .registers 10

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    iget-object v8, p0, Lrx/exceptions/CompositeException;->cause:Ljava/lang/Throwable;

    if-nez v8, :cond_5e

    .line 131
    new-instance v6, Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;

    invoke-direct {v6}, Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;-><init>()V

    .line 132
    .local v6, "localCause":Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 134
    .local v7, "seenCauses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    move-object v0, v6

    .line 135
    .local v0, "chain":Ljava/lang/Throwable;
    iget-object v8, p0, Lrx/exceptions/CompositeException;->exceptions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 136
    .local v2, "e":Ljava/lang/Throwable;
    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 140
    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-direct {p0, v2}, Lrx/exceptions/CompositeException;->getListOfCauses(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v5

    .line 144
    .local v5, "listOfCauses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 145
    .local v1, "child":Ljava/lang/Throwable;
    invoke-interface {v7, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 147
    new-instance v2, Ljava/lang/RuntimeException;

    .end local v2    # "e":Ljava/lang/Throwable;
    const-string v8, "Duplicate found in causal chain so cropping to prevent loop ..."

    invoke-direct {v2, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 148
    .restart local v2    # "e":Ljava/lang/Throwable;
    goto :goto_33

    .line 150
    :cond_4d
    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_51

    goto :goto_33

    .line 129
    .end local v0    # "chain":Ljava/lang/Throwable;
    .end local v1    # "child":Ljava/lang/Throwable;
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "listOfCauses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v6    # "localCause":Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;
    .end local v7    # "seenCauses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :catchall_51
    move-exception v8

    monitor-exit p0

    throw v8

    .line 155
    .restart local v0    # "chain":Ljava/lang/Throwable;
    .restart local v2    # "e":Ljava/lang/Throwable;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "listOfCauses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .restart local v6    # "localCause":Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;
    .restart local v7    # "seenCauses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :cond_54
    :try_start_54
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_57} :catch_62
    .catchall {:try_start_54 .. :try_end_57} :catchall_51

    .line 161
    :goto_57
    :try_start_57
    invoke-direct {p0, v0}, Lrx/exceptions/CompositeException;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 162
    goto :goto_16

    .line 163
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "listOfCauses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_5c
    iput-object v6, p0, Lrx/exceptions/CompositeException;->cause:Ljava/lang/Throwable;

    .line 165
    .end local v0    # "chain":Ljava/lang/Throwable;
    .end local v6    # "localCause":Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;
    .end local v7    # "seenCauses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :cond_5e
    iget-object v8, p0, Lrx/exceptions/CompositeException;->cause:Ljava/lang/Throwable;
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_51

    monitor-exit p0

    return-object v8

    .line 156
    .restart local v0    # "chain":Ljava/lang/Throwable;
    .restart local v2    # "e":Ljava/lang/Throwable;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "listOfCauses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .restart local v6    # "localCause":Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;
    .restart local v7    # "seenCauses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :catch_62
    move-exception v8

    goto :goto_57
.end method

.method public getExceptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lrx/exceptions/CompositeException;->exceptions:Ljava/util/List;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lrx/exceptions/CompositeException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public printStackTrace()V
    .registers 2

    .prologue
    .line 180
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lrx/exceptions/CompositeException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 181
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/PrintStream;

    .prologue
    .line 185
    new-instance v0, Lrx/exceptions/CompositeException$WrappedPrintStream;

    invoke-direct {v0, p1}, Lrx/exceptions/CompositeException$WrappedPrintStream;-><init>(Ljava/io/PrintStream;)V

    invoke-direct {p0, v0}, Lrx/exceptions/CompositeException;->printStackTrace(Lrx/exceptions/CompositeException$PrintStreamOrWriter;)V

    .line 186
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "s"    # Ljava/io/PrintWriter;

    .prologue
    .line 190
    new-instance v0, Lrx/exceptions/CompositeException$WrappedPrintWriter;

    invoke-direct {v0, p1}, Lrx/exceptions/CompositeException$WrappedPrintWriter;-><init>(Ljava/io/PrintWriter;)V

    invoke-direct {p0, v0}, Lrx/exceptions/CompositeException;->printStackTrace(Lrx/exceptions/CompositeException$PrintStreamOrWriter;)V

    .line 191
    return-void
.end method

###### Class rx.exceptions.CompositeException.CompositeExceptionCausalChain (rx.exceptions.CompositeException$CompositeExceptionCausalChain)
.class final Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;
.super Ljava/lang/RuntimeException;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/exceptions/CompositeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompositeExceptionCausalChain"
.end annotation


# static fields
.field static final MESSAGE:Ljava/lang/String; = "Chain of Causes for CompositeException In Order Received =>"

.field private static final serialVersionUID:J = 0x35c7853e403cebd2L


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 281
    const-string v0, "Chain of Causes for CompositeException In Order Received =>"

    return-object v0
.end method

###### Class rx.exceptions.CompositeException.PrintStreamOrWriter (rx.exceptions.CompositeException$PrintStreamOrWriter)
.class abstract Lrx/exceptions/CompositeException$PrintStreamOrWriter;
.super Ljava/lang/Object;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/exceptions/CompositeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "PrintStreamOrWriter"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract lock()Ljava/lang/Object;
.end method

.method abstract println(Ljava/lang/Object;)V
.end method

###### Class rx.exceptions.CompositeException.WrappedPrintStream (rx.exceptions.CompositeException$WrappedPrintStream)
.class final Lrx/exceptions/CompositeException$WrappedPrintStream;
.super Lrx/exceptions/CompositeException$PrintStreamOrWriter;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/exceptions/CompositeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WrappedPrintStream"
.end annotation


# instance fields
.field private final printStream:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Ljava/io/PrintStream;)V
    .registers 2
    .param p1, "printStream"    # Ljava/io/PrintStream;

    .prologue
    .line 242
    invoke-direct {p0}, Lrx/exceptions/CompositeException$PrintStreamOrWriter;-><init>()V

    .line 243
    iput-object p1, p0, Lrx/exceptions/CompositeException$WrappedPrintStream;->printStream:Ljava/io/PrintStream;

    .line 244
    return-void
.end method


# virtual methods
.method lock()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lrx/exceptions/CompositeException$WrappedPrintStream;->printStream:Ljava/io/PrintStream;

    return-object v0
.end method

.method println(Ljava/lang/Object;)V
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 253
    iget-object v0, p0, Lrx/exceptions/CompositeException$WrappedPrintStream;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 254
    return-void
.end method

###### Class rx.exceptions.CompositeException.WrappedPrintWriter (rx.exceptions.CompositeException$WrappedPrintWriter)
.class final Lrx/exceptions/CompositeException$WrappedPrintWriter;
.super Lrx/exceptions/CompositeException$PrintStreamOrWriter;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/exceptions/CompositeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WrappedPrintWriter"
.end annotation


# instance fields
.field private final printWriter:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .prologue
    .line 260
    invoke-direct {p0}, Lrx/exceptions/CompositeException$PrintStreamOrWriter;-><init>()V

    .line 261
    iput-object p1, p0, Lrx/exceptions/CompositeException$WrappedPrintWriter;->printWriter:Ljava/io/PrintWriter;

    .line 262
    return-void
.end method


# virtual methods
.method lock()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lrx/exceptions/CompositeException$WrappedPrintWriter;->printWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method println(Ljava/lang/Object;)V
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 271
    iget-object v0, p0, Lrx/exceptions/CompositeException$WrappedPrintWriter;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 272
    return-void
.end method
