.class public Lcom/android/phone/IncomingSlidingWidget;
.super Landroid/widget/RelativeLayout;
.source "IncomingSlidingWidget.java"

# interfaces
.implements Lcom/android/phone/IncomingCallWidget$OnTriggerListener;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

.field public mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

.field private mLastIncomingCallActionTime:J

.field private mOrientation:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field public mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

.field private mRejectCallWithMsgHandle:Landroid/widget/Button;

.field private mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

.field private mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

.field private mVoipInUseMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 65
    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mContext:Landroid/content/Context;

    .line 66
    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 73
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mContext:Landroid/content/Context;

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mOrientation:I

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IncomingSlidingWidget;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgHandle:Landroid/widget/Button;

    return-object v0
.end method

.method private hideIncomingCallWidget()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_2

    .line 154
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

    .line 155
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 156
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/phone/IncomingSlidingWidget$3;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingSlidingWidget$3;-><init>(Lcom/android/phone/IncomingSlidingWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private linkControls()V
    .locals 5

    .prologue
    .line 79
    const v0, 0x7f0800fe

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallWidget;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    .line 80
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    const v1, 0x7f0202cb

    const v2, 0x7f020347

    const v3, 0x7f020333

    const v4, 0x7f02033b

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/IncomingCallWidget;->setLeftTabResources(IIII)V

    .line 86
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    const v1, 0x7f0202ce

    const v2, 0x7f020348

    const v3, 0x7f020337

    const v4, 0x7f020344

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/IncomingCallWidget;->setRightTabResources(IIII)V

    .line 92
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    const v1, 0x7f0d02b9

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->setLeftHintText(I)V

    .line 93
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    const v1, 0x7f0d02b7

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->setRightHintText(I)V

    .line 94
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingCallWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallWidget$OnTriggerListener;)V

    .line 96
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "linkControls() isVideoCall : does not using mRejectCallWithMsgDrawer,mRejectCallWithMsgDrawer == null"

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 113
    :goto_0
    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/RejectCallWithMsgLayout;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    .line 115
    const v0, 0x7f0800ff

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mVoipInUseMsg:Landroid/widget/TextView;

    .line 116
    return-void

    .line 99
    :cond_0
    const v0, 0x7f080150

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    .line 100
    const v0, 0x7f080153

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgHandle:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/android/phone/IncomingSlidingWidget$1;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingSlidingWidget$1;-><init>(Lcom/android/phone/IncomingSlidingWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/android/phone/IncomingSlidingWidget$2;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingSlidingWidget$2;-><init>(Lcom/android/phone/IncomingSlidingWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 325
    const-string v0, "IncomingSlidingWidget"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void
.end method

.method private showIncomingCallWidget()V
    .locals 3

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 174
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 176
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget;->clearAnimation()V

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/IncomingCallWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget;->setVisibility(I)V

    .line 184
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mVoipInUseMsg:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    return-void
.end method


# virtual methods
.method initialize(Ljava/lang/Object;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 122
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03002b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 128
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 129
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_0

    const-string v1, "initialize() mPhone == null!!"

    invoke-direct {p0, v1}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 130
    :cond_0
    instance-of v1, p1, Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_2

    .line 131
    check-cast p1, Lcom/android/phone/InCallScreen;

    .end local p1
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 135
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->linkControls()V

    .line 136
    return-void

    .line 132
    .restart local p1
    :cond_2
    instance-of v1, p1, Lcom/android/phone/InVTCallScreen;

    if-eqz v1, :cond_1

    .line 133
    check-cast p1, Lcom/android/phone/InVTCallScreen;

    .end local p1
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 141
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 268
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 6
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const v4, 0x7f080018

    const v3, 0x7f080017

    const-string v5, "answer trigger: mInCallScreen and mInVTCallScreen is null"

    const-string v2, "IncomingSlidingWidget"

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger(whichHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 208
    packed-switch p2, :pswitch_data_0

    .line 257
    const-string v0, "IncomingSlidingWidget"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return-void

    .line 212
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->hideIncomingCallWidget()V

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mLastIncomingCallActionTime:J

    .line 219
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 225
    :cond_1
    const-string v0, "IncomingSlidingWidget"

    const-string v0, "answer trigger: mInCallScreen and mInVTCallScreen is null"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :pswitch_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    sget-boolean v0, Lcom/android/phone/PhoneApp;->isLAWMOLocked:Z

    if-eqz v0, :cond_2

    .line 234
    const-string v0, "onTrigger:LAWMO Locked!!! return!"

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->hideIncomingCallWidget()V

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mLastIncomingCallActionTime:J

    .line 245
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v4}, Lcom/android/phone/InVTCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_4

    .line 249
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v4}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 251
    :cond_4
    const-string v0, "IncomingSlidingWidget"

    const-string v0, "answer trigger: mInCallScreen and mInVTCallScreen is null"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVisibility(I)V
    .locals 5
    .parameter "visibility"

    .prologue
    .line 272
    if-nez p1, :cond_3

    .line 273
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->showIncomingCallWidget()V

    .line 274
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 275
    .local v2, ringConn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 276
    .local v1, presentation:I
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, phoneNumber:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v3, :cond_0

    .line 279
    const-string v3, "setVisibility() visibility == View.VISIBLE,isVideoCall : does not using mRejectCallWithMsgDrawer"

    invoke-direct {p0, v3}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 288
    :goto_0
    const-string v3, "IncomingSlidingWidget show"

    invoke-direct {p0, v3}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 300
    .end local v0           #phoneNumber:Ljava/lang/String;
    .end local v1           #presentation:I
    .end local v2           #ringConn:Lcom/android/internal/telephony/Connection;
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 301
    return-void

    .line 282
    .restart local v0       #phoneNumber:Ljava/lang/String;
    .restart local v1       #presentation:I
    .restart local v2       #ringConn:Lcom/android/internal/telephony/Connection;
    :cond_0
    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v1, v3, :cond_1

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v1, v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    sget-boolean v3, Lcom/android/phone/PhoneApp;->isLAWMOLocked:Z

    if-eqz v3, :cond_2

    .line 284
    :cond_1
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto :goto_0

    .line 286
    :cond_2
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto :goto_0

    .line 290
    .end local v0           #phoneNumber:Ljava/lang/String;
    .end local v1           #presentation:I
    .end local v2           #ringConn:Lcom/android/internal/telephony/Connection;
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->hideIncomingCallWidget()V

    .line 291
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v3, :cond_4

    .line 292
    const-string v3, "setVisibility() visibility != View.VISIBLE, isVideoCall : does not using mRejectCallWithMsgDrawer"

    invoke-direct {p0, v3}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 298
    :goto_2
    const-string v3, "IncomingSlidingWidget gone"

    invoke-direct {p0, v3}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 294
    :cond_4
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v3}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v3}, Landroid/widget/SlidingDrawer;->toggle()V

    .line 295
    :cond_5
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto :goto_2
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;I)V
    .locals 3
    .parameter "cm"
    .parameter "orientation"

    .prologue
    .line 304
    iget v2, p0, Lcom/android/phone/IncomingSlidingWidget;->mOrientation:I

    if-eq v2, p2, :cond_0

    .line 305
    iput p2, p0, Lcom/android/phone/IncomingSlidingWidget;->mOrientation:I

    .line 307
    :cond_0
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 308
    iget-object v2, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 309
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, phoneNumber:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-virtual {v2, v1}, Lcom/android/phone/RejectCallWithMsgLayout;->setPhoneNumber(Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-virtual {v2, p1}, Lcom/android/phone/RejectCallWithMsgLayout;->setPhone(Lcom/android/internal/telephony/CallManager;)V

    .line 316
    iget-object v2, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-virtual {v2}, Lcom/android/phone/RejectCallWithMsgLayout;->updateItemList()V

    .line 317
    return-void
.end method
