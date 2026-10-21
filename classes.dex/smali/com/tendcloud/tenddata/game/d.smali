###### Class com.tendcloud.tenddata.game.d (com.tendcloud.tenddata.game.d)
.class public Lcom/tendcloud/tenddata/game/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "STATE_OFF"

.field private static final b:Ljava/lang/String; = "STATE_ON"

.field private static final c:Ljava/lang/String; = "STATE_TURNING_OFF"

.field private static final d:Ljava/lang/String; = "STATE_TURNING_ON"

.field private static final e:Ljava/lang/String; = "UNKNOWN"

.field private static final f:Ljava/lang/String; = "CLASSIC"

.field private static final g:Ljava/lang/String; = "LOW_ENERGY"

.field private static final h:Ljava/lang/String; = "DUAL_MODE"

.field private static final i:Ljava/lang/String; = "UNKNOWN"

.field private static final j:Ljava/lang/String; = "SCAN_MODE_CONNECTABLE"

.field private static final k:Ljava/lang/String; = "SCAN_MODE_CONNECTABLE_DISCOVERABLE"

.field private static final l:Ljava/lang/String; = "UNPAIRED"

.field private static final m:Ljava/lang/String; = "PAIRING"

.field private static final n:Ljava/lang/String; = "PAIRED"

.field private static o:Lorg/json/JSONArray;

.field private static p:Landroid/content/Context;

.field private static q:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/d;->o:Lorg/json/JSONArray;

    sput-object v1, Lcom/tendcloud/tenddata/game/d;->p:Landroid/content/Context;

    sput-object v1, Lcom/tendcloud/tenddata/game/d;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/tendcloud/tenddata/game/d;->p:Landroid/content/Context;

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    packed-switch p0, :pswitch_data_1e

    :pswitch_5
    const-string v0, "EXCEPTION_CODE"

    :goto_7
    return-object v0

    :pswitch_8
    const-string v0, "UNPAIRED"

    goto :goto_7

    :pswitch_b
    const-string v0, "PAIRED"

    goto :goto_7

    :pswitch_e
    const-string v0, "PAIRING"

    goto :goto_7

    :pswitch_11
    const-string v0, "CLASSIC"

    goto :goto_7

    :pswitch_14
    const-string v0, "DUAL_MODE"

    goto :goto_7

    :pswitch_17
    const-string v0, "LOW_ENERGY"

    goto :goto_7

    :pswitch_1a
    const-string v0, "UNKNOWN"

    goto :goto_7

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_11
        :pswitch_17
        :pswitch_14
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method static synthetic a(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Lorg/json/JSONObject;
    .registers 3

    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/d;->b(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.permission.BLUETOOTH"

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/aa;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_13} :catch_15

    move-result v0

    goto :goto_f

    :catch_15
    move-exception v1

    goto :goto_f
.end method

.method private static b(I)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    packed-switch p0, :pswitch_data_1e

    :pswitch_5
    const-string v0, "EXCEPTION_CODE"

    :goto_7
    return-object v0

    :pswitch_8
    const-string v0, "SCAN_MODE_CONNECTABLE"

    goto :goto_7

    :pswitch_b
    const-string v0, "SCAN_MODE_CONNECTABLE_DISCOVERABLE"

    goto :goto_7

    :pswitch_e
    const-string v0, "UNKNOWN"

    goto :goto_7

    :pswitch_11
    const-string v0, "STATE_OFF"

    goto :goto_7

    :pswitch_14
    const-string v0, "STATE_ON"

    goto :goto_7

    :pswitch_17
    const-string v0, "STATE_TURNING_OFF"

    goto :goto_7

    :pswitch_1a
    const-string v0, "STATE_TURNING_ON"

    goto :goto_7

    nop

    :pswitch_data_1e
    .packed-switch 0xa
        :pswitch_11
        :pswitch_1a
        :pswitch_14
        :pswitch_17
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_e
        :pswitch_8
        :pswitch_5
        :pswitch_b
    .end packed-switch
.end method

.method static synthetic b()Lorg/json/JSONArray;
    .registers 1

    sget-object v0, Lcom/tendcloud/tenddata/game/d;->o:Lorg/json/JSONArray;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Lorg/json/JSONObject;
    .registers 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "android.permission.BLUETOOTH"

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/aa;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    if-eqz p1, :cond_6f

    const-string v1, "address"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v1, 0x12

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/aa;->a(I)Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v1, "type"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_36
    const-string v1, "bondState"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/aa;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    if-eqz v2, :cond_6f

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    array-length v4, v2

    const/4 v1, 0x0

    :goto_58
    if-ge v1, v4, :cond_66

    aget-object v5, v2, v1

    invoke-virtual {v5}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :cond_66
    const-string v1, "uuids"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6f
    :goto_6f
    return-object v0

    :cond_70
    const-string v1, "error"

    const-string v2, "NO_PERMISSION"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_77} :catch_78

    goto :goto_6f

    :catch_78
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6f
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    sput-object p0, Lcom/tendcloud/tenddata/game/d;->p:Landroid/content/Context;

    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/aa;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/d;->o:Lorg/json/JSONArray;

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->a(I)Z

    move-result v0

    if-eqz v0, :cond_44

    if-eqz v2, :cond_44

    new-instance v0, Lcom/tendcloud/tenddata/game/e;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/e;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/d;->q:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    :goto_2b
    if-nez v0, :cond_40

    new-instance v0, Lcom/tendcloud/tenddata/game/f;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/f;-><init>()V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.FOUND"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3f} :catch_41

    move-result v0

    :cond_40
    :goto_40
    return v0

    :catch_41
    move-exception v0

    :cond_42
    move v0, v1

    goto :goto_40

    :cond_44
    move v0, v1

    goto :goto_2b
.end method

.method public static c(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/aa;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_27

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->a(I)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/tendcloud/tenddata/game/d;->q:Ljava/lang/Object;

    if-eqz v0, :cond_27

    sget-object v0, Lcom/tendcloud/tenddata/game/d;->q:Ljava/lang/Object;

    instance-of v0, v0, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    if-eqz v0, :cond_27

    sget-object v0, Lcom/tendcloud/tenddata/game/d;->q:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    :cond_27
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2b

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a
.end method

.method public static d(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 2

    sget-object v0, Lcom/tendcloud/tenddata/game/d;->o:Lorg/json/JSONArray;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "android.permission.BLUETOOTH"

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/aa;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_64

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/d;->b(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2d

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    :cond_2d
    const-string v1, "name"

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "state"

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/d;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "scanMode"

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/d;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_50
    return-object v0

    :cond_51
    const-string v1, "error"

    const-string v2, "DEVICE_INVALID"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_58} :catch_59

    goto :goto_50

    :catch_59
    move-exception v1

    :try_start_5a
    const-string v1, "error"

    const-string v2, "EXCEPTION"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_5a .. :try_end_61} :catch_62

    goto :goto_50

    :catch_62
    move-exception v1

    goto :goto_50

    :cond_64
    :try_start_64
    const-string v1, "error"

    const-string v2, "NOT_SUPPORT_BLUETOOTH"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_50

    :cond_6c
    const-string v1, "error"

    const-string v2, "NO_PERMISSION"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_73} :catch_59

    goto :goto_50
.end method

.method public static f(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 4

    :try_start_0
    const-string v0, "android.permission.BLUETOOTH"

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/aa;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_3a

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/d;->b(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_23

    :catch_39
    move-exception v0

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    return-object v0

    :cond_3c
    move-object v0, v1

    goto :goto_3b
.end method
