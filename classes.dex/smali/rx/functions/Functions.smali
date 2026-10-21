###### Class rx.functions.Functions (rx.functions.Functions)
.class public final Lrx/functions/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromAction(Lrx/functions/Action0;)Lrx/functions/FuncN;
    .registers 2
    .param p0, "f"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/functions/FuncN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Lrx/functions/Functions$11;

    invoke-direct {v0, p0}, Lrx/functions/Functions$11;-><init>(Lrx/functions/Action0;)V

    return-object v0
.end method

.method public static fromAction(Lrx/functions/Action1;)Lrx/functions/FuncN;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1",
            "<-TT0;>;)",
            "Lrx/functions/FuncN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "f":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT0;>;"
    new-instance v0, Lrx/functions/Functions$12;

    invoke-direct {v0, p0}, Lrx/functions/Functions$12;-><init>(Lrx/functions/Action1;)V

    return-object v0
.end method

.method public static fromAction(Lrx/functions/Action2;)Lrx/functions/FuncN;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action2",
            "<-TT0;-TT1;>;)",
            "Lrx/functions/FuncN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "f":Lrx/functions/Action2;, "Lrx/functions/Action2<-TT0;-TT1;>;"
    new-instance v0, Lrx/functions/Functions$13;

    invoke-direct {v0, p0}, Lrx/functions/Functions$13;-><init>(Lrx/functions/Action2;)V

    return-object v0
.end method

.method public static fromAction(Lrx/functions/Action3;)Lrx/functions/FuncN;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action3",
            "<-TT0;-TT1;-TT2;>;)",
            "Lrx/functions/FuncN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "f":Lrx/functions/Action3;, "Lrx/functions/Action3<-TT0;-TT1;-TT2;>;"
    new-instance v0, Lrx/functions/Functions$14;

    invoke-direct {v0, p0}, Lrx/functions/Functions$14;-><init>(Lrx/functions/Action3;)V

    return-object v0
.end method

.method public static fromFunc(Lrx/functions/Func0;)Lrx/functions/FuncN;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+TR;>;)",
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "f":Lrx/functions/Func0;, "Lrx/functions/Func0<+TR;>;"
    new-instance v0, Lrx/functions/Functions$1;

    invoke-direct {v0, p0}, Lrx/functions/Functions$1;-><init>(Lrx/functions/Func0;)V

    return-object v0
.end method

.method public static fromFunc(Lrx/functions/Func1;)Lrx/functions/FuncN;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT0;+TR;>;)",
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT0;+TR;>;"
    new-instance v0, Lrx/functions/Functions$2;

    invoke-direct {v0, p0}, Lrx/functions/Functions$2;-><init>(Lrx/functions/Func1;)V

    return-object v0
.end method

.method public static fromFunc(Lrx/functions/Func2;)Lrx/functions/FuncN;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func2",
            "<-TT0;-TT1;+TR;>;)",
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "f":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT0;-TT1;+TR;>;"
    new-instance v0, Lrx/functions/Functions$3;

    invoke-direct {v0, p0}, Lrx/functions/Functions$3;-><init>(Lrx/functions/Func2;)V

    return-object v0
.end method

.method public static fromFunc(Lrx/functions/Func3;)Lrx/functions/FuncN;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func3",
            "<-TT0;-TT1;-TT2;+TR;>;)",
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "f":Lrx/functions/Func3;, "Lrx/functions/Func3<-TT0;-TT1;-TT2;+TR;>;"
    new-instance v0, Lrx/functions/Functions$4;

    invoke-direct {v0, p0}, Lrx/functions/Functions$4;-><init>(Lrx/functions/Func3;)V

    return-object v0
.end method

.method public static fromFunc(Lrx/functions/Func4;)Lrx/functions/FuncN;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func4",
            "<-TT0;-TT1;-TT2;-TT3;+TR;>;)",
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "f":Lrx/functions/Func4;, "Lrx/functions/Func4<-TT0;-TT1;-TT2;-TT3;+TR;>;"
    new-instance v0, Lrx/functions/Functions$5;

    invoke-direct {v0, p0}, Lrx/functions/Functions$5;-><init>(Lrx/functions/Func4;)V

    return-object v0
.end method

.method public static fromFunc(Lrx/functions/Func5;)Lrx/functions/FuncN;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func5",
            "<-TT0;-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "f":Lrx/functions/Func5;, "Lrx/functions/Func5<-TT0;-TT1;-TT2;-TT3;-TT4;+TR;>;"
    new-instance v0, Lrx/functions/Functions$6;

    invoke-direct {v0, p0}, Lrx/functions/Functions$6;-><init>(Lrx/functions/Func5;)V

    return-object v0
