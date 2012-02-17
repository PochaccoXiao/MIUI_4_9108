.class public Lcom/android/phone/InCallTouchUi;
.super Landroid/widget/FrameLayout;
.source "InCallTouchUi.java"


# instance fields
.field private mAllowInCallTouchUi:Z

.field private mAllowIncomingCallTouchUi:Z

.field private mDialpadButtonsView:Lcom/android/phone/DialpadButtonsView;

.field private mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

.field private mHandler:Landroid/os/Handler;

.field private mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mInCallTouchUiVew:Landroid/view/View;

.field public mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

.field private mIsEndButtonBlankDone:Z

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance v1, Lcom/android/phone/InCallTouchUi$1;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$1;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 89
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03002a

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 94
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mAllowIncomingCallTouchUi:Z

    .line 97
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mAllowInCallTouchUi:Z

    .line 101
    iput v3, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    .line 102
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsEndButtonBlankDone:Z

    .line 103
    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/InCallTouchUi;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/phone/InCallTouchUi;->mIsEndButtonBlankDone:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/InCallTouchUi;Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateEndCallButton(Lcom/android/internal/telephony/CallManager;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 366
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void
.end method

.method private updateEndCallButton(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .parameter "cm"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_1

    .line 283
    const-string v0, "- updateEndCallButton: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isCallEndedScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsEndButtonBlankDone:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    if-nez v0, :cond_2

    .line 289
    const v0, 0x7f0800fb

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EndCallButtonsView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    .line 290
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/EndCallButtonsView;->initialize(Lcom/android/phone/InCallScreen;)V

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    iget v1, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    invoke-virtual {v0, p1, v1}, Lcom/android/phone/EndCallButtonsView;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 293
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/EndCallButtonsView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method isTouchUiEnabled()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAllowInCallTouchUi:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 113
    const v0, 0x7f0800f8

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallTouchUiVew:Landroid/view/View;

    .line 114
    return-void
.end method

.method removeIncomingSlidingWidget()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingSlidingWidget;->removeAllViews()V

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    .line 351
    :cond_0
    return-void
.end method

.method setButtonsVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    invoke-virtual {v0, p1}, Lcom/android/phone/IncomingSlidingWidget;->setVisibility(I)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallButtonsView;->setVisibility(I)V

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v0, p1}, Lcom/android/phone/EndCallButtonsView;->setVisibility(I)V

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButtonsView:Lcom/android/phone/DialpadButtonsView;

    if-eqz v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButtonsView:Lcom/android/phone/DialpadButtonsView;

    invoke-virtual {v0, p1}, Lcom/android/phone/DialpadButtonsView;->setVisibility(I)V

    .line 362
    :cond_3
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 107
    return-void
.end method

.method setOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 320
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , newOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget v0, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    if-ne v0, p1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingSlidingWidget;->removeAllViews()V

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    .line 329
    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingSlidingWidget;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    .line 330
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingSlidingWidget;->initialize(Ljava/lang/Object;)V

    .line 332
    :cond_2
    iput p1, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    .line 333
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isCallEndedScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    if-nez v0, :cond_3

    .line 337
    const v0, 0x7f0800fb

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EndCallButtonsView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    .line 338
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/EndCallButtonsView;->initialize(Lcom/android/phone/InCallScreen;)V

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v2, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/EndCallButtonsView;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 341
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/EndCallButtonsView;->setVisibility(I)V

    goto :goto_0
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 13
    .parameter "cm"

    .prologue
    const/16 v12, 0x64

    const/4 v11, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 121
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v7, :cond_1

    .line 122
    const-string v7, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->isCallEndedScreen()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isDisconnecting(Lcom/android/internal/telephony/CallManager;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 130
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallTouchUiVew:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallTouchUiVew:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    .line 138
    .local v6, state:Lcom/android/internal/telephony/Phone$State;
    const/4 v5, 0x0

    .line 139
    .local v5, showIncomingCallControls:Z
    const/4 v4, 0x0

    .line 141
    .local v4, showInCallControls:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 149
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v7

    if-nez v7, :cond_4

    .line 153
    iget-boolean v7, p0, Lcom/android/phone/InCallTouchUi;->mAllowIncomingCallTouchUi:Z

    if-eqz v7, :cond_3

    .line 159
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 161
    const/4 v5, 0x1

    .line 162
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    if-nez v7, :cond_3

    .line 163
    const v7, 0x7f0800fa

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/phone/IncomingSlidingWidget;

    iput-object v7, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    .line 164
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7, v8}, Lcom/android/phone/IncomingSlidingWidget;->initialize(Ljava/lang/Object;)V

    .line 203
    :cond_3
    :goto_1
    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 204
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 188
    :cond_4
    iget-boolean v7, p0, Lcom/android/phone/InCallTouchUi;->mAllowInCallTouchUi:Z

    if-eqz v7, :cond_3

    .line 191
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->okToShowInCallTouchUi()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 192
    const/4 v4, 0x1

    .line 193
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    if-nez v7, :cond_3

    .line 194
    const v7, 0x7f0800f9

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/phone/InCallButtonsView;

    iput-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    .line 195
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7, v8}, Lcom/android/phone/InCallButtonsView;->initialize(Lcom/android/phone/InCallScreen;)V

    goto :goto_1

    .line 207
    :cond_5
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    invoke-virtual {v7, v10}, Lcom/android/phone/IncomingSlidingWidget;->setVisibility(I)V

    .line 208
    :cond_6
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v7, v10}, Lcom/android/phone/EndCallButtonsView;->setVisibility(I)V

    .line 209
    :cond_7
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    invoke-virtual {v7, v10}, Lcom/android/phone/InCallButtonsView;->setVisibility(I)V

    .line 210
    :cond_8
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButtonsView:Lcom/android/phone/DialpadButtonsView;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButtonsView:Lcom/android/phone/DialpadButtonsView;

    invoke-virtual {v7, v10}, Lcom/android/phone/DialpadButtonsView;->setVisibility(I)V

    .line 211
    :cond_9
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 212
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButtonsView:Lcom/android/phone/DialpadButtonsView;

    if-nez v7, :cond_a

    .line 213
    const v7, 0x7f0800fc

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/phone/DialpadButtonsView;

    iput-object v7, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButtonsView:Lcom/android/phone/DialpadButtonsView;

    .line 214
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButtonsView:Lcom/android/phone/DialpadButtonsView;

    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7, v8}, Lcom/android/phone/DialpadButtonsView;->initialize(Lcom/android/phone/InCallScreen;)V

    .line 216
    :cond_a
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v7

    if-nez v7, :cond_e

    move v1, v11

    .line 218
    .local v1, duringCall:Z
    :goto_2
    if-eqz v1, :cond_f

    iget v7, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    if-ne v7, v11, :cond_f

    .line 226
    .end local v1           #duringCall:Z
    :cond_b
    if-eqz v4, :cond_16

    .line 227
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 228
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 229
    .local v0, callState:Lcom/android/internal/telephony/Call$State;
    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v7, :cond_c

    .line 232
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 233
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 234
    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v7, :cond_0

    .line 240
    :cond_c
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->isCallEndedScreen()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 241
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 242
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    iget v8, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    invoke-virtual {v7, p1, v8}, Lcom/android/phone/InCallButtonsView;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 243
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    invoke-virtual {v7, v9}, Lcom/android/phone/InCallButtonsView;->setVisibility(I)V

    .line 244
    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v7, :cond_d

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v7, :cond_0

    .line 245
    :cond_d
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    invoke-virtual {v7}, Lcom/android/phone/InCallButtonsView;->disableInCallControls()V

    goto/16 :goto_0

    .end local v0           #callState:Lcom/android/internal/telephony/Call$State;
    .end local v2           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_e
    move v1, v9

    .line 216
    goto :goto_2

    .line 221
    .restart local v1       #duringCall:Z
    :cond_f
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButtonsView:Lcom/android/phone/DialpadButtonsView;

    iget v8, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    invoke-virtual {v7, p1, v8}, Lcom/android/phone/DialpadButtonsView;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 222
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButtonsView:Lcom/android/phone/DialpadButtonsView;

    invoke-virtual {v7, v9}, Lcom/android/phone/DialpadButtonsView;->setVisibility(I)V

    goto/16 :goto_0

    .line 249
    .end local v1           #duringCall:Z
    .restart local v0       #callState:Lcom/android/internal/telephony/Call$State;
    .restart local v2       #fgCall:Lcom/android/internal/telephony/Call;
    :cond_10
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_11

    .line 250
    iget-boolean v7, p0, Lcom/android/phone/InCallTouchUi;->mIsEndButtonBlankDone:Z

    if-nez v7, :cond_12

    .line 251
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v12, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 265
    :cond_11
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->removeIncomingSlidingWidget()V

    goto/16 :goto_0

    .line 253
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateEndCallButton(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_3

    .line 257
    :cond_13
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    iget v8, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    invoke-virtual {v7, p1, v8}, Lcom/android/phone/InCallButtonsView;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 258
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    invoke-virtual {v7, v9}, Lcom/android/phone/InCallButtonsView;->setVisibility(I)V

    .line 259
    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v7, :cond_14

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v7, :cond_15

    .line 260
    :cond_14
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    invoke-virtual {v7}, Lcom/android/phone/InCallButtonsView;->disableInCallControls()V

    .line 262
    :cond_15
    iput-boolean v9, p0, Lcom/android/phone/InCallTouchUi;->mIsEndButtonBlankDone:Z

    goto :goto_3

    .line 267
    .end local v0           #callState:Lcom/android/internal/telephony/Call$State;
    .end local v2           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_16
    if-eqz v5, :cond_0

    .line 268
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget v8, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    invoke-virtual {v7, p1, v8}, Lcom/android/phone/IncomingSlidingWidget;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 269
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    invoke-virtual {v7, v9}, Lcom/android/phone/IncomingSlidingWidget;->setVisibility(I)V

    goto/16 :goto_0
.end method
