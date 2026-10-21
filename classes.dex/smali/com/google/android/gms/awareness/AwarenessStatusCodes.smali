###### Class com.google.android.gms.awareness.AwarenessStatusCodes (com.google.android.gms.awareness.AwarenessStatusCodes)
.class public Lcom/google/android/gms/awareness/AwarenessStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# static fields
.field public static final ACL_ACCESS_DENIED:I = 0x1d4f

.field public static final API_NOT_AVAILABLE:I = 0x1d58

.field public static final BAD_ACCOUNT:I = 0x1d50

.field public static final BLUETOOTH_OFF:I = 0x1d52

.field public static final FENCE_NOT_AVAILABLE:I = 0x1d5a

.field public static final INCONSISTENT_ACCOUNT:I = 0x1d56

.field public static final INCONSISTENT_MODULE_ID:I = 0x1d57

.field public static final INCONSISTENT_UID:I = 0x1d59

.field public static final INTERNAL_API_CLIENT_CONNECTION_FAILED:I = 0x1d53

.field public static final MAX_LIMIT_OF_FENCE_REGISTRATIONS_EXCEEDED:I = 0x1d5b


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_3e

    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    :sswitch_8
    const-string v0, "MISSING_MODULE_ID"

    goto :goto_7

    :sswitch_b
    const-string v0, "EMPTY_CONTEXT_DATA_FILTER"

    goto :goto_7

    :sswitch_e
    const-string v0, "EMPTY_TRANSITION_FILTER"

    goto :goto_7

    :sswitch_11
    const-string v0, "ACL_ACCESS_DENIED"

    goto :goto_7

    :sswitch_14
    const-string v0, "BAD_ACCOUNT"

    goto :goto_7

    :sswitch_17
    const-string v0, "SUCCESS_INJECTED_ONLY"

    goto :goto_7

    :sswitch_1a
    const-string v0, "SUCCESS_WROTE_INJECTED"

    goto :goto_7

    :sswitch_1d
    const-string v0, "WRITE_FAILED"

    goto :goto_7

    :sswitch_20
    const-string v0, "BLUETOOTH_OFF"

    goto :goto_7

    :sswitch_23
    const-string v0, "INTERNAL_API_CLIENT_CONNECTION_FAILED"

    goto :goto_7

    :sswitch_26
    const-string v0, "PLACES_API_CALL_FAILED"

    goto :goto_7

    :sswitch_29
    const-string v0, "UNRESOLVED_PLACE_ALIAS"

    goto :goto_7

    :sswitch_2c
    const-string v0, "INCONSISTENT_ACCOUNT"

    goto :goto_7

    :sswitch_2f
    const-string v0, "INCONSISTENT_MODULE_ID"

    goto :goto_7

    :sswitch_32
    const-string v0, "API_NOT_AVAILABLE"

    goto :goto_7

    :sswitch_35
    const-string v0, "INCONSISTENT_UID"

    goto :goto_7

    :sswitch_38
    const-string v0, "FENCE_NOT_AVAILABLE"

    goto :goto_7

    :sswitch_3b
    const-string v0, "MAX_LIMIT_OF_FENCE_REGISTRATIONS_EXCEEDED"

    goto :goto_7

    :sswitch_data_3e
    .sparse-switch
        -0x1d4d -> :sswitch_1a
        -0x1d4c -> :sswitch_17
        0x1d4c -> :sswitch_8
        0x1d4d -> :sswitch_b
        0x1d4e -> :sswitch_e
        0x1d4f -> :sswitch_11
        0x1d50 -> :sswitch_14
        0x1d51 -> :sswitch_1d
        0x1d52 -> :sswitch_20
        0x1d53 -> :sswitch_23
        0x1d54 -> :sswitch_26
        0x1d55 -> :sswitch_29
        0x1d56 -> :sswitch_2c
        0x1d57 -> :sswitch_2f
        0x1d58 -> :sswitch_32
        0x1d59 -> :sswitch_35
        0x1d5a -> :sswitch_38
        0x1d5b -> :sswitch_3b
    .end sparse-switch
.end method
