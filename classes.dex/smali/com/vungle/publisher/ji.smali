###### Class com.vungle.publisher.ji (com.vungle.publisher.ji)
.class public abstract Lcom/vungle/publisher/ji;
.super Lcom/vungle/publisher/eh;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ji$b;,
        Lcom/vungle/publisher/ji$a;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/vungle/publisher/eh;-><init>()V

    .line 71
    return-void
.end method

###### Class com.vungle.publisher.ji.a (com.vungle.publisher.ji$a)
.class public final enum Lcom/vungle/publisher/ji$a;
.super Ljava/lang/Enum;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/jf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/ji$a;",
        ">;",
        "Lcom/vungle/publisher/jf;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/ji$a;

.field public static final enum b:Lcom/vungle/publisher/ji$a;

.field public static final enum c:Lcom/vungle/publisher/ji$a;

.field public static final enum d:Lcom/vungle/publisher/ji$a;

.field public static final enum e:Lcom/vungle/publisher/ji$a;

.field public static final enum f:Lcom/vungle/publisher/ji$a;

.field public static final enum g:Lcom/vungle/publisher/ji$a;

.field public static final enum h:Lcom/vungle/publisher/ji$a;

.field public static final enum i:Lcom/vungle/publisher/ji$a;

.field public static final enum j:Lcom/vungle/publisher/ji$a;

.field public static final enum k:Lcom/vungle/publisher/ji$a;

.field public static final enum l:Lcom/vungle/publisher/ji$a;

.field public static final enum m:Lcom/vungle/publisher/ji$a;

.field public static final enum n:Lcom/vungle/publisher/ji$a;

.field public static final enum o:Lcom/vungle/publisher/ji$a;

.field public static final enum p:Lcom/vungle/publisher/ji$a;

