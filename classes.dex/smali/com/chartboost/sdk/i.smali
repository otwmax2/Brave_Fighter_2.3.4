###### Class com.chartboost.sdk.i (com.chartboost.sdk.i)
.class public Lcom/chartboost/sdk/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Lcom/chartboost/sdk/a;

.field public static d:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Z

.field public static h:Ljava/lang/String;

.field public static i:Lcom/chartboost/sdk/Chartboost$CBMediation;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static n:Z

.field public static o:Z

.field public static p:Z

.field public static q:Z

.field public static r:Z

.field static s:Z

.field public static t:Z

.field public static u:Z

.field public static v:Z

.field public static w:Ljava/lang/String;

.field public static x:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 11
    sput-object v1, Lcom/chartboost/sdk/i;->a:Ljava/lang/String;

    .line 12
    sput-object v1, Lcom/chartboost/sdk/i;->b:Ljava/lang/String;

    .line 15
    sput-object v1, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 16
    sput-object v1, Lcom/chartboost/sdk/i;->e:Ljava/lang/String;

    .line 17
    sput-object v1, Lcom/chartboost/sdk/i;->f:Ljava/lang/String;

    .line 19
    sput-boolean v0, Lcom/chartboost/sdk/i;->g:Z

    .line 21
    sput-object v1, Lcom/chartboost/sdk/i;->h:Ljava/lang/String;

    .line 22
    sput-object v1, Lcom/chartboost/sdk/i;->i:Lcom/chartboost/sdk/Chartboost$CBMediation;

    .line 23
    sput-object v1, Lcom/chartboost/sdk/i;->j:Ljava/lang/String;

    .line 40
    sput-object v1, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 43
    sput-boolean v0, Lcom/chartboost/sdk/i;->n:Z

    .line 44
    sput-boolean v0, Lcom/chartboost/sdk/i;->o:Z

    .line 45
    sput-boolean v0, Lcom/chartboost/sdk/i;->p:Z

    .line 46
    sput-boolean v0, Lcom/chartboost/sdk/i;->q:Z

    .line 47
    sput-boolean v0, Lcom/chartboost/sdk/i;->r:Z

    .line 49
    sput-boolean v2, Lcom/chartboost/sdk/i;->s:Z

    .line 52
    sput-boolean v0, Lcom/chartboost/sdk/i;->t:Z

    .line 53
    sput-boolean v0, Lcom/chartboost/sdk/i;->u:Z

    .line 54
    sput-boolean v0, Lcom/chartboost/sdk/i;->v:Z

    .line 56
    const-string v0, "Invalid user-agent value"

    sput-object v0, Lcom/chartboost/sdk/i;->w:Ljava/lang/String;

    .line 57
    sput-boolean v2, Lcom/chartboost/sdk/i;->x:Z

    return-void
.end method
