###### Class com.vungle.publisher.ml (com.vungle.publisher.ml)
.class public Lcom/vungle/publisher/ml;
.super Landroid/webkit/WebViewClient;
.source "vungle"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 16
    invoke-static {p1}, Lcom/vungle/publisher/zo;->b(Landroid/view/View;)V

    .line 17
    return-void
.end method
