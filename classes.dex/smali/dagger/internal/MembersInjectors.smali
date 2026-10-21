###### Class dagger.internal.MembersInjectors (dagger.internal.MembersInjectors)
.class public final Ldagger/internal/MembersInjectors;
.super Ljava/lang/Object;
.source "MembersInjectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/MembersInjectors$NoOpMembersInjector;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delegatingTo(Ldagger/MembersInjector;)Ldagger/MembersInjector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldagger/MembersInjector",
            "<-TT;>;)",
            "Ldagger/MembersInjector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "delegate":Ldagger/MembersInjector;, "Ldagger/MembersInjector<-TT;>;"
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/MembersInjector;

    return-object v0
.end method

.method public static injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldagger/MembersInjector",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "membersInjector":Ldagger/MembersInjector;, "Ldagger/MembersInjector<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 38
    return-object p1
.end method

.method public static noOp()Ldagger/MembersInjector;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ldagger/MembersInjector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Ldagger/internal/MembersInjectors$NoOpMembersInjector;->INSTANCE:Ldagger/internal/MembersInjectors$NoOpMembersInjector;

    return-object v0
.end method

###### Class dagger.internal.MembersInjectors.NoOpMembersInjector (dagger.internal.MembersInjectors$NoOpMembersInjector)
.class final enum Ldagger/internal/MembersInjectors$NoOpMembersInjector;
.super Ljava/lang/Enum;
.source "MembersInjectors.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/MembersInjectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NoOpMembersInjector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldagger/internal/MembersInjectors$NoOpMembersInjector;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldagger/internal/MembersInjectors$NoOpMembersInjector;

.field public static final enum INSTANCE:Ldagger/internal/MembersInjectors$NoOpMembersInjector;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 53
    new-instance v0, Ldagger/internal/MembersInjectors$NoOpMembersInjector;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Ldagger/internal/MembersInjectors$NoOpMembersInjector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldagger/internal/MembersInjectors$NoOpMembersInjector;->INSTANCE:Ldagger/internal/MembersInjectors$NoOpMembersInjector;

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ldagger/internal/MembersInjectors$NoOpMembersInjector;

    sget-object v1, Ldagger/internal/MembersInjectors$NoOpMembersInjector;->INSTANCE:Ldagger/internal/MembersInjectors$NoOpMembersInjector;

    aput-object v1, v0, v2

    sput-object v0, Ldagger/internal/MembersInjectors$NoOpMembersInjector;->$VALUES:[Ldagger/internal/MembersInjectors$NoOpMembersInjector;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldagger/internal/MembersInjectors$NoOpMembersInjector;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Ldagger/internal/MembersInjectors$NoOpMembersInjector;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldagger/internal/MembersInjectors$NoOpMembersInjector;

    return-object v0
.end method

.method public static values()[Ldagger/internal/MembersInjectors$NoOpMembersInjector;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Ldagger/internal/MembersInjectors$NoOpMembersInjector;->$VALUES:[Ldagger/internal/MembersInjectors$NoOpMembersInjector;

    invoke-virtual {v0}, [Ldagger/internal/MembersInjectors$NoOpMembersInjector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldagger/internal/MembersInjectors$NoOpMembersInjector;

    return-object v0
.end method


# virtual methods
.method public injectMembers(Ljava/lang/Object;)V
    .registers 2
    .param p1, "instance"    # Ljava/lang/Object;

    .prologue
    .line 56
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method
