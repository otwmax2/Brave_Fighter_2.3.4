###### Class com.google.android.gms.identity.intents.AddressConstants (com.google.android.gms.identity.intents.AddressConstants)
.class public interface abstract Lcom/google/android/gms/identity/intents/AddressConstants;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/identity/intents/AddressConstants$Themes;,
        Lcom/google/android/gms/identity/intents/AddressConstants$ErrorCodes;,
        Lcom/google/android/gms/identity/intents/AddressConstants$ResultCodes;,
        Lcom/google/android/gms/identity/intents/AddressConstants$Extras;
    }
.end annotation

###### Class com.google.android.gms.identity.intents.AddressConstants.ErrorCodes (com.google.android.gms.identity.intents.AddressConstants$ErrorCodes)
.class public interface abstract Lcom/google/android/gms/identity/intents/AddressConstants$ErrorCodes;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/identity/intents/AddressConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ErrorCodes"
.end annotation


# static fields
.field public static final ERROR_CODE_NO_APPLICABLE_ADDRESSES:I = 0x22b

###### Class com.google.android.gms.identity.intents.AddressConstants.Extras (com.google.android.gms.identity.intents.AddressConstants$Extras)
.class public interface abstract Lcom/google/android/gms/identity/intents/AddressConstants$Extras;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/identity/intents/AddressConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Extras"
.end annotation


# static fields
.field public static final EXTRA_ADDRESS:Ljava/lang/String; = "com.google.android.gms.identity.intents.EXTRA_ADDRESS"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "com.google.android.gms.identity.intents.EXTRA_ERROR_CODE"

###### Class com.google.android.gms.identity.intents.AddressConstants.ResultCodes (com.google.android.gms.identity.intents.AddressConstants$ResultCodes)
.class public interface abstract Lcom/google/android/gms/identity/intents/AddressConstants$ResultCodes;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/identity/intents/AddressConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResultCodes"
.end annotation


# static fields
.field public static final RESULT_ERROR:I = 0x1

###### Class com.google.android.gms.identity.intents.AddressConstants.Themes (com.google.android.gms.identity.intents.AddressConstants$Themes)
.class public interface abstract Lcom/google/android/gms/identity/intents/AddressConstants$Themes;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/identity/intents/AddressConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Themes"
.end annotation


# static fields
.field public static final THEME_DARK:I = 0x0

.field public static final THEME_HOLO_DARK:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THEME_HOLO_LIGHT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THEME_LIGHT:I = 0x1
