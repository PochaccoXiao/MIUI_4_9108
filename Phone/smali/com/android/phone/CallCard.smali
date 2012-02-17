.class public Lcom/android/phone/CallCard;
.super Landroid/widget/FrameLayout;
.source "CallCard.java"

# interfaces
.implements Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/CallTime$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCard$5;,
        Lcom/android/phone/CallCard$CallCardScreenState;
    }
.end annotation


# instance fields
.field private FDN_Number:Ljava/lang/String;

.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mBirthIcon:Landroid/widget/ImageView;

.field private mBirthPanel:Landroid/widget/LinearLayout;

.field private mBirthRemainedDays:Landroid/widget/TextView;

.field private mCallEndTimeBlinkCount:I

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCallTitleIcon:Landroid/widget/ImageView;

.field private mCardTitle:Ljava/lang/String;

.field private mCdnipNumber:Landroid/widget/TextView;

.field private mCity:Landroid/widget/TextView;

.field private mDensity:F

.field private mElapsedTime:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mLandscape:Lcom/android/phone/CallCardLand;

.field private mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

.field private mMultiCallInfo:Lcom/android/phone/MultiCallView;

.field private mName:Landroid/widget/TextView;

.field private mNoiseReductionIcon:Landroid/widget/ImageView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

.field private mPortrait:Landroid/view/View;

.field private mPrimaryCallInfo:Landroid/view/View;

.field private mRecInfo:Landroid/view/View;

.field private final mRingingCallAnimationDuration:I

.field private mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

.field private mSnsIcon:Landroid/widget/ImageView;

.field private mSnsInfo:Landroid/widget/LinearLayout;

.field private mSnsStatus:Landroid/widget/TextView;

.field private mTextColorConnected:I

.field private mTextColorConnectedBluetooth:I

.field private mTextColorEnded:I

.field private mTextColorGray:I

.field private mTextColorOnHold:I

.field private mTextColorPhoneNumber:I

.field private mTextColorWhite:I

.field private mToggleRecInfo:Z

.field private mUpperTitle:Landroid/view/View;

.field private mUpperTitleText:Landroid/widget/TextView;

.field private mUpperTitleTextLand:Landroid/widget/TextView;

