###### Class de.greenrobot.event.SubscriberMethodFinder (de.greenrobot.event.SubscriberMethodFinder)
.class Lde/greenrobot/event/SubscriberMethodFinder;
.super Ljava/lang/Object;
.source "SubscriberMethodFinder.java"


# static fields
.field private static final MODIFIERS_IGNORE:I = 0x408

.field private static final methodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lde/greenrobot/event/SubscriberMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final skipMethodVerificationForClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodVerificationForClasses:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearCaches()V
    .registers 2

    .prologue
    .line 110
    sget-object v1, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    monitor-enter v1

    .line 111
    :try_start_3
    sget-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 112
    monitor-exit v1

    .line 113
    return-void

    .line 112
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static clearSkipMethodVerifications()V
    .registers 1

    .prologue
    .line 123
    sget-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodVerificationForClasses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 124
    return-void
.end method

.method static skipMethodVerificationFor(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must be called before registering anything"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_10
    sget-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodVerificationForClasses:Ljava/util/Map;

    invoke-interface {v0, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method


# virtual methods
.method findSubscriberMethods(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .registers 27
    .param p2, "eventMethodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lde/greenrobot/event/SubscriberMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "subscriberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2e

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 37
    .local v7, "key":Ljava/lang/String;
    sget-object v22, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    monitor-enter v22

    .line 38
    :try_start_22
    sget-object v21, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 39
    .local v18, "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    monitor-exit v22

    .line 40
    if-eqz v18, :cond_35

    move-object/from16 v19, v18

    .line 105
    .end local v18    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    .local v19, "subscriberMethods":Ljava/lang/Object;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :goto_31
    return-object v19

    .line 39
    .end local v19    # "subscriberMethods":Ljava/lang/Object;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :catchall_32
    move-exception v21

    monitor-exit v22
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_32

    throw v21

    .line 43
    .restart local v18    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :cond_35
    new-instance v18, Ljava/util/ArrayList;

    .end local v18    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .restart local v18    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    move-object/from16 v3, p1

    .line 45
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 46
    .local v5, "eventTypesFound":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v11, "methodKeyBuilder":Ljava/lang/StringBuilder;
    :goto_46
    if-eqz v3, :cond_70

    .line 48
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    .line 49
    .local v16, "name":Ljava/lang/String;
    const-string v21, "java."

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_70

    const-string v21, "javax."

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_70

    const-string v21, "android."

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a1

    .line 98
    .end local v16    # "name":Ljava/lang/String;
    :cond_70
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_1a6

    .line 99
    new-instance v21, Lde/greenrobot/event/EventBusException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Subscriber "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " has no public methods called "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 55
    .restart local v16    # "name":Ljava/lang/String;
    :cond_a1
    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v13

    .line 56
    .local v13, "methods":[Ljava/lang/reflect/Method;
    move-object v2, v13

    .local v2, "arr$":[Ljava/lang/reflect/Method;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_a8
    if-ge v6, v8, :cond_1a0

    aget-object v9, v2, v6

    .line 57
    .local v9, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    .line 58
    .local v12, "methodName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_120

    .line 59
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v15

    .line 60
    .local v15, "modifiers":I
    and-int/lit8 v21, v15, 0x1

    if-eqz v21, :cond_16f

    and-int/lit16 v0, v15, 0x408

    move/from16 v21, v0

    if-nez v21, :cond_16f

    .line 61
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v17

    .line 62
    .local v17, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_120

    .line 63
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 65
    .local v14, "modifierString":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_123

    .line 66
    sget-object v20, Lde/greenrobot/event/ThreadMode;->PostThread:Lde/greenrobot/event/ThreadMode;

    .line 80
    .local v20, "threadMode":Lde/greenrobot/event/ThreadMode;
    :goto_e9
    const/16 v21, 0x0

    aget-object v4, v17, v21

    .line 81
    .local v4, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 82
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const/16 v21, 0x3e

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 85
    .local v10, "methodKey":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_120

    .line 87
    new-instance v21, Lde/greenrobot/event/SubscriberMethod;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v9, v1, v4}, Lde/greenrobot/event/SubscriberMethod;-><init>(Ljava/lang/reflect/Method;Lde/greenrobot/event/ThreadMode;Ljava/lang/Class;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .end local v4    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "methodKey":Ljava/lang/String;
    .end local v14    # "modifierString":Ljava/lang/String;
    .end local v15    # "modifiers":I
    .end local v17    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v20    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :cond_120
    :goto_120
    add-int/lit8 v6, v6, 0x1

    goto :goto_a8

    .line 67
    .restart local v14    # "modifierString":Ljava/lang/String;
    .restart local v15    # "modifiers":I
    .restart local v17    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_123
    const-string v21, "MainThread"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_130

    .line 68
    sget-object v20, Lde/greenrobot/event/ThreadMode;->MainThread:Lde/greenrobot/event/ThreadMode;

    .restart local v20    # "threadMode":Lde/greenrobot/event/ThreadMode;
    goto :goto_e9

    .line 69
    .end local v20    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :cond_130
    const-string v21, "BackgroundThread"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13d

    .line 70
    sget-object v20, Lde/greenrobot/event/ThreadMode;->BackgroundThread:Lde/greenrobot/event/ThreadMode;

    .restart local v20    # "threadMode":Lde/greenrobot/event/ThreadMode;
    goto :goto_e9

    .line 71
    .end local v20    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :cond_13d
    const-string v21, "Async"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14a

    .line 72
    sget-object v20, Lde/greenrobot/event/ThreadMode;->Async:Lde/greenrobot/event/ThreadMode;

    .restart local v20    # "threadMode":Lde/greenrobot/event/ThreadMode;
    goto :goto_e9

    .line 74
    .end local v20    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :cond_14a
    sget-object v21, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodVerificationForClasses:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_120

    .line 77
    new-instance v21, Lde/greenrobot/event/EventBusException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Illegal onEvent method, check for typos: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 90
    .end local v14    # "modifierString":Ljava/lang/String;
    .end local v17    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_16f
    sget-object v21, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodVerificationForClasses:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_120

    .line 91
    sget-object v21, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Skipping method (not public, static or abstract): "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_120

    .line 96
    .end local v9    # "method":Ljava/lang/reflect/Method;
    .end local v12    # "methodName":Ljava/lang/String;
    .end local v15    # "modifiers":I
    :cond_1a0
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 97
    goto/16 :goto_46

    .line 102
    .end local v2    # "arr$":[Ljava/lang/reflect/Method;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v13    # "methods":[Ljava/lang/reflect/Method;
    .end local v16    # "name":Ljava/lang/String;
    :cond_1a6
    sget-object v22, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    monitor-enter v22

    .line 103
    :try_start_1a9
    sget-object v21, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    monitor-exit v22

    move-object/from16 v19, v18

    .line 105
    .restart local v19    # "subscriberMethods":Ljava/lang/Object;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    goto/16 :goto_31

    .line 104
    .end local v19    # "subscriberMethods":Ljava/lang/Object;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :catchall_1b7
    move-exception v21

    monitor-exit v22
    :try_end_1b9
    .catchall {:try_start_1a9 .. :try_end_1b9} :catchall_1b7

    throw v21
.end method
