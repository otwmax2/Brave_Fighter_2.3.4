###### Class com.chartboost.sdk.Libraries.CBLogging (com.chartboost.sdk.Libraries.CBLogging)
.class public final Lcom/chartboost/sdk/Libraries/CBLogging;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    }
.end annotation


# static fields
.field public static a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->INTEGRATION:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 100
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    if-ne v0, v1, :cond_9

    .line 101
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_9
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 113
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    if-ne v0, v1, :cond_9

    .line 114
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    :cond_9
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 126
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    if-ne v0, v1, :cond_9

    .line 127
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_9
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 140
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    if-ne v0, v1, :cond_9

    .line 141
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    :cond_9
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 153
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    if-ne v0, v1, :cond_9

    .line 154
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_9
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 166
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    if-ne v0, v1, :cond_9

    .line 167
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    :cond_9
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 178
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    if-ne v0, v1, :cond_9

    .line 179
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_9
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 191
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    if-ne v0, v1, :cond_9

    .line 192
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    :cond_9
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 204
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    if-ne v0, v1, :cond_9

    .line 205
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_9
    return-void
.end method

###### Class com.chartboost.sdk.Libraries.CBLogging.Level (com.chartboost.sdk.Libraries.CBLogging$Level)
.class public final enum Lcom/chartboost/sdk/Libraries/CBLogging$Level;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/CBLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Libraries/CBLogging$Level;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

.field public static final enum INTEGRATION:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

.field public static final enum NONE:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

.field private static final synthetic a:[Lcom/chartboost/sdk/Libraries/CBLogging$Level;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->NONE:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .line 46
    new-instance v0, Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    const-string v1, "INTEGRATION"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/Libraries/CBLogging$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->INTEGRATION:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .line 48
    new-instance v0, Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/Libraries/CBLogging$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->NONE:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->INTEGRATION:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    aput-object v1, v0, v4

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->a:[Lcom/chartboost/sdk/Libraries/CBLogging$Level;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->a:[Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Libraries/CBLogging$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    return-object v0
.end method
