###### Class com.facebook.login.widget.ToolTipPopup (com.facebook.login.widget.ToolTipPopup)
.class public Lcom/facebook/login/widget/ToolTipPopup;
.super Ljava/lang/Object;
.source "ToolTipPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;,
        Lcom/facebook/login/widget/ToolTipPopup$Style;
    }
.end annotation


# static fields
.field public static final DEFAULT_POPUP_DISPLAY_TIME:J = 0x1770L


# instance fields
.field private final mAnchorViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mNuxDisplayTime:J

.field private mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private final mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "anchor"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lcom/facebook/login/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/login/widget/ToolTipPopup$Style;

    iput-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;

    .line 70
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mNuxDisplayTime:J

    .line 72
    new-instance v0, Lcom/facebook/login/widget/ToolTipPopup$1;

    invoke-direct {v0, p0}, Lcom/facebook/login/widget/ToolTipPopup$1;-><init>(Lcom/facebook/login/widget/ToolTipPopup;)V

    iput-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 94
    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup;->mText:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    .line 96
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/login/widget/ToolTipPopup;)Ljava/lang/ref/WeakReference;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/widget/ToolTipPopup;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/login/widget/ToolTipPopup;)Landroid/widget/PopupWindow;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/widget/ToolTipPopup;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/login/widget/ToolTipPopup;)Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/widget/ToolTipPopup;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    return-object v0
.end method

.method private registerObserver()V
    .registers 3

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/facebook/login/widget/ToolTipPopup;->unregisterObserver()V

    .line 197
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 198
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 200
    :cond_1c
    return-void
.end method

.method private unregisterObserver()V
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 204
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 207
    :cond_19
    return-void
.end method

.method private updateArrows()V
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 177
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 178
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->showBottomArrow()V

    .line 183
    :cond_19
    :goto_19
    return-void

    .line 180
    :cond_1a
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->showTopArrow()V

    goto :goto_19
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/facebook/login/widget/ToolTipPopup;->unregisterObserver()V

    .line 190
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_c

    .line 191
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 193
    :cond_c
    return-void
.end method

.method public setNuxDisplayTime(J)V
    .registers 4
    .param p1, "displayTime"    # J

    .prologue
    .line 172
    iput-wide p1, p0, Lcom/facebook/login/widget/ToolTipPopup;->mNuxDisplayTime:J

    .line 173
    return-void
.end method

.method public setStyle(Lcom/facebook/login/widget/ToolTipPopup$Style;)V
    .registers 2
    .param p1, "mStyle"    # Lcom/facebook/login/widget/ToolTipPopup$Style;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup;->mStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;

    .line 105
    return-void
.end method

