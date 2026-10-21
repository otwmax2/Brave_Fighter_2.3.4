###### Class rx.exceptions.OnErrorThrowable (rx.exceptions.OnErrorThrowable)
.class public final Lrx/exceptions/OnErrorThrowable;
.super Ljava/lang/RuntimeException;
.source "OnErrorThrowable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/exceptions/OnErrorThrowable$OnNextValue;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7e77a2d646dfd3eL


# instance fields
.field private final hasValue:Z

.field private final value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/exceptions/OnErrorThrowable;->hasValue:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/exceptions/OnErrorThrowable;->value:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .registers 4
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/exceptions/OnErrorThrowable;->hasValue:Z

    .line 46
    iput-object p2, p0, Lrx/exceptions/OnErrorThrowable;->value:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public static addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 4
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 98
    if-nez p0, :cond_7

    .line 99
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0    # "e":Ljava/lang/Throwable;
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    .line 101
    .restart local p0    # "e":Ljava/lang/Throwable;
    :cond_7
    invoke-static {p0}, Lrx/exceptions/Exceptions;->getFinalCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 102
    .local v0, "lastCause":Ljava/lang/Throwable;
    instance-of v1, v0, Lrx/exceptions/OnErrorThrowable$OnNextValue;

    if-eqz v1, :cond_18

    .line 104
    check-cast v0, Lrx/exceptions/OnErrorThrowable$OnNextValue;

    .end local v0    # "lastCause":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lrx/exceptions/OnErrorThrowable$OnNextValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_18

    .line 110
    :goto_17
    return-object p0

    .line 109
    :cond_18
    new-instance v1, Lrx/exceptions/OnErrorThrowable$OnNextValue;

    invoke-direct {v1, p1}, Lrx/exceptions/OnErrorThrowable$OnNextValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v1}, Lrx/exceptions/Exceptions;->addCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_17
.end method

.method public static from(Ljava/lang/Throwable;)Lrx/exceptions/OnErrorThrowable;
    .registers 4
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 76
    if-nez p0, :cond_7

    .line 77
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0    # "t":Ljava/lang/Throwable;
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    .line 79
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_7
    invoke-static {p0}, Lrx/exceptions/Exceptions;->getFinalCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 80
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Lrx/exceptions/OnErrorThrowable$OnNextValue;

    if-eqz v1, :cond_1b

    .line 81
    new-instance v1, Lrx/exceptions/OnErrorThrowable;

    check-cast v0, Lrx/exceptions/OnErrorThrowable$OnNextValue;

    .end local v0    # "cause":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lrx/exceptions/OnErrorThrowable$OnNextValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lrx/exceptions/OnErrorThrowable;-><init>(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 83
    :goto_1a
    return-object v1

    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1b
    new-instance v1, Lrx/exceptions/OnErrorThrowable;

    invoke-direct {v1, p0}, Lrx/exceptions/OnErrorThrowable;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1a
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lrx/exceptions/OnErrorThrowable;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isValueNull()Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lrx/exceptions/OnErrorThrowable;->hasValue:Z

    return v0
.end method

###### Class rx.exceptions.OnErrorThrowable.OnNextValue (rx.exceptions.OnErrorThrowable$OnNextValue)
.class public Lrx/exceptions/OnErrorThrowable$OnNextValue;
.super Ljava/lang/RuntimeException;
.source "OnErrorThrowable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/exceptions/OnErrorThrowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnNextValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/exceptions/OnErrorThrowable$OnNextValue$Primitives;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2ff0b792f8336acbL


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnError while emitting onNext value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lrx/exceptions/OnErrorThrowable$OnNextValue;->renderValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lrx/exceptions/OnErrorThrowable$OnNextValue;->value:Ljava/lang/Object;

    .line 154
    return-void
.end method

.method static renderValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 181
    if-nez p0, :cond_5

    .line 182
    const-string p0, "null"

    .line 200
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "pluggedRendering":Ljava/lang/String;
    :goto_4
    return-object p0

    .line 184
    .end local v0    # "pluggedRendering":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_5
    sget-object v1, Lrx/exceptions/OnErrorThrowable$OnNextValue$Primitives;->INSTANCE:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 187
    :cond_16
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 188
    check-cast p0, Ljava/lang/String;

    goto :goto_4

    .line 190
    :cond_1d
    instance-of v1, p0, Ljava/lang/Enum;

    if-eqz v1, :cond_28

    .line 191
    check-cast p0, Ljava/lang/Enum;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 195
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_28
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v1

    invoke-virtual {v1}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lrx/plugins/RxJavaErrorHandler;->handleOnNextValueRendering(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .restart local v0    # "pluggedRendering":Ljava/lang/String;
    if-eqz v0, :cond_38

    move-object p0, v0

    .line 197
    goto :goto_4

    .line 200
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lrx/exceptions/OnErrorThrowable$OnNextValue;->value:Ljava/lang/Object;

    return-object v0
.end method

###### Class rx.exceptions.OnErrorThrowable.OnNextValue.Primitives (rx.exceptions.OnErrorThrowable$OnNextValue$Primitives)
.class final Lrx/exceptions/OnErrorThrowable$OnNextValue$Primitives;
.super Ljava/lang/Object;
.source "OnErrorThrowable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/exceptions/OnErrorThrowable$OnNextValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Primitives"
.end annotation


# static fields
.field static final INSTANCE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 126
    invoke-static {}, Lrx/exceptions/OnErrorThrowable$OnNextValue$Primitives;->create()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lrx/exceptions/OnErrorThrowable$OnNextValue$Primitives;->INSTANCE:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 130
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    const-class v1, Ljava/lang/Character;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    return-object v0
.end method