.end method

.method public static fromFunc(Lrx/functions/Func6;)Lrx/functions/FuncN;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func6",
            "<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "f":Lrx/functions/Func6;, "Lrx/functions/Func6<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;"
    new-instance v0, Lrx/functions/Functions$7;

    invoke-direct {v0, p0}, Lrx/functions/Functions$7;-><init>(Lrx/functions/Func6;)V

    return-object v0
.end method

.method public static fromFunc(Lrx/functions/Func7;)Lrx/functions/FuncN;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func7",
            "<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "f":Lrx/functions/Func7;, "Lrx/functions/Func7<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;"
    new-instance v0, Lrx/functions/Functions$8;

    invoke-direct {v0, p0}, Lrx/functions/Functions$8;-><init>(Lrx/functions/Func7;)V

    return-object v0
.end method

.method public static fromFunc(Lrx/functions/Func8;)Lrx/functions/FuncN;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func8",
            "<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "f":Lrx/functions/Func8;, "Lrx/functions/Func8<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;"
    new-instance v0, Lrx/functions/Functions$9;

    invoke-direct {v0, p0}, Lrx/functions/Functions$9;-><init>(Lrx/functions/Func8;)V

    return-object v0
.end method

.method public static fromFunc(Lrx/functions/Func9;)Lrx/functions/FuncN;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func9",
            "<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "f":Lrx/functions/Func9;, "Lrx/functions/Func9<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;"
    new-instance v0, Lrx/functions/Functions$10;

    invoke-direct {v0, p0}, Lrx/functions/Functions$10;-><init>(Lrx/functions/Func9;)V

    return-object v0
.end method

###### Class rx.functions.Functions.AnonymousClass1 (rx.functions.Functions$1)
.class final Lrx/functions/Functions$1;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lrx/functions/FuncN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Functions;->fromFunc(Lrx/functions/Func0;)Lrx/functions/FuncN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/FuncN",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$f:Lrx/functions/Func0;