.field mhFDNQueryHanlder:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 222
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    iput-object v1, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    .line 136
    iput-object v1, p0, Lcom/android/phone/CallCard;->FDN_Number:Ljava/lang/String;

    .line 150
    iput-object v1, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 155
    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/phone/CallCard;->mRingingCallAnimationDuration:I

    .line 160
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    .line 165
    iput-boolean v2, p0, Lcom/android/phone/CallCard;->mToggleRecInfo:Z

    .line 168
    new-instance v1, Lcom/android/phone/CallCard$1;

    invoke-direct {v1, p0}, Lcom/android/phone/CallCard$1;-><init>(Lcom/android/phone/CallCard;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    .line 1971
    new-instance v1, Lcom/android/phone/CallCard$4;

    invoke-direct {v1, p0}, Lcom/android/phone/CallCard$4;-><init>(Lcom/android/phone/CallCard;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mhFDNQueryHanlder:Landroid/os/Handler;

    .line 229
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 230
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030001

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 235
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    .line 237
    new-instance v1, Lcom/android/phone/CallTime;

    invoke-direct {v1, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    .line 240
    new-instance v1, Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    .line 242
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/phone/CallCard;->mDensity:F

    .line 245
    sget-object v1, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 246
    return-void
.end method

.method private CallEndTimeBlink()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 186
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 188
    :cond_0
    iget v1, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 189
    iget v1, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    move v0, v4

    .line 190
    .local v0, invisibleCallTime:Z
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v1, v0}, Lcom/android/phone/MultiCallView;->CallEndTimeBlink(Z)V

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isCallEndedScreen()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v4

    :goto_2
    or-int/2addr v0, v1

    .line 194
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    move v2, v5

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget v1, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    .line 196
    iget-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 197
    iget-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .end local v0           #invisibleCallTime:Z
    :cond_2
    move v0, v3

    .line 189
    goto :goto_1

    .restart local v0       #invisibleCallTime:Z
    :cond_3
    move v1, v3

    .line 193
    goto :goto_2

    :cond_4
    move v2, v3

    .line 194
    goto :goto_3

    .line 199
    .end local v0           #invisibleCallTime:Z
    :cond_5
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    if-eqz v1, :cond_6

    .line 200
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/MultiCallView;->CallEndTimeBlink(Ljava/lang/String;)V

    .line 202
    :cond_6
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isCallEndedScreen()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iput v3, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    goto :goto_0

    :cond_7
    move v2, v5

    .line 202
    goto :goto_4
.end method

.method private RecInfoBlink()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x6e

    .line 209
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    iget-boolean v0, p0, Lcom/android/phone/CallCard;->mToggleRecInfo:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/CallCard;->showRecInfo()V

    .line 213
    :goto_0
    iget-boolean v0, p0, Lcom/android/phone/CallCard;->mToggleRecInfo:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/phone/CallCard;->mToggleRecInfo:Z

    .line 214
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 219
    :goto_2
    return-void

    .line 212
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/CallCard;->hideRecInfo()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 213
    goto :goto_1

    .line 216
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/CallCard;->hideRecInfo()V

    .line 217
    iput-boolean v1, p0, Lcom/android/phone/CallCard;->mToggleRecInfo:Z

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/phone/CallCard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/CallCard;->CallEndTimeBlink()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallCard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/CallCard;->RecInfoBlink()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CallCard;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CallCard;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/CallCard;->FDN_Number:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/CallCard;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/phone/CallCard;->FDN_Number:Ljava/lang/String;

    return-object p1
.end method

.method private clearUpperTitle()V
    .locals 3

    .prologue
    .line 1848
    const-string v0, ""

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 1849
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 19
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 491
    if-nez p2, :cond_0

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 745
    :goto_0
    return-void

    .line 496
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 498
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    .line 510
    .local v13, state:Lcom/android/internal/telephony/Call$State;
    sget-object v16, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 565
    const-string v16, "CallCard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "displayMainCallStatus: unexpected call state: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->updateCardTitleWidgets(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 569
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v16

    if-nez v16, :cond_5

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 572
    const-string v16, "large_multi_call_ui"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 573
    const-string v16, "CallCard"

    const-string v17, "LARGE_MULTI_CALL_UI"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const v16, 0x7f080042

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/phone/MultiCallLargeView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    .line 579
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/MultiCallView;->initialize(Lcom/android/phone/InCallScreen;)V

    .line 582
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/MultiCallView;->setCallCardScreenState(Lcom/android/phone/CallCard$CallCardScreenState;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/phone/MultiCallView;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->reset()V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/MultiCallView;->setVisibility(I)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 729
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 515
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->reset()V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->startMinuteMinderAlarm()V

    goto/16 :goto_1

    .line 525
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->reset()V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    goto/16 :goto_1

    .line 532
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 538
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 545
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 554
    :pswitch_5
    const-string v16, "CallCard"

    const-string v17, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 577
    :cond_4
    const v16, 0x7f080042

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/phone/MultiCallView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    goto/16 :goto_2

    .line 589
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v16

    if-nez v16, :cond_6

    const-string v16, "support_conference_call"

    invoke-static/range {v16 .. v16}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 593
    invoke-direct/range {p0 .. p2}, Lcom/android/phone/CallCard;->updateDisplayForConferenceCall(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_3

    .line 603
    :cond_6
    const/4 v6, 0x0

    .line 604
    .local v6, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    .line 605
    .local v10, phoneType:I
    const/16 v16, 0x2

    move v0, v10

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 606
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 619
    :goto_4
    if-nez v6, :cond_a

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v7

    .line 626
    .local v7, info:Lcom/android/internal/telephony/CallerInfo;
    sget v16, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_3

    .line 612
    .end local v7           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_7
    const/16 v16, 0x1

    move v0, v10

    move/from16 v1, v16

    if-eq v0, v1, :cond_8

    const/16 v16, 0x3

    move v0, v10

    move/from16 v1, v16

    if-ne v0, v1, :cond_9

    .line 614
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    goto :goto_4

    .line 616
    :cond_9
    new-instance v16, Ljava/lang/IllegalStateException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unexpected phone type: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 629
    :cond_a
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v11

    .line 633
    .local v11, presentation:I
    const/4 v12, 0x1

    .line 634
    .local v12, runQuery:Z
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v8

    .line 635
    .local v8, o:Ljava/lang/Object;
    move-object v0, v8

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v16, v0

    if-eqz v16, :cond_e

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v16, v0

    move-object v0, v8

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-object v9, v0

    move-object v0, v9

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v12

    .line 644
    :goto_5
    const/16 v16, 0x2

    move v0, v10

    move/from16 v1, v16

    if-ne v0, v1, :cond_d

    .line 645
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v9

    .line 646
    .local v9, obj:Ljava/lang/Object;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v15

    .line 647
    .local v15, updatedNumber:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v14

    .line 648
    .local v14, updatedCnapName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 649
    .restart local v7       #info:Lcom/android/internal/telephony/CallerInfo;
    move-object v0, v9

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v16, v0

    if-eqz v16, :cond_f

    .line 650
    move-object v0, v8

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-object v9, v0

    .end local v9           #obj:Ljava/lang/Object;
    iget-object v7, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 655
    :cond_b
    :goto_6
    if-eqz v7, :cond_d

    .line 656
    if-eqz v15, :cond_c

    move-object v0, v7

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 659
    const/4 v12, 0x1

    .line 661
    :cond_c
    if-eqz v14, :cond_d

    move-object v0, v7

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_d

    .line 664
    const/4 v12, 0x1

    .line 669
    .end local v7           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v14           #updatedCnapName:Ljava/lang/String;
    .end local v15           #updatedNumber:Ljava/lang/String;
    :cond_d
    if-eqz v12, :cond_11

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v7

    .line 675
    .local v7, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object v0, v7

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v16, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    const/16 v17, 0x1

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v11

    move/from16 v3, v17

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_3

    .line 639
    .end local v7           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v12

    goto :goto_5

    .line 651
    .local v7, info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v9       #obj:Ljava/lang/Object;
    .restart local v14       #updatedCnapName:Ljava/lang/String;
    .restart local v15       #updatedNumber:Ljava/lang/String;
    :cond_f
    move-object v0, v8

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v16, v0

    if-eqz v16, :cond_b

    .line 652
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v7, v0

    goto :goto_6

    .line 675
    .end local v9           #obj:Ljava/lang/Object;
    .end local v14           #updatedCnapName:Ljava/lang/String;
    .end local v15           #updatedNumber:Ljava/lang/String;
    .local v7, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_10
    const/16 v17, 0x0

    goto :goto_7

    .line 681
    .end local v7           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_11
    move-object v0, v8

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v16, v0

    if-eqz v16, :cond_12

    .line 682
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v5, v0

    .line 684
    .local v5, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 689
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v16

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 690
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v16

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 699
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v11

    move/from16 v3, v16

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_3

    .line 700
    .end local v5           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_12
    move-object v0, v8

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v16, v0

    if-eqz v16, :cond_13

    .line 701
    check-cast v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v8           #o:Ljava/lang/Object;
    iget-object v5, v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 702
    .restart local v5       #ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v5, :cond_3

    .line 712
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v11

    move/from16 v3, v16

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_3

    .line 715
    .end local v5           #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v8       #o:Ljava/lang/Object;
    :cond_13
    const-string v16, "CallCard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 510
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 1169
    return-void
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 3
    .parameter "call"

    .prologue
    .line 1172
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1175
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 1179
    const v1, 0x7f0d0182

    .line 1183
    .local v1, resID:I
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v1           #resID:I
    :goto_0
    return-object v2

    .line 1181
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 4
    .parameter "c"

    .prologue
    .line 1188
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 1194
    .local v0, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v2, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1254
    const v1, 0x7f0d0182

    .line 1257
    .local v1, resID:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1196
    .end local v1           #resID:I
    :pswitch_0
    const v1, 0x7f0d000e

    .line 1197
    .restart local v1       #resID:I
    goto :goto_0

    .line 1200
    .end local v1           #resID:I
    :pswitch_1
    const v1, 0x7f0d000f

    .line 1201
    .restart local v1       #resID:I
    goto :goto_0

    .line 1204
    .end local v1           #resID:I
    :pswitch_2
    const v1, 0x7f0d0010

    .line 1205
    .restart local v1       #resID:I
    goto :goto_0

    .line 1208
    .end local v1           #resID:I
    :pswitch_3
    const v1, 0x7f0d0011

    .line 1209
    .restart local v1       #resID:I
    goto :goto_0

    .line 1212
    .end local v1           #resID:I
    :pswitch_4
    const v1, 0x7f0d0012

    .line 1213
    .restart local v1       #resID:I
    goto :goto_0

    .line 1216
    .end local v1           #resID:I
    :pswitch_5
    const v1, 0x7f0d0013

    .line 1217
    .restart local v1       #resID:I
    goto :goto_0

    .line 1220
    .end local v1           #resID:I
    :pswitch_6
    const v1, 0x7f0d0015

    .line 1221
    .restart local v1       #resID:I
    goto :goto_0

    .line 1224
    .end local v1           #resID:I
    :pswitch_7
    const v1, 0x7f0d0014

    .line 1225
    .restart local v1       #resID:I
    goto :goto_0

    .line 1229
    .end local v1           #resID:I
    :pswitch_8
    const v1, 0x7f0d0016

    .line 1230
    .restart local v1       #resID:I
    goto :goto_0

    .line 1233
    .end local v1           #resID:I
    :pswitch_9
    const v1, 0x7f0d0017

    .line 1234
    .restart local v1       #resID:I
    goto :goto_0

    .line 1237
    .end local v1           #resID:I
    :pswitch_a
    const v1, 0x7f0d0018

    .line 1238
    .restart local v1       #resID:I
    goto :goto_0

    .line 1241
    .end local v1           #resID:I
    :pswitch_b
    const v1, 0x7f0d0019

    .line 1242
    .restart local v1       #resID:I
    goto :goto_0

    .line 1245
    .end local v1           #resID:I
    :pswitch_c
    const v1, 0x7f0d001a

    .line 1246
    .restart local v1       #resID:I
    goto :goto_0

    .line 1250
    .end local v1           #resID:I
    :pswitch_d
    const v1, 0x7f0d0029

    .line 1251
    .restart local v1       #resID:I
    goto :goto_0

    .line 1194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1856
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1858
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1859
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1863
    :goto_0
    const v1, 0x7f0d0186

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1864
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1861
    :cond_0
    const v0, 0x7f0d0009

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPresentationString(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    .line 1564
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1567
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1

    .line 1568
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1574
    :cond_0
    :goto_0
    return-object v0

    .line 1569
    :cond_1
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_0

    .line 1570
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d000b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 7
    .parameter "call"

    .prologue
    const v6, 0x7f0d02c6

    .line 962
    const/4 v2, 0x0

    .line 963
    .local v2, retVal:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 964
    .local v3, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 968
    .local v0, context:Landroid/content/Context;
    sget-object v4, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1020
    :goto_0
    :pswitch_0
    return-object v2

    .line 975
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 976
    .local v1, phoneType:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 977
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 978
    const v4, 0x7f0d017b

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 980
    :cond_0
    const v4, 0x7f0d017e

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 982
    :cond_1
    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 984
    :cond_2
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 986
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 991
    .end local v1           #phoneType:I
    :pswitch_2
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 994
    goto :goto_0

    .line 999
    :pswitch_3
    const v4, 0x7f0d030b

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1000
    goto :goto_0

    .line 1004
    :pswitch_4
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1005
    goto :goto_0

    .line 1008
    :pswitch_5
    const v4, 0x7f0d0184

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1009
    goto :goto_0

    .line 1012
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 968
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private hideRecInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2027
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2028
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v0, v1}, Lcom/android/phone/MultiCallView;->setRecInfoViewVisibility(I)V

    .line 2029
    :cond_1
    return-void
.end method

.method private linkControls(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const v3, 0x7f080039

    .line 265
    const v1, 0x7f080049

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    .line 266
    const v1, 0x7f080048

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mBirthIcon:Landroid/widget/ImageView;

    .line 267
    const v1, 0x7f080044

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    .line 268
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/phone/CallCard$2;

    invoke-direct {v2, p0}, Lcom/android/phone/CallCard$2;-><init>(Lcom/android/phone/CallCard;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    const v1, 0x7f08004a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 279
    const v1, 0x7f08004b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    .line 282
    iget-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 283
    .local v0, isRec:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v2, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    .line 286
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->visibleRecInfoView()V

    .line 290
    :cond_1
    const v1, 0x7f08003b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    .line 291
    const v1, 0x7f08003c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    .line 292
    const v1, 0x7f08003d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSnsStatus:Landroid/widget/TextView;

    .line 293
    const v1, 0x7f08003e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mNoiseReductionIcon:Landroid/widget/ImageView;

    .line 294
    const v1, 0x7f08003f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 295
    const v1, 0x7f080045

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mBirthPanel:Landroid/widget/LinearLayout;

    .line 296
    const v1, 0x7f080046

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mBirthRemainedDays:Landroid/widget/TextView;

    .line 300
    const v1, 0x7f080047

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCity:Landroid/widget/TextView;

    .line 301
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCity:Landroid/widget/TextView;

    if-nez v1, :cond_2

    .line 303
    const-string v1, "mCity == null"

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 307
    :cond_2
    return-void

    .line 285
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1965
    const-string v0, "CallCard"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    return-void
.end method

.method private setRingingCallFrameAni()V
    .locals 6

    .prologue
    const v5, 0x7f020055

    const/4 v4, 0x0

    const/16 v3, 0xc8

    .line 1941
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 1942
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1943
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1944
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1945
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1946
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1947
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1948
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1949
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1950
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 1951
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 1952
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1953
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1954
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1955
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1956
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1957
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1958
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1959
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1960
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 1961
    return-void
.end method

.method private setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1811
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1814
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne p3, v0, :cond_1

    .line 1815
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1822
    :goto_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq p3, v0, :cond_3

    .line 1823
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTitleIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1824
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTitleIcon:Landroid/widget/ImageView;

    const v1, 0x7f0201fb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1841
    :goto_1
    return-void

    .line 1816
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p3, v0, :cond_2

    .line 1817
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    goto :goto_0

    .line 1819
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    goto :goto_0

    .line 1826
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTitleIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private static final showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1757
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_1

    .line 1758
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1763
    :goto_0
    const/4 v0, 0x1

    .line 1765
    :goto_1
    return v0

    .line 1761
    :cond_0
    const v0, 0x7f020163

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 1765
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 1770
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1771
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1772
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 1776
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1777
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1778
    return-void
.end method

.method private showRecInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2022
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2023
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v0, v1}, Lcom/android/phone/MultiCallView;->setRecInfoViewVisibility(I)V

    .line 2024
    :cond_1
    return-void
.end method

.method private updateCardTitleWidgets(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V
    .locals 12
    .parameter "phone"
    .parameter "call"

    .prologue
    .line 804
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    .line 805
    .local v7, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 806
    .local v2, context:Landroid/content/Context;
    invoke-static {p2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v3

    .line 813
    .local v3, duration:J
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 814
    .local v6, phoneType:I
    const/4 v8, 0x2

    if-ne v6, v8, :cond_2

    .line 815
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v8

    if-nez v8, :cond_1

    .line 816
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    .line 833
    :goto_0
    sget-object v8, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 928
    iget-object v8, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    iget v9, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-direct {p0, v8, v9, v7}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 931
    iget-object v8, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 932
    iget-object v8, p0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 935
    :cond_0
    :goto_1
    return-void

    .line 818
    :cond_1
    const v8, 0x7f0d017d

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    goto :goto_0

    .line 820
    :cond_2
    const/4 v8, 0x1

    if-eq v6, v8, :cond_3

    const/4 v8, 0x3

    if-ne v6, v8, :cond_5

    .line 822
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier;->getIsGsmRedialCall()Z

    move-result v8

    if-nez v8, :cond_4

    .line 823
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    goto :goto_0

    .line 825
    :cond_4
    const v8, 0x7f0d017d

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    goto :goto_0

    .line 828
    :cond_5
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 836
    :pswitch_0
    iget-object v8, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v0

    .line 837
    .local v0, bluetoothActive:Z
    if-eqz v0, :cond_7

    const v8, 0x7f0202c8

    move v5, v8

    .line 839
    .local v5, ongoingCallIcon:I
    :goto_2
    if-eqz v0, :cond_8

    iget v8, p0, Lcom/android/phone/CallCard;->mTextColorConnectedBluetooth:I

    move v1, v8

    .line 842
    .local v1, connectedTextColor:I
    :goto_3
    const/4 v8, 0x2

    if-ne v6, v8, :cond_b

    .line 845
    iget-object v8, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 848
    iget-object v8, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    iget v9, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-direct {p0, v8, v9, v7}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 865
    :cond_6
    :goto_4
    iget-object v8, p0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 866
    iget-object v8, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 867
    iget-object v8, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    iget v9, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 868
    const-wide/16 v8, 0x3e8

    div-long v8, v3, v8

    invoke-direct {p0, v8, v9}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto/16 :goto_1

    .line 837
    .end local v1           #connectedTextColor:I
    .end local v5           #ongoingCallIcon:I
    :cond_7
    const v8, 0x7f0202c7

    move v5, v8

    goto :goto_2

    .line 839
    .restart local v5       #ongoingCallIcon:I
    :cond_8
    iget v8, p0, Lcom/android/phone/CallCard;->mTextColorConnected:I

    move v1, v8

    goto :goto_3

    .line 849
    .restart local v1       #connectedTextColor:I
    :cond_9
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 852
    invoke-direct {p0, v2, p1}, Lcom/android/phone/CallCard;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    .line 853
    iget-object v8, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    iget v9, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-direct {p0, v8, v9, v7}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    goto :goto_4

    .line 856
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/CallCard;->clearUpperTitle()V

    goto :goto_4

    .line 858
    :cond_b
    const/4 v8, 0x1

    if-eq v6, v8, :cond_c

    const/4 v8, 0x3

    if-ne v6, v8, :cond_6

    .line 861
    :cond_c
    iget-object v8, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    iget v9, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-direct {p0, v8, v9, v7}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    goto :goto_4

    .line 881
    .end local v0           #bluetoothActive:Z
    .end local v1           #connectedTextColor:I
    .end local v5           #ongoingCallIcon:I
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/CallCard;->clearUpperTitle()V

    .line 886
    iget-object v8, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 887
    iget-object v8, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x64

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 889
    iget-object v8, p0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 890
    iget-object v8, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 892
    const-wide/16 v8, 0x3e8

    div-long v8, v3, v8

    invoke-direct {p0, v8, v9}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 893
    iget-object v8, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, ""

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 906
    :pswitch_2
    iget-object v8, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    iget v9, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-direct {p0, v8, v9, v7}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 911
    iget-object v8, p0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 912
    iget-object v8, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 913
    iget-object v8, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    iget v9, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 914
    const-wide/16 v8, 0x3e8

    div-long v8, v3, v8

    invoke-direct {p0, v8, v9}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto/16 :goto_1

    .line 921
    :pswitch_3
    iget-object v8, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    iget v9, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-direct {p0, v8, v9, v7}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 922
    iget-object v8, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 923
    iget-object v8, p0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 833
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private updateDisplayForConferenceCall(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1586
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    const v2, 0x7f0d002a

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1589
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    const v3, 0x7f0d02c9

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1590
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1592
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f020161

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1593
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    if-eqz v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v0}, Lcom/android/phone/MultiCallView;->resetOriginalState()V

    .line 1596
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/MultiCallView;->setVisibility(I)V

    .line 1598
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1599
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1600
    return-void
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1272
    if-nez p4, :cond_1

    .line 1555
    :cond_0
    :goto_0
    return-void

    .line 1277
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, p1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1278
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1282
    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    .line 1284
    const/4 v0, 0x0

    .line 1285
    const/4 v1, 0x0

    .line 1287
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    .line 1288
    if-eqz p1, :cond_e

    .line 1301
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_2

    .line 1307
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/phone/InCallScreen;->mCurrentCallNumber:Ljava/lang/String;

    .line 1317
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1318
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1319
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v1

    .line 1390
    :goto_1
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object v6, v2

    move-object v8, v0

    move-object v0, v1

    .line 1397
    :goto_2
    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1398
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v1, 0x7f0d0185

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1406
    :goto_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1412
    const/4 v0, 0x0

    .line 1418
    if-eqz p1, :cond_4

    .line 1419
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1421
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1422
    const-string v2, "+86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1423
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1424
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->getNumberProvinceAndCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1430
    :goto_4
    if-eqz v0, :cond_11

    .line 1431
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCity:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/CallCard;->mCity:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1477
    :cond_4
    :goto_5
    if-eqz p3, :cond_12

    if-eqz p1, :cond_5

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v0, :cond_12

    .line 1478
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1489
    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1502
    if-eqz v8, :cond_14

    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1503
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1504
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/CallCard;->mTextColorPhoneNumber:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1505
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1511
    :goto_7
    const-string v0, "display_sns_info"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 1512
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->snsAccountType:I

    packed-switch v0, :pswitch_data_0

    .line 1520
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1522
    :goto_8
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsStatus:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1527
    :goto_9
    iget-object v0, p0, Lcom/android/phone/CallCard;->mBirthIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1528
    iget-object v0, p0, Lcom/android/phone/CallCard;->mBirthPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1529
    const-string v0, "display_birthday_info"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_7

    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne p2, v0, :cond_7

    .line 1531
    iget-wide v0, p1, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 1532
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%d"

    aput-object v2, v0, v1

    .line 1533
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v3, p1, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1534
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    long-to-int v3, v3

    aget-object v2, v2, v3

    .line 1535
    iget-object v3, p0, Lcom/android/phone/CallCard;->mBirthRemainedDays:Landroid/widget/TextView;

    invoke-static {v2, v0, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1536
    iget-object v0, p0, Lcom/android/phone/CallCard;->mBirthPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1539
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    if-eqz v0, :cond_8

    .line 1541
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v0}, Lcom/android/phone/MultiCallView;->resetOriginalState()V

    .line 1542
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/MultiCallView;->setVisibility(I)V

    .line 1544
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1546
    const-string v0, "fdn_contact_search"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1549
    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_0

    .line 1550
    iget-object v0, p0, Lcom/android/phone/CallCard;->mhFDNQueryHanlder:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1551
    invoke-static {}, Lcom/android/phone/FDNContactsCache;->getInstance()Lcom/android/phone/FDNContactsCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/phone/FDNContactsCache;->queryFDNContactByNumber(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1320
    :cond_9
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq p2, v1, :cond_a

    .line 1324
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1325
    :cond_a
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1326
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1327
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1328
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_1

    .line 1330
    :cond_b
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_1

    .line 1333
    :cond_c
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq p2, v1, :cond_d

    .line 1337
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1384
    :cond_d
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1387
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_1

    .line 1394
    :cond_e
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v2

    move-object v6, v1

    move-object v8, v0

    move-object v0, v2

    goto/16 :goto_2

    .line 1400
    :cond_f
    if-eqz p1, :cond_10

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    iget v2, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-ne v1, v2, :cond_10

    .line 1401
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/CallCard;->mTextColorGray:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1404
    :goto_a
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1403
    :cond_10
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a

    .line 1434
    :cond_11
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCity:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallCard;->mCity:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1479
    :cond_12
    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_6

    .line 1481
    if-eqz p1, :cond_13

    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v0, :cond_13

    .line 1482
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_6

    .line 1483
    :cond_13
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1486
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v7, 0x7f020163

    move-object v0, p1

    move-object v2, p0

    move-object v3, p4

    invoke-static/range {v0 .. v7}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    goto/16 :goto_6

    .line 1507
    :cond_14
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 1514
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    const v1, 0x7f020310

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_8

    .line 1516
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    const v1, 0x7f020311

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_8

    .line 1518
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    const v1, 0x7f020312

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_8

    .line 1524
    :cond_15
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1525
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 1426
    :catch_0
    move-exception v1

    goto/16 :goto_4

    .line 1512
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateElapsedTimeWidget(J)V
    .locals 4
    .parameter "timeElapsed"

    .prologue
    .line 943
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 944
    iget-object v2, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    .line 947
    .local v1, time:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 948
    iget-object v2, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    if-eqz v2, :cond_0

    .line 949
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0183

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 950
    .local v0, holdText:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v2, v1, v0}, Lcom/android/phone/MultiCallView;->updateElapsedTimeWidget(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    .line 409
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 410
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 412
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v4

    if-nez v4, :cond_0

    .line 420
    move-object v1, v0

    .line 423
    const/4 v0, 0x0

    .line 426
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 428
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 430
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 431
    .local v3, phoneType:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 432
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 436
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 446
    :cond_1
    :goto_0
    return-void

    .line 440
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 442
    :cond_3
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 444
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method private updateNoCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "cm"

    .prologue
    const/4 v0, 0x0

    .line 480
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 481
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 482
    return-void
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x2

    const/4 v5, -0x1

    .line 1613
    .line 1614
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1618
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1619
    sget-object v0, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 1661
    :pswitch_0
    const/4 v2, 0x0

    .line 1664
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1665
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 1666
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1674
    :goto_0
    if-eqz v0, :cond_e

    .line 1675
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 1676
    instance-of v3, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_8

    .line 1677
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 1684
    :goto_1
    if-eqz v0, :cond_d

    .line 1685
    iget v2, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 1700
    :goto_2
    if-nez v2, :cond_b

    .line 1701
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v3, :cond_a

    .line 1703
    :cond_2
    if-eqz v0, :cond_9

    iget-boolean v2, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_9

    .line 1705
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1749
    :cond_3
    :goto_3
    return-void

    .line 1624
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1627
    if-eqz v0, :cond_f

    .line 1628
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 1629
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v1, :cond_f

    .line 1631
    :cond_4
    const v0, 0x7f020354

    .line 1743
    :goto_4
    if-eqz v0, :cond_3

    .line 1745
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1747
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v6}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto :goto_3

    :pswitch_2
    move v0, v4

    .line 1640
    goto :goto_4

    .line 1667
    :cond_5
    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-ne v0, v3, :cond_7

    .line 1669
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 1671
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1678
    :cond_8
    instance-of v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_e

    .line 1679
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1

    .line 1709
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1711
    sget-object v0, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_3

    .line 1719
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1720
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_3

    .line 1714
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1715
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_3

    .line 1726
    :cond_a
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1727
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v1

    if-ne v1, v6, :cond_c

    .line 1729
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v4}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v1, v3, v4, v5}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 1731
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v5}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    move v0, v2

    goto/16 :goto_4

    .line 1736
    :cond_b
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1737
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v5}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto/16 :goto_3

    :cond_c
    move v0, v2

    goto/16 :goto_4

    :cond_d
    move v2, v4

    goto/16 :goto_2

    :cond_e
    move-object v0, v2

    goto/16 :goto_1

    :cond_f
    move v0, v4

    goto/16 :goto_4

    .line 1619
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1711
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .parameter "cm"

    .prologue
    .line 455
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 460
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 466
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 467
    return-void
.end method


# virtual methods
.method public hideCallCardElements()V
    .locals 2

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1882
    return-void
.end method

.method invisibleRecInfoView()V
    .locals 2

    .prologue
    const/16 v1, 0x6e

    .line 2016
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2017
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallCard;->hideRecInfo()V

    .line 2018
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 311
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 315
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    .line 316
    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    .line 319
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/view/View;

    .line 320
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleText:Landroid/widget/TextView;

    .line 321
    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallTitleIcon:Landroid/widget/ImageView;

    .line 324
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    .line 325
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorGray:I

    .line 326
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorConnected:I

    .line 327
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorConnectedBluetooth:I

    .line 328
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorEnded:I

    .line 329
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorOnHold:I

    .line 330
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorPhoneNumber:I

    .line 332
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->linkControls(Landroid/view/View;)V

    .line 334
    invoke-direct {p0}, Lcom/android/phone/CallCard;->setRingingCallFrameAni()V

    .line 335
    return-void
.end method

.method public onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "iView"
    .parameter "imagePresent"

    .prologue
    .line 793
    if-eqz p2, :cond_0

    .line 794
    check-cast p2, Lcom/android/internal/telephony/Call;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 796
    :cond_0
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v7, 0x0

    .line 754
    instance-of v5, p2, Lcom/android/internal/telephony/Connection;

    if-eqz v5, :cond_3

    .line 761
    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/Connection;

    move-object v3, v0

    .line 762
    .local v3, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 763
    .local v1, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v3, p0, v6}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 766
    .local v2, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .line 767
    .local v4, presentation:I
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 774
    :cond_0
    iget-boolean v5, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v5, :cond_2

    .line 775
    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    invoke-direct {p0, p3, v5, v7, v1}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    .line 779
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 785
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v3           #conn:Lcom/android/internal/telephony/Connection;
    .end local v4           #presentation:I
    .end local p2
    :cond_1
    :goto_1
    return-void

    .line 777
    .restart local v1       #call:Lcom/android/internal/telephony/Call;
    .restart local v2       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v3       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v4       #presentation:I
    .restart local p2
    :cond_2
    iget-object v5, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {p0, v5, v4, v7, v1}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 781
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v3           #conn:Lcom/android/internal/telephony/Connection;
    .end local v4           #presentation:I
    :cond_3
    instance-of v5, p2, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 783
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    iget-object v5, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {p3, v5}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 0
    .parameter "timeElapsed"

    .prologue
    .line 255
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 256
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 250
    return-void
.end method

.method setOrientation(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 1885
    if-ne p1, v2, :cond_5

    move v1, v2

    .line 1886
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 1887
    :goto_1
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v3, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    if-eq v2, v3, :cond_7

    .line 1888
    sget-object v0, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 1889
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->linkControls(Landroid/view/View;)V

    .line 1890
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1891
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1892
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLand;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1893
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-virtual {v0, v4}, Lcom/android/phone/CallCardLand;->setVisibility(I)V

    .line 1894
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLandIncoming;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1895
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-virtual {v0, v4}, Lcom/android/phone/CallCardLandIncoming;->setVisibility(I)V

    .line 1926
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v2, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE:Lcom/android/phone/CallCard$CallCardScreenState;

    if-ne v0, v2, :cond_4

    .line 1927
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1928
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_3

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_f

    .line 1929
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1930
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    const v2, 0x7f0d017b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1937
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/view/View;

    if-eqz v1, :cond_10

    move v1, v5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1938
    return-void

    :cond_5
    move v1, v5

    .line 1885
    goto/16 :goto_0

    :cond_6
    move v0, v5

    .line 1886
    goto :goto_1

    .line 1897
    :cond_7
    if-nez v1, :cond_b

    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v3, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE_INCOMING:Lcom/android/phone/CallCard$CallCardScreenState;

    if-eq v2, v3, :cond_b

    .line 1898
    sget-object v0, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE_INCOMING:Lcom/android/phone/CallCard$CallCardScreenState;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 1899
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    if-nez v0, :cond_8

    .line 1900
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallCardLandIncoming;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    .line 1901
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLandIncoming;->initialize()V

    .line 1903
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->linkControls(Landroid/view/View;)V

    .line 1904
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 1905
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1906
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLand;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 1907
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-virtual {v0, v4}, Lcom/android/phone/CallCardLand;->setVisibility(I)V

    .line 1908
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLandIncoming;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 1909
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-virtual {v0, v5}, Lcom/android/phone/CallCardLandIncoming;->setVisibility(I)V

    goto/16 :goto_2

    .line 1911
    :cond_b
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v2, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE:Lcom/android/phone/CallCard$CallCardScreenState;

    if-eq v0, v2, :cond_2

    .line 1912
    sget-object v0, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE:Lcom/android/phone/CallCard$CallCardScreenState;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 1913
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    if-nez v0, :cond_c

    .line 1914
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallCardLand;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    .line 1915
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLand;->initialize()V

    .line 1916
    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    .line 1918
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->linkControls(Landroid/view/View;)V

    .line 1919
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 1920
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1921
    :cond_d
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLand;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_e

    .line 1922
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-virtual {v0, v5}, Lcom/android/phone/CallCardLand;->setVisibility(I)V

    .line 1923
    :cond_e
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLandIncoming;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1924
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-virtual {v0, v4}, Lcom/android/phone/CallCardLandIncoming;->setVisibility(I)V

    goto/16 :goto_2

    .line 1934
    :cond_f
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_10
    move v1, v4

    .line 1937
    goto/16 :goto_4
.end method

.method stopTimer()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 261
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 5
    .parameter "cm"

    .prologue
    .line 349
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 350
    .local v2, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_1

    .line 353
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;)V

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_2

    .line 357
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 364
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 365
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 366
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_4

    .line 371
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    .line 395
    :goto_1
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v3}, Lcom/android/phone/CallTime;->stopMinuteMinderAlarm()V

    .line 397
    iget-object v3, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v3, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v3}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    goto :goto_0

    .line 372
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_6

    .line 376
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_1

    .line 393
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_1
.end method

.method visibleRecInfoView()V
    .locals 2

    .prologue
    const/16 v1, 0x6e

    .line 2011
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2012
    :cond_0
    return-void
.end method
