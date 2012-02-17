.class public Lcom/android/phone/InVTCallScreen;
.super Landroid/app/Activity;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/phone/CallTime$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InVTCallScreen$55;,
        Lcom/android/phone/InVTCallScreen$SwitchAnimationTask;,
        Lcom/android/phone/InVTCallScreen$BrightZoomTimer;,
        Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;,
        Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field static VoiceRecorder:Z

.field protected static disconnectDueToLowBattery:Z

.field private static farend_pressed:Z

.field private static isVTManagerAlreadyStarted:Z

.field private static mBackPressed:Z

.field private static mHomePressed:Z

.field protected static mImageSelectedFromGalary:Landroid/net/Uri;

.field private static mLongPressMenuEnabled:Z

.field private static mLongPressMoveCount:I

.field protected static mVideoSelectedFromGalary:Landroid/net/Uri;

.field private static nearend_pressed:Z


# instance fields
.field private AcceptByVoiceCallNumber:Ljava/lang/String;

.field private final COUNTDOWN_INTERVAL:I

.field private CallStopLayoutImage:Landroid/widget/LinearLayout;

.field private final DURINGCALL:I

.field private final DURINGCALL_LOCK:I

.field private final DURINGCALL_UNLOCK:I

.field private FallBackCallNumber:Ljava/lang/String;

.field private final INCOMING_CALL:I

.field private final INCOMING_LOCK:I

.field private final INCOMING_UNLOCK:I

