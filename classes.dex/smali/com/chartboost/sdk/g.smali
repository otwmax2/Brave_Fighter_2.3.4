###### Class com.chartboost.sdk.g (com.chartboost.sdk.g)
.class public Lcom/chartboost/sdk/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/chartboost/sdk/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/chartboost/sdk/g;

    invoke-direct {v0}, Lcom/chartboost/sdk/g;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/g;->a:Lcom/chartboost/sdk/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/chartboost/sdk/g;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/chartboost/sdk/g;->a:Lcom/chartboost/sdk/g;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 27
    return-object p1
.end method