# direct methods
.method constructor <init>(Lrx/functions/Func0;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lrx/functions/Functions$1;->val$f:Lrx/functions/Func0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 36
    array-length v0, p1

    if-eqz v0, :cond_b

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Func0 expecting 0 arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_b
    iget-object v0, p0, Lrx/functions/Functions$1;->val$f:Lrx/functions/Func0;

    invoke-interface {v0}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class rx.functions.Functions.AnonymousClass10 (rx.functions.Functions$10)
.class final Lrx/functions/Functions$10;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lrx/functions/FuncN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Functions;->fromFunc(Lrx/functions/Func9;)Lrx/functions/FuncN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/FuncN",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$f:Lrx/functions/Func9;


# direct methods
.method constructor <init>(Lrx/functions/Func9;)V
    .registers 2

    .prologue
    .line 283
    iput-object p1, p0, Lrx/functions/Functions$10;->val$f:Lrx/functions/Func9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 288
    array-length v0, p1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_d

    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Func9 expecting 9 arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_d
    iget-object v0, p0, Lrx/functions/Functions$10;->val$f:Lrx/functions/Func9;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const/4 v4, 0x3

    aget-object v4, p1, v4

    const/4 v5, 0x4

    aget-object v5, p1, v5

    const/4 v6, 0x5

    aget-object v6, p1, v6

    const/4 v7, 0x6

    aget-object v7, p1, v7

    const/4 v8, 0x7

    aget-object v8, p1, v8

    const/16 v9, 0x8

    aget-object v9, p1, v9

    invoke-interface/range {v0 .. v9}, Lrx/functions/Func9;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class rx.functions.Functions.AnonymousClass11 (rx.functions.Functions$11)
.class final Lrx/functions/Functions$11;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lrx/functions/FuncN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Functions;->fromAction(Lrx/functions/Action0;)Lrx/functions/FuncN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/FuncN",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$f:Lrx/functions/Action0;


# direct methods
.method constructor <init>(Lrx/functions/Action0;)V
    .registers 2

    .prologue
    .line 305
    iput-object p1, p0, Lrx/functions/Functions$11;->val$f:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lrx/functions/Functions$11;->call([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 4
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 309
    array-length v0, p1

    if-eqz v0, :cond_b

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Action0 expecting 0 arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_b
    iget-object v0, p0, Lrx/functions/Functions$11;->val$f:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 313
    const/4 v0, 0x0

    return-object v0
.end method

###### Class rx.functions.Functions.AnonymousClass12 (rx.functions.Functions$12)
.class final Lrx/functions/Functions$12;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lrx/functions/FuncN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Functions;->fromAction(Lrx/functions/Action1;)Lrx/functions/FuncN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/FuncN",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$f:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/functions/Action1;)V
    .registers 2

    .prologue
    .line 328
    iput-object p1, p0, Lrx/functions/Functions$12;->val$f:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lrx/functions/Functions$12;->call([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 4
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 333
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Action1 expecting 1 argument."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_c
    iget-object v0, p0, Lrx/functions/Functions$12;->val$f:Lrx/functions/Action1;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 337
    const/4 v0, 0x0

    return-object v0
.end method

###### Class rx.functions.Functions.AnonymousClass13 (rx.functions.Functions$13)
.class final Lrx/functions/Functions$13;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lrx/functions/FuncN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Functions;->fromAction(Lrx/functions/Action2;)Lrx/functions/FuncN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/FuncN",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$f:Lrx/functions/Action2;


# direct methods
.method constructor <init>(Lrx/functions/Action2;)V
    .registers 2

    .prologue
    .line 353
    iput-object p1, p0, Lrx/functions/Functions$13;->val$f:Lrx/functions/Action2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lrx/functions/Functions$13;->call([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 5
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 358
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    .line 359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Action3 expecting 2 arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_c
    iget-object v0, p0, Lrx/functions/Functions$13;->val$f:Lrx/functions/Action2;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-interface {v0, v1, v2}, Lrx/functions/Action2;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

###### Class rx.functions.Functions.AnonymousClass14 (rx.functions.Functions$14)
.class final Lrx/functions/Functions$14;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lrx/functions/FuncN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Functions;->fromAction(Lrx/functions/Action3;)Lrx/functions/FuncN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/FuncN",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$f:Lrx/functions/Action3;


# direct methods
.method constructor <init>(Lrx/functions/Action3;)V
    .registers 2

    .prologue
    .line 379
    iput-object p1, p0, Lrx/functions/Functions$14;->val$f:Lrx/functions/Action3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Lrx/functions/Functions$14;->call([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 6
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 384
    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    .line 385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Action3 expecting 3 arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_c
    iget-object v0, p0, Lrx/functions/Functions$14;->val$f:Lrx/functions/Action3;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-interface {v0, v1, v2, v3}, Lrx/functions/Action3;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 388
    const/4 v0, 0x0

    return-object v0
.end method

###### Class rx.functions.Functions.AnonymousClass2 (rx.functions.Functions$2)
.class final Lrx/functions/Functions$2;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lrx/functions/FuncN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Functions;->fromFunc(Lrx/functions/Func1;)Lrx/functions/FuncN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/FuncN",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$f:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/functions/Func1;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lrx/functions/Functions$2;->val$f:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 60
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Func1 expecting 1 argument."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_c
    iget-object v0, p0, Lrx/functions/Functions$2;->val$f:Lrx/functions/Func1;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class rx.functions.Functions.AnonymousClass3 (rx.functions.Functions$3)
.class final Lrx/functions/Functions$3;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lrx/functions/FuncN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Functions;->fromFunc(Lrx/functions/Func2;)Lrx/functions/FuncN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/FuncN",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$f:Lrx/functions/Func2;


# direct methods
.method constructor <init>(Lrx/functions/Func2;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lrx/functions/Functions$3;->val$f:Lrx/functions/Func2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 85
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Func2 expecting 2 arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_c
    iget-object v0, p0, Lrx/functions/Functions$3;->val$f:Lrx/functions/Func2;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-interface {v0, v1, v2}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class rx.functions.Functions.AnonymousClass4 (rx.functions.Functions$4)
.class final Lrx/functions/Functions$4;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lrx/functions/FuncN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Functions;->fromFunc(Lrx/functions/Func3;)Lrx/functions/FuncN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/FuncN",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$f:Lrx/functions/Func3;


# direct methods
.method constructor <init>(Lrx/functions/Func3;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lrx/functions/Functions$4;->val$f:Lrx/functions/Func3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 111
    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Func3 expecting 3 arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_c
    iget-object v0, p0, Lrx/functions/Functions$4;->val$f:Lrx/functions/Func3;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-interface {v0, v1, v2, v3}, Lrx/functions/Func3;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class rx.functions.Functions.AnonymousClass5 (rx.functions.Functions$5)
.class final Lrx/functions/Functions$5;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lrx/functions/FuncN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Functions;->fromFunc(Lrx/functions/Func4;)Lrx/functions/FuncN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/FuncN",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$f:Lrx/functions/Func4;


# direct methods
.method constructor <init>(Lrx/functions/Func4;)V
    .registers 2

    .prologue
    .line 133
    iput-object p1, p0, Lrx/functions/Functions$5;->val$f:Lrx/functions/Func4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 138
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Func4 expecting 4 arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_c
    iget-object v0, p0, Lrx/functions/Functions$5;->val$f:Lrx/functions/Func4;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-interface {v0, v1, v2, v3, v4}, Lrx/functions/Func4;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class rx.functions.Functions.AnonymousClass6 (rx.functions.Functions$6)
.class final Lrx/functions/Functions$6;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lrx/functions/FuncN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Functions;->fromFunc(Lrx/functions/Func5;)Lrx/functions/FuncN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/FuncN",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$f:Lrx/functions/Func5;


# direct methods
.method constructor <init>(Lrx/functions/Func5;)V
    .registers 2

    .prologue
    .line 161
    iput-object p1, p0, Lrx/functions/Functions$6;->val$f:Lrx/functions/Func5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 166
    array-length v0, p1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_c

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Func5 expecting 5 arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_c
    iget-object v0, p0, Lrx/functions/Functions$6;->val$f:Lrx/functions/Func5;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const/4 v4, 0x3

    aget-object v4, p1, v4

    const/4 v5, 0x4

    aget-object v5, p1, v5

    invoke-interface/range {v0 .. v5}, Lrx/functions/Func5;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class rx.functions.Functions.AnonymousClass7 (rx.functions.Functions$7)
.class final Lrx/functions/Functions$7;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lrx/functions/FuncN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Functions;->fromFunc(Lrx/functions/Func6;)Lrx/functions/FuncN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/FuncN",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$f:Lrx/functions/Func6;


# direct methods
.method constructor <init>(Lrx/functions/Func6;)V
    .registers 2

    .prologue
    .line 190
    iput-object p1, p0, Lrx/functions/Functions$7;->val$f:Lrx/functions/Func6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 195
    array-length v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_c

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Func6 expecting 6 arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_c
    iget-object v0, p0, Lrx/functions/Functions$7;->val$f:Lrx/functions/Func6;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const/4 v4, 0x3

    aget-object v4, p1, v4

    const/4 v5, 0x4

    aget-object v5, p1, v5

    const/4 v6, 0x5

    aget-object v6, p1, v6

    invoke-interface/range {v0 .. v6}, Lrx/functions/Func6;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class rx.functions.Functions.AnonymousClass8 (rx.functions.Functions$8)
.class final Lrx/functions/Functions$8;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lrx/functions/FuncN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Functions;->fromFunc(Lrx/functions/Func7;)Lrx/functions/FuncN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/FuncN",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$f:Lrx/functions/Func7;


# direct methods
.method constructor <init>(Lrx/functions/Func7;)V
    .registers 2

    .prologue
    .line 220
    iput-object p1, p0, Lrx/functions/Functions$8;->val$f:Lrx/functions/Func7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 225
    array-length v0, p1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_c

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Func7 expecting 7 arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_c
    iget-object v0, p0, Lrx/functions/Functions$8;->val$f:Lrx/functions/Func7;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const/4 v4, 0x3

    aget-object v4, p1, v4

    const/4 v5, 0x4

    aget-object v5, p1, v5

    const/4 v6, 0x5

    aget-object v6, p1, v6

    const/4 v7, 0x6

    aget-object v7, p1, v7

    invoke-interface/range {v0 .. v7}, Lrx/functions/Func7;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class rx.functions.Functions.AnonymousClass9 (rx.functions.Functions$9)
.class final Lrx/functions/Functions$9;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lrx/functions/FuncN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Functions;->fromFunc(Lrx/functions/Func8;)Lrx/functions/FuncN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/FuncN",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$f:Lrx/functions/Func8;


# direct methods
.method constructor <init>(Lrx/functions/Func8;)V
    .registers 2

    .prologue
    .line 251
    iput-object p1, p0, Lrx/functions/Functions$9;->val$f:Lrx/functions/Func8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 256
    array-length v0, p1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_d

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Func8 expecting 8 arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_d
    iget-object v0, p0, Lrx/functions/Functions$9;->val$f:Lrx/functions/Func8;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const/4 v4, 0x3

    aget-object v4, p1, v4

    const/4 v5, 0x4

    aget-object v5, p1, v5

    const/4 v6, 0x5

    aget-object v6, p1, v6

    const/4 v7, 0x6

    aget-object v7, p1, v7

    const/4 v8, 0x7

    aget-object v8, p1, v8

    invoke-interface/range {v0 .. v8}, Lrx/functions/Func8;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