.field private ImgProj:[Ljava/lang/String;

.field private KeyGuard:Z

.field private final MILLIS_IN_FUTURE:I

.field private final OUTGOING_CALL:I

.field private final OUTGOING_LOCK:I

.field private final OUTGOING_UNLOCK:I

.field private OneSecDelay:I

.field private final PROGRESS_MAX:I

.field private SeekBarLayout:Landroid/widget/LinearLayout;

.field private VideoProj:[Ljava/lang/String;

.field private bLowBat:Z

.field private bchangebrightness:Z

.field private bitmap:Landroid/graphics/Bitmap;

.field private brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

.field private dialpadLayout:Landroid/widget/LinearLayout;

.field private disconnectMsg:Landroid/os/Message;

.field private duringEndCalllayout:Landroid/widget/LinearLayout;

.field private farEndImage:Landroid/widget/ImageView;

.field protected far_endsurhldr:Landroid/view/SurfaceHolder;

.field protected far_endsurview:Landroid/view/SurfaceView;

.field private filePath:Ljava/lang/String;

.field protected incomingContactImage:Landroid/widget/ImageView;

.field private isAllOLC:Z

.field private isCallConnected:Z

.field public isCameraStarted:Z

.field private isCaptureFarEnd:Z

.field private isDisableCloseCamera:Z

.field private isFarEndCapture:Z

.field private isFarEndRecord:Z

.field private isFrontCameraEnabled:Z

.field private isMO_Disconnect:Z

.field private isMRBTtime:Z

.field private isMTRBend:Z

.field private isMTRBstart:Z

.field private isNearEndRecord:Z

.field private isPresetImageEnabled:Z

.field private isPresetImageSelectedFromOption:Z

.field private isSurfaceViewSwipe:Z

.field public isSwitchCameraClicked:Z

.field private isVTCallAlreadyStop:Z

.field private keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mAcceptbyVoiceCallButton:Landroid/widget/Button;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAuxiDialogCameraPopup:Z

.field private mAuxiDialogList:Z

.field private mBackgroundCall:Lcom/android/internal/telephony/Call;

.field private mBeforeMakingCall:Z

.field private mBirthRemainedDays:Landroid/widget/TextView;

.field private mBirthdayIcon:Landroid/widget/ImageView;

.field private mBirthdayLayout:Landroid/widget/LinearLayout;

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBlurPosition:I

.field private mBlur_Off:Z

.field protected mBrightSB:Landroid/widget/SeekBar;

.field mBrightSBChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mBrightSBPosition:I

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallEndTime:Ljava/lang/String;

.field private mCallEndTimeBlinkCount:I

.field private mCallLostDialog:Landroid/app/AlertDialog;

.field private mCallStartTime:Landroid/widget/TextView;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCallTimer:Landroid/widget/TextView;

.field private mCallerName:Landroid/widget/TextView;

.field private mCallerNumber:Landroid/widget/TextView;

.field private mCallerUppos:[Ljava/lang/String;

.field private mCameraBrightness:I

.field private mCameraContrast:I

.field private mCancel:Landroid/view/MenuItem;

.field private mCapture:Landroid/view/MenuItem;

.field private mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mCloseCamera:Landroid/view/MenuItem;

.field private final mConfigurationChangedFilter:Landroid/content/IntentFilter;

.field private final mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mContextMenuDailog:Landroid/app/Dialog;

.field private mContextMenuStrArrayId:[Ljava/lang/String;

.field mCreateButton:Landroid/widget/Button;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDesableOutGoingMenu:Z

.field private final mDeviceManagerPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

.field private mDisp_Small:Z

.field private mDownUppos:[Ljava/lang/String;

.field private mDownUpposBlurOff:[Ljava/lang/String;

.field private mEndCall:Landroid/widget/Button;

.field private mEndCallButtonFrame:Landroid/view/View;

.field protected mFaceBookIcon:Landroid/widget/ImageView;

.field private mFaceBookStatus:Landroid/widget/TextView;

.field private mFakeCallVoicePlayer:Landroid/media/MediaPlayer;

.field private mFirstFarEndViewClicked:Z

.field private mFirstNearEndViewClicked:Z

.field private mForegroundCall:Lcom/android/internal/telephony/Call;

.field private mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHideCheck:Z

.field private mHideDialPad:Landroid/widget/Button;

.field protected mImageCaptureAnimationImageView:Landroid/widget/ImageView;

.field private mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field private mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

.field private mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

.field private mIsBatteryLow:Z

.field private mIsDestroyed:Z

.field private mIsForegroundActivity:Z

.field private mIsShowMenu:Z

.field private mIsplayVideo:Z

.field private mKeyLockStatus:I

.field private mKeyPad:Landroid/view/MenuItem;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mLowMemoryStopRecording:Z

.field private mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

.field private mMenuSelected:I

.field protected mMinusBright:Landroid/widget/ImageView;

.field private mMissingVoicemailDialog:Landroid/app/AlertDialog;

.field private mMmiStartedDialog:Landroid/app/Dialog;

.field private mMute:Landroid/widget/ToggleButton;

.field private mNeedShowCallLostDialog:Z

.field private mOpenCamera:Landroid/view/MenuItem;

.field private mOrientation:I

.field private mOutGoingImage:[Ljava/lang/String;

.field private mOutGoingImageHideMe:[Ljava/lang/String;

.field private mOutGoingWithPresetImage:[Ljava/lang/String;

.field private mOutImg:Landroid/view/MenuItem;

.field private mPauseInProgress:Z

.field private mPausePromptDialog:Landroid/app/AlertDialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field public mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

.field protected mPlusBright:Landroid/widget/ImageView;

.field private mProviderOverlayVisible:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mRecordFarEndView:Landroid/widget/ImageView;

.field protected mRecordNearEndView:Landroid/widget/ImageView;

.field private mRecordTimeFarEnd:J

.field private mRecordTimeNearEnd:J

.field private mRecord_stop:Z

.field private mRecording:Landroid/view/MenuItem;

.field private mRecordingAlert:Z

.field private mRecordingFileName:Ljava/lang/String;

.field private mRegisteredForPhoneStates:Z

.field private mRejMsgButton:Landroid/widget/Button;

.field private mRingingCall:Lcom/android/internal/telephony/Call;

.field private final mRingingCallAnimationDuration:I

.field private mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mSC:Landroid/widget/Button;

.field private final mSDCardReceiver:Landroid/content/BroadcastReceiver;

.field private mSPKTV:Landroid/widget/ToggleButton;

.field mSaveButtonFrame:Landroid/view/View;

.field private mScrBrightSetting:Landroid/view/MenuItem;

.field private mSeekBarSelection:I

.field mSendMsgButton:Landroid/widget/Button;

.field private mShowCallLogAfterDisconnect:Z

.field private mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

.field private mSpeaker:Landroid/view/MenuItem;

.field private mStop:Landroid/view/MenuItem;

.field private mStopRecording:Landroid/widget/Button;

.field private mSuccessToastNotRequired:Z

.field private mSuppServiceFailureDialog:Landroid/app/AlertDialog;

.field private mSwitchHDSet:Landroid/view/MenuItem;

.field private mSwitchPHSet:Landroid/view/MenuItem;

.field private mTestCloseCheck:Z

.field private mToast:Landroid/widget/Toast;

.field private mToastExecuteOnceForDevicePolicyManager:Z

.field mUpdateButton:Landroid/widget/Button;

.field private mVTManager:Lsiso/vt/VTManager;

.field private mVTStatusText:Landroid/widget/TextView;

.field private mVTcalltype:I

.field private mVideoCallButton:Landroid/widget/Button;

.field private mVideoCallType:Z

.field private mVideoFileName:Ljava/lang/String;

.field private mVideoPlayer:Landroid/media/MediaPlayer;

.field private mVideoRecordTime:Landroid/widget/TextView;

.field private mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

.field private mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

.field private mVideoRecordTimeNearEnd:Landroid/widget/TextView;

.field private mVideofilePath:Ljava/lang/String;

.field private mVoiceCallButton:Landroid/widget/Button;

.field private mVoiceCallMessage:Ljava/lang/String;

.field private mVtcallElapseTime:Ljava/lang/String;

.field private mWaitPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptDialog:Landroid/app/AlertDialog;

.field protected mZoomSB:Landroid/widget/SeekBar;

.field private mZoomSBPosition:I

.field private mainLayout:Landroid/widget/LinearLayout;

.field private muteFrame:Landroid/widget/FrameLayout;

.field myListener:Lsiso/vt/VTManager$VTStackStateListener;

.field private nearEndImage:Landroid/widget/ImageView;

.field nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

.field protected near_endsurhldr:Landroid/view/SurfaceHolder;

.field protected near_endsurview:Landroid/view/SurfaceView;

.field private nvBottomYPos:I

.field private nvTopYPos:I

.field protected outgoingContactImage:Landroid/widget/ImageView;

.field private phoneForCallNumber:Ljava/lang/String;

.field private rightVerticalLayout:Landroid/widget/LinearLayout;

.field private sdcardState:Ljava/lang/String;

.field private selectImg:Z

.field private selectVideo:Z

.field private showcamera:Z

.field private stopRecordingLayout:Landroid/widget/LinearLayout;

.field private svBottomYPos:I

.field private svTopYPos:I

.field private temptimeforALLOLC:J

.field private temptimeforMRBT:J

.field private timerHandler:Landroid/os/Handler;

.field whiteViewCameraAnimationFarEnd:Landroid/widget/ImageView;

.field whiteViewCameraAnimationNearEnd:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 210
    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    .line 219
    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->VoiceRecorder:Z

    .line 525
    sput-object v2, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    .line 526
    sput-object v2, Lcom/android/phone/InVTCallScreen;->mVideoSelectedFromGalary:Landroid/net/Uri;

    .line 703
    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    .line 829
    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->farend_pressed:Z

    .line 837
    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    .line 1396
    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 3243
    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 3244
    sput-boolean v1, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    .line 8199
    sput-boolean v1, Lcom/android/phone/InVTCallScreen;->mLongPressMenuEnabled:Z

    .line 8200
    sput v0, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 200
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 227
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    .line 228
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    .line 232
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    .line 237
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z

    .line 238
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z

    .line 242
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    .line 246
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    .line 248
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    .line 249
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    .line 251
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    .line 252
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    .line 256
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    .line 259
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallAnimationDuration:I

    .line 265
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->MILLIS_IN_FUTURE:I

    .line 266
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->COUNTDOWN_INTERVAL:I

    .line 267
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->PROGRESS_MAX:I

    .line 268
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mOrientation:I

    .line 418
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    .line 467
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    .line 511
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 513
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    .line 516
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isMTRBstart:Z

    .line 517
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isMTRBend:Z

    .line 518
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isMRBTtime:Z

    .line 519
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isAllOLC:Z

    .line 520
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/InVTCallScreen;->temptimeforMRBT:J

    .line 521
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/InVTCallScreen;->temptimeforALLOLC:J

    .line 522
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->OneSecDelay:I

    .line 523
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVtcallElapseTime:Ljava/lang/String;

    .line 549
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mProviderOverlayVisible:Z

    .line 592
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsDestroyed:Z

    .line 593
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    .line 597
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mPauseInProgress:Z

    .line 616
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mFakeCallVoicePlayer:Landroid/media/MediaPlayer;

    .line 620
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->INCOMING_CALL:I

    .line 621
    iput v6, p0, Lcom/android/phone/InVTCallScreen;->OUTGOING_CALL:I

    .line 622
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->INCOMING_LOCK:I

    .line 623
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->INCOMING_UNLOCK:I

    .line 624
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->OUTGOING_LOCK:I

    .line 625
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->OUTGOING_UNLOCK:I

    .line 626
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->DURINGCALL:I

    .line 627
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->DURINGCALL_LOCK:I

    .line 628
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->DURINGCALL_UNLOCK:I

    .line 631
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    .line 632
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 636
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 638
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 639
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    .line 644
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->CallStopLayoutImage:Landroid/widget/LinearLayout;

    .line 645
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    .line 666
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 670
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z

    .line 672
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 673
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 674
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 676
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mBrightSBPosition:I

    .line 678
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mZoomSBPosition:I

    .line 680
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideoPlayer:Landroid/media/MediaPlayer;

    .line 682
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsplayVideo:Z

    .line 684
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z

    .line 686
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 688
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 689
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mTestCloseCheck:Z

    .line 705
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 780
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->bchangebrightness:Z

    .line 781
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mCameraBrightness:I

    .line 782
    iput v6, p0, Lcom/android/phone/InVTCallScreen;->mCameraContrast:I

    .line 784
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    .line 786
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mZoomSB:Landroid/widget/SeekBar;

    .line 788
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    .line 793
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    .line 799
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    .line 803
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    const-string v1, "mime_type"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->ImgProj:[Ljava/lang/String;

    .line 808
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    .line 810
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 811
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->bitmap:Landroid/graphics/Bitmap;

    .line 812
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 813
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    .line 816
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 817
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->VideoProj:[Ljava/lang/String;

    .line 818
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    .line 819
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->sdcardState:Ljava/lang/String;

    .line 820
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    .line 821
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    .line 822
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    .line 823
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    .line 824
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    .line 825
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    .line 834
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;

    .line 835
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    .line 836
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    .line 846
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    .line 847
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    .line 848
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    .line 849
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideoFileName:Ljava/lang/String;

    .line 850
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mToastExecuteOnceForDevicePolicyManager:Z

    .line 852
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mBeforeMakingCall:Z

    .line 855
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z

    .line 856
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogCameraPopup:Z

    .line 859
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedFilter:Landroid/content/IntentFilter;

    .line 862
    new-instance v0, Lcom/android/phone/InVTCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$1;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 887
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    .line 890
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->FallBackCallNumber:Ljava/lang/String;

    .line 891
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->AcceptByVoiceCallNumber:Ljava/lang/String;

    .line 893
    new-instance v0, Lcom/android/phone/InVTCallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$2;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    .line 1303
    new-instance v0, Lcom/android/phone/InVTCallScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$3;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1326
    new-instance v0, Lcom/android/phone/InVTCallScreen$4;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$4;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    .line 1339
    new-instance v0, Lcom/android/phone/InVTCallScreen$5;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$5;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDeviceManagerPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 1360
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsBatteryLow:Z

    .line 1361
    new-instance v0, Lcom/android/phone/InVTCallScreen$6;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$6;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 2853
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 8541
    new-instance v0, Lcom/android/phone/InVTCallScreen$25;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$25;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 8773
    new-instance v0, Lcom/android/phone/InVTCallScreen$26;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$26;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->myListener:Lsiso/vt/VTManager$VTStackStateListener;

    .line 9646
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isCaptureFarEnd:Z

    .line 10783
    new-instance v0, Lcom/android/phone/InVTCallScreen$51;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$51;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSBChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 11724
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    .line 11729
    new-instance v0, Lcom/android/phone/InVTCallScreen$54;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$54;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    return-void
.end method

.method private DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V
    .locals 0

    .prologue
    .line 6537
    return-void
.end method

.method private DisplayWaitingCallDialogWhenHaveHoldingCall()V
    .locals 10

    .prologue
    const v7, 0x7f0d02ba

    const-string v6, ")"

    const-string v5, "("

    const-string v8, " "

    .line 6542
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 6543
    const-string v0, "InVTCallScreen: Waiting Call Dialog 2"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6546
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6548
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6551
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 6553
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 6554
    if-nez v2, :cond_6

    .line 6555
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 6581
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6583
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    .line 6584
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    .line 6586
    const/4 v1, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 6588
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0d02bf

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 6589
    new-instance v0, Lcom/android/phone/InVTCallScreen$19;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$19;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6609
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030051

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 6611
    const v0, 0x7f08018e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6613
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d02c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6615
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 6616
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 6617
    return-void

    .line 6557
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6559
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 6561
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 6562
    if-nez v1, :cond_5

    .line 6563
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 6564
    :goto_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 6565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d02c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 6568
    goto/16 :goto_0

    .line 6570
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 6572
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    .line 6574
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 6575
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 6576
    if-nez v2, :cond_4

    .line 6577
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 6578
    :goto_2
    if-nez v3, :cond_3

    .line 6579
    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_0

    :cond_3
    move-object v1, v0

    move-object v0, v3

    goto/16 :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1

    :cond_6
    move-object v0, v2

    goto/16 :goto_0
.end method

.method private GetValidFileName(Z)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const-string v5, "yyyy-MM-dd kk.mm.ss"

    const-string v4, "VT"

    const-string v3, "/"

    .line 11228
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 11229
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 11231
    if-eqz p1, :cond_0

    .line 11232
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "VT"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "yyyy-MM-dd kk.mm.ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v5, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".3gp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11235
    :goto_0
    const-string v1, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11236
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11234
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "VT"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "yyyy-MM-dd kk.mm.ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v5, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogCameraPopup:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    return v0
.end method

.method static synthetic access$10000(Lcom/android/phone/InVTCallScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->contextMenuSelected(I)V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/phone/InVTCallScreen;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogCameraPopup:Z

    return p1
.end method

.method static synthetic access$10200(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->selectVideoFromMyFiles()V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingNearEndView()V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    return v0
.end method

.method static synthetic access$10402(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    return p1
.end method

.method static synthetic access$10502(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->mCameraBrightness:I

    return p1
.end method

.method static synthetic access$10600(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->bchangebrightness:Z

    return v0
.end method

.method static synthetic access$10602(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->bchangebrightness:Z

    return p1
.end method

.method static synthetic access$10700(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    return v0
.end method

.method static synthetic access$10802(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->mCameraContrast:I

    return p1
.end method

.method static synthetic access$10900(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InVTCallScreen$BrightZoomTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    return-void
.end method

.method static synthetic access$11000(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->brightOwnImage()V

    return-void
.end method

.method static synthetic access$11100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$11200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$11300(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->switchCamera()V

    return-void
.end method

.method static synthetic access$11400(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    return v0
.end method

.method static synthetic access$11402(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    return p1
.end method

.method static synthetic access$11408(Lcom/android/phone/InVTCallScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    return v0
.end method

.method static synthetic access$11500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/InVTCallScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/phone/InVTCallScreen;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$1902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissContextDailogBox()V

    return-void
.end method

.method static synthetic access$2002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    return-void
.end method

.method static synthetic access$2400()Z
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    return v0
.end method

.method static synthetic access$2402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/phone/InVTCallScreen;Lsiso/vt/VTManager;)Lsiso/vt/VTManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onMMICancel()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->fillMenuArrayList()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;C)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InVTCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->FallBackCallNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/phone/InVTCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/phone/InVTCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mProviderOverlayVisible:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallTouchUi()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->bailOutAfterErrorDialog()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateSelectedImageFromGallery()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/phone/InVTCallScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    return-void
.end method

.method static synthetic access$4202(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateSelectedVideoFromGallery()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsplayVideo:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager$MiscPolicy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    return-void
.end method

.method static synthetic access$5902(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mIsBatteryLow:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->performBatteryLowProcess()V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/phone/InVTCallScreen;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/android/phone/InVTCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z

    return v0
.end method

.method static synthetic access$6602(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z

    return p1
.end method

.method static synthetic access$6700(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z

    return v0
.end method

.method static synthetic access$6702(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z

    return p1
.end method

.method static synthetic access$6800()I
    .locals 1

    .prologue
    .line 200
    sget v0, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    return v0
.end method

.method static synthetic access$6802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    sput p0, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    return p0
.end method

.method static synthetic access$6808()I
    .locals 2

    .prologue
    .line 200
    sget v0, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    return v0
.end method

.method static synthetic access$6900()Z
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->mLongPressMenuEnabled:Z

    return v0
.end method

.method static synthetic access$6902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->mLongPressMenuEnabled:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->svTopYPos:I

    return v0
.end method

.method static synthetic access$7002(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->svTopYPos:I

    return p1
.end method

.method static synthetic access$7100(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->svBottomYPos:I

    return v0
.end method

.method static synthetic access$7102(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->svBottomYPos:I

    return p1
.end method

.method static synthetic access$7200(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->nvTopYPos:I

    return v0
.end method

.method static synthetic access$7202(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->nvTopYPos:I

    return p1
.end method

.method static synthetic access$7300(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->nvBottomYPos:I

    return v0
.end method

.method static synthetic access$7302(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->nvBottomYPos:I

    return p1
.end method

.method static synthetic access$7400(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->swipeSurfaceView()V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    return v0
.end method

.method static synthetic access$7602(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7700(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDownUppos:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDownUpposBlurOff:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z

    return v0
.end method

.method static synthetic access$8100(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    return v0
.end method

.method static synthetic access$8400(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateOwnImageStatus()V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/phone/InVTCallScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->updateEndcallButtonState(Z)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/phone/InVTCallScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9000(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z

    return p1
.end method

.method static synthetic access$9100(Lcom/android/phone/InVTCallScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    return v0
.end method

.method static synthetic access$9202(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    return p1
.end method

.method static synthetic access$9300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$9302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$9402(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isMTRBstart:Z

    return p1
.end method

.method static synthetic access$9502(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isMTRBend:Z

    return p1
.end method

.method static synthetic access$9600(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9602(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9700(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    return v0
.end method

.method static synthetic access$9702(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    return p1
.end method

.method static synthetic access$9802(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isAllOLC:Z

    return p1
.end method

.method static synthetic access$9900(Lcom/android/phone/InVTCallScreen;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    return-object v0
.end method

.method private bailOutAfterErrorDialog()V
    .locals 1

    .prologue
    .line 6341
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 6342
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 6343
    const-string v0, "bailOutAfterErrorDialog: DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6344
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 6347
    :cond_1
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    .line 6348
    const-string v0, "bailOutAfterErrorDialog(): end InVTCallScreen session..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6349
    :cond_2
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_3

    .line 6350
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 6356
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->finish()V

    .line 6357
    return-void

    .line 6352
    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 6354
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    goto :goto_0
.end method

.method private batteryCheck()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "/sys/class/power_supply/battery/charging_source"

    .line 1841
    .line 1842
    const-string v0, "/sys/class/power_supply/battery/charging_source"

    .line 1845
    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 1849
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "batteryCheck !!!"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1852
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/sys/class/power_supply/battery/charging_source"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1859
    :goto_0
    if-eqz v1, :cond_d

    .line 1860
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 1861
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    move v1, v2

    .line 1864
    :goto_1
    if-eqz v1, :cond_2

    .line 1865
    new-instance v2, Ljava/lang/String;

    sub-int/2addr v1, v5

    invoke-direct {v2, v0, v4, v1}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v2

    .line 1870
    :goto_2
    if-nez v0, :cond_4

    move v0, v5

    .line 1904
    :goto_3
    return v0

    .line 1853
    :catch_0
    move-exception v1

    .line 1854
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charging_source FileNotFoundException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1856
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v1, v6

    goto :goto_0

    .line 1867
    :cond_2
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "batteryCheck : read in length is 0.."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_3
    move-object v0, v6

    goto :goto_2

    .line 1873
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1875
    if-nez v0, :cond_b

    .line 1876
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "Charging source is a battery"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_5
    move v0, v4

    move v1, v4

    .line 1879
    :goto_4
    const/4 v2, 0x5

    if-ge v0, v2, :cond_7

    .line 1880
    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->getVoltage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    add-int/2addr v1, v2

    .line 1879
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1882
    :catch_1
    move-exception v0

    .line 1883
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "IOException error"

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1885
    :cond_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1888
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1891
    div-int/lit8 v1, v1, 0x5

    if-gt v1, v0, :cond_9

    .line 1892
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "Low battery"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_8
    move v0, v4

    .line 1893
    goto :goto_3

    .line 1896
    :cond_9
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "It\'s an enough battery to use a VT"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_a
    move v0, v5

    .line 1898
    goto/16 :goto_3

    .line 1902
    :cond_b
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "Charging source is a TA or USB"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_c
    move v0, v5

    .line 1904
    goto/16 :goto_3

    :cond_d
    move v1, v4

    goto/16 :goto_1
.end method

.method private brightOwnImage()V
    .locals 3

    .prologue
    .line 10439
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is inside brightOwnImage and brightening by factor -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/InVTCallScreen;->mBrightSBPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10443
    return-void
.end method

.method private button_initialize()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    const-string v10, "InVTCallScreen"

    const-string v8, ""

    .line 7795
    const-string v0, "InVTCallScreen"

    const-string v0, "Enter button_initialize"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7796
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    sparse-switch v0, :sswitch_data_0

    .line 8194
    :cond_0
    :goto_0
    const-string v0, "InVTCallScreen"

    const-string v0, "Exit button_initialize"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8195
    return-void

    .line 7799
    :sswitch_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 7800
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setRingingCallFrameAni()V

    .line 7802
    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    .line 7803
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    const v1, 0x7f0d02fa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7808
    const v0, 0x7f080182

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    .line 7809
    const v0, 0x7f080183

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthRemainedDays:Landroid/widget/TextView;

    .line 7810
    const v0, 0x7f080181

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayLayout:Landroid/widget/LinearLayout;

    .line 7813
    const v0, 0x7f0800d4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    .line 7814
    const v0, 0x7f08007e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    .line 7815
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    .line 7816
    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    .line 7834
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7835
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7838
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 7839
    if-eqz v0, :cond_2

    .line 7840
    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V

    .line 7842
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 7844
    if-eqz v0, :cond_7

    .line 7845
    const-string v1, "display_sns_info"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 7846
    iget v1, v0, Lcom/android/internal/telephony/CallerInfo;->snsAccountType:I

    packed-switch v1, :pswitch_data_0

    .line 7858
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7859
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7861
    :goto_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7862
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7875
    :goto_2
    const-string v1, "display_birthday_info"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_1

    .line 7876
    iget-wide v1, v0, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 7877
    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "%d"

    aput-object v2, v1, v6

    .line 7878
    new-array v2, v9, [Ljava/lang/String;

    iget-wide v3, v0, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 7879
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    long-to-int v4, v4

    aget-object v3, v3, v4

    .line 7880
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mBirthRemainedDays:Landroid/widget/TextView;

    invoke-static {v3, v1, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7881
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7882
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7886
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const v3, 0x7f020163

    invoke-static {v1, v2, v0, v3}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 7921
    :cond_2
    :goto_3
    const-string v0, "InVTCallScreen"

    const-string v0, "Incomming Lock Screen Draw"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7922
    const v0, 0x7f080187

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingSlidingWidget;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    .line 7923
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingSlidingWidget;->initialize(Ljava/lang/Object;)V

    .line 7926
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1, v9}, Lcom/android/phone/IncomingSlidingWidget;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 7927
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    invoke-virtual {v0, v6}, Lcom/android/phone/IncomingSlidingWidget;->setVisibility(I)V

    .line 7931
    const v0, 0x7f08018a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRejMsgButton:Landroid/widget/Button;

    .line 7932
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRejMsgButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 7933
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRejMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7935
    :cond_3
    const v0, 0x7f080189

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAcceptbyVoiceCallButton:Landroid/widget/Button;

    .line 7937
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAcceptbyVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 7938
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAcceptbyVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7939
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 7941
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 7943
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v0, v2, :cond_5

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v0, v2, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    sget-boolean v0, Lcom/android/phone/PhoneApp;->isLAWMOLocked:Z

    if-eqz v0, :cond_0

    .line 7947
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRejMsgButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7949
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAcceptbyVoiceCallButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 7849
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7850
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    const v2, 0x7f020310

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 7852
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7853
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    const v2, 0x7f020311

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 7855
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7856
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    const v2, 0x7f020312

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 7864
    :cond_6
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7865
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7866
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7867
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 7908
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7910
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 7913
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7914
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7915
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 7956
    :sswitch_1
    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    .line 7957
    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthRemainedDays:Landroid/widget/TextView;

    .line 7958
    const v0, 0x7f0800cf

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayLayout:Landroid/widget/LinearLayout;

    .line 7961
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 7962
    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    .line 7963
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    const v1, 0x7f0d030b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7964
    const v0, 0x7f0800d4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    .line 7965
    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    .line 7967
    const v0, 0x7f08007e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    .line 7968
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    .line 7970
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7971
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7972
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 7973
    const-string v0, "InVTCallScreen"

    const-string v0, "In Locked outgoing condn"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8027
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 8028
    if-eqz v0, :cond_0

    .line 8030
    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V

    .line 8032
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 8033
    const-string v1, "display_sns_info"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz v0, :cond_e

    iget-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_e

    .line 8034
    const-string v1, "calling birthday icon for outgoing call"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 8035
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    const-string v1, "display_birthday_info"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-wide v1, v0, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    .line 8036
    const-string v1, "calling birthday icon for outgoing call"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 8038
    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "%d"

    aput-object v2, v1, v6

    .line 8039
    new-array v2, v9, [Ljava/lang/String;

    iget-wide v3, v0, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 8040
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    long-to-int v4, v4

    aget-object v3, v3, v4

    .line 8041
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mBirthRemainedDays:Landroid/widget/TextView;

    invoke-static {v3, v1, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8042
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8043
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8046
    :cond_9
    iget v1, v0, Lcom/android/internal/telephony/CallerInfo;->snsAccountType:I

    packed-switch v1, :pswitch_data_1

    .line 8058
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8059
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 8061
    :goto_5
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8062
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8069
    :goto_6
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 8071
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const v3, 0x7f020163

    invoke-static {v1, v2, v0, v3}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    goto/16 :goto_0

    .line 7980
    :cond_a
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    .line 7982
    const-string v0, "InVTCallScreen"

    const-string v0, "In unLocked outgoing condn"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7983
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_b

    .line 7984
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 7987
    :cond_b
    const v0, 0x7f080083

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    .line 7988
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_c

    .line 7989
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7990
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7992
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 7993
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 8008
    :cond_c
    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    .line 8009
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    if-eqz v0, :cond_d

    .line 8011
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8012
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8015
    :cond_d
    const v0, 0x7f0800be

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    .line 8016
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    if-eqz v0, :cond_8

    .line 8018
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8019
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8020
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 8021
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    goto/16 :goto_4

    .line 8049
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8050
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    const v2, 0x7f020310

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 8052
    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8053
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    const v2, 0x7f020311

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 8055
    :pswitch_5
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8056
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    const v2, 0x7f020312

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 8064
    :cond_e
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8065
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8066
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 8067
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 8093
    :cond_f
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 8094
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8095
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8096
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 8109
    :sswitch_2
    iput v6, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 8110
    const-string v0, "InVTCallScreen"

    const-string v0, "In DURINGCALL condn button initialize"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8111
    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    .line 8112
    const v0, 0x7f080177

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    .line 8113
    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    .line 8114
    const v0, 0x7f0800be

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    .line 8115
    const v0, 0x7f0800c7

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    .line 8116
    const v0, 0x7f080083

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    .line 8117
    const v0, 0x7f0800bf

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    .line 8119
    const v0, 0x7f08007e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    .line 8120
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    .line 8121
    const v0, 0x7f0800bc

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    .line 8123
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8124
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8128
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 8129
    if-eqz v0, :cond_10

    .line 8130
    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V

    .line 8134
    :cond_10
    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    .line 8136
    const v0, 0x7f0800c2

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    .line 8137
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8139
    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    .line 8140
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8145
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    .line 8146
    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    .line 8147
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8148
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8149
    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    .line 8150
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8151
    const v0, 0x7f0800bb

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    .line 8152
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8154
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_11

    .line 8155
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 8159
    :cond_11
    const v0, 0x7f0800ba

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    .line 8160
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8161
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8162
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8163
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    if-eqz v0, :cond_12

    .line 8164
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8165
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8170
    :cond_12
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    if-eqz v0, :cond_13

    .line 8171
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8172
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8174
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 8175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 8177
    :cond_13
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_14

    .line 8178
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8179
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8181
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8182
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 8184
    :cond_14
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_15

    .line 8185
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStartRecordingUI()V

    .line 8187
    :cond_15
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_16

    .line 8188
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStartRecordingUIForNearEnd()V

    .line 8190
    :cond_16
    const-string v0, "InVTCallScreen"

    const-string v0, "Exit DURINGCALL condn button initialize"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7796
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch

    .line 7846
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 8046
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private cancelRecordingFarEndView()V
    .locals 3

    .prologue
    const/16 v2, 0x7e

    .line 11369
    const-string v0, "InVTCallScreen"

    const-string v1, "In cancelRecordingFarEndView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11370
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 11373
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStopRecordingUI()V

    .line 11374
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 11375
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11376
    const v0, 0x7f0d031f

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    .line 11377
    return-void
.end method

.method private cancelRecordingNearEndView()V
    .locals 2

    .prologue
    .line 11422
    const-string v0, "InVTCallScreen"

    const-string v1, "In cancelRecordingNearEndView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11423
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 11424
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->CancelRecording()V

    .line 11425
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11426
    return-void
.end method

.method private capture_farend_view(J)V
    .locals 8
    .parameter

    .prologue
    const/16 v6, 0x7e

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "InVTCallScreen"

    .line 11275
    const-string v0, "InVTCallScreen"

    const-string v0, "In capture_farend_view method"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11276
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->checkStorageMemorySpace(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11277
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    .line 11279
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->imageCaptureAnimation()V

    .line 11280
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11281
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x80

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11282
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 11283
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11284
    const v0, 0x7f0d02f7

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    .line 11285
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    .line 11286
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capture File Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11288
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    .line 11289
    const-string v0, "data/data/com.android.phone/files/video_call_capture.jpg"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    .line 11290
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 11291
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11294
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lsiso/vt/VTManager;->CaptureImage(Ljava/lang/String;Z)V

    .line 11296
    new-array v0, v5, [Ljava/lang/String;

    .line 11297
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    aput-object v1, v0, v4

    .line 11298
    const/4 v1, 0x0

    new-instance v2, Lcom/android/phone/InVTCallScreen$53;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$53;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-static {p0, v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 11307
    :goto_0
    return-void

    .line 11305
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_0
.end method

.method private capture_nearend_view(J)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 11246
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->imageCaptureAnimation()V

    .line 11247
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11248
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x80

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11249
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 11250
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11251
    const-string v0, "InVTCallScreen"

    const-string v1, "In capture_nearend_view method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11252
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    .line 11253
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 11254
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 11255
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 11256
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    .line 11257
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lsiso/vt/VTManager;->CaptureImage(Ljava/lang/String;Z)V

    .line 11259
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 11260
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    aput-object v1, v0, v4

    .line 11261
    const/4 v1, 0x0

    new-instance v2, Lcom/android/phone/InVTCallScreen$52;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$52;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-static {p0, v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 11268
    :cond_0
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z

    .line 11269
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    .line 11272
    return-void
.end method

.method private changeImgSize(I)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v1, "InVTCallScreen"

    .line 10446
    packed-switch p1, :pswitch_data_0

    .line 10485
    :cond_0
    :goto_0
    return-void

    .line 10448
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 10449
    const-string v0, "InVTCallScreen"

    const-string v0, "This is inside ChangeImage for Caller Image with Small size -- "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10453
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->farEndImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10454
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 10455
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 10463
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 10464
    const-string v0, "InVTCallScreen"

    const-string v0, "This is inside ChangeImage for Caller Image with Large size --"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10467
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 10468
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->farEndImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10469
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 10470
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x16b

    const/16 v3, 0x110

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 10474
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->farEndImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10475
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 10476
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x1b4

    const/16 v3, 0x146

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 10446
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkForCleanupState()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5445
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 5446
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 5458
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 5449
    goto :goto_0

    .line 5451
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_3

    .line 5452
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 5453
    goto :goto_0

    :cond_2
    move v0, v2

    .line 5455
    goto :goto_0

    :cond_3
    move v0, v2

    .line 5458
    goto :goto_0
.end method

.method private checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 3
    .parameter "state"

    .prologue
    .line 5424
    packed-switch p1, :pswitch_data_0

    .line 5440
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ServiceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5427
    :pswitch_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 5438
    :goto_0
    return-object v0

    .line 5431
    :pswitch_1
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 5438
    :pswitch_2
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 5424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkStorageMemorySpace(Z)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 11191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11192
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11193
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 11194
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 11195
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v4, v0

    .line 11196
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 11197
    mul-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    .line 11198
    const-string v2, "InVTCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Memory Size Avialable is in Kb : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11199
    if-eqz p1, :cond_1

    .line 11200
    const-wide/16 v2, 0x3c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    move v0, v7

    .line 11222
    :goto_0
    return v0

    :cond_0
    move v0, v6

    .line 11210
    goto :goto_0

    .line 11213
    :cond_1
    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    move v0, v7

    .line 11214
    goto :goto_0

    :cond_2
    move v0, v6

    .line 11222
    goto :goto_0
.end method

.method private contextMenuSelected(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "InVTCallScreen"

    .line 9648
    const-string v0, "InVTCallScreen"

    const-string v0, "In CallVtScreen contextMenuSelected method"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9649
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 9650
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 9652
    const-string v2, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this is inside contextMenuSelected and selected item is -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9675
    aget-object v2, v1, p1

    const v3, 0x7f0d02e8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9677
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 9678
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    .line 9856
    :cond_0
    :goto_0
    return-void

    .line 9681
    :cond_1
    aget-object v2, v1, p1

    const v3, 0x7f0d0495

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9684
    const-string v0, "InVTCallScreen"

    const-string v0, "Adjust contrast in CallVtScreen contextMenuSelected method"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9685
    iput v8, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 9686
    invoke-direct {p0, v8}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto :goto_0

    .line 9690
    :cond_2
    aget-object v2, v1, p1

    const v3, 0x7f0d02e9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 9692
    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    if-eqz v2, :cond_4

    .line 9695
    add-int/lit8 v2, p1, 0x1

    aget-object v2, v1, v2

    const v3, 0x7f0d02ea

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9697
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 9698
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 9699
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9700
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v7, v8}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto :goto_0

    .line 9701
    :cond_3
    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    const v2, 0x7f0d02eb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9704
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 9705
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 9706
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9707
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v7, v4}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto :goto_0

    .line 9710
    :cond_4
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 9711
    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto :goto_0

    .line 9713
    :cond_5
    aget-object v2, v1, p1

    const v3, 0x7f0d02ea

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9715
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    if-eqz v0, :cond_0

    .line 9716
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 9717
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 9718
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9719
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v7, v8}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto/16 :goto_0

    .line 9724
    :cond_6
    aget-object v2, v1, p1

    const v3, 0x7f0d02eb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 9726
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 9727
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 9728
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9729
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v7, v4}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto/16 :goto_0

    .line 9730
    :cond_7
    aget-object v2, v1, p1

    const v3, 0x7f0d02ed

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    aget-object v2, v1, p1

    const v3, 0x7f0d02ee

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 9734
    :cond_8
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z

    .line 9735
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->changeImgSize(I)V

    goto/16 :goto_0

    .line 9736
    :cond_9
    aget-object v2, v1, p1

    const v3, 0x7f0d02ef

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    aget-object v2, v1, p1

    const v3, 0x7f0d02f0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 9740
    :cond_a
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z

    .line 9741
    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->changeImgSize(I)V

    goto/16 :goto_0

    .line 9742
    :cond_b
    aget-object v2, v1, p1

    const v3, 0x7f0d02f1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    if-nez v2, :cond_c

    .line 9744
    const-string v0, "InVTCallScreen"

    const-string v0, "This is inside capture context menu selected"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9748
    const-string v0, "InVTCallScreen"

    const-string v0, "Capture Image called for Farend view"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9749
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->capture_farend_view(J)V

    goto/16 :goto_0

    .line 9756
    :cond_c
    aget-object v2, v1, p1

    const v3, 0x7f0d02f2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 9758
    const-string v0, "InVTCallScreen"

    const-string v0, "This is inside record video for far end or near end"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9760
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    if-eqz v0, :cond_d

    .line 9761
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingNearEndView()V

    goto/16 :goto_0

    .line 9763
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V

    goto/16 :goto_0

    .line 9767
    :cond_e
    aget-object v2, v1, p1

    const v3, 0x7f0d030d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 9769
    const-string v0, "InVTCallScreen"

    const-string v0, "In image option item"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9770
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    .line 9772
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->selectImageFromMyFiles()V

    goto/16 :goto_0

    .line 9776
    :cond_f
    aget-object v2, v1, p1

    const v3, 0x7f0d030e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 9778
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mIsplayVideo:Z

    .line 9779
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    .line 9781
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "videoAlertShowNeverAgain"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 9782
    if-nez v0, :cond_10

    .line 9783
    const-string v0, "InVTCallScreen"

    const-string v0, "selectVideoFromMyFiles:: Video Dialog Shown"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9784
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 9786
    :cond_10
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->selectVideoFromMyFiles()V

    goto/16 :goto_0

    .line 9789
    :cond_11
    aget-object v2, v1, p1

    const v3, 0x7f0d030f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    if-eqz v2, :cond_12

    .line 9791
    const-string v0, "InVTCallScreen"

    const-string v0, "This is inside capt_img context menu selected"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9793
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 9794
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 9795
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 9796
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    .line 9798
    const-string v0, "InVTCallScreen"

    const-string v0, "Capture Image called for Nearend view"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9799
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->capture_nearend_view(J)V

    .line 9800
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isDisableCloseCamera:Z

    goto/16 :goto_0

    .line 9803
    :cond_12
    aget-object v2, v1, p1

    const v3, 0x7f0d02da

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 9806
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 9807
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isDisableCloseCamera:Z

    .line 9810
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 9811
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9812
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->sendLiveVideo()V

    goto/16 :goto_0

    .line 9814
    :cond_13
    aget-object v2, v1, p1

    const v3, 0x7f0d0310

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 9816
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 9817
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    goto/16 :goto_0

    .line 9819
    :cond_14
    aget-object v2, v1, p1

    const v3, 0x7f0d0311

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 9821
    const-string v0, "InVTCallScreen"

    const-string v0, "Preset Image is being called"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9822
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    goto/16 :goto_0

    .line 9825
    :cond_15
    aget-object v2, v1, p1

    const v3, 0x7f0d0312

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 9828
    const-string v0, "InVTCallScreen"

    const-string v0, "Show camera is called"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9829
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    .line 9830
    const-string v0, "InVTCallScreen"

    const-string v0, "Calling surfaceview_init"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9831
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    goto/16 :goto_0

    .line 9836
    :cond_16
    aget-object v2, v1, p1

    const v3, 0x7f0d02e7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 9837
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    .line 9838
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e7

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9841
    :cond_17
    aget-object v1, v1, p1

    const v2, 0x7f0d02e3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9842
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_18

    .line 9843
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 9851
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 9845
    :cond_18
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    if-nez v0, :cond_19

    .line 9846
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingWithPresetImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1

    .line 9848
    :cond_19
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImageHideMe:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1
.end method

.method private continueOnDisconnection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1440
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 1443
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;

    iget-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-virtual {v0, p0, v2}, Lcom/android/phone/CallNotifier;->continueDisconnectionAfterVTStackCleanup(Landroid/os/AsyncResult;Z)V

    .line 1445
    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 1454
    return-void
.end method

.method private createDefaultImages()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1739
    .line 1745
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1747
    const v1, 0x7f0203a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v1

    .line 1749
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "data/data/com.android.phone/files/video_call_recording_start.jpg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1751
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1753
    const-string v2, "video_call_recording_start.jpg"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/InVTCallScreen;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1761
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    .line 1763
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    .line 1765
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1777
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1781
    :cond_0
    const v2, 0x7f02039f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 1783
    :try_start_4
    new-instance v2, Ljava/io/File;

    const-string v3, "data/data/com.android.phone/files/video_call_capture.jpg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1785
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1787
    const-string v2, "video_call_capture.jpg"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/InVTCallScreen;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v2

    .line 1795
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    .line 1797
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    .line 1799
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_6

    .line 1811
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1825
    :cond_1
    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1827
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .line 1837
    :cond_3
    :goto_2
    return-void

    .line 1767
    :catch_0
    move-exception v3

    .line 1769
    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    .line 1815
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v1, v4

    .line 1817
    :goto_3
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1825
    if-eqz v2, :cond_4

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1827
    :cond_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    .line 1829
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1771
    :catch_3
    move-exception v3

    .line 1773
    :try_start_b
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_0

    .line 1823
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v1, v4

    .line 1825
    :goto_4
    if-eqz v2, :cond_5

    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1827
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 1833
    :cond_6
    :goto_5
    throw v0

    .line 1801
    :catch_4
    move-exception v3

    .line 1803
    :try_start_d
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1815
    :catch_5
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .line 1805
    :catch_6
    move-exception v3

    .line 1807
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_1

    .line 1823
    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    .line 1829
    :catch_7
    move-exception v1

    goto :goto_5

    .line 1823
    :catchall_2
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4

    .line 1815
    :catch_8
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    goto :goto_3

    .line 1829
    :catch_9
    move-exception v0

    goto :goto_2
.end method

.method private delayedCleanupAfterDisconnect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5491
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 5493
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->checkForCleanupState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5495
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 5496
    const-string v0, "- delayedCleanupAfterDisconnect: phone is idle..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5521
    :cond_0
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    .line 5522
    const-string v0, "After internalHangup call the calllog -Exit"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5523
    :cond_1
    iput-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    .line 5524
    iput v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 5525
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    .line 5536
    :cond_2
    :goto_0
    iput v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 5537
    iput-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    .line 5541
    return-void

    .line 5529
    :cond_3
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    .line 5530
    const-string v0, "- delayedCleanupAfterDisconnect: staying on the InVTCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5531
    :cond_4
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    .line 5532
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0
.end method

.method private dismissAllDialogs()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6366
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 6367
    const-string v0, "dismissAllDialogs()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6374
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 6377
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6378
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 6380
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 6383
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6384
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 6386
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 6389
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6390
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 6392
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 6395
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6396
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 6398
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 6401
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6402
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 6404
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 6407
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6408
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 6410
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 6413
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6414
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 6416
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v0, v1, :cond_8

    .line 6421
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a

    .line 6422
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    .line 6423
    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6424
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6425
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 6427
    :cond_a
    return-void
.end method

.method private dismissContextDailogBox()V
    .locals 1

    .prologue
    .line 3743
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3744
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3745
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    .line 3747
    :cond_0
    return-void
.end method

.method private displayToast(I)V
    .locals 1
    .parameter "aResId"

    .prologue
    .line 9168
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 9169
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 9170
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 9172
    :cond_0
    return-void
.end method

.method private enableHideMeState()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v7, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    .line 11663
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 11664
    iput-boolean v9, p0, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    .line 11665
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z

    .line 11666
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preset_name"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11670
    .local v1, preset_Name:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v5, "photo"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Default"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 11672
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preset_path"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11675
    .local v0, presetImageSrc:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableHideMeState ::preset_Name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 11676
    if-eqz v0, :cond_1

    .line 11677
    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    .line 11717
    .end local v0           #presetImageSrc:Ljava/lang/String;
    :goto_0
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    .line 11718
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    .line 11719
    iput-boolean v9, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 11720
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 11721
    iget-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 11723
    return-void

    .line 11679
    .restart local v0       #presetImageSrc:Ljava/lang/String;
    :cond_1
    const-string v5, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    invoke-direct {p0, v7}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    goto :goto_0

    .line 11681
    .end local v0           #presetImageSrc:Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_6

    const-string v5, "video"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6

    .line 11682
    const-string v5, "enableHideMeState ::preset_Name is video"

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 11684
    const/4 v4, 0x0

    .line 11685
    .local v4, videoUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preset_video_path"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11686
    .local v2, uriString:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 11688
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 11689
    if-eqz v4, :cond_4

    .line 11691
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 11692
    .local v3, videoPath:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 11694
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->showVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 11698
    :cond_3
    const-string v5, "enableHideMeState :: video path is null, so setting Default Image "

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 11699
    const-string v5, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    invoke-direct {p0, v7}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    goto :goto_0

    .line 11704
    .end local v3           #videoPath:Ljava/lang/String;
    :cond_4
    const-string v5, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    invoke-direct {p0, v7}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    .line 11705
    const-string v5, "enableHideMeState :: video Uri for video file is Null, so setting Default Image "

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 11708
    :cond_5
    const-string v5, "enableHideMeState :: uri String for video file is Null, so setting Default Image "

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 11709
    const-string v5, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    invoke-direct {p0, v7}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    goto :goto_0

    .line 11713
    .end local v2           #uriString:Ljava/lang/String;
    .end local v4           #videoUri:Landroid/net/Uri;
    :cond_6
    const-string v5, "enableHideMeState ::preset_Name is Null "

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 11714
    const-string v5, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    invoke-direct {p0, v7}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableKeyGuardLock()V
    .locals 3

    .prologue
    .line 2887
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v0, :cond_1

    .line 2898
    :cond_0
    :goto_0
    return-void

    .line 2890
    :cond_1
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value of KeyGuard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    if-eqz v0, :cond_0

    .line 2893
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 2894
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 2895
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    .line 2896
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    goto :goto_0
.end method

.method private fillMenuArrayList()V
    .locals 8

    .prologue
    const v7, 0x7f0d02da

    const v6, 0x7f0d030d

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1695
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1696
    new-array v1, v5, [Ljava/lang/String;

    const v2, 0x7f0d02f1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d02f2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;

    .line 1698
    new-array v1, v5, [Ljava/lang/String;

    const v2, 0x7f0d02e8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d0495

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDownUppos:[Ljava/lang/String;

    .line 1703
    new-array v1, v5, [Ljava/lang/String;

    const v2, 0x7f0d02e8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d0495

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDownUpposBlurOff:[Ljava/lang/String;

    .line 1709
    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d030f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImage:[Ljava/lang/String;

    .line 1712
    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImageHideMe:[Ljava/lang/String;

    .line 1714
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d0311

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingWithPresetImage:[Ljava/lang/String;

    .line 1717
    return-void
.end method

.method private formatTimeString(J)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    .line 11158
    .line 11159
    const-string v0, "%%0%dd"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11160
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    .line 11161
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    rem-long v5, v1, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 11163
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0xe10

    rem-long v6, v1, v6

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 11165
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v7, 0xe10

    div-long/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11168
    return-object v0
.end method

.method private getCallNumber(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 8
    .parameter "call"

    .prologue
    .line 5564
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v5, :cond_2

    .line 5565
    const/4 v1, 0x0

    .line 5566
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 5568
    .local v4, phoneType:I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 5569
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 5576
    :goto_0
    if-eqz v1, :cond_2

    .line 5577
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    .line 5578
    .local v3, o:Ljava/lang/Object;
    instance-of v5, v3, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v5, :cond_2

    .line 5579
    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v2, v0

    .line 5580
    .local v2, info:Lcom/android/internal/telephony/CallerInfo;
    iget-object v5, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 5584
    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    .end local v2           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v3           #o:Ljava/lang/Object;
    .end local v4           #phoneType:I
    :goto_1
    return-object v5

    .line 5570
    .restart local v1       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v4       #phoneType:I
    :cond_0
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 5571
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 5573
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5584
    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    .end local v4           #phoneType:I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    const-string v2, "android.intent.extra.PHONE_NUMBER"

    .line 5152
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5154
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 5155
    const/4 v1, 0x0

    .line 5163
    :goto_0
    return-object v1

    .line 5158
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5160
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5163
    :cond_1
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const-string v3, "_data"

    .line 11629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside getVideoFileNameFromUri condition and file Uri is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 11632
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v3, v2, v0

    .line 11636
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 11637
    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 11639
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11640
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 11641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside getVideoFileNameFromUri condition and file path is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 11654
    :goto_0
    if-eqz v0, :cond_0

    .line 11655
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v1

    .line 11658
    :goto_1
    return-object v0

    .line 11644
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 11654
    :goto_2
    if-eqz v0, :cond_1

    .line 11655
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    goto :goto_1

    .line 11648
    :catch_1
    move-exception v0

    move-object v0, v6

    .line 11654
    :goto_3
    if-eqz v0, :cond_2

    .line 11655
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    goto :goto_1

    .line 11654
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_3

    .line 11655
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 11654
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    .line 11648
    :catch_2
    move-exception v1

    goto :goto_3

    .line 11644
    :catch_3
    move-exception v1

    goto :goto_2

    :cond_4
    move-object v1, v6

    goto :goto_0
.end method

.method private getVoltage()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1908
    const-string v0, "/sys/class/power_supply/battery/capacity"

    .line 1909
    .local v0, BATT_FILE:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1910
    .local v3, in:Ljava/io/InputStream;
    const/16 v7, 0xa

    new-array v1, v7, [B

    .line 1911
    .local v1, buffer:[B
    const/4 v6, 0x0

    .line 1912
    .local v6, value:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1915
    .local v5, length:I
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    const-string v8, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1916
    .end local v3           #in:Ljava/io/InputStream;
    .local v4, in:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 1917
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 1925
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 1926
    new-instance v6, Ljava/lang/String;

    .end local v6           #value:Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x1

    sub-int v8, v5, v8

    invoke-direct {v6, v1, v7, v8}, Ljava/lang/String;-><init>([BII)V

    .line 1929
    .restart local v6       #value:Ljava/lang/String;
    :cond_1
    sget-boolean v7, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v7, :cond_2

    .line 1930
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVoltage value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1932
    :cond_2
    return-object v6

    .line 1918
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 1919
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1921
    sget-boolean v7, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v7, :cond_0

    .line 1922
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileNotFoundException = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1918
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :catch_1
    move-exception v7

    move-object v2, v7

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_1
.end method

.method private handleCallKey()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3332
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    .line 3333
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    .line 3334
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    .line 3336
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 3337
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 3342
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 3343
    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    .line 3345
    if-eqz v0, :cond_2

    .line 3348
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 3349
    const-string v0, "answerCall: First Incoming and Call Waiting scenario"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3350
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    .line 3422
    :cond_1
    :goto_0
    return v5

    .line 3353
    :cond_2
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v0, :cond_4

    if-eqz v1, :cond_4

    .line 3356
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    .line 3357
    const-string v0, "answerCall: Merge 3-way call scenario"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3359
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 3360
    :cond_4
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v0, :cond_1

    .line 3364
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    .line 3365
    const-string v0, "answerCall: Switch btwn 2 calls scenario"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3368
    :cond_5
    if-ne v3, v5, :cond_9

    .line 3369
    if-eqz v0, :cond_6

    .line 3380
    const-string v0, "InVTCallScreen"

    const-string v1, "handleCallKey: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 3390
    :cond_6
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 3392
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    .line 3393
    const-string v0, "handleCallKey: both lines in use ==> swap calls."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3395
    :cond_7
    if-eqz v2, :cond_1

    .line 3398
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_8

    .line 3399
    const-string v0, "handleCallKey: call on hold ==> unhold."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3400
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 3416
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected phone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3240
    const/4 v0, 0x0

    return v0
.end method

.method private handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .locals 6
    .parameter "r"
    .parameter "ch"

    .prologue
    .line 4762
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4764
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 4765
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 4770
    .local v3, state:Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 4771
    .local v1, phoneType:I
    sget-object v4, Lcom/android/phone/InVTCallScreen$55;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 4823
    .end local v1           #phoneType:I
    .end local v3           #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 4788
    .restart local v1       #phoneType:I
    .restart local v3       #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    .line 4797
    .local v2, postDialStr:Ljava/lang/String;
    goto :goto_0

    .line 4771
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleStartupError(Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;)V
    .locals 7
    .parameter

    .prologue
    const v5, 0x7f0d0316

    const v3, 0x7f0d0199

    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string v6, "InVTCallScreen"

    .line 6114
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 6115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartupError(): status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6129
    :cond_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$55;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    invoke-virtual {p1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 6240
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartupError: unexpected status code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6242
    invoke-direct {p0, v3, v2}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    .line 6248
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-ne p1, v0, :cond_2

    .line 6252
    :cond_1
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->EMPTY:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 6254
    :cond_2
    return-void

    .line 6146
    :pswitch_1
    const v0, 0x7f0d0194

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 6153
    :pswitch_2
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "EMERGENCY_ONLY"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6154
    :cond_3
    const v0, 0x7f0d0195

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 6160
    :pswitch_3
    const-string v0, "InVTCallScreen"

    const-string v0, "handleStartupError: unexpected PHONE_NOT_IN_USE status"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6168
    :pswitch_4
    const v0, 0x7f0d0198

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 6181
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_4

    .line 6182
    const v0, 0x7f0d019a

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6185
    :cond_4
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_5

    .line 6186
    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 6192
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->finish()V

    goto :goto_0

    .line 6188
    :cond_5
    sput-boolean v4, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 6190
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    goto :goto_1

    .line 6200
    :pswitch_6
    invoke-direct {p0, v3, v2}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 6205
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usecall_fail_option"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 6211
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 6212
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x309

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0d046c

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 6216
    :cond_6
    if-ne v0, v2, :cond_7

    .line 6217
    const v0, 0x7f0d0300

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 6218
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mBeforeMakingCall:Z

    .line 6219
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 6222
    :cond_7
    invoke-direct {p0, v5, v2}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 6129
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
    .end packed-switch
.end method

.method private hideEndcallbuttonlayout()V
    .locals 3

    .prologue
    const-string v2, "InVTCallScreen"

    .line 10548
    const-string v0, "InVTCallScreen"

    const-string v0, "Inside hideEndcallbuttonlayout"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10549
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value of duringEndCalllayout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10550
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10552
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value of SeekBarLayout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10553
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10554
    const-string v0, "InVTCallScreen"

    const-string v0, "Outside hideEndcallbuttonlayout"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10555
    return-void
.end method

.method private imageCaptureAnimation()V
    .locals 2

    .prologue
    const-string v1, "InVTCallScreen"

    .line 10972
    const-string v0, "InVTCallScreen"

    const-string v0, "imageCaptureAnimation() :: Inside capture image animation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10974
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    if-eqz v0, :cond_3

    .line 10977
    :cond_1
    const-string v0, "InVTCallScreen"

    const-string v0, "imageCaptureAnimation : : capturing near end "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10978
    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    .line 10990
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    .line 10991
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->prepareCaptureAnimation()V

    .line 10993
    return-void

    .line 10980
    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_2

    .line 10982
    :cond_5
    const-string v0, "InVTCallScreen"

    const-string v0, "imageCaptureAnimation : : capturing far end "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10984
    const v0, 0x7f0800a8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private initInVTCallScreen()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const-string v3, "InVTCallScreen"

    .line 3115
    const-string v0, "InVTCallScreen"

    const-string v0, "Inside initInVTCallScreen"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-nez v0, :cond_0

    .line 3117
    invoke-static {}, Lsiso/vt/VTManager;->getInstance()Lsiso/vt/VTManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    .line 3118
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->myListener:Lsiso/vt/VTManager$VTStackStateListener;

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    .line 3121
    :cond_0
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3122
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 3125
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mCameraBrightness:I

    .line 3126
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mCameraContrast:I

    .line 3129
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3130
    const v1, 0x3ea3a3a4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3131
    const-string v1, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init lp.screenBrightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3158
    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->removeDialog(I)V

    .line 3159
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 3160
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3161
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 3162
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V

    .line 3223
    :goto_0
    return-void

    .line 3167
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3168
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V

    .line 3222
    :cond_2
    :goto_1
    const-string v0, "InVTCallScreen"

    const-string v0, "Exit initInVTCallScreen"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3169
    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_4

    .line 3170
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V

    goto :goto_1

    .line 3171
    :cond_4
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v0, v4, :cond_5

    .line 3173
    const-string v0, "InVTCallScreen"

    const-string v0, "In vtoutgoing_main_unlock"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setContentView(I)V

    .line 3175
    const-string v0, "InVTCallScreen"

    const-string v0, "In vtoutgoing_main_unlock : After Inflating screen"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    .line 3179
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V

    .line 3180
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->button_initialize()V

    goto :goto_1

    .line 3188
    :cond_5
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 3196
    const-string v0, "InVTCallScreen"

    const-string v0, "In vtincoming_main_lock"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    const v0, 0x7f03004f

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setContentView(I)V

    .line 3198
    const-string v0, "InVTCallScreen"

    const-string v0, "In vtincoming_main_lock : After Inflating screen"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    .line 3200
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V

    .line 3201
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->button_initialize()V

    goto :goto_1

    .line 3205
    :cond_6
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 3207
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    .line 3208
    const-string v0, "InVTCallScreen"

    const-string v0, "In vtduringcall_main"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setContentView(I)V

    .line 3210
    const-string v0, "InVTCallScreen"

    const-string v0, "In vtduringcall_main : After Inflating screen"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V

    .line 3212
    const-string v0, "After SurfaceView_Initialization."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3213
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->button_initialize()V

    .line 3214
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setupDTMFDialer()V

    .line 3215
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->startDialerSession()V

    .line 3216
    const-string v0, "After Button_Initialization."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3217
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startVTCall()V

    .line 3218
    const-string v0, "After StartVTCall "

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private initvtstack()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const-string v4, "InVTCallScreen"

    .line 2294
    const-string v0, "Init VT Stack get called "

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2295
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-nez v0, :cond_0

    .line 2296
    invoke-static {}, Lsiso/vt/VTManager;->getInstance()Lsiso/vt/VTManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    .line 2298
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->myListener:Lsiso/vt/VTManager$VTStackStateListener;

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    .line 2299
    const-string v0, "Init VT Stack State Listener Registered"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2300
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2301
    const-string v1, "Videocalltype"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    .line 2303
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    if-ne v3, v0, :cond_1

    .line 2304
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incoming VideoCall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 2312
    :goto_0
    return-void

    .line 2308
    :cond_1
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Outgoing VideoCall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    goto :goto_0
.end method

.method private is2GNetwork()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4042
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 4043
    .local v0, currnetRadioTech:I
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Currently connected netwokr Tech. type is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4044
    :cond_0
    if-eq v0, v3, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_1
    move v1, v3

    .line 4051
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchBrightSB(I)V
    .locals 11
    .parameter

    .prologue
    const v10, 0x7f020076

    const v9, 0x7f020075

    const/4 v8, 0x4

    const/4 v7, 0x0

    const-string v6, "InVTCallScreen"

    .line 10674
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This is inside launchBrightSB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCameraBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mCameraBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCameraContrast"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mCameraContrast:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10676
    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->bchangebrightness:Z

    .line 10677
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    if-eqz v0, :cond_0

    .line 10678
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->cancel()V

    .line 10681
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 10682
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 10687
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->hideEndcallbuttonlayout()V

    .line 10689
    new-instance v0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;-><init>(Lcom/android/phone/InVTCallScreen;JJ)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    .line 10690
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->start()Landroid/os/CountDownTimer;

    .line 10691
    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    .line 10692
    const v0, 0x7f080084

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    .line 10693
    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    .line 10695
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    .line 10696
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10697
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10698
    if-nez p1, :cond_4

    .line 10699
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 10701
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mCameraBrightness:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 10708
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10709
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10779
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSBChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 10781
    :cond_3
    return-void

    .line 10712
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 10716
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 10720
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 10727
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 10729
    const-string v2, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lp.screenBrightness : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10731
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 10733
    div-int/lit8 v0, v0, 0x19

    .line 10740
    :goto_2
    const-string v1, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lcdbrighness Changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10743
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 10744
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10745
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 10722
    :catch_0
    move-exception v0

    .line 10724
    const/16 v0, 0xff

    goto :goto_1

    .line 10737
    :cond_5
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v1, 0x4120

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    .line 10750
    :cond_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 10752
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_2

    .line 10754
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    if-eqz v0, :cond_7

    .line 10756
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v0, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 10757
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mCameraContrast:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 10758
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "###################front camera enable Camera contrast value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mCameraContrast:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10766
    :goto_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10767
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 10762
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v0, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 10763
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mCameraContrast:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 10764
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "###################back camera enable Camera contrast value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mCameraContrast:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 10773
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 10774
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1, v7}, Lsiso/vt/VTManager;->GetCameraParams(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 10775
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10776
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    const v1, 0x7f020078

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 10960
    const-string v0, "InVTCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10961
    return-void
.end method

.method private onBluetoothClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5971
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5972
    const-string v0, "isBluetoothAvailable()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5974
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5975
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->disconnectBluetoothAudio()V

    .line 5976
    const-string v0, "disconnectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6009
    :goto_0
    return-void

    .line 5984
    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5989
    const/4 v0, 0x0

    invoke-static {p0, v0, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 5990
    const-string v0, "BT: turnOnSpeaker()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5992
    :cond_1
    const-string v0, "BT: connectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5993
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->connectBluetoothAudio()V

    goto :goto_0

    .line 5998
    :cond_2
    const-string v0, "InVTCallScreen"

    const-string v1, "Got onBluetoothClick, but bluetooth is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6001
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6002
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6006
    const-string v1, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6007
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x4

    const-wide/16 v10, 0x1194

    const/16 v9, 0x6c

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4071
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4072
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 4073
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    .line 4074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnect: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", cause="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4075
    :cond_0
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 4076
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z

    move-result v1

    if-nez v1, :cond_3

    move v3, v8

    .line 4078
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    move v1, v8

    .line 4079
    :goto_1
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v8, :cond_5

    move v4, v8

    .line 4101
    :goto_2
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v5, :cond_1

    .line 4102
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v5}, Lcom/android/phone/CallTime;->stopMinuteMinderAlarm()V

    .line 4105
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    .line 4106
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v6, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v5, v6, :cond_6

    .line 4108
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 4109
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    .line 4688
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v3, v7

    .line 4076
    goto :goto_0

    :cond_4
    move v1, v7

    .line 4078
    goto :goto_1

    :cond_5
    move v4, v7

    .line 4079
    goto :goto_2

    .line 4111
    :cond_6
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v6, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v5, v6, :cond_7

    .line 4113
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    .line 4114
    const-string v0, "onDisconnect: OTA Call end already handled"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 4129
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getNetworkType()V

    .line 4171
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "usecall_fail_option"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 4177
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMPATIBLE_DEST:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v6, :cond_8

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_BEARER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v6, :cond_8

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->BARRER_NOT_ALLOWED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v6, :cond_8

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_RESOURCE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v6, :cond_8

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->is2GNetwork()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 4182
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect: mCMCCCallFailOption:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4183
    const/4 v1, 0x2

    if-ne v5, v1, :cond_a

    .line 4184
    const v1, 0x7f0d0315

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4185
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    .line 4186
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4188
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->FallBackCallNumber:Ljava/lang/String;

    .line 4189
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x309

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4190
    const v0, 0x7f0d046c

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4687
    :goto_4
    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->isCallConnected:Z

    goto/16 :goto_3

    .line 4192
    :cond_a
    if-ne v5, v8, :cond_b

    .line 4193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0d0315

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0d046d

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4195
    invoke-virtual {p0, v12}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_4

    .line 4198
    :cond_b
    const v0, 0x7f0d0315

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4199
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 4200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4202
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 4208
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->is2GNetwork()Z

    move-result v6

    if-eqz v6, :cond_12

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v6, :cond_12

    .line 4210
    const/4 v1, 0x2

    if-ne v5, v1, :cond_f

    .line 4211
    const v1, 0x7f0d0300

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4212
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    .line 4213
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4215
    :cond_e
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->FallBackCallNumber:Ljava/lang/String;

    .line 4216
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x309

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4217
    const v0, 0x7f0d046c

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 4218
    :cond_f
    if-ne v5, v8, :cond_10

    .line 4219
    const v0, 0x7f0d0300

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4220
    invoke-virtual {p0, v12}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4222
    :cond_10
    const v0, 0x7f0d0316

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4223
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    .line 4224
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4226
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4231
    :cond_12
    iget-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isCallConnected:Z

    if-eqz v5, :cond_13

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v5, :cond_13

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v5, :cond_13

    .line 4233
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4236
    :cond_13
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_16

    .line 4238
    if-eqz v7, :cond_14

    .line 4239
    const v0, 0x7f0d02fe

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4240
    invoke-virtual {p0, v12}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4242
    :cond_14
    const v0, 0x7f0d0314

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4243
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    .line 4244
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4247
    :cond_15
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4252
    :cond_16
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_19

    .line 4256
    if-eqz v7, :cond_17

    .line 4257
    const v0, 0x7f0d02fc

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4258
    invoke-virtual {p0, v12}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4261
    :cond_17
    const v0, 0x7f0d0317

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4262
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    .line 4263
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4265
    :cond_18
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4270
    :cond_19
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_1c

    .line 4272
    if-eqz v7, :cond_1a

    .line 4273
    const v0, 0x7f0d02ff

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4274
    invoke-virtual {p0, v12}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4276
    :cond_1a
    const v0, 0x7f0d0315

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4277
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    .line 4278
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4280
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4285
    :cond_1c
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_1f

    .line 4287
    if-eqz v7, :cond_1d

    .line 4288
    const v0, 0x7f0d02ff

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4289
    invoke-virtual {p0, v12}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4291
    :cond_1d
    const v0, 0x7f0d0315

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4292
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_1e

    .line 4293
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4295
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4299
    :cond_1f
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_22

    .line 4301
    if-eqz v7, :cond_20

    .line 4302
    const v0, 0x7f0d02fd

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4303
    invoke-virtual {p0, v12}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4306
    :cond_20
    const v0, 0x7f0d0318

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4307
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 4308
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4310
    :cond_21
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4314
    :cond_22
    iget-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isCallConnected:Z

    if-nez v5, :cond_25

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_25

    .line 4317
    if-eqz v7, :cond_23

    .line 4318
    const v0, 0x7f0d02ff

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4319
    invoke-virtual {p0, v12}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4321
    :cond_23
    const v0, 0x7f0d0315

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4322
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_24

    .line 4323
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4325
    :cond_24
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4329
    :cond_25
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOST_SIGNAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v5, :cond_26

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v5, :cond_26

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v5, :cond_26

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_2a

    .line 4333
    :cond_26
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_27

    .line 4334
    const-string v0, "onDisconnect: Call failed Voice call dialog shown"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4335
    :cond_27
    if-eqz v7, :cond_28

    .line 4336
    const v0, 0x7f0d02ff

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4337
    invoke-virtual {p0, v12}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4339
    :cond_28
    const v0, 0x7f0d0315

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4340
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_29

    .line 4341
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4343
    :cond_29
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4349
    :cond_2a
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_2c

    .line 4350
    const v0, 0x7f0d0474

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4351
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_2b

    .line 4352
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4354
    :cond_2b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4360
    :cond_2c
    sget-boolean v5, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v5, :cond_2d

    .line 4361
    const-string v5, "onDisconnect: do normal operation."

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4362
    :cond_2d
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_2e

    .line 4363
    const v0, 0x7f0d001c

    invoke-direct {p0, v0, v7}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    .line 4365
    :cond_2e
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_2f

    .line 4366
    const v0, 0x7f0d001b

    invoke-direct {p0, v0, v7}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    .line 4368
    :cond_2f
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_30

    .line 4369
    const v0, 0x7f0d001d

    invoke-direct {p0, v0, v7}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    .line 4372
    :cond_30
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_31

    .line 4373
    const v0, 0x7f0d001e

    invoke-direct {p0, v0, v7}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    .line 4376
    :cond_31
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_32

    .line 4377
    const v0, 0x7f0d001f

    invoke-direct {p0, v0, v7}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    .line 4382
    :cond_32
    if-eqz v1, :cond_33

    .line 4383
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 4385
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v5, :cond_3c

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v5, :cond_3c

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v5, :cond_3c

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v5, :cond_3c

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v5, :cond_3c

    .line 4390
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->showCallLostDialog()V

    .line 4420
    :cond_33
    :goto_5
    if-eqz v4, :cond_34

    .line 4421
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->getPreviousGsmCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 4423
    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v4, :cond_40

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v4, :cond_40

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v4, :cond_40

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v4, :cond_40

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v4, :cond_40

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v4, :cond_40

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v4, :cond_40

    .line 4430
    const v1, 0x7f0d002b

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4482
    :cond_34
    :goto_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 4483
    if-eqz v4, :cond_37

    .line 4492
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 4493
    if-eqz v1, :cond_36

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_36

    .line 4494
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 4495
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v6, :cond_35

    .line 4518
    :cond_36
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->stopFakeCallVoice(Lcom/android/internal/telephony/Call;)V

    .line 4523
    :cond_37
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "emergency_call_retry_count"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4534
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_46

    move v0, v8

    :goto_7
    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mShowCallLogAfterDisconnect:Z

    .line 4540
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v0, :cond_38

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v0, :cond_38

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v0, :cond_47

    if-lez v1, :cond_47

    :cond_38
    if-eqz v3, :cond_47

    move v0, v8

    .line 4545
    :goto_8
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    sget-boolean v4, Lcom/android/phone/PhoneApp;->isLAWMOLocked:Z

    if-eqz v4, :cond_39

    .line 4548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLAWMOLocked :"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    sget-boolean v4, Lcom/android/phone/PhoneApp;->isLAWMOLocked:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    move v0, v8

    .line 4552
    :cond_39
    if-eqz v0, :cond_48

    .line 4559
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V

    .line 4563
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v0, :cond_3a

    if-lez v1, :cond_3a

    .line 4565
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 4569
    :cond_3a
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v0, :cond_3b

    .line 4571
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AcceptByVoiceCallNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->AcceptByVoiceCallNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4572
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->AcceptByVoiceCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_3b

    .line 4573
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/AutomaticAcceptAlertDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4574
    const-string v1, "AcceptByVoiceCallNumber"

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->AcceptByVoiceCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4575
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 4576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->AcceptByVoiceCallNumber:Ljava/lang/String;

    .line 4685
    :cond_3b
    :goto_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_4

    .line 4391
    :cond_3c
    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v5, :cond_3d

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v5, :cond_33

    :cond_3d
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_33

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_33

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_33

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_33

    .line 4397
    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    if-eqz v1, :cond_3e

    .line 4401
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->showCallLostDialog()V

    .line 4402
    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_5

    .line 4404
    :cond_3e
    if-nez v7, :cond_3f

    .line 4408
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->showCallLostDialog()V

    .line 4409
    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_5

    .line 4415
    :cond_3f
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_5

    .line 4433
    :cond_40
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v4, :cond_41

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v4, :cond_44

    :cond_41
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_44

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_44

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_44

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_44

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_44

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_44

    .line 4441
    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    if-eqz v1, :cond_42

    .line 4445
    const v1, 0x7f0d002b

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4447
    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_6

    .line 4449
    :cond_42
    if-nez v7, :cond_43

    .line 4453
    const v1, 0x7f0d002b

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4455
    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_6

    .line 4461
    :cond_43
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_6

    .line 4464
    :cond_44
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v1, :cond_45

    .line 4465
    const v1, 0x7f0d000e

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 4467
    :cond_45
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v1, :cond_34

    .line 4468
    const v1, 0x7f0d000f

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    :cond_46
    move v0, v7

    .line 4534
    goto/16 :goto_7

    :cond_47
    move v0, v7

    .line 4540
    goto/16 :goto_8

    .line 4590
    :cond_48
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    .line 4594
    if-eqz v3, :cond_4a

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedFgCall()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedBgCall()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 4596
    :cond_49
    const-string v0, "- onDisconnect: switching to \'Call ended\' state..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4597
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->CALL_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 4602
    :cond_4a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 4603
    if-nez v0, :cond_4e

    .line 4609
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4b

    .line 4612
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4616
    :cond_4b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4c

    .line 4619
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4621
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 4623
    :cond_4c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4e

    .line 4624
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_4d

    .line 4625
    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4626
    :cond_4d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 4651
    :cond_4e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_50

    .line 4652
    if-nez v3, :cond_50

    .line 4659
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 4663
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_4f

    .line 4664
    const-string v0, "onDisconnect: Call Collision case - staying on InVTCallScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4666
    :cond_4f
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    goto/16 :goto_3

    .line 4675
    :cond_50
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v0, :cond_51

    const/16 v0, 0xdac

    .line 4677
    :goto_a
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 4678
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_9

    .line 4675
    :cond_51
    const/16 v0, 0xdac

    goto :goto_a
.end method

.method private onMMICancel()V
    .locals 1

    .prologue
    .line 4735
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    .line 4746
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 4747
    const-string v0, "onMMICancel: finishing InVTCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4748
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    .line 4750
    return-void
.end method

.method private onMMIInitiate(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 4702
    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-nez v2, :cond_0

    .line 4721
    :goto_0
    return-void

    .line 4712
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissAllDialogs()V

    .line 4714
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/MmiCode;

    .line 4718
    .local v1, mmiCode:Lcom/android/internal/telephony/MmiCode;
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x35

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 4719
    .local v0, message:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-static {p0, v1, v0, v2}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private onMuteClick()V
    .locals 2

    .prologue
    .line 5960
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 5961
    .local v0, newMuteState:Z
    :goto_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 5962
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    .line 5963
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 5965
    :cond_0
    return-void

    .line 5960
    .end local v0           #newMuteState:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "r"

    .prologue
    const/4 v2, 0x1

    .line 3953
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 3954
    const-string v0, "onPhoneStateChanged()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3956
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3980
    :goto_0
    return-void

    .line 3963
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_2

    .line 3964
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->updateVTDuringCallWakeState(Z)V

    .line 3970
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_3

    .line 3971
    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->updateKeyguardPolicy(Z)V

    .line 3973
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    goto :goto_0
.end method

.method private onShowHideDialpad()V
    .locals 0

    .prologue
    .line 6019
    return-void
.end method

.method private onSpeakerClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5935
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    .line 5936
    .local v0, newSpeakerState:Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5938
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->disconnectBluetoothAudio()V

    .line 5940
    :cond_0
    invoke-static {p0, v0, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 5955
    return-void

    .line 5935
    .end local v0           #newSpeakerState:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private performBatteryLowProcess()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "InVTCallScreen"

    .line 1398
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsBatteryLow:Z

    if-eqz v0, :cond_0

    .line 1399
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1400
    const-string v0, "InVTCallScreen"

    const-string v0, "Low battery and phone is in use"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 1402
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    .line 1403
    const v0, 0x7f0d0321

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 1408
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1410
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_1

    .line 1411
    const-string v0, "InVTCallScreen"

    const-string v0, "Low battery and VT Already started, so calling stopVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    .line 1413
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    .line 1432
    :cond_0
    :goto_0
    return-void

    .line 1416
    :cond_1
    const-string v0, "InVTCallScreen"

    const-string v0, "Low battery and VT not started so calling internal hangup "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1418
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1419
    sput-boolean v4, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 1420
    const-string v0, "InVTCallScreen"

    const-string v0, "Low battery and incomming call rejected so calling internal hangup "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalHangupRingingCall()V

    goto :goto_0

    .line 1423
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1424
    const-string v0, "InVTCallScreen"

    const-string v0, "Low battery and during or MO call rejected  so calling internal hangup "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 1426
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto :goto_0
.end method

.method private phoneIsInUse()Z
    .locals 2

    .prologue
    .line 3231
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private placeCall(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 7
    .parameter

    .prologue
    const-string v6, "\'."

    const-string v5, "InVTCallScreen"

    .line 5180
    .line 5184
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    .line 5188
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 5189
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 5190
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 5199
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5216
    if-nez v1, :cond_4

    .line 5217
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placeCall: couldn\'t get a phone number from Intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5220
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 5402
    :cond_1
    :goto_0
    return-object v0

    .line 5201
    :catch_0
    move-exception v1

    .line 5206
    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v0, v1, :cond_2

    .line 5207
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    .line 5208
    const-string v1, "Voicemail number not reachable in current SIM card state."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5211
    :cond_2
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    .line 5212
    const-string v0, "VoiceMailNumberMissingException from getInitialNumber()"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5213
    :cond_3
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 5223
    :cond_4
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    .line 5224
    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 5227
    if-eqz v2, :cond_5

    if-nez v3, :cond_5

    .line 5228
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-CALL_EMERGENCY Intent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " attempted to call emergency number "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5230
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 5231
    :cond_5
    if-nez v2, :cond_6

    if-eqz v3, :cond_6

    .line 5232
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received CALL_EMERGENCY Intent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with non-emergency number "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- failing call."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5235
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 5241
    :cond_6
    if-eqz v2, :cond_7

    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-ne v0, v3, :cond_7

    .line 5243
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 5244
    sget-boolean v3, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v3, :cond_7

    .line 5245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Emergency number detected, changing state to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5249
    :cond_7
    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v0, v3, :cond_9

    .line 5255
    if-eqz v2, :cond_1

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-ne v0, v1, :cond_1

    .line 5257
    const-class v0, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 5259
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_8

    .line 5260
    const-string v0, "placeCall: starting EmergencyCallHandler, finishing InVTCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5261
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    .line 5262
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 5273
    :cond_9
    if-nez v2, :cond_b

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->is2GNetwork()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5274
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "The current connected network may not be able to support video call..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5276
    :cond_a
    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->FallBackCallNumber:Ljava/lang/String;

    .line 5278
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->OUT_OF_3G_NETWORK:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 5280
    :cond_b
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "The current connected network may be able to support video call..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5282
    :cond_c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    .line 5283
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 5295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    .line 5302
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 5318
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2, v1, v0}, Lcom/android/phone/PhoneUtils;->dialVideoCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    .line 5325
    packed-switch v0, :pswitch_data_0

    .line 5399
    const-string v2, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placeCall: unknown callStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from PhoneUtils.placeCall() for number \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5402
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 5376
    :pswitch_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 5378
    :pswitch_1
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_d

    .line 5379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: specified number was an MMI code: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5390
    :cond_d
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->DIALED_MMI:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 5392
    :pswitch_2
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: PhoneUtils.placeCall() FAILED for number \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5397
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 5325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private prepareCaptureAnimation()V
    .locals 7

    .prologue
    const v6, 0x7f0203a5

    const v5, 0x7f0203a4

    const v4, 0x7f0203a3

    const/16 v3, 0x32

    const/16 v2, 0x64

    .line 11001
    const-string v0, "InVTCallScreen"

    const-string v1, "prepareCaptureAnimation() :: Inside prepare image animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11002
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 11003
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11005
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11007
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11009
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11011
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11013
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11015
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 11016
    return-void
.end method

.method private registerBatteryListener()V
    .locals 2

    .prologue
    .line 1719
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1720
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1721
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1722
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1723
    return-void
.end method

.method private registerDevicePolicyManagerReceiver()V
    .locals 2

    .prologue
    .line 1726
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1727
    .local v0, intentFilterSecurity:Landroid/content/IntentFilter;
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1728
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDeviceManagerPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1729
    return-void
.end method

.method private registerForPhoneStates()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2902
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRegisteredForPhoneStates:Z

    if-nez v0, :cond_0

    .line 2903
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2904
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2905
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2911
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2912
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2913
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2914
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2915
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2916
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRegisteredForPhoneStates:Z

    .line 2918
    :cond_0
    return-void
.end method

.method private registerSDCardListener()V
    .locals 3

    .prologue
    .line 1732
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1733
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1734
    const-string v1, "*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1736
    return-void
.end method

.method private releaseKeyGuardLock()V
    .locals 3

    .prologue
    const-string v2, "InVTCallScreen"

    .line 2859
    const-string v0, "inside KeyGuard Release"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2860
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2861
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    .line 2862
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value of KeyGuard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    if-eqz v0, :cond_0

    .line 2864
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v1, Lcom/android/phone/InVTCallScreen$9;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$9;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    .line 2876
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "Removing Keygard Lock Inside InVTCallscreen"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 2877
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 2879
    :cond_0
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value of KeyGuard before inflation is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    return-void
.end method

.method private removesurfaceview()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v2, "InVTCallScreen"

    .line 11429
    const-string v0, "InVTCallScreen"

    const-string v0, "In removesurfaceview"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11431
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 11433
    const-string v0, "InVTCallScreen"

    const-string v0, "In  not null condition"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11434
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 11435
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 11436
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 11437
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 11438
    const-string v0, "InVTCallScreen"

    const-string v0, "Out not null condition"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11440
    :cond_0
    const-string v0, "InVTCallScreen"

    const-string v0, "Out removesurfaceview"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11441
    return-void
.end method

.method private selectImageFromMyFiles()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-string v1, "InVTCallScreen"

    .line 10488
    const-string v0, "InVTCallScreen"

    const-string v0, "In selectImageFromMyFiles method"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10490
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 10491
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 10493
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/phone/PickImageFromGallery;->registerForImageGalleryResponse(Landroid/os/Handler;)V

    .line 10494
    const-string v0, "InVTCallScreen"

    const-string v0, "External Media is present"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10495
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/PickImageFromGallery;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10496
    const-string v1, "senderIsVideoCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10497
    const-string v1, "imageSelected"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10498
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 10500
    return-void
.end method

.method private selectVideoFromMyFiles()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v3, "InVTCallScreen"

    .line 10510
    const-string v0, "InVTCallScreen"

    const-string v0, "In selectVideoFromMyFiles method"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10511
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 10512
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/phone/PickImageFromGallery;->registerForImageGalleryResponse(Landroid/os/Handler;)V

    .line 10513
    const-string v0, "InVTCallScreen"

    const-string v0, "External Media is present"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10514
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/PickImageFromGallery;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10515
    const-string v1, "senderIsVideoCall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10516
    const-string v1, "imageSelected"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10517
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 10518
    const-string v0, "InVTCallScreen"

    const-string v0, "Out selectMyVideofile method"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10520
    return-void
.end method

.method private setHideOrShowMeState()V
    .locals 0

    .prologue
    .line 10177
    return-void
.end method

.method private setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V
    .locals 2
    .parameter "newMode"

    .prologue
    .line 6714
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 6715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInVTCallScreenMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6716
    :cond_0
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    .line 6717
    sget-object v0, Lcom/android/phone/InVTCallScreen$55;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 6851
    :cond_1
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallTouchUi()V

    .line 6852
    :pswitch_1
    return-void

    .line 6824
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    if-nez v0, :cond_1

    .line 6825
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 6829
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 6834
    const-string v0, "WARNING: Setting mode to UNDEFINED but phone is OFFHOOK, skip cleanOtaScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6717
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setRingingCallFrameAni()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    .line 11063
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 11064
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11066
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11068
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11070
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11072
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11074
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11076
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11078
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11080
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 11081
    return-void
.end method

.method private setupDTMFDialer()V
    .locals 4

    .prologue
    .line 2116
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2117
    const v0, 0x7f08011b

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    .line 2122
    :goto_0
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 2123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Full touch device!  Found dialerView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2124
    :cond_0
    const/4 v0, 0x0

    .line 2137
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    if-nez v1, :cond_2

    .line 2138
    const-string v1, "InVTCallScreen"

    const-string v2, "onCreate: couldn\'t find dialerView"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2144
    :goto_1
    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;Landroid/widget/SlidingDrawer;)V

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    .line 2146
    return-void

    .line 2119
    :cond_1
    const v0, 0x7f08011a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    goto :goto_0

    .line 2141
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->setVisibility(I)V

    goto :goto_1
.end method

.method private showCallLostDialog()V
    .locals 2

    .prologue
    .line 6317
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 6318
    const-string v0, "showCallLostDialog()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6321
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_2

    .line 6322
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    .line 6323
    const-string v0, "showCallLostDialog: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6338
    :cond_1
    :goto_0
    return-void

    .line 6328
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 6329
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    .line 6330
    const-string v0, "showCallLostDialog: There is a mCallLostDialog already."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6334
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d002b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 6337
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showEndCallScreen(Z)V
    .locals 5
    .parameter

    .prologue
    .line 3749
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->closeOptionsMenu()V

    .line 3750
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissContextDailogBox()V

    .line 3751
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setContentView(I)V

    .line 3756
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3757
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    .line 3781
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 3782
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 3784
    :cond_0
    const v0, 0x7f0800ce

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    .line 3785
    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    .line 3786
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 3787
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3788
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3790
    :cond_1
    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    .line 3791
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 3792
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3793
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3795
    :cond_2
    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    .line 3796
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 3797
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3798
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3803
    :cond_3
    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCreateButton:Landroid/widget/Button;

    .line 3804
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3805
    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mUpdateButton:Landroid/widget/Button;

    .line 3806
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3808
    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSaveButtonFrame:Landroid/view/View;

    .line 3809
    const v0, 0x7f080096

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    .line 3810
    const v0, 0x7f08007e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    .line 3811
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    .line 3812
    const v0, 0x7f0800bc

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    .line 3815
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isAllOLC:Z

    if-eqz v0, :cond_4

    .line 3816
    const v0, 0x7f08017f

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallStartTime:Landroid/widget/TextView;

    .line 3817
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallStartTime:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 3819
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3820
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3821
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v0

    .line 3822
    const-string v2, "InVTCallScreen:: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conn.getConnectTime(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3823
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCallStartTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x101

    invoke-static {v3, v0, v1, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3833
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->updateEndcallButtonState(Z)V

    .line 3834
    return-void
.end method

.method private showGenericErrorDialog(IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 6261
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6262
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    .line 6263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showGenericErrorDialog(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6270
    :cond_0
    if-eqz p2, :cond_1

    .line 6271
    new-instance v1, Lcom/android/phone/InVTCallScreen$14;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$14;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 6276
    new-instance v2, Lcom/android/phone/InVTCallScreen$15;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$15;-><init>(Lcom/android/phone/InVTCallScreen;)V

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 6294
    :goto_0
    new-instance v3, Lcom/android/phone/InVTCallScreen$18;

    invoke-direct {v3, p0}, Lcom/android/phone/InVTCallScreen$18;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 6303
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f0d003f

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 6306
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 6310
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 6313
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 6314
    return-void

    .line 6282
    :cond_1
    new-instance v1, Lcom/android/phone/InVTCallScreen$16;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$16;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 6287
    new-instance v2, Lcom/android/phone/InVTCallScreen$17;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$17;-><init>(Lcom/android/phone/InVTCallScreen;)V

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0
.end method

.method private showImage(Ljava/lang/String;)V
    .locals 2
    .parameter "filePath"

    .prologue
    .line 11623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside showImage condition and file path is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 11624
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 11625
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, p1}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    .line 11627
    :cond_0
    return-void
.end method

.method private showVideo(Ljava/lang/String;)V
    .locals 2
    .parameter "filePath"

    .prologue
    .line 11609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside show video condition and file path is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 11610
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 11611
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, p1}, Lsiso/vt/VTManager;->sendVideo(Ljava/lang/String;)V

    .line 11613
    :cond_0
    return-void
.end method

.method private showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4826
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4828
    const v2, 0x7f0d0044

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4829
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4831
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 4834
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4835
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4838
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/android/phone/InVTCallScreen$11;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InVTCallScreen$11;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InVTCallScreen$10;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/InVTCallScreen$10;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4855
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4857
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4858
    return-void
.end method

.method private showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4868
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4869
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4870
    const v2, 0x7f0d0044

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4871
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4873
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 4874
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 4875
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4876
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4877
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4880
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/android/phone/InVTCallScreen$13;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InVTCallScreen$13;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0048

    new-instance v2, Lcom/android/phone/InVTCallScreen$12;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InVTCallScreen$12;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4896
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4898
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4899
    return-void
.end method

.method private show_camera()V
    .locals 5

    .prologue
    const-string v4, "Value of selectImg"

    const-string v3, "In selectVideo condition under show_camera"

    const-string v2, "InVTCallScreen"

    .line 11560
    const-string v0, "InVTCallScreen"

    const-string v0, "In show_camera method"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11561
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value of selectImg"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11562
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value of selectImg"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11564
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    if-eqz v0, :cond_2

    .line 11565
    const-string v0, "InVTCallScreen"

    const-string v0, "In selectImg condition under show_camera"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11574
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 11575
    const-string v0, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    .line 11579
    :goto_0
    const-string v0, "InVTCallScreen"

    const-string v0, "Out selectImg condition under show_camera"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11598
    :cond_0
    :goto_1
    const-string v0, "InVTCallScreen"

    const-string v0, "Out show_camera method"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11599
    return-void

    .line 11577
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    goto :goto_0

    .line 11580
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    if-eqz v0, :cond_4

    .line 11581
    const-string v0, "InVTCallScreen"

    const-string v0, "In selectVideo condition under show_camera"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11588
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 11589
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->sendLiveVideo()V

    .line 11594
    :goto_2
    const-string v0, "InVTCallScreen"

    const-string v0, "In selectVideo condition under show_camera"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 11591
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showVideo(Ljava/lang/String;)V

    goto :goto_2

    .line 11595
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 11596
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->sendLiveVideo()V

    goto :goto_1
.end method

.method private startFakeCallVoice(Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 7646
    return-void
.end method

.method private startRecordingFarEndView()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 11313
    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->VoiceRecorder:Z

    .line 11315
    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->checkStorageMemorySpace(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordTimeFarEnd:J

    .line 11317
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStartRecordingUI()V

    .line 11318
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/phone/MediaLowSpaceReceiver;->registerLowMemoryListner(Landroid/os/Handler;)V

    .line 11319
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    if-nez v0, :cond_0

    .line 11320
    const/4 v0, 0x0

    .line 11321
    new-instance v1, Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/phone/PhoneVoiceRecorder;-><init>(Landroid/content/Context;Lcom/android/phone/CallCard;)V

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    .line 11324
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->startRecord()V

    .line 11325
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStartRecordingUI()V

    .line 11345
    :goto_0
    const-string v0, "InVTCallScreen"

    const-string v1, "Out start_recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11346
    return-void

    .line 11342
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    .line 11343
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_0
.end method

.method private startRecordingNearEndView()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v3, "InVTCallScreen"

    .line 11382
    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->checkStorageMemorySpace(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11383
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_0

    .line 11384
    const-string v0, "InVTCallScreen"

    const-string v0, "Already Far End Recording in Process"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11386
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    .line 11402
    :goto_0
    return-void

    .line 11388
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordTimeNearEnd:J

    .line 11389
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStartRecordingUIForNearEnd()V

    .line 11390
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/phone/MediaLowSpaceReceiver;->registerLowMemoryListner(Landroid/os/Handler;)V

    .line 11391
    const/4 v0, 0x5

    .line 11393
    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    .line 11394
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_1

    .line 11395
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lsiso/vt/VTManager;->StartRecording(Ljava/lang/String;I)V

    .line 11396
    :cond_1
    const-string v0, "InVTCallScreen"

    const-string v0, "Out start_recording"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11399
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    .line 11400
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_0
.end method

.method private startToast(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 5914
    if-eqz p1, :cond_0

    .line 5915
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5917
    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 5918
    const/16 v1, 0x10

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 5919
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5924
    :goto_0
    return-void

    .line 5921
    :cond_0
    const-string v0, "InVTCallScreen"

    const-string v1, "startToast : msg is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startVTCall()V
    .locals 3

    .prologue
    const-string v2, "InVTCallScreen"

    .line 10924
    const-string v0, "InVTCallScreen"

    const-string v0, "Before-StartVTCall"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10925
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 10926
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-nez v0, :cond_0

    .line 10928
    const-string v0, "InVTCallScreen"

    const-string v0, "StartVTCall is called "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10929
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    .line 10930
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 10931
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->StartVTCall(Z)V

    .line 10936
    :cond_0
    return-void
.end method

.method private stopFakeCallVoice(Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 7660
    return-void
.end method

.method private stopRecordingFarEndView()V
    .locals 3

    .prologue
    const/16 v2, 0x7e

    .line 11352
    const-string v0, "InVTCallScreen"

    const-string v1, "In stopRecordingFarEndView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11353
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    .line 11359
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStopRecordingUI()V

    .line 11360
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 11361
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11362
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->VoiceRecorder:Z

    .line 11363
    return-void
.end method

.method private stopRecordingNearEndView(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 11406
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStopRecordingUIForNearEnd()V

    .line 11407
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11408
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 11409
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v2}, Lsiso/vt/VTManager;->StopRecording(Z)V

    .line 11410
    :cond_0
    if-nez p1, :cond_1

    .line 11411
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    .line 11412
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 11413
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 11414
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showVideo(Ljava/lang/String;)V

    .line 11417
    :cond_1
    const-string v0, "InVTCallScreen"

    const-string v1, "Out stop_recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11418
    return-void
.end method

.method private stopVTCall()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v3, "InVTCallScreen"

    .line 10939
    const-string v0, "InVTCallScreen"

    const-string v0, "Before-StopVTCall"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10940
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 10941
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_0

    .line 10942
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    .line 10944
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_1

    .line 10945
    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    .line 10947
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->removesurfaceview()V

    .line 10948
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_2

    .line 10949
    const-string v0, "InVTCallScreen"

    const-string v0, "StopVTCall is called"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10950
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    .line 10951
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_2

    .line 10952
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->StopVTCall()V

    .line 10955
    :cond_2
    return-void
.end method

.method private surfaceview_initialize()V
    .locals 6

    .prologue
    const v5, 0x7f0800b7

    const v4, 0x7f0800b5

    const v3, 0x7f080081

    const/4 v2, 0x3

    .line 8205
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 8206
    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    .line 8207
    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationNearEnd:Landroid/widget/ImageView;

    .line 8208
    const v0, 0x7f0800ce

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    .line 8209
    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    .line 8210
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    .line 8211
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 8212
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8504
    :cond_0
    :goto_0
    return-void

    .line 8215
    :cond_1
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 8216
    const v0, 0x7f080180

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    goto :goto_0

    .line 8217
    :cond_2
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 8218
    const v0, 0x7f0800c8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->stopRecordingLayout:Landroid/widget/LinearLayout;

    .line 8219
    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    .line 8220
    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationFarEnd:Landroid/widget/ImageView;

    .line 8221
    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationNearEnd:Landroid/widget/ImageView;

    .line 8222
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    .line 8225
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Lcom/android/phone/InVTCallScreen$21;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$21;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8235
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    .line 8236
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 8237
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8238
    const v0, 0x7f0800a9

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->farEndImage:Landroid/widget/ImageView;

    .line 8240
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    .line 8244
    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 8245
    new-instance v1, Lcom/android/phone/InVTCallScreen$22;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$22;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8387
    new-instance v1, Lcom/android/phone/InVTCallScreen$23;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$23;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 8485
    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    .line 8486
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 8487
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    .line 8488
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 8489
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8492
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Lcom/android/phone/InVTCallScreen$24;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$24;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0
.end method

.method private swipeSurfaceView()V
    .locals 2

    .prologue
    .line 11546
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 11547
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 11548
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 11550
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetNearEndDisplay()V

    .line 11551
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetPreviewDisplay()V

    .line 11552
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->swipeSurface()V

    .line 11554
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 11555
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 11556
    return-void
.end method

.method private switchCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 10405
    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside CallVtScreen switchCamera method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10407
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    if-eqz v0, :cond_1

    .line 10409
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 10410
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v4, v2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    .line 10411
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    .line 10419
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mCameraBrightness:I

    .line 10420
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mCameraContrast:I

    .line 10423
    return-void

    .line 10413
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_2

    .line 10414
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v4, v3}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    .line 10415
    :cond_2
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    goto :goto_0
.end method

.method private syncWithPhoneState()Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 5099
    const/4 v2, 0x0

    .line 5100
    .local v2, updateSuccessful:Z
    sget-boolean v3, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    .line 5101
    const-string v3, "syncWithPhoneState()..."

    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5102
    :cond_0
    sget-boolean v3, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v3, :cond_1

    .line 5103
    sget-boolean v3, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    .line 5112
    :cond_1
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 5114
    .local v1, phoneType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v4, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v4, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v3, v4, :cond_3

    .line 5118
    :cond_2
    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 5135
    :goto_0
    return-object v3

    .line 5123
    :cond_3
    if-ne v1, v5, :cond_5

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v5

    .line 5126
    .local v0, hasPendingMmiCodes:Z
    :goto_1
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_6

    .line 5129
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    .line 5130
    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 5123
    .end local v0           #hasPendingMmiCodes:Z
    :cond_5
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 5133
    .restart local v0       #hasPendingMmiCodes:Z
    :cond_6
    sget-boolean v3, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v3, :cond_7

    .line 5134
    const-string v3, "syncWithPhoneState: phone is idle; we shouldn\'t be here!"

    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5135
    :cond_7
    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0
.end method

.method private unregisterForPhoneStates()V
    .locals 2

    .prologue
    .line 2921
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 2922
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 2923
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 2924
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 2925
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 2926
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 2927
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    .line 2928
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 2929
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRegisteredForPhoneStates:Z

    .line 2930
    return-void
.end method

.method private updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0d0009

    const-string v4, "InVTCallScreen"

    const-string v3, ""

    .line 7760
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 7761
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 7762
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v2, :cond_0

    .line 7764
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7765
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7766
    const-string v0, "InVTCallScreen"

    const-string v0, "Caller Info Avialable"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7792
    :goto_0
    return-void

    .line 7767
    :cond_0
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7769
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7770
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7771
    const-string v0, "InVTCallScreen"

    const-string v0, "Caller Info PRESENTATION_ALLOWED"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7772
    :cond_1
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v1, v0, :cond_2

    .line 7773
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const v1, 0x7f0d000a

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7774
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7775
    const-string v0, "InVTCallScreen"

    const-string v0, "Caller Info PRESENTATION_RESTRICTED"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7776
    :cond_2
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v1, v0, :cond_3

    .line 7777
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7778
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7779
    const-string v0, "InVTCallScreen"

    const-string v0, "Caller Info PRESENTATION_UNKNOWN"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7780
    :cond_3
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v1, v0, :cond_4

    .line 7781
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7782
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7783
    const-string v0, "InVTCallScreen"

    const-string v0, "Caller Info PRESENTATION_PAYPHONE"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7784
    :cond_4
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v0, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 7786
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7787
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 7789
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7790
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateElapsedTimeWidget(J)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v2, 0x2

    const/16 v5, 0x32

    const/4 v4, 0x1

    const-string v7, "/sdcard/"

    const-string v6, ""

    .line 2170
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isAllOLC:Z

    if-nez v0, :cond_0

    .line 2172
    iput-wide p1, p0, Lcom/android/phone/InVTCallScreen;->temptimeforALLOLC:J

    .line 2176
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isAllOLC:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/phone/InVTCallScreen;->temptimeforALLOLC:J

    add-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 2178
    iget-wide v0, p0, Lcom/android/phone/InVTCallScreen;->temptimeforALLOLC:J

    sub-long v0, p1, v0

    sub-long/2addr v0, v2

    .line 2180
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    .line 2181
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2201
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_2

    .line 2207
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateRecordTime()V

    .line 2208
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2209
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2210
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    if-ge v0, v5, :cond_2

    .line 2211
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    .line 2213
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    .line 2217
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_3

    .line 2223
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateRecordTime()V

    .line 2224
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2225
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2226
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    if-ge v0, v5, :cond_3

    .line 2227
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    .line 2229
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    .line 2232
    :cond_3
    return-void

    .line 2184
    :cond_4
    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isMTRBstart:Z

    if-eqz v2, :cond_5

    .line 2185
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2186
    iput-wide v0, p0, Lcom/android/phone/InVTCallScreen;->temptimeforMRBT:J

    .line 2187
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isMRBTtime:Z

    goto :goto_0

    .line 2189
    :cond_5
    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isMRBTtime:Z

    if-eqz v2, :cond_6

    .line 2191
    iget-wide v2, p0, Lcom/android/phone/InVTCallScreen;->temptimeforMRBT:J

    sub-long/2addr v0, v2

    .line 2195
    :cond_6
    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    .line 2196
    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTime:Ljava/lang/String;

    .line 2197
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateEndCallButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3717
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 3718
    .local v0, fgCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3719
    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->showEndCallScreen(Z)V

    .line 3720
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 3736
    :cond_0
    :goto_0
    return-void

    .line 3726
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_3

    .line 3729
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    .line 3730
    const-string v1, "updateEndCallButton : All calls are IDLE at updateEndCallButton()"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3731
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V

    goto :goto_0

    .line 3735
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->showEndCallScreen(Z)V

    goto :goto_0
.end method

.method private updateEndcallButtonState(Z)V
    .locals 13
    .parameter

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "20"

    .line 3836
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCreateButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mUpdateButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 3838
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3839
    const/4 v1, 0x0

    .line 3840
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 3841
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3842
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3843
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    .line 3875
    :cond_0
    :goto_0
    if-eqz p1, :cond_8

    .line 3876
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    const v2, 0x7f0d0199

    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3878
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 3879
    if-nez v1, :cond_7

    .line 3880
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3892
    :cond_1
    :goto_1
    if-eqz v0, :cond_14

    .line 3893
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    .line 3895
    if-nez v1, :cond_9

    move v2, v9

    .line 3896
    :goto_2
    if-nez v1, :cond_a

    move v3, v9

    .line 3897
    :goto_3
    if-nez v1, :cond_b

    move v4, v9

    .line 3899
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    .line 3901
    const-string v6, "20"

    .line 3902
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_pcw_enabled"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3906
    if-eqz v6, :cond_c

    const-string v7, "20"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 3907
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "EndCallButtonsView : LOCK_PCW_ENABLED"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_2
    move v0, v8

    move v1, v8

    move v2, v8

    move v3, v8

    .line 3927
    :goto_5
    sget-boolean v4, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v4, :cond_f

    .line 3928
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3929
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3930
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3937
    :goto_6
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v1, :cond_12

    move v1, v9

    :goto_7
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3938
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSaveButtonFrame:Landroid/view/View;

    if-eqz v0, :cond_13

    move v0, v8

    :goto_8
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3946
    :cond_3
    :goto_9
    return-void

    .line 3844
    :cond_4
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v9, :cond_6

    .line 3845
    if-eqz v0, :cond_16

    .line 3846
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3848
    :goto_a
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 3849
    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 3850
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const v5, 0x7f020163

    invoke-static {v2, v3, v4, v5}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 3854
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3855
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3856
    if-eqz v0, :cond_0

    .line 3857
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3858
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3862
    :cond_5
    if-eqz v0, :cond_0

    .line 3863
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3864
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3865
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 3871
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected phone type: isContactExist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3882
    :cond_7
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 3884
    :catch_0
    move-exception v1

    .line 3885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error::PhoneUtils.VoiceMailNumberMissingException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3888
    :cond_8
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTime:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 3889
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_9
    move v2, v8

    .line 3895
    goto/16 :goto_2

    :cond_a
    move v3, v8

    .line 3896
    goto/16 :goto_3

    :cond_b
    move v4, v8

    .line 3897
    goto/16 :goto_4

    .line 3912
    :cond_c
    sget v6, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v5, v6, :cond_e

    sget v6, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v5, v6, :cond_e

    .line 3914
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 3915
    instance-of v5, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v5, :cond_15

    .line 3916
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 3917
    if-nez v1, :cond_d

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_d

    move v0, v9

    :goto_b
    move v1, v4

    move v12, v3

    move v3, v2

    move v2, v12

    .line 3920
    goto/16 :goto_5

    :cond_d
    move v0, v8

    .line 3917
    goto :goto_b

    :cond_e
    move v0, v8

    move v1, v8

    move v2, v8

    move v3, v8

    .line 3923
    goto/16 :goto_5

    .line 3932
    :cond_f
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3933
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v3, :cond_10

    move v3, v9

    :goto_c
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3934
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_11

    move v2, v9

    :goto_d
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_10
    move v3, v8

    .line 3933
    goto :goto_c

    :cond_11
    move v2, v8

    .line 3934
    goto :goto_d

    :cond_12
    move v1, v8

    .line 3937
    goto/16 :goto_7

    :cond_13
    move v0, v10

    .line 3938
    goto/16 :goto_8

    .line 3942
    :cond_14
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    .line 3943
    const-string v0, "EndCallButtonsView : connection is NullPointer at updateState"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_15
    move v0, v8

    goto :goto_b

    :cond_16
    move-object v0, v1

    goto/16 :goto_a
.end method

.method private updateInCallBackground()V
    .locals 10

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "InVTCallScreen"

    .line 7429
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    .line 7430
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    .line 7431
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    .line 7432
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    .line 7433
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v4

    .line 7444
    if-eqz v0, :cond_1

    .line 7446
    if-eqz v4, :cond_0

    .line 7592
    :cond_0
    :goto_0
    return-void

    .line 7451
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_0

    .line 7457
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 7458
    sget-object v1, Lcom/android/phone/InVTCallScreen$55;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7460
    :pswitch_0
    const/4 v0, 0x0

    .line 7462
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_3

    .line 7463
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 7468
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->checkForCleanupState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7469
    const-string v1, "InVTCallScreen"

    const-string v1, "updateInCallBackground :ACTIVE"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7471
    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v1, v5, :cond_4

    .line 7472
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateOwnImageStatus()V

    .line 7474
    :cond_4
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 7475
    const-string v0, "InVTCallScreen"

    const-string v0, "Durring Call EarPhone is connected and switching off the speaker. "

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7501
    :cond_5
    :goto_1
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isCallConnected:Z

    .line 7502
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 7503
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z

    .line 7504
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_a

    .line 7505
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_6

    .line 7506
    const-string v0, "InitVtCallScreen started because Activity is in foreground"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7507
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V

    .line 7514
    :goto_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    .line 7515
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 7516
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 7517
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7518
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->startMinuteMinderAlarm()V

    .line 7520
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 7521
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7483
    :cond_8
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v8, :cond_5

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-nez v0, :cond_5

    .line 7485
    const-string v0, "InVTCallScreen"

    const-string v0, "Durring Call Bluetooth is connected and switching off the speaker. "

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7488
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v0, v8, :cond_9

    .line 7490
    invoke-static {p0, v5, v5}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_1

    .line 7492
    :cond_9
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v0, v5, :cond_5

    .line 7493
    const-string v0, "InVTCallScreen"

    const-string v0, "Durring Call Bluetooth is not connected and switching on the speaker. in IncallScreen"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7497
    invoke-static {p0, v5, v5}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_1

    .line 7509
    :cond_a
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_b

    .line 7510
    const-string v0, "InitVtCallScreen not started because Activity is not in foreground"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7511
    :cond_b
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startVTCall()V

    goto :goto_2

    .line 7527
    :pswitch_1
    const-string v0, "InVTCallScreen"

    const-string v0, "updateInCallBackground :DISCONNECTING"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7528
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    .line 7529
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 7530
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 7531
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    .line 7532
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 7533
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 7549
    :pswitch_2
    const-string v0, "InVTCallScreen"

    const-string v0, "updateInCallBackground :DISCONNECTED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7550
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    .line 7551
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 7552
    const-string v0, "InVTCallScreen"

    const-string v0, "updateInCallBackground :Timer Canceled"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7553
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_0

    .line 7554
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 7555
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 7563
    :pswitch_3
    const-string v0, "case dialing"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7564
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mToastExecuteOnceForDevicePolicyManager:Z

    if-nez v0, :cond_d

    .line 7565
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    invoke-virtual {v0, v7}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 7566
    :cond_c
    const-string v0, "Camera desabled due DPM\t- INTENT_MSG_SECURITY"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7567
    const v0, 0x7f0d0241

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7569
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mToastExecuteOnceForDevicePolicyManager:Z

    .line 7573
    :cond_d
    :pswitch_4
    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 7458
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateInCallTouchUi()V
    .locals 0

    .prologue
    .line 6986
    return-void
.end method

.method private updateOwnImageStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5616
    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    .line 5617
    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    .line 5618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 5619
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 5620
    const-string v0, "UpdateOwnImageStatus : Setup Show me image, as per settings"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5627
    return-void
.end method

.method private updateRecordTime()V
    .locals 2

    .prologue
    .line 2241
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_1

    .line 2242
    iget-wide v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordTimeFarEnd:J

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->updateRecordTimeUIFarEnd(J)V

    .line 2247
    :cond_0
    :goto_0
    return-void

    .line 2244
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_0

    .line 2245
    iget-wide v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordTimeNearEnd:J

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->updateRecordTimeUINearEnd(J)V

    goto :goto_0
.end method

.method private updateScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4932
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 4933
    const-string v0, "updateScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4940
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_1

    .line 4941
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    .line 4942
    const-string v0, "- updateScreen: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4966
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 4968
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_3

    .line 4969
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    .line 4970
    const-string v0, "- updateScreen: OTA call state NORMAL..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5086
    :cond_2
    :goto_0
    return-void

    .line 4978
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_5

    .line 4979
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    .line 4980
    const-string v0, "- updateScreen: OTA call ended state ..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4982
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    goto :goto_0

    .line 5003
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_6

    .line 5004
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    .line 5005
    const-string v0, "- updateScreen: manage conference mode (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5008
    :cond_6
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->CALL_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_8

    .line 5009
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_7

    .line 5010
    const-string v0, "- updateScreen: call ended state (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5012
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallBackground()V

    goto :goto_0

    .line 5014
    :cond_8
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->EMPTY:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_9

    .line 5017
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    .line 5018
    const-string v0, "- updateScreen: error call state (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5022
    :cond_9
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_a

    .line 5023
    const-string v1, "- updateScreen: updating the in-call UI..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5031
    :cond_a
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_c

    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-eq v1, v3, :cond_c

    .line 5032
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->removeDialog(I)V

    .line 5033
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 5034
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-nez v0, :cond_b

    .line 5035
    invoke-static {}, Lsiso/vt/VTManager;->getInstance()Lsiso/vt/VTManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    .line 5037
    :cond_b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->myListener:Lsiso/vt/VTManager$VTStackStateListener;

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    .line 5038
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 5039
    const v0, 0x7f0d0182

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 5040
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V

    .line 5046
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5047
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissAllDialogs()V

    goto/16 :goto_0

    .line 5042
    :cond_c
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallBackground()V

    goto :goto_1

    .line 5053
    :cond_d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v0

    .line 5054
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 5055
    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 5056
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 5057
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_f

    .line 5059
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/Connection;

    .line 5060
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_e

    .line 5062
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    goto :goto_2

    .line 5065
    :cond_f
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v2, :cond_2

    .line 5067
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_10

    .line 5068
    const-string v0, "show the Wait dialog for CDMA"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5069
    :cond_10
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v0

    .line 5071
    invoke-direct {p0, v1, v0}, Lcom/android/phone/InVTCallScreen;->showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5073
    :cond_11
    if-ne v1, v3, :cond_13

    .line 5074
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 5075
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v2, v3, :cond_12

    .line 5077
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    .line 5078
    invoke-direct {p0, v0, v2}, Lcom/android/phone/InVTCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_3

    .line 5082
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateSelectedImageFromGallery()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v7, "InVTCallScreen"

    .line 1500
    sget-object v0, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 1501
    const-string v0, "InVTCallScreen"

    const-string v0, "Response from MediaStore"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->ImgProj:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1507
    if-eqz v0, :cond_5

    .line 1510
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1513
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->ImgProj:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1514
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1515
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 1516
    const-string v1, "mime_type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1517
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1518
    const-string v2, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimetype of image selected : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1526
    const-string v2, "image/pipeg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "image/jpeg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1528
    :cond_0
    const-string v1, "InVTCallScreen"

    const-string v1, "Selected File is Jpeg."

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    .line 1530
    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 1531
    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 1532
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 1533
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    .line 1534
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 1539
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->isDisableCloseCamera:Z

    .line 1555
    :cond_1
    :goto_0
    const-string v1, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of bitmap after decoding - VTPM_IMAGE_REQ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1, v6}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 1560
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1569
    :cond_3
    :goto_1
    return-void

    .line 1541
    :cond_4
    const-string v1, "InVTCallScreen"

    const-string v1, "Selected File is not Jpeg."

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    const v1, 0x7f0d031a

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 1547
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1548
    sput-object v3, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    .line 1549
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 1550
    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->isDisableCloseCamera:Z

    goto :goto_0

    .line 1564
    :cond_5
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 1565
    sput-object v3, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    .line 1566
    const v0, 0x7f0d0307

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    goto :goto_1
.end method

.method private updateSelectedVideoFromGallery()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const-string v6, "InVTCallScreen"

    .line 1471
    const-string v0, "InVTCallScreen"

    const-string v0, "Response from MediaStore"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    sget-object v0, Lcom/android/phone/InVTCallScreen;->mVideoSelectedFromGalary:Landroid/net/Uri;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/InVTCallScreen;->mVideoSelectedFromGalary:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 1475
    const-string v0, "InVTCallScreen"

    const-string v0, "Response from MediaStore  VTPM_VIDEO_REQ"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/InVTCallScreen;->mVideoSelectedFromGalary:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->VideoProj:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1480
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1482
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1483
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    .line 1484
    const-string v1, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of video filepath  VTPM_VIDEO_REQ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->showVideo(Ljava/lang/String;)V

    .line 1487
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 1497
    :goto_0
    return-void

    .line 1493
    :cond_1
    const v0, 0x7f0d0307

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    .line 1494
    const-string v0, "mVideoSelectedFromGalary is null"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateStartRecordingUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9096
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    .line 9098
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 9099
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 9100
    const-string v0, "InVTCallScreen"

    const-string v1, "In startRecordingFarEndView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9101
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_0

    .line 9102
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9103
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9104
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9112
    :goto_0
    return-void

    .line 9107
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9108
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9109
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateStartRecordingUIForNearEnd()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9131
    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    .line 9132
    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    .line 9133
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_0

    .line 9135
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9136
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9137
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9145
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 9146
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 9148
    return-void

    .line 9141
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9142
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9143
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateStopRecordingUI()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 9115
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    .line 9116
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9117
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9118
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9119
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    .line 9120
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9121
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9122
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9123
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    .line 9124
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 9125
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 9128
    return-void
.end method

.method private updateStopRecordingUIForNearEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 9151
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    .line 9152
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    .line 9153
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 9154
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 9155
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9156
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9157
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9158
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9159
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9160
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9161
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    .line 9162
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    .line 9164
    return-void
.end method

.method private updateSwitchCameraButton(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 5630
    if-eqz p1, :cond_1

    .line 5631
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 5632
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5643
    :cond_0
    :goto_0
    return-void

    .line 5636
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 5637
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method connectBluetoothAudio()V
    .locals 2

    .prologue
    .line 7299
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 7300
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 7310
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionPending:Z

    .line 7311
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionRequestTime:J

    .line 7312
    return-void
.end method

.method disconnectBluetoothAudio()V
    .locals 1

    .prologue
    .line 7317
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 7318
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 7320
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionPending:Z

    .line 7321
    return-void
.end method

.method dismissMenu(Z)V
    .locals 4
    .parameter "dismissImmediate"

    .prologue
    const/16 v3, 0x6f

    .line 7095
    if-eqz p1, :cond_0

    .line 7096
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->closeOptionsMenu()V

    .line 7102
    :goto_0
    return-void

    .line 7098
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 7099
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 3461
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3486
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 3477
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 3478
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    goto :goto_0

    .line 3461
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public endInVTCallScreenSession()V
    .locals 1

    .prologue
    .line 2831
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 2832
    const-string v0, "endInVTCallScreenSession()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2833
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 2834
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 2835
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->finish()V

    .line 2837
    return-void
.end method

.method fallbackHangupVTRingingCall()V
    .locals 1

    .prologue
    .line 6673
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 6674
    const-string v0, "hangupVTRingingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6675
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->fallbackHangupVTRingingCall(Lcom/android/internal/telephony/Phone;)Z

    .line 6676
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 2814
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 2815
    const-string v0, "finish()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2816
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    .line 2817
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    if-eqz v0, :cond_1

    .line 2818
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->moveTaskToBack(Z)Z

    .line 2822
    :goto_0
    return-void

    .line 2820
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public getNetworkType()V
    .locals 2

    .prologue
    .line 3983
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 3984
    .local v0, radiotech:I
    packed-switch v0, :pswitch_data_0

    .line 4029
    const-string v1, "GetNetworkType :NETWORK_TYPE_UNKNOWN"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4033
    :goto_0
    return-void

    .line 3986
    :pswitch_0
    const-string v1, "GetNetworkType :NETWORK_TYPE_GPRS"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3990
    :pswitch_1
    const-string v1, "GetNetworkType :NETWORK_TYPE_EDGE"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3994
    :pswitch_2
    const-string v1, "GetNetworkType :NETWORK_TYPE_UMTS"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3998
    :pswitch_3
    const-string v1, "GetNetworkType :NETWORK_TYPE_HSDPA"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4002
    :pswitch_4
    const-string v1, "GetNetworkType :NETWORK_TYPE_HSUPA"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4006
    :pswitch_5
    const-string v1, "GetNetworkType :NETWORK_TYPE_HSPA"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4010
    :pswitch_6
    const-string v1, "GetNetworkType :RADIO_TECHNOLOGY_IS95A"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4013
    :pswitch_7
    const-string v1, "GetNetworkType :NETWORK_TYPE_CDMA"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4017
    :pswitch_8
    const-string v1, "GetNetworkType :NETWORK_TYPE_1xRTT"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4021
    :pswitch_9
    const-string v1, "GetNetworkType :NETWORK_TYPE_EVDO_0"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4025
    :pswitch_a
    const-string v1, "GetNetworkType :NETWORK_TYPE_EVDO_A"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3984
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method handleOnscreenButtonClick(I)V
    .locals 3
    .parameter

    .prologue
    .line 6025
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 6026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnscreenButtonClick(id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6028
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 6084
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnscreenButtonClick: unexpected ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6102
    :goto_0
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallTouchUi()V

    .line 6103
    return-void

    .line 6036
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->releaseKeyGuardLock()V

    .line 6037
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateKeyguardPolicy(Z)V

    .line 6038
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 6041
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalHangupRingingCall()V

    goto :goto_0

    .line 6053
    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    .line 6055
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalHangup()V

    goto :goto_0

    .line 6058
    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onShowHideDialpad()V

    goto :goto_0

    .line 6061
    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onBluetoothClick()V

    goto :goto_0

    .line 6064
    :sswitch_6
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onMuteClick()V

    goto :goto_0

    .line 6067
    :sswitch_7
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onSpeakerClick()V

    goto :goto_0

    .line 6070
    :sswitch_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 6074
    :sswitch_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    .line 6075
    const-string v0, "Merged"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->startToast(Ljava/lang/String;)V

    goto :goto_0

    .line 6028
    :sswitch_data_0
    .sparse-switch
        0x7f080017 -> :sswitch_1
        0x7f080018 -> :sswitch_2
        0x7f0800dd -> :sswitch_0
        0x7f0800df -> :sswitch_8
        0x7f0800e2 -> :sswitch_4
        0x7f0800e3 -> :sswitch_3
        0x7f0800e4 -> :sswitch_3
        0x7f0800e6 -> :sswitch_7
        0x7f0800e7 -> :sswitch_6
        0x7f0800e8 -> :sswitch_5
        0x7f080110 -> :sswitch_0
        0x7f080111 -> :sswitch_9
    .end sparse-switch
.end method

.method internalAnswerCall()V
    .locals 9

    .prologue
    .line 6442
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 6444
    .local v2, hasRingingCall:Z
    if-eqz v2, :cond_1

    .line 6445
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 6446
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 6447
    .local v5, ringing:Lcom/android/internal/telephony/Call;
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 6448
    .local v4, phoneType:I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 6449
    sget-boolean v6, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v6, :cond_0

    .line 6450
    const-string v6, "internalAnswerCall: answering (CDMA)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6453
    :cond_0
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 6495
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    .end local v4           #phoneType:I
    .end local v5           #ringing:Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return-void

    .line 6456
    .restart local v3       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #phoneType:I
    .restart local v5       #ringing:Lcom/android/internal/telephony/Call;
    :cond_2
    const/4 v6, 0x1

    if-ne v4, v6, :cond_7

    .line 6469
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 6470
    .local v0, hasActiveCall:Z
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 6472
    .local v1, hasHoldingCall:Z
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 6473
    sget-boolean v6, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v6, :cond_3

    .line 6474
    const-string v6, "internalAnswerCall: answering (both lines in use!)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6478
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->DisplayWaitingCallDialogWhenHaveHoldingCall()V

    .line 6489
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->startFakeCallVoice(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 6479
    :cond_4
    if-eqz v0, :cond_5

    .line 6480
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V

    goto :goto_1

    .line 6482
    :cond_5
    sget-boolean v6, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v6, :cond_6

    .line 6483
    const-string v6, "internalAnswerCall: answering..."

    invoke-direct {p0, v6}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6484
    :cond_6
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_1

    .line 6491
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    :cond_7
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method internalHangup()V
    .locals 1

    .prologue
    .line 6682
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalHangup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6683
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 6684
    return-void
.end method

.method internalHangupRingingCall()V
    .locals 1

    .prologue
    .line 6662
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalHangupRingingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6666
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 6667
    return-void
.end method

.method internalPhoneHangup()V
    .locals 1

    .prologue
    .line 6700
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 6701
    const-string v0, "internalHangup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6702
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 6703
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 6704
    return-void
.end method

.method internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v5, "com.android.phone.ShowDialpad"

    .line 2993
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2994
    :cond_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 3100
    :cond_1
    :goto_0
    return-object v0

    .line 2999
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3000
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    .line 3001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalResolveIntent: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3008
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 3012
    const-string v2, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 3014
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 3021
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 3022
    :cond_4
    const-string v2, "android.intent.action.ANSWER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3023
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    .line 3024
    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 3025
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 3026
    :cond_5
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3036
    :cond_6
    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 3057
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->placeCall(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    .line 3058
    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-ne v0, v2, :cond_1

    .line 3061
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    goto :goto_0

    .line 3066
    :cond_7
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3074
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v0, v1, :cond_9

    .line 3077
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    .line 3078
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 3080
    :cond_9
    const-string v0, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3081
    const-string v0, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 3092
    :cond_a
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 3093
    :cond_b
    const-string v1, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3094
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 3096
    :cond_c
    const-string v1, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalResolveIntent: unexpected intent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0
.end method

.method isBluetoothAudioConnected()Z
    .locals 2

    .prologue
    .line 7201
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v1, :cond_0

    .line 7204
    const/4 v1, 0x0

    .line 7209
    :goto_0
    return v1

    .line 7206
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    .local v0, isAudioOn:Z
    move v1, v0

    .line 7209
    goto :goto_0
.end method

.method isBluetoothAvailable()Z
    .locals 3

    .prologue
    .line 7152
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v2, :cond_0

    .line 7156
    const/4 v2, 0x0

    .line 7193
    :goto_0
    return v2

    .line 7174
    :cond_0
    const/4 v1, 0x0

    .line 7175
    .local v1, isConnected:Z
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_1

    .line 7178
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 7184
    .local v0, headset:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 7185
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .end local v0           #headset:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    move v2, v1

    .line 7193
    goto :goto_0
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    .line 2840
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3247
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 3248
    const-string v0, "onBackPressed()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3250
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3251
    const-string v0, "InVTCallScreen"

    const-string v1, "Dialer Pad Already open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3254
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 3255
    const v0, 0x7f08017d

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    .line 3256
    const v0, 0x7f08017e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    .line 3257
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3258
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3262
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3263
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3264
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->closeDialer(Z)V

    .line 3265
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setHandleVisible(Z)V

    .line 3266
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setVTManagerInstance(Lsiso/vt/VTManager;)V

    .line 3320
    :cond_1
    :goto_1
    return-void

    .line 3260
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 3269
    :cond_3
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 3276
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3280
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3282
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    .line 3283
    const-string v0, "BACK key while ringing: reject the call"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3284
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalHangupRingingCall()V

    .line 3289
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1

    .line 3295
    :cond_5
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    .line 3296
    const-string v0, "BACK key while ringing: ignored"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3311
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v0, v1, :cond_7

    .line 3313
    const-string v0, "BACK key: InVTCallScreenMode.MANAGE_CONFERENCE"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3314
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    goto :goto_1

    .line 3319
    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "InVTCallScreen"

    .line 5648
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 5654
    sparse-switch v0, :sswitch_data_0

    .line 5909
    :cond_0
    :goto_0
    return-void

    .line 5676
    :sswitch_0
    const-string v0, "InVTCallScreen"

    const-string v0, "on Stop Recording Clicked"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5677
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_1

    .line 5678
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    .line 5680
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_0

    .line 5681
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    goto :goto_0

    .line 5686
    :sswitch_1
    const-string v0, "InVTCallScreen"

    const-string v0, "on Cancel Recording Clicked"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5687
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_2

    .line 5688
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->cancelRecordingFarEndView()V

    .line 5690
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_0

    .line 5691
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->cancelRecordingNearEndView()V

    goto :goto_0

    .line 5696
    :sswitch_2
    const-string v0, "InVTCallScreen"

    const-string v0, "Hide Dialer Pad"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5697
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5698
    const-string v0, "InVTCallScreen"

    const-string v0, "Dialer Pad Already open"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5699
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_3

    .line 5700
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 5701
    const v0, 0x7f08017d

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    .line 5702
    const v0, 0x7f08017e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    .line 5703
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5704
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5708
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 5709
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5710
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->closeDialer(Z)V

    .line 5711
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v4}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setHandleVisible(Z)V

    .line 5712
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v5}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setVTManagerInstance(Lsiso/vt/VTManager;)V

    goto/16 :goto_0

    .line 5706
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 5716
    :sswitch_3
    const-string v0, "InVTCallScreen"

    const-string v0, "In Voice call  button click"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5717
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    .line 5718
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnClick:: Phone number to call : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5719
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5720
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5721
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5726
    :sswitch_4
    const-string v0, "InVTCallScreen"

    const-string v0, "In Video call  button click"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5727
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_5

    .line 5728
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnClick:: Phone number to call : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5731
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5732
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.videocall"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5734
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5735
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5741
    :sswitch_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5742
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5744
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5762
    :sswitch_6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5763
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5765
    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5767
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5772
    :sswitch_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5773
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5774
    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5775
    const-string v1, "phone_type"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5777
    const-string v1, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5778
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5787
    :sswitch_8
    sput-boolean v4, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 5788
    sput-boolean v4, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    .line 5791
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 5792
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    .line 5794
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    goto/16 :goto_0

    .line 5797
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    .line 5802
    :sswitch_9
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    .line 5803
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e7

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5804
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    goto/16 :goto_0

    .line 5810
    :sswitch_a
    const-string v0, "InVTCallScreen"

    const-string v0, "In mute click condition"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5811
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onMuteClick()V

    goto/16 :goto_0

    .line 5815
    :sswitch_b
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_7

    .line 5816
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    goto/16 :goto_0

    .line 5819
    :cond_7
    const-string v0, "InVTCallScreen"

    const-string v0, "Show me Text is being clicked"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5821
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_9

    .line 5825
    :cond_8
    const v0, 0x7f0d0241

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 5829
    :cond_9
    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 5830
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    .line 5831
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 5832
    iput-object v5, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    .line 5833
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 5834
    iput-object v5, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 5835
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    .line 5836
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 5837
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    .line 5838
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    goto/16 :goto_0

    .line 5867
    :sswitch_c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    .line 5868
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 5881
    :sswitch_d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5882
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 5887
    :sswitch_e
    const-string v0, "InVTCallScreen"

    const-string v0, "In Accept by Voice call button click"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5888
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->getCallNumber(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->AcceptByVoiceCallNumber:Ljava/lang/String;

    .line 5889
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->fallbackHangupVTRingingCall()V

    goto/16 :goto_0

    .line 5896
    :sswitch_f
    const-string v0, "InVTCallScreen"

    const-string v0, "In Reject with msg button click"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5897
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->getCallNumber(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    .line 5898
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalHangupRingingCall()V

    .line 5900
    if-eqz v0, :cond_0

    .line 5901
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/RejectCallWithMsg;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5902
    const-string v2, "phone_number"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5903
    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5654
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080083 -> :sswitch_a
        0x7f080084 -> :sswitch_c
        0x7f080086 -> :sswitch_d
        0x7f080098 -> :sswitch_6
        0x7f080099 -> :sswitch_7
        0x7f08009a -> :sswitch_3
        0x7f08009b -> :sswitch_4
        0x7f08009c -> :sswitch_5
        0x7f0800be -> :sswitch_9
        0x7f0800bf -> :sswitch_0
        0x7f0800c1 -> :sswitch_8
        0x7f0800c7 -> :sswitch_2
        0x7f0800ca -> :sswitch_1
        0x7f0800d7 -> :sswitch_b
        0x7f080189 -> :sswitch_e
        0x7f08018a -> :sswitch_f
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 11174
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 11175
    const-string v0, "InVTCallScreen"

    const-string v1, "onConfigurationChanged event get called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11176
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 11185
    :goto_0
    return-void

    .line 11178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orientation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 11179
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mOrientation:I

    .line 11181
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    .line 11182
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->stopCamera()V

    .line 11184
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const-string v4, "InVTCallScreen"

    .line 1937
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 1938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate()...  this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1940
    :cond_0
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenOnCreate()V

    .line 1942
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1947
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    .line 1949
    if-nez p1, :cond_2

    .line 1950
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1952
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1953
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1955
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->batteryCheck()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Low battery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1959
    const v0, 0x7f0d0321

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 1964
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1966
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->finish()V

    .line 1967
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2110
    :cond_1
    :goto_0
    return-void

    .line 1973
    :catch_0
    move-exception v0

    .line 1974
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1980
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 1982
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getMiscPolicy()Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    .line 1984
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->createDefaultImages()V

    .line 1985
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1986
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 1987
    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->setInVTCallScreenInstance(Lcom/android/phone/InVTCallScreen;)V

    .line 1989
    const/high16 v1, 0x8

    .line 1990
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_3

    .line 1996
    const/high16 v2, 0x40

    or-int/2addr v1, v2

    .line 1998
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2001
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->fillMenuArrayList()V

    .line 2002
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 2004
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->registerBatteryListener()V

    .line 2005
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->registerDevicePolicyManagerReceiver()V

    .line 2006
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->registerSDCardListener()V

    .line 2007
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 2012
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2016
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2018
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initvtstack()V

    .line 2036
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->registerForPhoneStates()V

    .line 2042
    if-nez p1, :cond_8

    .line 2043
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_4

    .line 2044
    const-string v1, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2049
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 2050
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_5

    .line 2051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate(): mInVTCallInitialStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2053
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v1, v2, :cond_7

    .line 2054
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from internalResolveIntent()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    :cond_6
    :goto_1
    new-instance v0, Lcom/android/phone/CallTime;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    .line 2107
    :goto_2
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenCreated()V

    .line 2108
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    .line 2109
    const-string v0, "onCreate(): exit"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2058
    :cond_7
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v1, :cond_6

    .line 2059
    new-instance v1, Landroid/bluetooth/BluetoothHeadset;

    new-instance v2, Lcom/android/phone/InVTCallScreen$7;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/InVTCallScreen$7;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/phone/PhoneApp;)V

    invoke-direct {v1, p0, v2}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    goto :goto_1

    .line 2090
    :cond_8
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 2091
    const-string v0, "InVTCallScreen"

    const-string v0, "Else condition in icicle == null "

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 8509
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 8539
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const v5, 0x1080027

    const/4 v3, 0x1

    const-string v8, "InVTCallScreen"

    .line 9175
    const-string v0, "InVTCallScreen"

    const-string v0, "In onCreateDialog"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9176
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 9177
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 9179
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 9640
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 9181
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    new-instance v2, Lcom/android/phone/InVTCallScreen$28;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$28;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0031

    new-instance v2, Lcom/android/phone/InVTCallScreen$27;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$27;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    .line 9204
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 9207
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 9208
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 9214
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 9215
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 9216
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 9233
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/phone/InVTCallScreen$29;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$29;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 9246
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z

    .line 9248
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    goto :goto_0

    .line 9218
    :cond_1
    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 9219
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 9220
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 9223
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_1

    .line 9254
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 9257
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 9260
    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    if-eqz v2, :cond_3

    .line 9261
    aget-object v2, v0, v6

    aput-object v2, v1, v6

    .line 9264
    aget-object v0, v0, v3

    aput-object v0, v1, v3

    .line 9275
    :goto_2
    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 9279
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    new-instance v2, Lcom/android/phone/InVTCallScreen$31;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$31;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0031

    new-instance v2, Lcom/android/phone/InVTCallScreen$30;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$30;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    .line 9305
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 9306
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    const v1, 0x7f0d02df

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 9312
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/phone/InVTCallScreen$32;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$32;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 9325
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogCameraPopup:Z

    .line 9327
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 9267
    :cond_3
    aget-object v2, v0, v6

    aput-object v2, v1, v6

    .line 9270
    aget-object v0, v0, v3

    aput-object v0, v1, v3

    goto :goto_2

    .line 9330
    :pswitch_3
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 9336
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0303

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0301

    new-instance v2, Lcom/android/phone/InVTCallScreen$34;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$34;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0302

    new-instance v2, Lcom/android/phone/InVTCallScreen$33;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$33;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 9360
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0320

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d031c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0301

    new-instance v2, Lcom/android/phone/InVTCallScreen$36;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$36;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01de

    new-instance v2, Lcom/android/phone/InVTCallScreen$35;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$35;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 9418
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 9424
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 9425
    :try_start_1
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tempPhoneNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9430
    :cond_4
    :goto_3
    if-nez v0, :cond_5

    .line 9431
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 9434
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    .line 9435
    :cond_6
    if-nez v1, :cond_7

    .line 9436
    const-string v0, "InVTCallScreen"

    const-string v0, "Dialog not created due to getAddress is null and tempPhoneNumber is null"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9437
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-object v0, v7

    .line 9439
    goto/16 :goto_0

    .line 9426
    :catch_0
    move-exception v1

    move-object v2, v7

    .line 9427
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error::PhoneUtils.VoiceMailNumberMissingException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_3

    :cond_7
    move-object v0, v1

    .line 9448
    :goto_5
    if-nez v0, :cond_9

    .line 9449
    const-string v0, "InVTCallScreen"

    const-string v0, "Dialog not created due to number is null"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9450
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-object v0, v7

    .line 9452
    goto/16 :goto_0

    .line 9445
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 9460
    :cond_9
    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mBeforeMakingCall:Z

    if-eqz v1, :cond_a

    .line 9461
    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->mBeforeMakingCall:Z

    .line 9463
    new-instance v1, Lcom/android/phone/InVTCallScreen$37;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$37;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 9470
    new-instance v2, Lcom/android/phone/InVTCallScreen$38;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$38;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 9499
    :goto_6
    new-instance v3, Lcom/android/phone/InVTCallScreen$41;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/InVTCallScreen$41;-><init>(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 9514
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f0d0301

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0d0302

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 9519
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 9479
    :cond_a
    new-instance v1, Lcom/android/phone/InVTCallScreen$39;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$39;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 9488
    new-instance v2, Lcom/android/phone/InVTCallScreen$40;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$40;-><init>(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_6

    .line 9539
    :pswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0319

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d003f

    new-instance v2, Lcom/android/phone/InVTCallScreen$42;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$42;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 9551
    :pswitch_7
    const-string v0, "InVTCallScreen"

    const-string v0, "In OUTGOING_NEAR_DIALOG_LIST condition"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9552
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    new-instance v2, Lcom/android/phone/InVTCallScreen$43;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$43;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 9566
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 9572
    new-instance v1, Lcom/android/phone/InVTCallScreen$44;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$44;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 9583
    :pswitch_8
    const v0, 0x7f03000e

    invoke-static {p0, v0, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 9584
    const v0, 0x1020001

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 9585
    new-instance v2, Lcom/android/phone/InVTCallScreen$45;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/InVTCallScreen$45;-><init>(Lcom/android/phone/InVTCallScreen;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9591
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9592
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 9594
    const v1, 0x7f0d02e3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d003f

    new-instance v3, Lcom/android/phone/InVTCallScreen$46;

    invoke-direct {v3, p0}, Lcom/android/phone/InVTCallScreen$46;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9600
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    .line 9601
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/phone/InVTCallScreen$47;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$47;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 9606
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 9610
    :pswitch_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0329

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0328

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d003f

    new-instance v2, Lcom/android/phone/InVTCallScreen$49;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$49;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0031

    new-instance v2, Lcom/android/phone/InVTCallScreen$48;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$48;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    .line 9632
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/phone/InVTCallScreen$50;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$50;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 9637
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 9426
    :catch_1
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_4

    .line 9179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v2, "InVTCallScreen"

    .line 9863
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 9864
    const-string v0, "InVTCallScreen"

    const-string v0, "In onCreateOptionsMenu method"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9865
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value of mMenuSelected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9872
    const/16 v0, 0x32

    const v1, 0x7f0d02e3

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    .line 9874
    const/16 v0, 0x33

    const/4 v1, 0x3

    const v2, 0x7f0d01b1

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    .line 9878
    const/16 v0, 0x34

    const/4 v1, 0x4

    const v2, 0x7f0d02e5

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchHDSet:Landroid/view/MenuItem;

    .line 9880
    const/16 v0, 0x46

    const/4 v1, 0x5

    const v2, 0x7f0d02e6

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchPHSet:Landroid/view/MenuItem;

    .line 9888
    const/16 v0, 0x47

    const/4 v1, 0x6

    const v2, 0x7f0d0493

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mScrBrightSetting:Landroid/view/MenuItem;

    .line 9907
    const/16 v0, 0x49

    const/16 v1, 0x8

    const v2, 0x7f0d048d

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCloseCamera:Landroid/view/MenuItem;

    .line 9911
    const/16 v0, 0x41

    const v1, 0x7f0d02f6

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCapture:Landroid/view/MenuItem;

    .line 9917
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2730
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    .line 2731
    const-string v1, "onDestroy()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2732
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2733
    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    if-ne v1, v4, :cond_2

    .line 2793
    :cond_1
    :goto_0
    return-void

    .line 2736
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_3

    .line 2737
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/phone/PhoneApp;->updateVTDuringCallWakeState(Z)V

    .line 2743
    :cond_3
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2744
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    .line 2747
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2749
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    if-ne v1, v2, :cond_5

    .line 2750
    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->setInVTCallScreenInstance(Lcom/android/phone/InVTCallScreen;)V

    .line 2765
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->unregisterForPhoneStates()V

    .line 2766
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2767
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2768
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2770
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2772
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDeviceManagerPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2776
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_6

    .line 2777
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->close()V

    .line 2778
    iput-object v5, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 2783
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissAllDialogs()V

    .line 2786
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 2787
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 2789
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2790
    invoke-static {p0, v3, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method onDialerClose()V
    .locals 2

    .prologue
    .line 6905
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    .line 6906
    const-string v1, "onDialerClose()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6912
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 6934
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 6935
    return-void
.end method

.method onDialerOpen()V
    .locals 2

    .prologue
    .line 6868
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 6869
    const-string v0, "onDialerOpen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6887
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 6892
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v0, v1, :cond_1

    .line 6897
    :cond_1
    return-void
.end method

.method public onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0201d2

    const/4 v5, 0x7

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 11450
    if-eqz p2, :cond_0

    .line 11451
    check-cast p2, Lcom/android/internal/telephony/Call;

    .line 11452
    const/4 v2, 0x0

    .line 11455
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 11456
    if-eqz v1, :cond_0

    .line 11457
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 11458
    instance-of v3, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_1

    .line 11459
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object p0, v0

    .line 11538
    :cond_0
    :goto_0
    return-void

    .line 11460
    :cond_1
    instance-of v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_2

    .line 11461
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v1, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0

    .line 11462
    :cond_2
    if-eqz v2, :cond_0

    .line 11463
    iget-boolean v1, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v1, :cond_6

    iget-object v1, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 11464
    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v1, v5, :cond_4

    .line 11465
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    iget-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11523
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Birthday icon for Outgoing call PhoneFeature.hasFeature(PhoneFeature.DISPLAY_BIRTHDAY_INFO)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "display_birthday_info"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 11524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Birthday icon for Outgoing call ci.remainedDaysUntilBirthday != -1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v2, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    move v3, v8

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 11525
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const-string v1, "display_birthday_info"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v3, v2, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    .line 11527
    new-array v1, v8, [Ljava/lang/String;

    const-string v3, "%d"

    aput-object v3, v1, v7

    .line 11528
    new-array v3, v8, [Ljava/lang/String;

    iget-wide v4, v2, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 11529
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    long-to-int v2, v5

    aget-object v2, v4, v2

    .line 11530
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mBirthRemainedDays:Landroid/widget/TextView;

    invoke-static {v2, v1, v3}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11531
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11532
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 11485
    :cond_4
    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v1, v4, :cond_5

    .line 11489
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    iget-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 11491
    :cond_5
    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v1, v8, :cond_3

    .line 11492
    const-string v1, "InVTCallScreen"

    const-string v3, "Incoming Contact Image is Avialable in contacts "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11495
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    iget-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 11499
    :cond_6
    const-string v1, "InVTCallScreen"

    const-string v3, "Contact Image is Not Avialable in contacts "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11505
    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v1, v5, :cond_7

    .line 11506
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 11514
    :cond_7
    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v1, v4, :cond_8

    .line 11515
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 11517
    :cond_8
    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v1, v8, :cond_3

    .line 11518
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11520
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_1

    :cond_9
    move v3, v7

    .line 11524
    goto/16 :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const-string v3, "InVTCallScreen"

    .line 3505
    sparse-switch p1, :sswitch_data_0

    .line 3649
    :cond_0
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/android/phone/InVTCallScreen;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    .line 3653
    :goto_0
    return v0

    .line 3507
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->handleCallKey()Z

    move-result v0

    .line 3508
    if-nez v0, :cond_1

    .line 3509
    const-string v0, "InVTCallScreen"

    const-string v0, "InVTCallScreen should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v2

    .line 3515
    goto :goto_0

    :sswitch_2
    move v0, v2

    .line 3527
    goto :goto_0

    .line 3531
    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 3542
    const-string v0, "InVTCallScreen"

    const-string v0, "VOLUME key: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3550
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 3551
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3555
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    .line 3556
    const-string v1, "VOLUME key: silence ringer"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3557
    :cond_2
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    :cond_3
    move v0, v2

    .line 3562
    goto :goto_0

    .line 3584
    :sswitch_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3585
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3590
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isAnyKeyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3591
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->handleCallKey()Z

    move v0, v2

    .line 3592
    goto :goto_0

    .line 3599
    :sswitch_5
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    move v0, v2

    .line 3600
    goto :goto_0

    .line 3599
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 3632
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isAnyKeyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3634
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->handleCallKey()Z

    :cond_5
    move v0, v2

    .line 3636
    goto/16 :goto_0

    .line 3642
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isAnyKeyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3643
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2}, Lcom/android/phone/InVTCallScreen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v0, v2

    .line 3644
    goto/16 :goto_0

    .line 3653
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 3505
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_6
        0x5 -> :sswitch_1
        0x13 -> :sswitch_7
        0x14 -> :sswitch_7
        0x15 -> :sswitch_7
        0x16 -> :sswitch_7
        0x17 -> :sswitch_7
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_2
        0x44 -> :sswitch_0
        0x46 -> :sswitch_0
        0x4c -> :sswitch_0
        0x52 -> :sswitch_4
        0x5b -> :sswitch_5
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3499
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const-string v4, "InVTCallScreen"

    .line 7664
    const-string v0, "InVTCallScreen"

    const-string v0, "Inside onLongClick condition"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7665
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 7666
    const-string v1, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of widgetId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7667
    packed-switch v0, :pswitch_data_0

    .line 7702
    :goto_0
    return v3

    .line 7681
    :pswitch_0
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 7682
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    .line 7683
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    goto :goto_0

    .line 7685
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto :goto_0

    .line 7667
    nop

    :pswitch_data_0
    .packed-switch 0x7f0800c1
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 2948
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 2949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2969
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/InVTCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 2979
    invoke-virtual {p0, p1}, Lcom/android/phone/InVTCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 2984
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v0, v1, :cond_1

    .line 2985
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from internalResolveIntent()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "InVTCallScreen"

    .line 10182
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 10401
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 10184
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onBluetoothClick()V

    goto :goto_0

    .line 10187
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onBluetoothClick()V

    goto :goto_0

    .line 10197
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    goto :goto_0

    .line 10202
    :pswitch_4
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mTestCloseCheck:Z

    .line 10203
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 10204
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 10205
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    .line 10206
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mScrBrightSetting:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10208
    const-string v0, "InVTCallScreen"

    const-string v0, " Menu -----> !! Close Camera Clicked "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 10210
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->muteCamera()V

    goto :goto_0

    .line 10214
    :pswitch_5
    const-string v0, "InVTCallScreen"

    const-string v0, "Menu ----->!! Open Camera Clicked "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10215
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mTestCloseCheck:Z

    .line 10216
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 10217
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 10218
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    .line 10219
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mScrBrightSetting:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10221
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->unmuteCamera()V

    goto :goto_0

    .line 10235
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10236
    :cond_1
    const v0, 0x7f0d0241

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 10242
    :cond_2
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 10243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    .line 10244
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 10245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 10246
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 10247
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 10248
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    goto :goto_0

    .line 10254
    :pswitch_7
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_3

    .line 10255
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 10263
    :goto_1
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    .line 10264
    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 10257
    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    if-nez v0, :cond_4

    .line 10258
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingWithPresetImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1

    .line 10260
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImageHideMe:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1

    .line 10267
    :pswitch_8
    const-string v0, "InVTCallScreen"

    const-string v0, "launchin Zoom Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10268
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 10269
    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto/16 :goto_0

    .line 10274
    :pswitch_9
    const-string v0, "InVTCallScreen"

    const-string v0, "launchin LCD Brightness Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10275
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 10276
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto/16 :goto_0

    .line 10279
    :pswitch_a
    const-string v0, "InVTCallScreen"

    const-string v0, "launchin contrast adjust Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10280
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 10281
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto/16 :goto_0

    .line 10285
    :pswitch_b
    const-string v0, "InVTCallScreen"

    const-string v0, "launchin Brightness Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10286
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 10287
    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto/16 :goto_0

    .line 10290
    :pswitch_c
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 10291
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 10292
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 10293
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v4, v1}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto/16 :goto_0

    .line 10296
    :pswitch_d
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 10297
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 10298
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 10299
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v4, v2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto/16 :goto_0

    .line 10302
    :pswitch_e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v0, :cond_0

    .line 10303
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10304
    const-string v0, "InVTCallScreen"

    const-string v0, "Dialer Pad Already open"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10305
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_5

    .line 10310
    :goto_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 10311
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10312
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setVTManagerInstance(Lsiso/vt/VTManager;)V

    .line 10313
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->closeDialer(Z)V

    .line 10314
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setHandleVisible(Z)V

    goto/16 :goto_0

    .line 10308
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 10316
    :cond_6
    const-string v0, "InVTCallScreen"

    const-string v0, "Dialer Pad Already Not open"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10317
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_7

    .line 10318
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 10319
    const v0, 0x7f08017d

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    .line 10320
    const v0, 0x7f08017e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    .line 10321
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10322
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10326
    :goto_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 10327
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10328
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setVTManagerInstance(Lsiso/vt/VTManager;)V

    .line 10329
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->openDialer(Z)V

    .line 10330
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setHandleVisible(Z)V

    goto/16 :goto_0

    .line 10324
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 10338
    :pswitch_f
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onSpeakerClick()V

    goto/16 :goto_0

    .line 10346
    :pswitch_10
    const-string v0, "InVTCallScreen"

    const-string v0, "START_RECORDING_FAR_END is being clicked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10347
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 10348
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 10349
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V

    goto/16 :goto_0

    .line 10352
    :pswitch_11
    const-string v0, "InVTCallScreen"

    const-string v0, "STOP_RECORDING_FAR_END is being clicked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10353
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 10355
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 10356
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    goto/16 :goto_0

    .line 10360
    :pswitch_12
    const-string v0, "InVTCallScreen"

    const-string v0, "Cancel Recording is being clicked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10362
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 10363
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 10364
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->cancelRecordingFarEndView()V

    goto/16 :goto_0

    .line 10367
    :pswitch_13
    const-string v0, "InVTCallScreen"

    const-string v0, "START_RECORDING_NEAR_END is being clicked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10368
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 10369
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 10370
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingNearEndView()V

    goto/16 :goto_0

    .line 10373
    :pswitch_14
    const-string v0, "InVTCallScreen"

    const-string v0, "STOP_RECORDING_NEAR_END is being clicked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10374
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 10376
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 10377
    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    goto/16 :goto_0

    .line 10380
    :pswitch_15
    const-string v0, "InVTCallScreen"

    const-string v0, "Cancel Recording is being clicked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10382
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 10383
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 10384
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->cancelRecordingNearEndView()V

    goto/16 :goto_0

    .line 10182
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_7
        :pswitch_e
        :pswitch_1
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_d
        :pswitch_10
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_15
        :pswitch_14
        :pswitch_2
        :pswitch_9
        :pswitch_a
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 7115
    if-nez p1, :cond_0

    .line 7120
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 7121
    return-void
.end method

.method protected onPause()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2573
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    .line 2574
    const-string v2, "onPause()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2575
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2577
    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    if-ne v2, v6, :cond_1

    .line 2691
    :goto_0
    return-void

    .line 2580
    :cond_1
    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    .line 2590
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2600
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    .line 2633
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_3

    .line 2635
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_2

    .line 2636
    const-string v2, "DELAYED_CLEANUP_AFTER_DISCONNECT detected, moving UI to background."

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2637
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    .line 2648
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/phone/InVTCallScreen;->dismissMenu(Z)V

    .line 2655
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissAllDialogs()V

    .line 2656
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 2668
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/InVTCallScreen$8;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/InVTCallScreen$8;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/phone/PhoneApp;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2676
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_4

    .line 2677
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 2678
    .local v1, statusBar:Landroid/app/StatusBarManager;
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->showCallView()V

    .line 2680
    .end local v1           #statusBar:Landroid/app/StatusBarManager;
    :cond_4
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->reenableStatusBar()V

    .line 2682
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableKeyGuardLock()V

    .line 2683
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_5

    .line 2684
    invoke-virtual {p0, v6}, Lcom/android/phone/InVTCallScreen;->updateKeyguardPolicy(Z)V

    goto :goto_0

    .line 2686
    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/phone/InVTCallScreen;->updateKeyguardPolicy(Z)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter

    .prologue
    const v2, 0x7f0d02f8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "InVTCallScreen"

    .line 9921
    const-string v0, "InVTCallScreen"

    const-string v0, "In onPrepareOptionsMenu "

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9923
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z

    if-eqz v0, :cond_a

    .line 9924
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    packed-switch v0, :pswitch_data_0

    .line 10148
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 9928
    :pswitch_0
    const/16 v0, 0x47

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9929
    const/16 v0, 0x47

    const/4 v1, 0x6

    const v2, 0x7f0d0493

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mScrBrightSetting:Landroid/view/MenuItem;

    .line 9930
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mScrBrightSetting:Landroid/view/MenuItem;

    const v1, 0x7f0202d8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 9932
    invoke-interface {p1, v3, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 9934
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 9940
    const/16 v0, 0x35

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9941
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9943
    const/16 v0, 0x35

    const/4 v1, 0x6

    const v2, 0x7f0d02db

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSpeaker:Landroid/view/MenuItem;

    .line 9944
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSpeaker:Landroid/view/MenuItem;

    const v1, 0x7f0202f3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 9954
    :goto_1
    const/16 v0, 0x32

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9955
    const/16 v0, 0x32

    const v1, 0x7f0d02e3

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    .line 9956
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    const v1, 0x7f0202fb

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 9966
    const/16 v0, 0x33

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9967
    const/16 v0, 0x33

    const/4 v1, 0x3

    const v2, 0x7f0d01b1

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    .line 9968
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v0, :cond_0

    .line 9969
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9970
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9975
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    const v1, 0x7f0202e1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 9977
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    if-eqz v0, :cond_3

    .line 9978
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9983
    :goto_3
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mTestCloseCheck:Z

    if-eqz v0, :cond_5

    .line 9984
    const-string v0, "InVTCallScreen"

    const-string v0, "Adding CloseCameraTEST to Menu"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9985
    const/16 v0, 0x4a

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9986
    const/16 v0, 0x49

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9988
    const/16 v0, 0x49

    const v1, 0x7f0d048d

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCloseCamera:Landroid/view/MenuItem;

    .line 9990
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCloseCamera:Landroid/view/MenuItem;

    const v1, 0x7f0202d9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 9991
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isDisableCloseCamera:Z

    if-eqz v0, :cond_4

    .line 9992
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCloseCamera:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10051
    :goto_4
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10052
    const/16 v0, 0x46

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10053
    const/16 v0, 0x34

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10054
    const/16 v0, 0x46

    const/4 v1, 0x5

    const v2, 0x7f0d02e6

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchPHSet:Landroid/view/MenuItem;

    .line 10056
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchPHSet:Landroid/view/MenuItem;

    const v1, 0x7f0202f8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 9948
    :cond_1
    const/16 v0, 0x35

    const/4 v1, 0x6

    const v2, 0x7f0d02dc

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSpeaker:Landroid/view/MenuItem;

    .line 9949
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSpeaker:Landroid/view/MenuItem;

    const v1, 0x7f0202f4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 9972
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 9980
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 9994
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCloseCamera:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 9999
    :cond_5
    const/16 v0, 0x4a

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10000
    const/16 v0, 0x49

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10001
    const/16 v0, 0x4a

    const v1, 0x7f0d048e

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOpenCamera:Landroid/view/MenuItem;

    .line 10002
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOpenCamera:Landroid/view/MenuItem;

    const v1, 0x7f0202ed

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4

    .line 10058
    :cond_6
    const/16 v0, 0x46

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10059
    const/16 v0, 0x34

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10060
    const/16 v0, 0x34

    const/4 v1, 0x4

    const v2, 0x7f0d02e5

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchHDSet:Landroid/view/MenuItem;

    .line 10062
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchHDSet:Landroid/view/MenuItem;

    const v1, 0x7f0202f7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 10082
    :pswitch_1
    invoke-interface {p1, v3, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 10084
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 10085
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In onPrepareOptionsMenu MENUREC_GROUP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10088
    const/16 v0, 0x43

    :try_start_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10089
    const/16 v0, 0x45

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10090
    const/16 v0, 0x44

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10091
    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10092
    const/16 v0, 0x40

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10093
    const/16 v0, 0x3f

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10099
    :goto_5
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_8

    .line 10103
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    if-eqz v0, :cond_7

    .line 10104
    const/16 v0, 0x40

    const v1, 0x7f0d02f5

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStop:Landroid/view/MenuItem;

    .line 10106
    const/16 v0, 0x3f

    invoke-interface {p1, v5, v0, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancel:Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 10094
    :catch_0
    move-exception v0

    .line 10095
    const-string v0, "InVTCallScreen"

    const-string v0, "In onPrepareOptionsMenu error in removing record options"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 10110
    :cond_7
    const/16 v0, 0x3e

    const v1, 0x7f0d02f3

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecording:Landroid/view/MenuItem;

    .line 10112
    const/16 v0, 0x3f

    invoke-interface {p1, v5, v0, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancel:Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 10117
    :cond_8
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    if-eqz v0, :cond_9

    .line 10118
    const/16 v0, 0x45

    const v1, 0x7f0d02f5

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStop:Landroid/view/MenuItem;

    .line 10120
    const/16 v0, 0x44

    invoke-interface {p1, v5, v0, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancel:Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 10124
    :cond_9
    const/16 v0, 0x43

    const v1, 0x7f0d02f3

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecording:Landroid/view/MenuItem;

    .line 10126
    const/16 v0, 0x44

    invoke-interface {p1, v5, v0, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancel:Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 10145
    :cond_a
    invoke-interface {p1, v3, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 10146
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto/16 :goto_0

    .line 9924
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/16 v5, 0x70

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v6, "statusbar"

    .line 2354
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 2355
    const-string v0, "onResume()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2356
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2358
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    if-ne v0, v3, :cond_2

    .line 2567
    :cond_1
    :goto_0
    return-void

    .line 2362
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->updateVTDuringCallWakeState(Z)V

    .line 2363
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    .line 2366
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 2377
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    .line 2379
    sget-boolean v2, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-eqz v2, :cond_a

    .line 2380
    const-string v2, "onResume(): Dock Station is connected, UI set to Landscape "

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2381
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->setRequestedOrientation(I)V

    .line 2387
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    .line 2389
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mOrientation:I

    .line 2391
    if-eqz v0, :cond_b

    .line 2392
    const-string v0, "onResume(): Bluetooth is connected "

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2393
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setVolumeControlStream(I)V

    .line 2404
    :goto_2
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->disableStatusBar()V

    .line 2414
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 2416
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_3

    .line 2417
    const-string v0, "statusbar"

    invoke-virtual {p0, v6}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 2433
    :cond_3
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    .line 2434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onResume: initial status = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2435
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v0, v2, :cond_c

    .line 2436
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_5

    .line 2437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onResume: failure during startup: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2443
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->handleStartupError(Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;)V

    .line 2449
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 2462
    :goto_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->EMPTY:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v0, v2, :cond_6

    .line 2466
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 2473
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 2475
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->syncWithPhoneState()Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    .line 2476
    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v0, v2, :cond_7

    .line 2477
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_7

    .line 2478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- syncWithPhoneState failed! status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2504
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_d

    .line 2522
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2523
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2553
    :goto_4
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-class v1, Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Profiler;->profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V

    .line 2554
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2555
    :cond_8
    const-string v0, "Camera desabled due DPM\t- INTENT_MSG_SECURITY"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2559
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    .line 2561
    :cond_9
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 2562
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_1

    .line 2563
    const-string v0, "statusbar"

    invoke-virtual {p0, v6}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    .line 2564
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->hideCallView()V

    goto/16 :goto_0

    .line 2383
    :cond_a
    const-string v2, "onResume(): Dock Station is connected, UI set to Portrait"

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2384
    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 2395
    :cond_b
    const-string v0, "onResume(): Bluetooth is Not connected "

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2396
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setVolumeControlStream(I)V

    goto/16 :goto_2

    .line 2451
    :cond_c
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V

    goto/16 :goto_3

    .line 2535
    :cond_d
    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto :goto_4
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2694
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 2695
    const-string v0, "onStop()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2696
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2698
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    if-ne v0, v3, :cond_2

    .line 2724
    :cond_1
    :goto_0
    return-void

    .line 2702
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 2703
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    .line 2704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2706
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_4

    .line 2707
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v1, :cond_4

    .line 2708
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v1}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 2713
    :cond_4
    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v1, :cond_5

    .line 2714
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    .line 2718
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 2719
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    .line 2720
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_6

    .line 2721
    const-string v0, "- onStop: calling finish() to clear activity history..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2722
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3661
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_1

    .line 3662
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 3663
    const-string v0, "onSuppServiceFailed: while not in foreground, so return without doing anything."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3713
    :cond_0
    :goto_0
    return-void

    .line 3666
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone$SuppService;

    .line 3667
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    .line 3668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuppServiceFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3670
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3674
    sget-object v1, Lcom/android/phone/InVTCallScreen$55;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3690
    const v0, 0x7f0d019c

    .line 3698
    :goto_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4

    .line 3699
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    .line 3700
    const-string v1, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3701
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3704
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 3707
    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d003f

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 3710
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3712
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 3678
    :pswitch_0
    const v0, 0x7f0d01a1

    .line 3679
    goto :goto_1

    .line 3683
    :pswitch_1
    const v0, 0x7f0d01a2

    .line 3684
    goto :goto_1

    .line 3674
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 4
    .parameter "timeElapsed"

    .prologue
    const-wide/16 v2, 0x0

    .line 2154
    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3c

    rem-long v0, p1, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2157
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->playMinuteMinder()V

    .line 2159
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InVTCallScreen;->updateElapsedTimeWidget(J)V

    .line 2160
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 7382
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 3446
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 3455
    return-void
.end method

.method requestUpdateBluetoothIndication()V
    .locals 2

    .prologue
    const/16 v1, 0x72

    .line 7265
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7266
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7267
    return-void
.end method

.method requestUpdateDockUi()V
    .locals 1

    .prologue
    .line 7001
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 7002
    const-string v0, "requestUpdateDockUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7009
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-eqz v0, :cond_1

    .line 7011
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setRequestedOrientation(I)V

    .line 7018
    :goto_0
    return-void

    .line 7014
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 2284
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2288
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 2289
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 2290
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 2291
    return-void
.end method

.method updateKeyguardPolicy(Z)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x40

    .line 2844
    if-eqz p1, :cond_0

    .line 2845
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2849
    :goto_0
    return-void

    .line 2847
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public updateRecordTimeUIFarEnd(J)V
    .locals 3
    .parameter "recordTimeForNearendOrFarEnd"

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2256
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2262
    :cond_0
    :goto_0
    return-void

    .line 2258
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2260
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateRecordTimeUINearEnd(J)V
    .locals 3
    .parameter "recordTimeForNearendOrFarEnd"

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2268
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2274
    :cond_0
    :goto_0
    return-void

    .line 2270
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2272
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
