###### Class rx.Notification (rx.Notification)
.class public final Lrx/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Notification$Kind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ON_COMPLETED:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final kind:Lrx/Notification$Kind;

.field private final throwable:Ljava/lang/Throwable;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 28
    new-instance v0, Lrx/Notification;

    sget-object v1, Lrx/Notification$Kind;->OnCompleted:Lrx/Notification$Kind;

    invoke-direct {v0, v1, v2, v2}, Lrx/Notification;-><init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V

    sput-object v0, Lrx/Notification;->ON_COMPLETED:Lrx/Notification;

    return-void
.end method

.method private constructor <init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "kind"    # Lrx/Notification$Kind;
    .param p3, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification$Kind;",
            "TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lrx/Notification;->value:Ljava/lang/Object;

    .line 81
    iput-object p3, p0, Lrx/Notification;->throwable:Ljava/lang/Throwable;

    .line 82
    iput-object p1, p0, Lrx/Notification;->kind:Lrx/Notification$Kind;

    .line 83
    return-void
.end method

.method public static createOnCompleted()Lrx/Notification;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Notification",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    sget-object v0, Lrx/Notification;->ON_COMPLETED:Lrx/Notification;

    return-object v0
.end method

.method public static createOnCompleted(Ljava/lang/Class;)Lrx/Notification;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lrx/Notification",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lrx/Notification;->ON_COMPLETED:Lrx/Notification;

    return-object v0
.end method

