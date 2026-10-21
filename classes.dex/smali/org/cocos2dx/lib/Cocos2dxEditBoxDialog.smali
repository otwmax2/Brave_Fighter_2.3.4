###### Class org.cocos2dx.lib.Cocos2dxEditBoxDialog (org.cocos2dx.lib.Cocos2dxEditBoxDialog)
.class public Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;
.super Landroid/app/Dialog;
.source "Cocos2dxEditBoxDialog.java"


# instance fields
.field private final kEditBoxInputFlagInitialCapsAllCharacters:I

.field private final kEditBoxInputFlagInitialCapsSentence:I

.field private final kEditBoxInputFlagInitialCapsWord:I

.field private final kEditBoxInputFlagPassword:I

.field private final kEditBoxInputFlagSensitive:I

.field private final kEditBoxInputModeAny:I

.field private final kEditBoxInputModeDecimal:I

.field private final kEditBoxInputModeEmailAddr:I

.field private final kEditBoxInputModeNumeric:I

.field private final kEditBoxInputModePhoneNumber:I

.field private final kEditBoxInputModeSingleLine:I

.field private final kEditBoxInputModeUrl:I

.field private final kKeyboardReturnTypeDefault:I

.field private final kKeyboardReturnTypeDone:I

.field private final kKeyboardReturnTypeGo:I

.field private final kKeyboardReturnTypeSearch:I

.field private final kKeyboardReturnTypeSend:I

.field private mInputEditText:Landroid/widget/EditText;

.field private final mInputFlag:I

.field private mInputFlagConstraints:I

.field private final mInputMode:I

.field private mInputModeContraints:I

.field private mIsMultiline:Z

.field private final mMaxLength:I

.field private final mMessage:Ljava/lang/String;

.field private final mReturnType:I

.field private mTextViewTitle:Landroid/widget/TextView;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 14
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pTitle"    # Ljava/lang/String;
    .param p3, "pMessage"    # Ljava/lang/String;
    .param p4, "pInputMode"    # I
    .param p5, "pInputFlag"    # I
    .param p6, "pReturnType"    # I
    .param p7, "pMaxLength"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 53
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeAny:I

    .line 58
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeEmailAddr:I

    .line 63
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeNumeric:I

    .line 68
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModePhoneNumber:I

    .line 73
    iput v5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeUrl:I

    .line 78
    const/4 v0, 0x5

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeDecimal:I

    .line 83
    const/4 v0, 0x6

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeSingleLine:I

    .line 88
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputFlagPassword:I

    .line 93
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputFlagSensitive:I

    .line 98
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputFlagInitialCapsWord:I

    .line 103
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputFlagInitialCapsSentence:I

    .line 108
    iput v5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputFlagInitialCapsAllCharacters:I

    .line 110
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kKeyboardReturnTypeDefault:I

    .line 111
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kKeyboardReturnTypeDone:I

    .line 112
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kKeyboardReturnTypeSend:I

    .line 113
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kKeyboardReturnTypeSearch:I

    .line 114
    iput v5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kKeyboardReturnTypeGo:I

    .line 142
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTitle:Ljava/lang/String;

    .line 143
    iput-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mMessage:Ljava/lang/String;

    .line 144
    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputMode:I

    .line 145
    iput p5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlag:I

    .line 146
    iput p6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mReturnType:I

    .line 147
    iput p7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mMaxLength:I

    .line 148
    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V
    .registers 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->openKeyboard()V

    return-void
.end method

