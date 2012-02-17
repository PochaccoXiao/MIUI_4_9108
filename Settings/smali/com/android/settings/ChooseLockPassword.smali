.class public Lcom/android/settings/ChooseLockPassword;
.super Landroid/app/Activity;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPassword$Stage;
    }
.end annotation


# static fields
.field private static mHandler:Landroid/os/Handler;


# instance fields
.field isChangePwdRequired:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mFirstPin:Ljava/lang/String;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsAlphaMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMinPasswordComplexChars:I

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mRequestedQuality:I

.field private mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/settings/ChooseLockPassword;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    .line 57
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    .line 59
    const/high16 v0, 0x2

    iput v0, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    .line 61
    sget-object v0, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 78
    iput v1, p0, Lcom/android/settings/ChooseLockPassword;->mMinPasswordComplexChars:I

    .line 79
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    .line 84
    return-void
.end method

.method private handleNext()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 398
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, pin:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    const/4 v1, 0x0

    .line 403
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    sget-object v5, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    if-ne v4, v5, :cond_3

    .line 404
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockPassword;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    if-nez v1, :cond_2

    .line 406
    iput-object v2, p0, Lcom/android/settings/ChooseLockPassword;->mFirstPin:Ljava/lang/String;

    .line 407
    sget-object v4, Lcom/android/settings/ChooseLockPassword$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 408
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 434
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-direct {p0, v1, v4}, Lcom/android/settings/ChooseLockPassword;->showError(Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$Stage;)V

    goto :goto_0

    .line 410
    :cond_3
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    sget-object v5, Lcom/android/settings/ChooseLockPassword$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$Stage;

    if-ne v4, v5, :cond_2

    .line 411
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 412
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 413
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 415
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->setResult(I)V

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 420
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    .line 424
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->finish()V

    goto :goto_1

    .line 426
    :cond_5
    sget-object v4, Lcom/android/settings/ChooseLockPassword$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 427
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 428
    .local v3, tmp:Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    .line 429
    move-object v0, v3

    check-cast v0, Landroid/text/Spannable;

    move-object v4, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v6, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/high16 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 160
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->setContentView(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 165
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mCancelButton:Landroid/widget/Button;

    .line 166
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v0, 0x7f0b0035

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    .line 168
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 171
    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->showCursorController(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/ChooseLockPassword$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockPassword$1;-><init>(Lcom/android/settings/ChooseLockPassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 181
    const/high16 v0, 0x4

    iget v1, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x5

    iget v1, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    .line 183
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 184
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x1070017

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setVibratePattern(I)V

    .line 190
    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 193
    return-void

    :cond_1
    move v0, v3

    .line 181
    goto :goto_0

    :cond_2
    move v1, v4

    .line 184
    goto :goto_1

    :cond_3
    move v1, v3

    .line 187
    goto :goto_2
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$Stage;)V
    .locals 4
    .parameter "msg"
    .parameter "next"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    sget-object v0, Lcom/android/settings/ChooseLockPassword;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/ChooseLockPassword$2;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/ChooseLockPassword$2;-><init>(Lcom/android/settings/ChooseLockPassword;Lcom/android/settings/ChooseLockPassword$Stage;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 462
    return-void
.end method

.method private updateUi()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 487
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 488
    .local v4, password:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 490
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 491
    .local v2, length:I
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    sget-object v6, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    if-ne v5, v6, :cond_4

    if-lez v2, :cond_4

    .line 492
    iget v5, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    if-ge v2, v5, :cond_1

    .line 493
    iget-boolean v5, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v5, :cond_0

    const v5, 0x7f08010b

    :goto_0
    new-array v6, v7, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/ChooseLockPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, msg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 517
    .end local v3           #msg:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    iget v6, v6, Lcom/android/settings/ChooseLockPassword$Stage;->buttonText:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 518
    return-void

    .line 493
    :cond_0
    const v5, 0x7f08010c

    goto :goto_0

    .line 498
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/settings/ChooseLockPassword;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, error:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 500
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 504
    :cond_2
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 505
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f08010e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 510
    :goto_2
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 508
    :cond_3
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f08010d

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 514
    .end local v1           #error:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v6, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    iget v6, v6, Lcom/android/settings/ChooseLockPassword$Stage;->alphaHint:I

    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 515
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    if-lez v2, :cond_6

    move v6, v7

    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 514
    :cond_5
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    iget v6, v6, Lcom/android/settings/ChooseLockPassword$Stage;->numericHint:I

    goto :goto_3

    :cond_6
    move v6, v8

    .line 515
    goto :goto_4
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "password"

    .prologue
    const v13, 0x7f080115

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 314
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    iget v10, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    if-ge v9, v10, :cond_1

    .line 315
    iget-boolean v9, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v9, :cond_0

    const v9, 0x7f08010b

    :goto_0
    new-array v10, v11, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/ChooseLockPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 394
    :goto_1
    return-object v9

    .line 315
    :cond_0
    const v9, 0x7f08010c

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    iget v10, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    if-le v9, v10, :cond_3

    .line 320
    iget-boolean v9, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v9, :cond_2

    const v9, 0x7f080110

    :goto_2
    new-array v10, v11, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/ChooseLockPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    const v9, 0x7f080111

    goto :goto_2

    .line 324
    :cond_3
    const/4 v4, 0x0

    .line 325
    .local v4, hasAlpha:Z
    const/4 v5, 0x0

    .line 326
    .local v5, hasDigit:Z
    const/4 v6, 0x0

    .line 327
    .local v6, hasSymbol:Z
    const/4 v3, 0x0

    .line 328
    .local v3, countComplex:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_a

    .line 329
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 331
    .local v2, c:C
    const/16 v9, 0x20

    if-le v2, v9, :cond_4

    const/16 v9, 0x7f

    if-le v2, v9, :cond_5

    .line 332
    :cond_4
    const v9, 0x7f080113

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 334
    :cond_5
    const/16 v9, 0x30

    if-lt v2, v9, :cond_6

    const/16 v9, 0x39

    if-gt v2, v9, :cond_6

    .line 335
    const/4 v5, 0x1

    .line 336
    add-int/lit8 v3, v3, 0x1

    .line 328
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 337
    :cond_6
    const/16 v9, 0x41

    if-lt v2, v9, :cond_7

    const/16 v9, 0x5a

    if-le v2, v9, :cond_8

    :cond_7
    const/16 v9, 0x61

    if-lt v2, v9, :cond_9

    const/16 v9, 0x7a

    if-gt v2, v9, :cond_9

    .line 338
    :cond_8
    const/4 v4, 0x1

    goto :goto_4

    .line 340
    :cond_9
    const/4 v6, 0x1

    .line 341
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 344
    .end local v2           #c:C
    :cond_a
    const/high16 v9, 0x2

    iget v10, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ne v9, v10, :cond_b

    or-int v9, v4, v6

    if-eqz v9, :cond_b

    .line 347
    const v9, 0x7f080112

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 349
    :cond_b
    const/high16 v9, 0x4

    iget v10, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ne v9, v10, :cond_d

    move v0, v11

    .line 351
    .local v0, alphabetic:Z
    :goto_5
    const/high16 v9, 0x5

    iget v10, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ne v9, v10, :cond_e

    move v1, v11

    .line 353
    .local v1, alphanumeric:Z
    :goto_6
    const/4 v8, 0x0

    .line 354
    .local v8, symbolic:Z
    if-nez v0, :cond_c

    if-eqz v1, :cond_f

    :cond_c
    if-nez v4, :cond_f

    .line 355
    const v9, 0x7f080114

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .end local v0           #alphabetic:Z
    .end local v1           #alphanumeric:Z
    .end local v8           #symbolic:Z
    :cond_d
    move v0, v12

    .line 349
    goto :goto_5

    .restart local v0       #alphabetic:Z
    :cond_e
    move v1, v12

    .line 351
    goto :goto_6

    .line 357
    .restart local v1       #alphanumeric:Z
    .restart local v8       #symbolic:Z
    :cond_f
    if-eqz v1, :cond_10

    if-nez v5, :cond_10

    .line 358
    invoke-virtual {p0, v13}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 369
    :cond_10
    if-eqz v1, :cond_11

    iget v9, p0, Lcom/android/settings/ChooseLockPassword;->mMinPasswordComplexChars:I

    if-lez v9, :cond_11

    if-nez v5, :cond_11

    .line 371
    invoke-virtual {p0, v13}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 372
    :cond_11
    if-eqz v1, :cond_12

    iget v9, p0, Lcom/android/settings/ChooseLockPassword;->mMinPasswordComplexChars:I

    if-le v9, v11, :cond_12

    if-nez v6, :cond_12

    .line 374
    const v9, 0x7f080116

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 375
    :cond_12
    if-eqz v1, :cond_13

    iget v9, p0, Lcom/android/settings/ChooseLockPassword;->mMinPasswordComplexChars:I

    if-ge v3, v9, :cond_13

    .line 377
    const v9, 0x7f0805f0

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 379
    :cond_13
    iget-object v9, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->verifyPasswordHistory(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 380
    const v9, 0x7f0805f1

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 394
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPassword$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$Stage;

    if-ne v0, v1, :cond_0

    .line 523
    sget-object v0, Lcom/android/settings/ChooseLockPassword$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 525
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->updateUi()V

    .line 526
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 530
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 251
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 252
    packed-switch p1, :pswitch_data_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 254
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 255
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->setResult(I)V

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->finish()V

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 439
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 441
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->handleNext()V

    goto :goto_0

    .line 446
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-nez v0, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->finish()V

    goto :goto_0

    .line 439
    :sswitch_data_0
    .sparse-switch
        0x7f0b0035 -> :sswitch_0
        0x7f0b003b -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.password_type"

    iget v6, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.password_min"

    iget v6, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.password_max"

    iget v6, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "confirm_credentials"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 121
    .local v0, confirmCredentials:Z
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    .line 122
    .local v2, minMode:I
    iget v4, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ge v4, v2, :cond_0

    .line 123
    iput v2, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    .line 125
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v1

    .line 126
    .local v1, minLength:I
    iget v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    if-ge v4, v1, :cond_1

    .line 127
    iput v1, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    .line 131
    :cond_1
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getMinPasswordComplexChars()I

    move-result v4

    iput v4, p0, Lcom/android/settings/ChooseLockPassword;->mMinPasswordComplexChars:I

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/android/settings/ChooseLockPassword;->mMinPasswordComplexChars:I

    const/4 v5, 0x4

    if-le v4, v5, :cond_3

    .line 133
    :cond_2
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/settings/ChooseLockPassword;->mMinPasswordComplexChars:I

    .line 135
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    .line 140
    :cond_4
    iget-boolean v4, p0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-ne v4, v7, :cond_5

    const-string v4, "true"

    sget-object v5, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.password_old"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, oldPw:Ljava/lang/String;
    invoke-static {v3}, Landroid/deviceencryption/DeviceEncryptionManager;->checkPassword(Ljava/lang/String;)Z

    .line 148
    .end local v3           #oldPw:Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->initViews()V

    .line 149
    new-instance v4, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v4, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 150
    if-nez p1, :cond_6

    .line 151
    sget-object v4, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 152
    if-eqz v0, :cond_6

    .line 153
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5, v8, v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 157
    :cond_6
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 212
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 466
    if-nez p2, :cond_1

    .line 475
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->handleNext()V

    :cond_0
    move v0, v1

    .line 480
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 215
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 216
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v1, :cond_1

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->lockNow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 226
    :goto_0
    return v1

    .line 219
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 220
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "ChooseLockPassword"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 222
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    move v1, v2

    goto :goto_0

    .line 226
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 239
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 240
    const-string v1, "ui_stage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, state:Ljava/lang/String;
    const-string v1, "first_pin"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mFirstPin:Ljava/lang/String;

    .line 242
    if-eqz v0, :cond_0

    .line 243
    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockPassword$Stage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 244
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 246
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 198
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 201
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0805ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 203
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 233
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPassword$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 534
    return-void
.end method

.method protected updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V
    .locals 0
    .parameter "stage"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 266
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->updateUi()V

    .line 267
    return-void
.end method
