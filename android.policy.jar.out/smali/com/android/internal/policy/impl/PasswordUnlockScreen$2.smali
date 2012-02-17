.class Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;
.super Landroid/os/Handler;
.source "PasswordUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PasswordUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "status"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, status:Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, devTok:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 320
    .local v4, encryption:Z
    const/4 v3, 0x0

    .line 321
    .local v3, doUpdateText:Z
    const/4 v0, 0x0

    .line 323
    .local v0, batchFail:Z
    const-string v8, "PasswordUnlockScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PasswordUnlockScreen got: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v8, "batchfail"

    const/4 v9, 0x2

    aget-object v9, v1, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 326
    const/4 v0, 0x1

    .line 330
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mBatchData:Z
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 331
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    const/4 v9, 0x1

    #setter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mBatchData:Z
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$402(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Z)Z

    .line 332
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->removePasswordUI()V
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$500(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    .line 333
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$600(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$600(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v8

    const v9, 0x124f80

    invoke-interface {v8, v9}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 334
    :cond_1
    if-nez v0, :cond_2

    .line 335
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    new-instance v9, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;

    iget-object v10, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-direct {v9, v10, v4}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Z)V

    #setter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCryptImageSwapper:Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$702(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;)Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;

    .line 336
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarLayout:Landroid/widget/RelativeLayout;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$800(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 337
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mFillView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$900(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 341
    :cond_2
    if-eqz v0, :cond_7

    .line 342
    const-string v8, "1"

    const/4 v9, 0x4

    aget-object v9, v1, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 343
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCryptImageSwapper:Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$700(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCryptImageSwapper:Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$700(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->stop()V

    .line 344
    :cond_3
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarLayout:Landroid/widget/RelativeLayout;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$800(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 345
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mFillView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$900(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 346
    if-eqz v4, :cond_6

    .line 347
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;

    move-result-object v8

    const v9, 0x10404b0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 352
    :goto_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    const/4 v9, 0x0

    #setter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mBatchData:Z
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$402(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Z)Z

    .line 353
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$600(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$600(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 404
    :cond_4
    :goto_2
    return-void

    .line 327
    :cond_5
    const-string v8, "Encryption"

    const/4 v9, 0x3

    aget-object v9, v1, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 328
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 349
    :cond_6
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;

    move-result-object v8

    const v9, 0x10404b1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 357
    :cond_7
    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 358
    .local v5, progressCnt:I
    const/4 v8, 0x2

    aget-object v2, v1, v8

    .line 359
    .local v2, device:Ljava/lang/String;
    const/4 v7, 0x0

    .line 361
    .local v7, text:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDevice:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 362
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDevice:Ljava/lang/String;
    invoke-static {v8, v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1002(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 363
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1108(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)I

    .line 364
    const/4 v3, 0x1

    .line 367
    :cond_8
    const/16 v8, 0x64

    if-ge v5, v8, :cond_c

    .line 368
    if-eqz v3, :cond_9

    .line 369
    if-eqz v4, :cond_b

    .line 370
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x10404ac

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 387
    :cond_9
    :goto_3
    if-eqz v3, :cond_a

    .line 388
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    :cond_a
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1300(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/ProgressBar;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 393
    const-string v8, "data"

    iget-object v9, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDevice:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 394
    const/4 v8, 0x1

    const-string v9, "dbdata"

    invoke-static {v9}, Landroid/deviceencryption/DeviceEncryptionManager;->isTargetToEncrypt(Ljava/lang/String;)Z

    move-result v9

    if-ne v8, v9, :cond_f

    .line 395
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarText:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "% (1/2)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 372
    :cond_b
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x10404ad

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 375
    :cond_c
    const/16 v8, 0x64

    if-ne v5, v8, :cond_e

    .line 376
    const/4 v3, 0x1

    .line 377
    if-eqz v4, :cond_d

    .line 378
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x10404ae

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 380
    :cond_d
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x10404af

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 383
    :cond_e
    const-string v8, "PasswordUnlockScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got invalid progressCnt: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 397
    :cond_f
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarText:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 399
    :cond_10
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDeviceCnt:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_11

    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarText:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 400
    :cond_11
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarText:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "% (2/2)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