.method public static createOnError(Ljava/lang/Throwable;)Lrx/Notification;
    .registers 4
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/Notification",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lrx/Notification;

    sget-object v1, Lrx/Notification$Kind;->OnError:Lrx/Notification$Kind;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lrx/Notification;-><init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static createOnNext(Ljava/lang/Object;)Lrx/Notification;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Notification",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/Notification;

    sget-object v1, Lrx/Notification$Kind;->OnNext:Lrx/Notification$Kind;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lrx/Notification;-><init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lrx/Observer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    .local p1, "observer":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    iget-object v0, p0, Lrx/Notification;->kind:Lrx/Notification$Kind;

    sget-object v1, Lrx/Notification$Kind;->OnNext:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_e

    .line 164
    invoke-virtual {p0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 170
    :goto_d
    return-void

    .line 165
    :cond_e
    iget-object v0, p0, Lrx/Notification;->kind:Lrx/Notification$Kind;

    sget-object v1, Lrx/Notification$Kind;->OnCompleted:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_18

    .line 166
    invoke-interface {p1}, Lrx/Observer;->onCompleted()V

    goto :goto_d

    .line 168
    :cond_18
    invoke-virtual {p0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    if-nez p1, :cond_5

    .line 220
    :cond_4
    :goto_4
    return v2

    .line 211
    :cond_5
    if-ne p0, p1, :cond_9

    move v2, v1

    .line 212
    goto :goto_4

    .line 215
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_4

    move-object v0, p1

    .line 219
    check-cast v0, Lrx/Notification;

    .line 220
    .local v0, "notification":Lrx/Notification;, "Lrx/Notification<*>;"
    invoke-virtual {v0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v3

    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v4

    if-ne v3, v4, :cond_4a

    iget-object v3, p0, Lrx/Notification;->value:Ljava/lang/Object;

    iget-object v4, v0, Lrx/Notification;->value:Ljava/lang/Object;

    if-eq v3, v4, :cond_34

    iget-object v3, p0, Lrx/Notification;->value:Ljava/lang/Object;

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lrx/Notification;->value:Ljava/lang/Object;

    iget-object v4, v0, Lrx/Notification;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    :cond_34
    iget-object v3, p0, Lrx/Notification;->throwable:Ljava/lang/Throwable;

    iget-object v4, v0, Lrx/Notification;->throwable:Ljava/lang/Throwable;

    if-eq v3, v4, :cond_48

    iget-object v3, p0, Lrx/Notification;->throwable:Ljava/lang/Throwable;

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lrx/Notification;->throwable:Ljava/lang/Throwable;

    iget-object v4, v0, Lrx/Notification;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    :cond_48
    :goto_48
    move v2, v1

    goto :goto_4

    :cond_4a
    move v1, v2

    goto :goto_48
.end method

.method public getKind()Lrx/Notification$Kind;
    .registers 2

    .prologue
    .line 128
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    iget-object v0, p0, Lrx/Notification;->kind:Lrx/Notification$Kind;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 91
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    iget-object v0, p0, Lrx/Notification;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    iget-object v0, p0, Lrx/Notification;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasThrowable()Z
    .registers 2

    .prologue
    .line 119
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lrx/Notification;->isOnError()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lrx/Notification;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasValue()Z
    .registers 2

    .prologue
    .line 109
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lrx/Notification;->isOnNext()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lrx/Notification;->value:Ljava/lang/Object;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 195
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lrx/Notification$Kind;->hashCode()I

    move-result v0

    .line 196
    .local v0, "hash":I
    invoke-virtual {p0}, Lrx/Notification;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 197
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 199
    :cond_1a
    invoke-virtual {p0}, Lrx/Notification;->hasThrowable()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 200
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 202
    :cond_2c
    return v0
.end method

.method public isOnCompleted()Z
    .registers 3

    .prologue
    .line 146
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v0

    sget-object v1, Lrx/Notification$Kind;->OnCompleted:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isOnError()Z
    .registers 3

    .prologue
    .line 137
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v0

    sget-object v1, Lrx/Notification$Kind;->OnError:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isOnNext()Z
    .registers 3

    .prologue
    .line 155
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v0

    sget-object v1, Lrx/Notification$Kind;->OnNext:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    const/16 v3, 0x20

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    .local v0, "str":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lrx/Notification;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 184
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    :cond_34
    invoke-virtual {p0}, Lrx/Notification;->hasThrowable()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 187
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_49
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class rx.Notification.Kind (rx.Notification$Kind)
.class public final enum Lrx/Notification$Kind;
.super Ljava/lang/Enum;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/Notification$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx/Notification$Kind;

.field public static final enum OnCompleted:Lrx/Notification$Kind;

.field public static final enum OnError:Lrx/Notification$Kind;

.field public static final enum OnNext:Lrx/Notification$Kind;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    new-instance v0, Lrx/Notification$Kind;

    const-string v1, "OnNext"

    invoke-direct {v0, v1, v2}, Lrx/Notification$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/Notification$Kind;->OnNext:Lrx/Notification$Kind;

    new-instance v0, Lrx/Notification$Kind;

    const-string v1, "OnError"

    invoke-direct {v0, v1, v3}, Lrx/Notification$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/Notification$Kind;->OnError:Lrx/Notification$Kind;

    new-instance v0, Lrx/Notification$Kind;

    const-string v1, "OnCompleted"

    invoke-direct {v0, v1, v4}, Lrx/Notification$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/Notification$Kind;->OnCompleted:Lrx/Notification$Kind;

    .line 175
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/Notification$Kind;

    sget-object v1, Lrx/Notification$Kind;->OnNext:Lrx/Notification$Kind;

    aput-object v1, v0, v2

    sget-object v1, Lrx/Notification$Kind;->OnError:Lrx/Notification$Kind;

    aput-object v1, v0, v3

    sget-object v1, Lrx/Notification$Kind;->OnCompleted:Lrx/Notification$Kind;

    aput-object v1, v0, v4

    sput-object v0, Lrx/Notification$Kind;->$VALUES:[Lrx/Notification$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/Notification$Kind;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 175
    const-class v0, Lrx/Notification$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/Notification$Kind;

    return-object v0
.end method

.method public static values()[Lrx/Notification$Kind;
    .registers 1

    .prologue
    .line 175
    sget-object v0, Lrx/Notification$Kind;->$VALUES:[Lrx/Notification$Kind;

    invoke-virtual {v0}, [Lrx/Notification$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/Notification$Kind;

    return-object v0
.end method
