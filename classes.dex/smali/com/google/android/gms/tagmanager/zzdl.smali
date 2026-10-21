###### Class com.google.android.gms.tagmanager.zzdl (com.google.android.gms.tagmanager.zzdl)
.class public Lcom/google/android/gms/tagmanager/zzdl;
.super Ljava/lang/Object;


# static fields
.field private static final ayO:Ljava/lang/Object;

.field private static ayP:Ljava/lang/Long;

.field private static ayQ:Ljava/lang/Double;

.field private static ayR:Lcom/google/android/gms/tagmanager/zzdk;

.field private static ayS:Ljava/lang/String;

.field private static ayT:Ljava/lang/Boolean;

.field private static ayU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static ayV:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static ayW:Lcom/google/android/gms/internal/zzai$zza;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayO:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v6, v7}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayP:Ljava/lang/Long;

    new-instance v0, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayQ:Ljava/lang/Double;

    invoke-static {v6, v7}, Lcom/google/android/gms/tagmanager/zzdk;->zzbs(J)Lcom/google/android/gms/tagmanager/zzdk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayR:Lcom/google/android/gms/tagmanager/zzdk;

    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayS:Ljava/lang/String;

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v4}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayT:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayU:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayV:Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayS:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzar(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzai$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayW:Lcom/google/android/gms/internal/zzai$zza;

    return-void
.end method

.method private static getDouble(Ljava/lang/Object;)D
    .registers 3

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-string v0, "getDouble received non-Number"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public static zzam(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayS:Ljava/lang/String;

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static zzan(Ljava/lang/Object;)Lcom/google/android/gms/tagmanager/zzdk;
    .registers 3

    instance-of v0, p0, Lcom/google/android/gms/tagmanager/zzdk;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/android/gms/tagmanager/zzdk;

    :goto_6
    return-object p0

    :cond_7
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzat(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzau(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/zzdk;->zzbs(J)Lcom/google/android/gms/tagmanager/zzdk;

    move-result-object p0

    goto :goto_6

    :cond_16
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzas(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdk;->zza(Ljava/lang/Double;)Lcom/google/android/gms/tagmanager/zzdk;

    move-result-object p0

    goto :goto_6

    :cond_29
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzam(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzot(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdk;

    move-result-object p0

    goto :goto_6
.end method

.method public static zzao(Ljava/lang/Object;)Ljava/lang/Long;
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzat(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzau(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzam(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzou(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_e
.end method

.method public static zzap(Ljava/lang/Object;)Ljava/lang/Double;
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzas(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzam(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzov(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_e
.end method

.method public static zzaq(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 2

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/lang/Boolean;

    :goto_6
    return-object p0

    :cond_7
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzam(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzow(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_6
.end method

.method public static zzar(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzai$zza;
    .registers 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v4, Lcom/google/android/gms/internal/zzai$zza;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzai$zza;-><init>()V

    instance-of v0, p0, Lcom/google/android/gms/internal/zzai$zza;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/google/android/gms/internal/zzai$zza;

    :goto_d
    return-object p0

    :cond_e
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1c

    iput v3, v4, Lcom/google/android/gms/internal/zzai$zza;->type:I

    check-cast p0, Ljava/lang/String;

    iput-object p0, v4, Lcom/google/android/gms/internal/zzai$zza;->zzwt:Ljava/lang/String;

    :goto_18
    iput-boolean v2, v4, Lcom/google/android/gms/internal/zzai$zza;->zzxd:Z

    move-object p0, v4

    goto :goto_d

    :cond_1c
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_62

    const/4 v0, 0x2

    iput v0, v4, Lcom/google/android/gms/internal/zzai$zza;->type:I

    check-cast p0, Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_33
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzar(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzai$zza;

    move-result-object v7

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayW:Lcom/google/android/gms/internal/zzai$zza;

    if-ne v7, v0, :cond_48

    sget-object p0, Lcom/google/android/gms/tagmanager/zzdl;->ayW:Lcom/google/android/gms/internal/zzai$zza;

    goto :goto_d

    :cond_48
    if-nez v1, :cond_4e

    iget-boolean v0, v7, Lcom/google/android/gms/internal/zzai$zza;->zzxd:Z

    if-eqz v0, :cond_54

    :cond_4e
    move v0, v3

    :goto_4f
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_33

    :cond_54
    move v0, v2

    goto :goto_4f

    :cond_56
    new-array v0, v2, [Lcom/google/android/gms/internal/zzai$zza;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzai$zza;

    iput-object v0, v4, Lcom/google/android/gms/internal/zzai$zza;->zzwu:[Lcom/google/android/gms/internal/zzai$zza;

    move v2, v1

    goto :goto_18

    :cond_62
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_da

    const/4 v0, 0x3

    iput v0, v4, Lcom/google/android/gms/internal/zzai$zza;->type:I

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_86
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/tagmanager/zzdl;->zzar(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzai$zza;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzar(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzai$zza;

    move-result-object v9

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayW:Lcom/google/android/gms/internal/zzai$zza;

    if-eq v8, v0, :cond_aa

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayW:Lcom/google/android/gms/internal/zzai$zza;

    if-ne v9, v0, :cond_ae

    :cond_aa
    sget-object p0, Lcom/google/android/gms/tagmanager/zzdl;->ayW:Lcom/google/android/gms/internal/zzai$zza;

    goto/16 :goto_d

    :cond_ae
    if-nez v1, :cond_b8

    iget-boolean v0, v8, Lcom/google/android/gms/internal/zzai$zza;->zzxd:Z

    if-nez v0, :cond_b8

    iget-boolean v0, v9, Lcom/google/android/gms/internal/zzai$zza;->zzxd:Z

    if-eqz v0, :cond_c1

    :cond_b8
    move v0, v3

    :goto_b9
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_86

    :cond_c1
    move v0, v2

    goto :goto_b9

    :cond_c3
    new-array v0, v2, [Lcom/google/android/gms/internal/zzai$zza;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzai$zza;

    iput-object v0, v4, Lcom/google/android/gms/internal/zzai$zza;->zzwv:[Lcom/google/android/gms/internal/zzai$zza;

    new-array v0, v2, [Lcom/google/android/gms/internal/zzai$zza;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzai$zza;

    iput-object v0, v4, Lcom/google/android/gms/internal/zzai$zza;->zzww:[Lcom/google/android/gms/internal/zzai$zza;

    move v2, v1

    goto/16 :goto_18

    :cond_da
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzas(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    iput v3, v4, Lcom/google/android/gms/internal/zzai$zza;->type:I

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/internal/zzai$zza;->zzwt:Ljava/lang/String;

    goto/16 :goto_18

    :cond_ea
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzat(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    const/4 v0, 0x6

    iput v0, v4, Lcom/google/android/gms/internal/zzai$zza;->type:I

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzau(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/google/android/gms/internal/zzai$zza;->zzwz:J

    goto/16 :goto_18

    :cond_fb
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_10d

    const/16 v0, 0x8

    iput v0, v4, Lcom/google/android/gms/internal/zzai$zza;->type:I

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v4, Lcom/google/android/gms/internal/zzai$zza;->zzxa:Z

    goto/16 :goto_18

    :cond_10d
    const-string v1, "Converting to Value from unknown object type: "

    if-nez p0, :cond_128

    const-string v0, "null"

    :goto_113
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_131

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_121
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    sget-object p0, Lcom/google/android/gms/tagmanager/zzdl;->ayW:Lcom/google/android/gms/internal/zzai$zza;

    goto/16 :goto_d

    :cond_128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_113

    :cond_131
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_121
.end method

.method private static zzas(Ljava/lang/Object;)Z
    .registers 2

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_14

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_14

    instance-of v0, p0, Lcom/google/android/gms/tagmanager/zzdk;

    if-eqz v0, :cond_16

    check-cast p0, Lcom/google/android/gms/tagmanager/zzdk;

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdk;->zzcdf()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static zzat(Ljava/lang/Object;)Z
    .registers 2

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_1c

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_1c

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1c

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1c

    instance-of v0, p0, Lcom/google/android/gms/tagmanager/zzdk;

    if-eqz v0, :cond_1e

    check-cast p0, Lcom/google/android/gms/tagmanager/zzdk;

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdk;->zzcdg()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private static zzau(Ljava/lang/Object;)J
    .registers 3

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-string v0, "getInt64 received non-Number"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public static zzcdk()Ljava/lang/Object;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static zzcdl()Ljava/lang/Long;
    .registers 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayP:Ljava/lang/Long;

    return-object v0
.end method

.method public static zzcdm()Ljava/lang/Double;
    .registers 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayQ:Ljava/lang/Double;

    return-object v0
.end method

.method public static zzcdn()Ljava/lang/Boolean;
    .registers 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayT:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static zzcdo()Lcom/google/android/gms/tagmanager/zzdk;
    .registers 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayR:Lcom/google/android/gms/tagmanager/zzdk;

    return-object v0
.end method

.method public static zzcdp()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayS:Ljava/lang/String;

    return-object v0
.end method

.method public static zzcdq()Lcom/google/android/gms/internal/zzai$zza;
    .registers 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayW:Lcom/google/android/gms/internal/zzai$zza;

    return-object v0
.end method

.method public static zzg(Lcom/google/android/gms/internal/zzai$zza;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzl(Lcom/google/android/gms/internal/zzai$zza;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzam(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzh(Lcom/google/android/gms/internal/zzai$zza;)Lcom/google/android/gms/tagmanager/zzdk;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzl(Lcom/google/android/gms/internal/zzai$zza;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzan(Ljava/lang/Object;)Lcom/google/android/gms/tagmanager/zzdk;

    move-result-object v0

    return-object v0
.end method

.method public static zzi(Lcom/google/android/gms/internal/zzai$zza;)Ljava/lang/Long;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzl(Lcom/google/android/gms/internal/zzai$zza;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzao(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static zzj(Lcom/google/android/gms/internal/zzai$zza;)Ljava/lang/Double;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzl(Lcom/google/android/gms/internal/zzai$zza;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzap(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static zzk(Lcom/google/android/gms/internal/zzai$zza;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzl(Lcom/google/android/gms/internal/zzai$zza;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzaq(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static zzl(Lcom/google/android/gms/internal/zzai$zza;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_6

    move-object v0, v1

    :goto_5
    return-object v0

    :cond_6
    iget v2, p0, Lcom/google/android/gms/internal/zzai$zza;->type:I

    packed-switch v2, :pswitch_data_e0

    iget v0, p0, Lcom/google/android/gms/internal/zzai$zza;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to convert a value of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_5

    :pswitch_27
    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zza;->zzwt:Ljava/lang/String;

    goto :goto_5

    :pswitch_2a
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzai$zza;->zzwu:[Lcom/google/android/gms/internal/zzai$zza;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzai$zza;->zzwu:[Lcom/google/android/gms/internal/zzai$zza;

    array-length v4, v3

    :goto_35
    if-ge v0, v4, :cond_47

    aget-object v5, v3, v0

    invoke-static {v5}, Lcom/google/android/gms/tagmanager/zzdl;->zzl(Lcom/google/android/gms/internal/zzai$zza;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_41

    move-object v0, v1

    goto :goto_5

    :cond_41
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_47
    move-object v0, v2

    goto :goto_5

    :pswitch_49
    iget-object v2, p0, Lcom/google/android/gms/internal/zzai$zza;->zzwv:[Lcom/google/android/gms/internal/zzai$zza;

    array-length v2, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzai$zza;->zzww:[Lcom/google/android/gms/internal/zzai$zza;

    array-length v3, v3

    if-eq v2, v3, :cond_70

    const-string v2, "Converting an invalid value to object: "

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzai$zza;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6a

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_65
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_5

    :cond_6a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_65

    :cond_70
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzai$zza;->zzww:[Lcom/google/android/gms/internal/zzai$zza;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    :goto_78
    iget-object v3, p0, Lcom/google/android/gms/internal/zzai$zza;->zzwv:[Lcom/google/android/gms/internal/zzai$zza;

    array-length v3, v3

    if-ge v0, v3, :cond_9a

    iget-object v3, p0, Lcom/google/android/gms/internal/zzai$zza;->zzwv:[Lcom/google/android/gms/internal/zzai$zza;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzdl;->zzl(Lcom/google/android/gms/internal/zzai$zza;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzai$zza;->zzww:[Lcom/google/android/gms/internal/zzai$zza;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/google/android/gms/tagmanager/zzdl;->zzl(Lcom/google/android/gms/internal/zzai$zza;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v3, :cond_91

    if-nez v4, :cond_94

    :cond_91
    move-object v0, v1

    goto/16 :goto_5

    :cond_94
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    :cond_9a
    move-object v0, v2

    goto/16 :goto_5

    :pswitch_9d
    const-string v0, "Trying to convert a macro reference to object"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_5

    :pswitch_a5
    const-string v0, "Trying to convert a function id to object"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_5

    :pswitch_ad
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzai$zza;->zzwz:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_5

    :pswitch_b5
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzai$zza;->zzxb:[Lcom/google/android/gms/internal/zzai$zza;

    array-length v4, v3

    :goto_bd
    if-ge v0, v4, :cond_d2

    aget-object v5, v3, v0

    invoke-static {v5}, Lcom/google/android/gms/tagmanager/zzdl;->zzg(Lcom/google/android/gms/internal/zzai$zza;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/tagmanager/zzdl;->ayS:Ljava/lang/String;

    if-ne v5, v6, :cond_cc

    move-object v0, v1

    goto/16 :goto_5

    :cond_cc
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_bd

    :cond_d2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :pswitch_d8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzai$zza;->zzxa:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_5

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2a
        :pswitch_49
        :pswitch_9d
        :pswitch_a5
        :pswitch_ad
        :pswitch_b5
        :pswitch_d8
    .end packed-switch
.end method

.method public static zzos(Ljava/lang/String;)Lcom/google/android/gms/internal/zzai$zza;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzai$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzai$zza;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Lcom/google/android/gms/internal/zzai$zza;->type:I

    iput-object p0, v0, Lcom/google/android/gms/internal/zzai$zza;->zzwy:Ljava/lang/String;

    return-object v0
.end method

.method private static zzot(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdk;
    .registers 3

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdk;->zzor(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdk;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to convert \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' to a number."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayR:Lcom/google/android/gms/tagmanager/zzdk;

    goto :goto_4
.end method

.method private static zzou(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzot(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdk;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzdl;->ayR:Lcom/google/android/gms/tagmanager/zzdk;

    if-ne v0, v1, :cond_b

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayP:Ljava/lang/Long;

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdk;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_a
.end method

.method private static zzov(Ljava/lang/String;)Ljava/lang/Double;
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzot(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdk;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzdl;->ayR:Lcom/google/android/gms/tagmanager/zzdk;

    if-ne v0, v1, :cond_b

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayQ:Ljava/lang/Double;

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdk;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_a
.end method

.method private static zzow(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_16
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->ayT:Ljava/lang/Boolean;

    goto :goto_a
.end method
