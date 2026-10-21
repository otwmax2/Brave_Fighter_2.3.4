###### Class android.support.v4.print.PrintHelper (android.support.v4.print.PrintHelper)
.class public final Landroid/support/v4/print/PrintHelper;
.super Ljava/lang/Object;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/print/PrintHelper$1;,
        Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;,
        Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;,
        Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;,
        Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2

.field public static final COLOR_MODE_MONOCHROME:I = 0x1

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field public static final SCALE_MODE_FILL:I = 0x2

.field public static final SCALE_MODE_FIT:I = 0x1


# instance fields
.field mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    invoke-static {}, Landroid/support/v4/print/PrintHelper;->systemSupportsPrint()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 232
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    .line 236
    :goto_10
    return-void

    .line 234
    :cond_11
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;-><init>(Landroid/support/v4/print/PrintHelper$1;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    goto :goto_10
.end method

.method public static systemSupportsPrint()Z
    .registers 2

    .prologue
    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_8

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public getColorMode()I
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->getColorMode()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getScaleMode()I
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->getScaleMode()I

    move-result v0

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 312
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 313
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 5
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    .prologue
    .line 323
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 324
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 337
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 5
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 352
    return-void
.end method

.method public setColorMode(I)V
    .registers 3
    .param p1, "colorMode"    # I

    .prologue
    .line 270
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->setColorMode(I)V

    .line 271
    return-void
.end method

.method public setOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 291
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->setOrientation(I)V

    .line 292
    return-void
.end method

.method public setScaleMode(I)V
    .registers 3
    .param p1, "scaleMode"    # I

    .prologue
    .line 248
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->setScaleMode(I)V

    .line 249
    return-void
.end method

###### Class android.support.v4.print.PrintHelper.AnonymousClass1 (android.support.v4.print.PrintHelper$1)
.class synthetic Landroid/support/v4/print/PrintHelper$1;
.super Ljava/lang/Object;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class android.support.v4.print.PrintHelper.OnPrintFinishCallback (android.support.v4.print.PrintHelper$OnPrintFinishCallback)
.class public interface abstract Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
.super Ljava/lang/Object;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPrintFinishCallback"
.end annotation


# virtual methods
.method public abstract onFinish()V
.end method

###### Class android.support.v4.print.PrintHelper.PrintHelperKitkatImpl (android.support.v4.print.PrintHelper$PrintHelperKitkatImpl)
.class final Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintHelperKitkatImpl"
.end annotation


# instance fields
.field private final mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Landroid/support/v4/print/PrintHelperKitkat;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    .line 161
    return-void
.end method


# virtual methods
.method public getColorMode()I
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0}, Landroid/support/v4/print/PrintHelperKitkat;->getColorMode()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0}, Landroid/support/v4/print/PrintHelperKitkat;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getScaleMode()I
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0}, Landroid/support/v4/print/PrintHelperKitkat;->getScaleMode()I

    move-result v0

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 6
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "delegateCallback":Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    if-eqz p3, :cond_8

    .line 198
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl$1;

    .end local v0    # "delegateCallback":Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    invoke-direct {v0, p0, p3}, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl$1;-><init>(Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 205
    .restart local v0    # "delegateCallback":Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    :cond_8
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v1, p1, p2, v0}, Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    .line 206
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 6
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "delegateCallback":Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    if-eqz p3, :cond_8

    .line 213
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl$2;

    .end local v0    # "delegateCallback":Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    invoke-direct {v0, p0, p3}, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl$2;-><init>(Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 220
    .restart local v0    # "delegateCallback":Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    :cond_8
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v1, p1, p2, v0}, Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    .line 221
    return-void
.end method

.method public setColorMode(I)V
    .registers 3
    .param p1, "colorMode"    # I

    .prologue
    .line 175
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;->setColorMode(I)V

    .line 176
    return-void
.end method

.method public setOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;->setOrientation(I)V

    .line 186
    return-void
.end method

.method public setScaleMode(I)V
    .registers 3
    .param p1, "scaleMode"    # I

    .prologue
    .line 165
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;->setScaleMode(I)V

    .line 166
    return-void
.end method

###### Class android.support.v4.print.PrintHelper.PrintHelperKitkatImpl.AnonymousClass1 (android.support.v4.print.PrintHelper$PrintHelperKitkatImpl$1)
.class Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl$1;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;

.field final synthetic val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 3

    .prologue
    .line 198
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl$1;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;

    iput-object p2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl$1;->val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl$1;->val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;->onFinish()V

    .line 202
    return-void
.end method

###### Class android.support.v4.print.PrintHelper.PrintHelperKitkatImpl.AnonymousClass2 (android.support.v4.print.PrintHelper$PrintHelperKitkatImpl$2)
.class Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl$2;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;

.field final synthetic val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 3

    .prologue
    .line 213
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl$2;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;

    iput-object p2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl$2;->val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl$2;->val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;->onFinish()V

    .line 217
    return-void
.end method

###### Class android.support.v4.print.PrintHelper.PrintHelperStubImpl (android.support.v4.print.PrintHelper$PrintHelperStubImpl)
.class final Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintHelperStubImpl"
.end annotation


# instance fields
.field mColorMode:I

.field mOrientation:I

.field mScaleMode:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mScaleMode:I

    .line 116
    iput v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mColorMode:I

    .line 117
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mOrientation:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/print/PrintHelper$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/support/v4/print/PrintHelper$1;

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getColorMode()I
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mColorMode:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mOrientation:I

    return v0
.end method

.method public getScaleMode()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mScaleMode:I

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 4
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    .prologue
    .line 146
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 4
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    .prologue
    .line 150
    return-void
.end method

.method public setColorMode(I)V
    .registers 2
    .param p1, "colorMode"    # I

    .prologue
    .line 130
    iput p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mColorMode:I

    .line 131
    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 134
    iput p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mOrientation:I

    return-void
.end method

.method public setScaleMode(I)V
    .registers 2
    .param p1, "scaleMode"    # I

    .prologue
    .line 120
    iput p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mScaleMode:I

    .line 121
    return-void
.end method

###### Class android.support.v4.print.PrintHelper.PrintHelperVersionImpl (android.support.v4.print.PrintHelper$PrintHelperVersionImpl)
.class interface abstract Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;
.super Ljava/lang/Object;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PrintHelperVersionImpl"
.end annotation


# virtual methods
.method public abstract getColorMode()I
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getScaleMode()I
.end method

.method public abstract printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
.end method

.method public abstract printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract setColorMode(I)V
.end method

.method public abstract setOrientation(I)V
.end method

.method public abstract setScaleMode(I)V
.end method