.method public show()V
    .registers 11

    .prologue
    const/high16 v7, -0x80000000

    .line 111
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_c1

    .line 112
    new-instance v5, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    iget-object v6, p0, Lcom/facebook/login/widget/ToolTipPopup;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;-><init>(Lcom/facebook/login/widget/ToolTipPopup;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    .line 113
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    sget v6, Lcom/facebook/R$id;->com_facebook_tooltip_bubble_view_text_body:I

    invoke-virtual {v5, v6}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    .local v0, "body":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mText:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;

    sget-object v6, Lcom/facebook/login/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/login/widget/ToolTipPopup$Style;

    if-ne v5, v6, :cond_c2

    .line 117
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-static {v5}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$300(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/facebook/R$drawable;->com_facebook_tooltip_blue_background:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-static {v5}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$400(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v5

    sget v6, Lcom/facebook/R$drawable;->com_facebook_tooltip_blue_bottomnub:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-static {v5}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$500(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v5

    sget v6, Lcom/facebook/R$drawable;->com_facebook_tooltip_blue_topnub:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-static {v5}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$600(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v5

    sget v6, Lcom/facebook/R$drawable;->com_facebook_tooltip_blue_xout:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    :goto_54
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 135
    .local v4, "window":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 136
    .local v2, "decorView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 137
    .local v3, "decorWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 138
    .local v1, "decorHeight":I
    invoke-direct {p0}, Lcom/facebook/login/widget/ToolTipPopup;->registerObserver()V

    .line 139
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    .line 140
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 141
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 139
    invoke-virtual {v5, v6, v7}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->measure(II)V

    .line 142
    new-instance v5, Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    iget-object v7, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    .line 144
    invoke-virtual {v7}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    .line 145
    invoke-virtual {v8}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->getMeasuredHeight()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 146
    iget-object v6, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 147
    invoke-direct {p0}, Lcom/facebook/login/widget/ToolTipPopup;->updateArrows()V

    .line 148
    iget-wide v6, p0, Lcom/facebook/login/widget/ToolTipPopup;->mNuxDisplayTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_b1

    .line 149
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    new-instance v6, Lcom/facebook/login/widget/ToolTipPopup$2;

    invoke-direct {v6, p0}, Lcom/facebook/login/widget/ToolTipPopup$2;-><init>(Lcom/facebook/login/widget/ToolTipPopup;)V

    iget-wide v8, p0, Lcom/facebook/login/widget/ToolTipPopup;->mNuxDisplayTime:J

    invoke-virtual {v5, v6, v8, v9}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    :cond_b1
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 157
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    new-instance v6, Lcom/facebook/login/widget/ToolTipPopup$3;

    invoke-direct {v6, p0}, Lcom/facebook/login/widget/ToolTipPopup$3;-><init>(Lcom/facebook/login/widget/ToolTipPopup;)V

    invoke-virtual {v5, v6}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .end local v0    # "body":Landroid/widget/TextView;
    .end local v1    # "decorHeight":I
    .end local v2    # "decorView":Landroid/view/View;
    .end local v3    # "decorWidth":I
    .end local v4    # "window":Landroid/view/Window;
    :cond_c1
    return-void

    .line 125
    .restart local v0    # "body":Landroid/widget/TextView;
    :cond_c2
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-static {v5}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$300(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/facebook/R$drawable;->com_facebook_tooltip_black_background:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 127
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-static {v5}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$400(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v5

    sget v6, Lcom/facebook/R$drawable;->com_facebook_tooltip_black_bottomnub:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-static {v5}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$500(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v5

    sget v6, Lcom/facebook/R$drawable;->com_facebook_tooltip_black_topnub:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-static {v5}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$600(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v5

    sget v6, Lcom/facebook/R$drawable;->com_facebook_tooltip_black_xout:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_54
.end method

###### Class com.facebook.login.widget.ToolTipPopup.AnonymousClass1 (com.facebook.login.widget.ToolTipPopup$1)
.class Lcom/facebook/login/widget/ToolTipPopup$1;
.super Ljava/lang/Object;
.source "ToolTipPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/ToolTipPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/widget/ToolTipPopup;


# direct methods
.method constructor <init>(Lcom/facebook/login/widget/ToolTipPopup;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/login/widget/ToolTipPopup;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup$1;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$1;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    invoke-static {v0}, Lcom/facebook/login/widget/ToolTipPopup;->access$000(Lcom/facebook/login/widget/ToolTipPopup;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$1;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    .line 77
    invoke-static {v0}, Lcom/facebook/login/widget/ToolTipPopup;->access$100(Lcom/facebook/login/widget/ToolTipPopup;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$1;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    .line 78
    invoke-static {v0}, Lcom/facebook/login/widget/ToolTipPopup;->access$100(Lcom/facebook/login/widget/ToolTipPopup;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 79
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$1;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    invoke-static {v0}, Lcom/facebook/login/widget/ToolTipPopup;->access$100(Lcom/facebook/login/widget/ToolTipPopup;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 80
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$1;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    invoke-static {v0}, Lcom/facebook/login/widget/ToolTipPopup;->access$200(Lcom/facebook/login/widget/ToolTipPopup;)Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->showBottomArrow()V

    .line 85
    :cond_35
    :goto_35
    return-void

    .line 82
    :cond_36
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$1;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    invoke-static {v0}, Lcom/facebook/login/widget/ToolTipPopup;->access$200(Lcom/facebook/login/widget/ToolTipPopup;)Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->showTopArrow()V

    goto :goto_35
.end method

###### Class com.facebook.login.widget.ToolTipPopup.AnonymousClass2 (com.facebook.login.widget.ToolTipPopup$2)
.class Lcom/facebook/login/widget/ToolTipPopup$2;
.super Ljava/lang/Object;
.source "ToolTipPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/widget/ToolTipPopup;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/widget/ToolTipPopup;


# direct methods
.method constructor <init>(Lcom/facebook/login/widget/ToolTipPopup;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/login/widget/ToolTipPopup;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup$2;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$2;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup;->dismiss()V

    .line 153
    return-void
.end method

###### Class com.facebook.login.widget.ToolTipPopup.AnonymousClass3 (com.facebook.login.widget.ToolTipPopup$3)
.class Lcom/facebook/login/widget/ToolTipPopup$3;
.super Ljava/lang/Object;
.source "ToolTipPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/widget/ToolTipPopup;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/widget/ToolTipPopup;


# direct methods
.method constructor <init>(Lcom/facebook/login/widget/ToolTipPopup;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/login/widget/ToolTipPopup;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup$3;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$3;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup;->dismiss()V

    .line 161
    return-void
.end method

###### Class com.facebook.login.widget.ToolTipPopup.PopupContentView (com.facebook.login.widget.ToolTipPopup$PopupContentView)
.class Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;
.super Landroid/widget/FrameLayout;
.source "ToolTipPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/ToolTipPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupContentView"
.end annotation


# instance fields
.field private bodyFrame:Landroid/view/View;

.field private bottomArrow:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/facebook/login/widget/ToolTipPopup;

.field private topArrow:Landroid/widget/ImageView;

.field private xOut:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/facebook/login/widget/ToolTipPopup;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    .line 216
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 217
    invoke-direct {p0}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->init()V

    .line 218
    return-void
.end method

.method static synthetic access$300(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->bodyFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->xOut:Landroid/widget/ImageView;

    return-object v0
.end method

.method private init()V
    .registers 3

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 222
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/facebook/R$layout;->com_facebook_tooltip_bubble:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 223
    sget v1, Lcom/facebook/R$id;->com_facebook_tooltip_bubble_view_top_pointer:I

    invoke-virtual {p0, v1}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;

    .line 224
    sget v1, Lcom/facebook/R$id;->com_facebook_tooltip_bubble_view_bottom_pointer:I

    invoke-virtual {p0, v1}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;

    .line 226
    sget v1, Lcom/facebook/R$id;->com_facebook_body_frame:I

    invoke-virtual {p0, v1}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->bodyFrame:Landroid/view/View;

    .line 227
    sget v1, Lcom/facebook/R$id;->com_facebook_button_xout:I

    invoke-virtual {p0, v1}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->xOut:Landroid/widget/ImageView;

    .line 228
    return-void
.end method


# virtual methods
.method public showBottomArrow()V
    .registers 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    return-void
.end method

.method public showTopArrow()V
    .registers 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    return-void
.end method

###### Class com.facebook.login.widget.ToolTipPopup.Style (com.facebook.login.widget.ToolTipPopup$Style)
.class public final enum Lcom/facebook/login/widget/ToolTipPopup$Style;
.super Ljava/lang/Enum;
.source "ToolTipPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/ToolTipPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/login/widget/ToolTipPopup$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/login/widget/ToolTipPopup$Style;

.field public static final enum BLACK:Lcom/facebook/login/widget/ToolTipPopup$Style;

.field public static final enum BLUE:Lcom/facebook/login/widget/ToolTipPopup$Style;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/facebook/login/widget/ToolTipPopup$Style;

    const-string v1, "BLUE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/login/widget/ToolTipPopup$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/login/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/login/widget/ToolTipPopup$Style;

    .line 56
    new-instance v0, Lcom/facebook/login/widget/ToolTipPopup$Style;

    const-string v1, "BLACK"

    invoke-direct {v0, v1, v3}, Lcom/facebook/login/widget/ToolTipPopup$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/login/widget/ToolTipPopup$Style;->BLACK:Lcom/facebook/login/widget/ToolTipPopup$Style;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/login/widget/ToolTipPopup$Style;

    sget-object v1, Lcom/facebook/login/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/login/widget/ToolTipPopup$Style;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/login/widget/ToolTipPopup$Style;->BLACK:Lcom/facebook/login/widget/ToolTipPopup$Style;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/login/widget/ToolTipPopup$Style;->$VALUES:[Lcom/facebook/login/widget/ToolTipPopup$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/login/widget/ToolTipPopup$Style;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/facebook/login/widget/ToolTipPopup$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/widget/ToolTipPopup$Style;

    return-object v0
.end method

.method public static values()[Lcom/facebook/login/widget/ToolTipPopup$Style;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/facebook/login/widget/ToolTipPopup$Style;->$VALUES:[Lcom/facebook/login/widget/ToolTipPopup$Style;

    invoke-virtual {v0}, [Lcom/facebook/login/widget/ToolTipPopup$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/login/widget/ToolTipPopup$Style;

    return-object v0
.end method
