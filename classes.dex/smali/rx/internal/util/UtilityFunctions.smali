###### Class rx.internal.util.UtilityFunctions (rx.internal.util.UtilityFunctions)
.class public final Lrx/internal/util/UtilityFunctions;
.super Ljava/lang/Object;
.source "UtilityFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/UtilityFunctions$AlwaysFalse;,
        Lrx/internal/util/UtilityFunctions$AlwaysTrue;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static alwaysFalse()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lrx/internal/util/UtilityFunctions$AlwaysFalse;->INSTANCE:Lrx/internal/util/UtilityFunctions$AlwaysFalse;

    return-object v0
.end method

.method public static alwaysTrue()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lrx/internal/util/UtilityFunctions$AlwaysTrue;->INSTANCE:Lrx/internal/util/UtilityFunctions$AlwaysTrue;

    return-object v0
.end method

.method public static identity()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/functions/Func1",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lrx/internal/util/UtilityFunctions$1;

    invoke-direct {v0}, Lrx/internal/util/UtilityFunctions$1;-><init>()V

    return-object v0
.end method

###### Class rx.internal.util.UtilityFunctions.AnonymousClass1 (rx.internal.util.UtilityFunctions$1)
.class final Lrx/internal/util/UtilityFunctions$1;
.super Ljava/lang/Object;
.source "UtilityFunctions.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<TT;TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "o":Ljava/lang/Object;, "TT;"
    return-object p1
.end method

###### Class rx.internal.util.UtilityFunctions.AlwaysFalse (rx.internal.util.UtilityFunctions$AlwaysFalse)
.class final enum Lrx/internal/util/UtilityFunctions$AlwaysFalse;
.super Ljava/lang/Enum;
.source "UtilityFunctions.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/UtilityFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AlwaysFalse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/internal/util/UtilityFunctions$AlwaysFalse;",
        ">;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx/internal/util/UtilityFunctions$AlwaysFalse;

.field public static final enum INSTANCE:Lrx/internal/util/UtilityFunctions$AlwaysFalse;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 72
    new-instance v0, Lrx/internal/util/UtilityFunctions$AlwaysFalse;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lrx/internal/util/UtilityFunctions$AlwaysFalse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/internal/util/UtilityFunctions$AlwaysFalse;->INSTANCE:Lrx/internal/util/UtilityFunctions$AlwaysFalse;

    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [Lrx/internal/util/UtilityFunctions$AlwaysFalse;

    sget-object v1, Lrx/internal/util/UtilityFunctions$AlwaysFalse;->INSTANCE:Lrx/internal/util/UtilityFunctions$AlwaysFalse;

    aput-object v1, v0, v2

    sput-object v0, Lrx/internal/util/UtilityFunctions$AlwaysFalse;->$VALUES:[Lrx/internal/util/UtilityFunctions$AlwaysFalse;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/internal/util/UtilityFunctions$AlwaysFalse;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    const-class v0, Lrx/internal/util/UtilityFunctions$AlwaysFalse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/internal/util/UtilityFunctions$AlwaysFalse;

    return-object v0
.end method

.method public static values()[Lrx/internal/util/UtilityFunctions$AlwaysFalse;
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lrx/internal/util/UtilityFunctions$AlwaysFalse;->$VALUES:[Lrx/internal/util/UtilityFunctions$AlwaysFalse;

    invoke-virtual {v0}, [Lrx/internal/util/UtilityFunctions$AlwaysFalse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/util/UtilityFunctions$AlwaysFalse;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lrx/internal/util/UtilityFunctions$AlwaysFalse;->call(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.util.UtilityFunctions.AlwaysTrue (rx.internal.util.UtilityFunctions$AlwaysTrue)
.class final enum Lrx/internal/util/UtilityFunctions$AlwaysTrue;
.super Ljava/lang/Enum;
.source "UtilityFunctions.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/UtilityFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AlwaysTrue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/internal/util/UtilityFunctions$AlwaysTrue;",
        ">;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx/internal/util/UtilityFunctions$AlwaysTrue;

.field public static final enum INSTANCE:Lrx/internal/util/UtilityFunctions$AlwaysTrue;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 63
    new-instance v0, Lrx/internal/util/UtilityFunctions$AlwaysTrue;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lrx/internal/util/UtilityFunctions$AlwaysTrue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/internal/util/UtilityFunctions$AlwaysTrue;->INSTANCE:Lrx/internal/util/UtilityFunctions$AlwaysTrue;

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Lrx/internal/util/UtilityFunctions$AlwaysTrue;

    sget-object v1, Lrx/internal/util/UtilityFunctions$AlwaysTrue;->INSTANCE:Lrx/internal/util/UtilityFunctions$AlwaysTrue;

    aput-object v1, v0, v2

    sput-object v0, Lrx/internal/util/UtilityFunctions$AlwaysTrue;->$VALUES:[Lrx/internal/util/UtilityFunctions$AlwaysTrue;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/internal/util/UtilityFunctions$AlwaysTrue;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v0, Lrx/internal/util/UtilityFunctions$AlwaysTrue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/internal/util/UtilityFunctions$AlwaysTrue;

    return-object v0
.end method

.method public static values()[Lrx/internal/util/UtilityFunctions$AlwaysTrue;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lrx/internal/util/UtilityFunctions$AlwaysTrue;->$VALUES:[Lrx/internal/util/UtilityFunctions$AlwaysTrue;

    invoke-virtual {v0}, [Lrx/internal/util/UtilityFunctions$AlwaysTrue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/util/UtilityFunctions$AlwaysTrue;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lrx/internal/util/UtilityFunctions$AlwaysTrue;->call(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