.field private static final synthetic s:[Lcom/vungle/publisher/ji$a;


# instance fields
.field private final q:F

.field private final r:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 19
    new-instance v0, Lcom/vungle/publisher/ji$a;

    const-string v1, "error"

    invoke-direct {v0, v1, v5}, Lcom/vungle/publisher/ji$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/ji$a;->a:Lcom/vungle/publisher/ji$a;

    .line 20
    new-instance v0, Lcom/vungle/publisher/ji$a;

    const-string v1, "mute"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/ji$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/ji$a;->b:Lcom/vungle/publisher/ji$a;

    .line 21
    new-instance v0, Lcom/vungle/publisher/ji$a;

    const-string v1, "moat"

    invoke-direct {v0, v1, v6}, Lcom/vungle/publisher/ji$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/ji$a;->c:Lcom/vungle/publisher/ji$a;

    .line 22
    new-instance v0, Lcom/vungle/publisher/ji$a;

    const-string v1, "play_percentage_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v7, v2}, Lcom/vungle/publisher/ji$a;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/vungle/publisher/ji$a;->d:Lcom/vungle/publisher/ji$a;

    .line 23
    new-instance v0, Lcom/vungle/publisher/ji$a;

    const-string v1, "play_percentage_25"

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v8, v2}, Lcom/vungle/publisher/ji$a;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/vungle/publisher/ji$a;->e:Lcom/vungle/publisher/ji$a;

    .line 24
    new-instance v0, Lcom/vungle/publisher/ji$a;

    const-string v1, "play_percentage_50"

    const/4 v2, 0x5

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/ji$a;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/vungle/publisher/ji$a;->f:Lcom/vungle/publisher/ji$a;

    .line 25
    new-instance v0, Lcom/vungle/publisher/ji$a;

    const-string v1, "play_percentage_75"

    const/4 v2, 0x6

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/ji$a;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/vungle/publisher/ji$a;->g:Lcom/vungle/publisher/ji$a;

    .line 26
    new-instance v0, Lcom/vungle/publisher/ji$a;

    const-string v1, "play_percentage_80"

    const/4 v2, 0x7

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/ji$a;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/vungle/publisher/ji$a;->h:Lcom/vungle/publisher/ji$a;

    .line 27
    new-instance v0, Lcom/vungle/publisher/ji$a;

    const-string v1, "play_percentage_100"

    const/16 v2, 0x8

    const v3, 0x3f7d70a4    # 0.99f

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/ji$a;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/vungle/publisher/ji$a;->i:Lcom/vungle/publisher/ji$a;

    .line 28
    new-instance v0, Lcom/vungle/publisher/ji$a;

    const-string v1, "postroll_click"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v4}, Lcom/vungle/publisher/ji$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/vungle/publisher/ji$a;->j:Lcom/vungle/publisher/ji$a;

    .line 29
    new-instance v0, Lcom/vungle/publisher/ji$a;

    const-string v1, "postroll_view"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/ji$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/ji$a;->k:Lcom/vungle/publisher/ji$a;

    .line 30
    new-instance v0, Lcom/vungle/publisher/ji$a;

    const-string v1, "unmute"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/ji$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/ji$a;->l:Lcom/vungle/publisher/ji$a;

    .line 31
    new-instance v0, Lcom/vungle/publisher/ji$a;

    const-string v1, "video_click"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v4}, Lcom/vungle/publisher/ji$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/vungle/publisher/ji$a;->m:Lcom/vungle/publisher/ji$a;

    .line 32
    new-instance v0, Lcom/vungle/publisher/ji$a;

    const-string v1, "video_close"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/ji$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/ji$a;->n:Lcom/vungle/publisher/ji$a;

    .line 33
    new-instance v0, Lcom/vungle/publisher/ji$a;

    const-string v1, "video_pause"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/ji$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/ji$a;->o:Lcom/vungle/publisher/ji$a;

    .line 34
    new-instance v0, Lcom/vungle/publisher/ji$a;

    const-string v1, "video_resume"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/ji$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/ji$a;->p:Lcom/vungle/publisher/ji$a;

    .line 18
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/vungle/publisher/ji$a;

    sget-object v1, Lcom/vungle/publisher/ji$a;->a:Lcom/vungle/publisher/ji$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vungle/publisher/ji$a;->b:Lcom/vungle/publisher/ji$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vungle/publisher/ji$a;->c:Lcom/vungle/publisher/ji$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vungle/publisher/ji$a;->d:Lcom/vungle/publisher/ji$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/vungle/publisher/ji$a;->e:Lcom/vungle/publisher/ji$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/vungle/publisher/ji$a;->f:Lcom/vungle/publisher/ji$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vungle/publisher/ji$a;->g:Lcom/vungle/publisher/ji$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vungle/publisher/ji$a;->h:Lcom/vungle/publisher/ji$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/vungle/publisher/ji$a;->i:Lcom/vungle/publisher/ji$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/vungle/publisher/ji$a;->j:Lcom/vungle/publisher/ji$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/vungle/publisher/ji$a;->k:Lcom/vungle/publisher/ji$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/vungle/publisher/ji$a;->l:Lcom/vungle/publisher/ji$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/vungle/publisher/ji$a;->m:Lcom/vungle/publisher/ji$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/vungle/publisher/ji$a;->n:Lcom/vungle/publisher/ji$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/vungle/publisher/ji$a;->o:Lcom/vungle/publisher/ji$a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/vungle/publisher/ji$a;->p:Lcom/vungle/publisher/ji$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vungle/publisher/ji$a;->s:[Lcom/vungle/publisher/ji$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/vungle/publisher/ji$a;-><init>(Ljava/lang/String;IFZ)V

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vungle/publisher/ji$a;-><init>(Ljava/lang/String;IFZ)V

    .line 45
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZ)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/vungle/publisher/ji$a;->q:F

    .line 53
    iput-boolean p4, p0, Lcom/vungle/publisher/ji$a;->r:Z

    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 48
    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/vungle/publisher/ji$a;-><init>(Ljava/lang/String;IFZ)V

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/ji$a;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/vungle/publisher/ji$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ji$a;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/ji$a;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/vungle/publisher/ji$a;->s:[Lcom/vungle/publisher/ji$a;

    invoke-virtual {v0}, [Lcom/vungle/publisher/ji$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/ji$a;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/vungle/publisher/ji$a;->r:Z

    return v0
.end method

.method public b()F
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/vungle/publisher/ji$a;->q:F

    return v0
.end method

###### Class com.vungle.publisher.ji.b (com.vungle.publisher.ji$b)
.class abstract Lcom/vungle/publisher/ji$b;
.super Lcom/vungle/publisher/eh$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/vungle/publisher/wp;",
        ">",
        "Lcom/vungle/publisher/eh$a",
        "<",
        "Lcom/vungle/publisher/ji;",
        "Lcom/vungle/publisher/wv;",
        "TR;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/vungle/publisher/eh$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .registers 5

    .prologue
    .line 73
    check-cast p1, Lcom/vungle/publisher/ji;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/ji$b;->a(Lcom/vungle/publisher/ji;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ji;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/eh;Landroid/database/Cursor;Z)Lcom/vungle/publisher/eh;
    .registers 5

    .prologue
    .line 73
    check-cast p1, Lcom/vungle/publisher/ji;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/ji$b;->a(Lcom/vungle/publisher/ji;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ji;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/ji;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ji;
    .registers 6

    .prologue
    .line 131
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/eh$a;->a(Lcom/vungle/publisher/eh;Landroid/database/Cursor;Z)Lcom/vungle/publisher/eh;

    .line 132
    const-string v0, "event"

    const-class v1, Lcom/vungle/publisher/ji$a;

    invoke-static {p2, v0, v1}, Lcom/vungle/publisher/ce;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/jf;

    iput-object v0, p1, Lcom/vungle/publisher/ji;->c:Lcom/vungle/publisher/jf;

    .line 133
    return-object p1
.end method

.method bridge synthetic a(Ljava/lang/String;Lcom/vungle/publisher/wu;)Ljava/util/Map;
    .registers 4

    .prologue
    .line 73
    check-cast p2, Lcom/vungle/publisher/wv;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/ji$b;->a(Ljava/lang/String;Lcom/vungle/publisher/wv;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;Lcom/vungle/publisher/wv;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vungle/publisher/wv;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/jf;",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/ji;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    if-eqz p2, :cond_ea

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    sget-object v1, Lcom/vungle/publisher/ji$a;->a:Lcom/vungle/publisher/ji$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/wv;->g()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/ji$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/jf;Ljava/util/List;)V

    .line 80
    sget-object v1, Lcom/vungle/publisher/ji$a;->b:Lcom/vungle/publisher/ji$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/wv;->h()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/ji$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/jf;Ljava/util/List;)V

    .line 81
    invoke-virtual {p2}, Lcom/vungle/publisher/wv;->j()[Lcom/vungle/publisher/wa;

    move-result-object v2

    .line 82
    if-eqz v2, :cond_90

    array-length v1, v2

    if-lez v1, :cond_90

    .line 83
    array-length v3, v2

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v3, :cond_90

    aget-object v4, v2, v1

    .line 84
    invoke-virtual {v4}, Lcom/vungle/publisher/wa;->c()Ljava/lang/Float;

    move-result-object v5

    .line 85
    if-nez v5, :cond_39

    .line 86
    const-string v4, "VungleDatabase"

    const-string v5, "Invalid/null play percentage checkpoint received"

    invoke-static {v4, v5}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 88
    :cond_39
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    double-to-int v6, v6

    sparse-switch v6, :sswitch_data_ec

    .line 105
    const-string v4, "VungleDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid/unsupported play percentage checkpoint: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    .line 90
    :sswitch_5e
    sget-object v5, Lcom/vungle/publisher/ji$a;->d:Lcom/vungle/publisher/ji$a;

    invoke-virtual {v4}, Lcom/vungle/publisher/wa;->d()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, p1, v0, v5, v4}, Lcom/vungle/publisher/ji$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/jf;Ljava/util/List;)V

    goto :goto_36

    .line 93
    :sswitch_68
    sget-object v5, Lcom/vungle/publisher/ji$a;->e:Lcom/vungle/publisher/ji$a;

    invoke-virtual {v4}, Lcom/vungle/publisher/wa;->d()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, p1, v0, v5, v4}, Lcom/vungle/publisher/ji$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/jf;Ljava/util/List;)V

    goto :goto_36

    .line 96
    :sswitch_72
    sget-object v5, Lcom/vungle/publisher/ji$a;->f:Lcom/vungle/publisher/ji$a;

    invoke-virtual {v4}, Lcom/vungle/publisher/wa;->d()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, p1, v0, v5, v4}, Lcom/vungle/publisher/ji$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/jf;Ljava/util/List;)V

    goto :goto_36

    .line 99
    :sswitch_7c
    sget-object v5, Lcom/vungle/publisher/ji$a;->g:Lcom/vungle/publisher/ji$a;

    invoke-virtual {v4}, Lcom/vungle/publisher/wa;->d()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, p1, v0, v5, v4}, Lcom/vungle/publisher/ji$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/jf;Ljava/util/List;)V

    goto :goto_36

    .line 102
    :sswitch_86
    sget-object v5, Lcom/vungle/publisher/ji$a;->i:Lcom/vungle/publisher/ji$a;

    invoke-virtual {v4}, Lcom/vungle/publisher/wa;->d()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, p1, v0, v5, v4}, Lcom/vungle/publisher/ji$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/jf;Ljava/util/List;)V

    goto :goto_36

    .line 111
    :cond_90
    sget-object v1, Lcom/vungle/publisher/ji$a;->j:Lcom/vungle/publisher/ji$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/wv;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/ji$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/jf;Ljava/util/List;)V

    .line 112
    sget-object v1, Lcom/vungle/publisher/ji$a;->k:Lcom/vungle/publisher/ji$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/wv;->k()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/ji$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/jf;Ljava/util/List;)V

    .line 113
    sget-object v1, Lcom/vungle/publisher/ji$a;->m:Lcom/vungle/publisher/ji$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/wv;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/ji$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/jf;Ljava/util/List;)V

    .line 114
    sget-object v1, Lcom/vungle/publisher/ji$a;->n:Lcom/vungle/publisher/ji$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/wv;->f()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/ji$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/jf;Ljava/util/List;)V

    .line 115
    sget-object v1, Lcom/vungle/publisher/ji$a;->o:Lcom/vungle/publisher/ji$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/wv;->i()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/ji$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/jf;Ljava/util/List;)V

    .line 116
    sget-object v1, Lcom/vungle/publisher/ji$a;->p:Lcom/vungle/publisher/ji$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/wv;->l()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/ji$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/jf;Ljava/util/List;)V

    .line 117
    sget-object v1, Lcom/vungle/publisher/ji$a;->l:Lcom/vungle/publisher/ji$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/wv;->m()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/ji$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/jf;Ljava/util/List;)V

    .line 120
    invoke-virtual {p2}, Lcom/vungle/publisher/wv;->n()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-virtual {p2}, Lcom/vungle/publisher/wv;->o()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v2, Lcom/vungle/publisher/ji$a;->c:Lcom/vungle/publisher/ji$a;

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/vungle/publisher/ji$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/jf;Ljava/util/List;)V

    .line 126
    :cond_ea
    return-object v0

    .line 88
    nop

    :sswitch_data_ec
    .sparse-switch
        0x0 -> :sswitch_5e
        0x19 -> :sswitch_68
        0x32 -> :sswitch_72
        0x4b -> :sswitch_7c
        0x64 -> :sswitch_86
    .end sparse-switch
.end method

.method protected c(I)[Lcom/vungle/publisher/ji;
    .registers 3

    .prologue
    .line 138
    new-array v0, p1, [Lcom/vungle/publisher/ji;

    return-object v0
.end method

.method protected synthetic d(I)[Lcom/vungle/publisher/dp;
    .registers 3

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/ji$b;->c(I)[Lcom/vungle/publisher/ji;

    move-result-object v0

    return-object v0
.end method
