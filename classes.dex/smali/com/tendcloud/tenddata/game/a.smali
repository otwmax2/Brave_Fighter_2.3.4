###### Class com.tendcloud.tenddata.game.a (com.tendcloud.tenddata.game.a)
.class public Lcom/tendcloud/tenddata/game/a;
.super Ljava/lang/Object;


# static fields
.field public static final e:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Z

.field public b:I

.field public final c:Ljava/lang/String;

.field public final d:I

.field private final f:Lcom/tendcloud/tenddata/game/n$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tendcloud/tenddata/game/b;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/b;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/a;->e:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tendcloud/tenddata/game/a;->d:I

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/a;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/n$a;->a(I)Lcom/tendcloud/tenddata/game/n$a;

    move-result-object v1

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/a;->f:Lcom/tendcloud/tenddata/game/n$a;

    :try_start_12
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/a;->f:Lcom/tendcloud/tenddata/game/n$a;

    const-string v2, "cpuacct"

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/n$a;->b(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/n$b;

    move-result-object v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/a;->f:Lcom/tendcloud/tenddata/game/n$a;

    const-string v3, "cpu"

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/game/n$a;->b(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/n$b;

    move-result-object v2

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/n$b;->c:Ljava/lang/String;

    const-string v3, "bg_non_interactive"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    :goto_2c
    iput-boolean v0, p0, Lcom/tendcloud/tenddata/game/a;->a:Z

    iget-object v0, v1, Lcom/tendcloud/tenddata/game/n$b;->c:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "uid_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/a;->b:I
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_47} :catch_4a

    :cond_47
    :goto_47
    return-void

    :cond_48
    const/4 v0, 0x0

    goto :goto_2c

    :catch_4a
    move-exception v0

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/a;->d()Lcom/tendcloud/tenddata/game/n$d;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/a;->d()Lcom/tendcloud/tenddata/game/n$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/n$d;->a()I

    move-result v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/a;->b:I

    goto :goto_47
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/a;->d:I

    const-class v0, Lcom/tendcloud/tenddata/game/n$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/n$a;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/a;->f:Lcom/tendcloud/tenddata/game/n$a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    :goto_24
    iput-boolean v0, p0, Lcom/tendcloud/tenddata/game/a;->a:Z

    return-void

    :cond_27
    const/4 v0, 0x0

    goto :goto_24
.end method

.method static a(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "/proc/%d/cmdline"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/n$c;->a(I)Lcom/tendcloud/tenddata/game/n$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/n$c;->b()Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_26} :catch_28

    move-result-object v0

    :cond_27
    :goto_27
    return-object v0

    :catch_28
    move-exception v1

    goto :goto_27
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/a;->c:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-object v0

    :catch_c
    move-exception v0

    const-string v0, ""

    goto :goto_b
.end method

.method public b()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x1

    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/a;->c:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-le v0, v2, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/a;->c:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_29} :catch_2b

    move-result-object v0

    :goto_2a
    return-object v0

    :catch_2b
    move-exception v0

    :cond_2c
    const-string v0, ""

    goto :goto_2a
.end method

.method public c()Lcom/tendcloud/tenddata/game/n$a;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/a;->f:Lcom/tendcloud/tenddata/game/n$a;

    return-object v0
.end method

.method public d()Lcom/tendcloud/tenddata/game/n$d;
    .registers 2

    :try_start_0
    iget v0, p0, Lcom/tendcloud/tenddata/game/a;->d:I

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/n$d;->a(I)Lcom/tendcloud/tenddata/game/n$d;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public e()Lcom/tendcloud/tenddata/game/n$c;
    .registers 2

    :try_start_0
    iget v0, p0, Lcom/tendcloud/tenddata/game/a;->d:I

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/n$c;->a(I)Lcom/tendcloud/tenddata/game/n$c;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method