.method static synthetic access$200(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V
    .registers 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->closeKeyboard()V

    return-void
.end method

.method private closeKeyboard()V
    .registers 4

    .prologue
    .line 313
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 314
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 315
    return-void
.end method

.method private convertDipsToPixels(F)I
    .registers 4
    .param p1, "pDIPs"    # F

    .prologue
    .line 303
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 304
    .local v0, "scale":F
    mul-float v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private openKeyboard()V
    .registers 4

    .prologue
    .line 308
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 309
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 310
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .param p1, "pSavedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v12, 0x41200000    # 10.0f

    const/4 v11, -0x1

    const/4 v10, -0x2

    const/4 v9, 0x1

    .line 152
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v8, -0x80000000

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 157
    .local v2, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 159
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    .line 162
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 163
    .local v5, "textviewParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, v12}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->convertDipsToPixels(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 164
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v6, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 165
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-instance v6, Landroid/widget/EditText;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    .line 168
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 169
    .local v0, "editTextParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, v12}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->convertDipsToPixels(F)I

    move-result v6

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 171
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    invoke-virtual {p0, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 177
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getImeOptions()I

    move-result v4

    .line 181
    .local v4, "oldImeOptions":I
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/high16 v7, 0x10000000

    or-int/2addr v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 182
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getImeOptions()I

    move-result v4

    .line 184
    iget v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputMode:I

    packed-switch v6, :pswitch_data_15e

    .line 211
    :goto_9b
    iget-boolean v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mIsMultiline:Z

    if-eqz v6, :cond_a6

    .line 212
    iget v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    const/high16 v7, 0x20000

    or-int/2addr v6, v7

    iput v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    .line 215
    :cond_a6
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    iget v8, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    or-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 217
    iget v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlag:I

    packed-switch v6, :pswitch_data_170

    .line 237
    :goto_b5
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    iget v8, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    or-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 239
    iget v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mReturnType:I

    packed-switch v6, :pswitch_data_17e

    .line 256
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 260
    :goto_cb
    iget v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mMaxLength:I

    if-lez v6, :cond_e0

    .line 261
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    new-array v7, v9, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    iget v10, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mMaxLength:I

    invoke-direct {v9, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 264
    :cond_e0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 265
    .local v1, "initHandler":Landroid/os/Handler;
    new-instance v6, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$1;

    invoke-direct {v6, p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$2;

    invoke-direct {v7, p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 287
    return-void

    .line 186
    .end local v1    # "initHandler":Landroid/os/Handler;
    :pswitch_fa
    const v6, 0x20001

    iput v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_9b

    .line 189
    :pswitch_100
    const/16 v6, 0x21

    iput v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_9b

    .line 192
    :pswitch_105
    const/16 v6, 0x1002

    iput v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_9b

    .line 195
    :pswitch_10a
    const/4 v6, 0x3

    iput v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_9b

    .line 198
    :pswitch_10e
    const/16 v6, 0x11

    iput v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_9b

    .line 201
    :pswitch_113
    const/16 v6, 0x3002

    iput v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_9b

    .line 204
    :pswitch_118
    iput v9, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_9b

    .line 219
    :pswitch_11b
    const/16 v6, 0x81

    iput v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_b5

    .line 222
    :pswitch_120
    const/high16 v6, 0x80000

    iput v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_b5

    .line 225
    :pswitch_125
    const/16 v6, 0x2000

    iput v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_b5

    .line 228
    :pswitch_12a
    const/16 v6, 0x4000

    iput v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_b5

    .line 231
    :pswitch_12f
    const/16 v6, 0x1000

    iput v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_b5

    .line 241
    :pswitch_134
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_cb

    .line 244
    :pswitch_13c
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v7, v4, 0x6

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_cb

    .line 247
    :pswitch_144
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v7, v4, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_cb

    .line 250
    :pswitch_14c
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v7, v4, 0x3

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_cb

    .line 253
    :pswitch_155
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v7, v4, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_cb

    .line 184
    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_fa
        :pswitch_100
        :pswitch_105
        :pswitch_10a
        :pswitch_10e
        :pswitch_113
        :pswitch_118
    .end packed-switch

    .line 217
    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_11b
        :pswitch_120
        :pswitch_125
        :pswitch_12a
        :pswitch_12f
    .end packed-switch

    .line 239
    :pswitch_data_17e
    .packed-switch 0x0
        :pswitch_134
        :pswitch_13c
        :pswitch_144
        :pswitch_14c
        :pswitch_155
    .end packed-switch
.end method

###### Class org.cocos2dx.lib.Cocos2dxEditBoxDialog.AnonymousClass1 (org.cocos2dx.lib.Cocos2dxEditBoxDialog$1)
.class Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$1;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V
    .registers 2
    .param p1, "this$0"    # Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    .prologue
    .line 265
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 268
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->access$000(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 269
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->access$000(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->access$000(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 270
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->access$100(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V

    .line 271
    return-void
.end method

###### Class org.cocos2dx.lib.Cocos2dxEditBoxDialog.AnonymousClass2 (org.cocos2dx.lib.Cocos2dxEditBoxDialog$2)
.class Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$2;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V
    .registers 2
    .param p1, "this$0"    # Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    .prologue
    .line 274
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 278
    if-nez p2, :cond_c

    if-nez p2, :cond_29

    if-eqz p3, :cond_29

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_29

    .line 279
    :cond_c
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->access$000(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setEditTextDialogResult(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->access$200(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V

    .line 281
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->dismiss()V

    .line 282
    const/4 v0, 0x1

    .line 284
    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method
