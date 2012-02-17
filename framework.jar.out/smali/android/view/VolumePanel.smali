.class public Landroid/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"


# static fields
.field private static final ALARM_VOLUME_TEXT:I = 0x10403b8

.field private static final BEEP_DURATION:I = 0x96

.field private static final BLUETOOTH_INCALL_VOLUME_TEXT:I = 0x10403b7

.field static EAR_PROTECT_LIMIT_INDEX_VALUE:I = 0x0

.field private static final FM_VOLUME_TEXT:I = 0x10403b3

.field private static final FREE_DELAY:I = 0x2710

.field private static final INCALL_VOLUME_TEXT:I = 0x10403b6

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final MUSIC_VOLUME_TEXT:I = 0x10403b2

.field private static final NOTIFICATION_VOLUME_TEXT:I = 0x10403b9

.field private static final NUM_VOLUME_EFFECT:I = 0x1

.field public static final PLAY_SOUND_DELAY:I = 0x0

.field private static final RINGTONE_VOLUME_TEXT:I = 0x10403b1

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:[Ljava/lang/String; = null

.field private static final SOUND_VOLUME_CONTROL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final UNKNOWN_VOLUME_TEXT:I = 0x10403ba

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field static getCurrentVol:I

.field static mFlag_isMusic:Z

.field static mPrevVol:I


# instance fields
.field private SOUND_EFFECT_FILES_MAP:[[I

.field private final mAdditionalMessage:Landroid/widget/TextView;

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private mFlag_isFMRadio:Z

.field private mGetFMCurrentVol:I

.field private final mLargeStreamIcon:Landroid/widget/ImageView;

.field private final mLevel:Landroid/widget/ProgressBar;

.field private final mMessage:Landroid/widget/TextView;

.field private mPrevFMVol:I

.field private mRingIsSilent:Z

.field private final mSmallStreamIcon:Landroid/widget/ImageView;

.field private mSoundPool:Landroid/media/SoundPool;

.field private final mToast:Landroid/widget/Toast;

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private final mWarningMessage:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    sput v2, Landroid/view/VolumePanel;->getCurrentVol:I

    .line 52
    sput v2, Landroid/view/VolumePanel;->mPrevVol:I

    .line 53
    sput-boolean v2, Landroid/view/VolumePanel;->mFlag_isMusic:Z

    .line 56
    sput-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "TW_Volume_control.ogg"

    aput-object v1, v0, v2

    sput-object v0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 9
    .parameter "context"
    .parameter "volumeService"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 136
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 57
    iput v7, p0, Landroid/view/VolumePanel;->mGetFMCurrentVol:I

    .line 58
    iput v7, p0, Landroid/view/VolumePanel;->mPrevFMVol:I

    .line 59
    iput-boolean v7, p0, Landroid/view/VolumePanel;->mFlag_isFMRadio:Z

    .line 131
    new-array v4, v8, [[I

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    aput-object v5, v4, v7

    iput-object v4, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    .line 137
    iput-object p1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 138
    const-string v4, "audio"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 139
    iput-object p2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 140
    new-instance v4, Landroid/widget/Toast;

    invoke-direct {v4, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    .line 142
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 144
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x1090074

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    .line 145
    .local v3, view:Landroid/view/View;
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/view/VolumePanel;->mMessage:Landroid/widget/TextView;

    .line 146
    const v4, 0x102025d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    .line 148
    const v4, 0x1020260

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/view/VolumePanel;->mWarningMessage:Landroid/widget/TextView;

    .line 149
    const v4, 0x102025c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    .line 150
    const v4, 0x102025e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    .line 151
    const v4, 0x102025f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    .line 153
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v4

    new-array v4, v4, [Landroid/media/ToneGenerator;

    iput-object v4, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 154
    new-instance v4, Landroid/os/Vibrator;

    invoke-direct {v4}, Landroid/os/Vibrator;-><init>()V

    iput-object v4, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 156
    new-instance v4, Landroid/media/SoundPool;

    invoke-direct {v4, v8, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v4, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    .line 157
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/media/audio/ui/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v6, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    aget v6, v6, v7

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, filePath:Ljava/lang/String;
    iget-object v4, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    iget-object v5, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v5, v1, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    aput v5, v4, v8

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v1           #filePath:Ljava/lang/String;
    :cond_0
    return-void

    .line 131
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 3
    .parameter "streamType"

    .prologue
    .line 420
    monitor-enter p0

    .line 421
    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x64

    invoke-direct {v1, p1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v1, v0, p1

    monitor-exit p0

    move-object v0, v1

    .line 424
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v0, v0, p1

    monitor-exit p0

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setLargeIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 449
    iget-object v0, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 452
    return-void
.end method

.method private setRingerIcon()V
    .locals 5

    .prologue
    .line 459
    iget-object v2, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    iget-object v2, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    .line 465
    .local v1, ringerMode:I
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRingerIcon(), ringerMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    if-nez v1, :cond_1

    .line 468
    const v0, 0x10801ec

    .line 474
    .local v0, icon:I
    :goto_0
    iget-object v2, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 475
    return-void

    .line 469
    .end local v0           #icon:I
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 470
    const v0, 0x10801e7

    .restart local v0       #icon:I
    goto :goto_0

    .line 472
    .end local v0           #icon:I
    :cond_2
    const v0, 0x10801e9

    .restart local v0       #icon:I
    goto :goto_0
.end method

.method private setSmallIcon(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 435
    iget-object v0, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const v1, 0x10801ed

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 441
    return-void

    .line 438
    :cond_0
    const v1, 0x10801ee

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 495
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 523
    :goto_0
    return-void

    .line 498
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 503
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 508
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 513
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 480
    iget-object v1, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 481
    iget-object v1, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 483
    monitor-enter p0

    .line 484
    :try_start_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 485
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 488
    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 484
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 490
    :cond_1
    monitor-exit p0

    .line 491
    return-void

    .line 490
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onPlaySound(II)V
    .locals 8
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v7, 0x3

    .line 372
    invoke-virtual {p0, v7}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0, v7}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 375
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 378
    :cond_0
    monitor-enter p0

    .line 379
    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 380
    monitor-exit p0

    .line 391
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v0, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->setStreamType(I)V

    .line 383
    iget-object v0, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 389
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    invoke-virtual {p0, v7}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 389
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onShowVolumeChanged(II)V
    .locals 13
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 198
    iget-object v9, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v9, p1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v1

    .line 199
    .local v1, index:I
    const v5, 0x10403ba

    .line 200
    .local v5, message:I
    const/4 v0, 0x0

    .line 201
    .local v0, additionalMessage:I
    const/4 v8, 0x0

    .line 202
    .local v8, warningMessage:I
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    .line 204
    sget-boolean v9, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v9, :cond_0

    .line 205
    const-string v9, "VolumePanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onShowVolumeChanged(streamType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", flags: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    iget-object v9, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v9, p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v4

    .line 212
    .local v4, max:I
    packed-switch p1, :pswitch_data_0

    .line 316
    :cond_1
    :goto_0
    :pswitch_0
    sget v9, Landroid/view/VolumePanel;->getCurrentVol:I

    sput v9, Landroid/view/VolumePanel;->mPrevVol:I

    .line 317
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, messageString:Ljava/lang/String;
    iget-object v9, p0, Landroid/view/VolumePanel;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 319
    iget-object v9, p0, Landroid/view/VolumePanel;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :cond_2
    if-nez v0, :cond_c

    .line 323
    iget-object v9, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    :goto_1
    iget-object v9, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Landroid/widget/ProgressBar;->getMax()I

    move-result v9

    if-eq v4, v9, :cond_3

    .line 330
    iget-object v9, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    invoke-virtual {v9, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 332
    :cond_3
    iget-object v9, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    invoke-virtual {v9, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 334
    sget-boolean v9, Landroid/view/VolumePanel;->mFlag_isMusic:Z

    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    iget-boolean v9, p0, Landroid/view/VolumePanel;->mFlag_isFMRadio:Z

    if-eqz v9, :cond_d

    .line 336
    :cond_4
    sget-boolean v9, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v9, :cond_5

    .line 337
    const-string v9, "VolumePanel"

    const-string v10, "mFlag_isMusic == true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_5
    sget-boolean v9, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v9, :cond_6

    .line 340
    const-string v9, "VolumePanel"

    const-string v10, "Show Waring Toast"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_6
    const v8, 0x10404cc

    .line 344
    iget-object v9, p0, Landroid/view/VolumePanel;->mWarningMessage:Landroid/widget/TextView;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    const/4 v9, 0x0

    sput-boolean v9, Landroid/view/VolumePanel;->mFlag_isMusic:Z

    .line 347
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/view/VolumePanel;->mFlag_isFMRadio:Z

    .line 356
    :goto_2
    iget-object v9, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    iget-object v10, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 357
    iget-object v9, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Toast;->setDuration(I)V

    .line 358
    iget-object v9, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    const/16 v10, 0x30

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/Toast;->setGravity(III)V

    .line 359
    iget-object v9, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 362
    and-int/lit8 v9, p2, 0x10

    if-eqz v9, :cond_7

    iget-object v9, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v9, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v9}, Landroid/media/AudioService;->getRingerMode()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    iget-object v9, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/media/AudioService;->shouldVibrate(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 366
    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x12c

    invoke-virtual {p0, v9, v10, v11}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 368
    :cond_7
    return-void

    .line 215
    .end local v6           #messageString:Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0}, Landroid/view/VolumePanel;->setRingerIcon()V

    .line 216
    const v5, 0x10403b1

    .line 217
    iget-object v9, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 219
    .local v7, ringuri:Landroid/net/Uri;
    if-nez v7, :cond_1

    .line 220
    const v0, 0x10403b5

    .line 222
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 229
    .end local v7           #ringuri:Landroid/net/Uri;
    :pswitch_2
    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v9

    sput v9, Landroid/view/VolumePanel;->EAR_PROTECT_LIMIT_INDEX_VALUE:I

    .line 231
    iget-object v9, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    sput v9, Landroid/view/VolumePanel;->getCurrentVol:I

    .line 232
    iget-object v9, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v10, "audioParam;curDevice"

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, isMusicHPH:Ljava/lang/String;
    const-string v9, "HPH"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    sget v9, Landroid/view/VolumePanel;->getCurrentVol:I

    sget v10, Landroid/view/VolumePanel;->EAR_PROTECT_LIMIT_INDEX_VALUE:I

    if-ne v9, v10, :cond_9

    sget v9, Landroid/view/VolumePanel;->mPrevVol:I

    sget v10, Landroid/view/VolumePanel;->EAR_PROTECT_LIMIT_INDEX_VALUE:I

    if-ge v9, v10, :cond_9

    .line 239
    sget-boolean v9, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v9, :cond_8

    .line 240
    const-string v9, "VolumePanel"

    const-string v10, "kdh debug line-1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_8
    const/4 v9, 0x1

    sput-boolean v9, Landroid/view/VolumePanel;->mFlag_isMusic:Z

    .line 245
    :cond_9
    const v5, 0x10403b2

    .line 246
    iget-object v9, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 247
    const v0, 0x10403b4

    .line 249
    const v9, 0x10801ea

    invoke-direct {p0, v9}, Landroid/view/VolumePanel;->setLargeIcon(I)V

    goto/16 :goto_0

    .line 251
    :cond_a
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    .line 265
    .end local v2           #isMusicHPH:Ljava/lang/String;
    :pswitch_3
    add-int/lit8 v1, v1, 0x1

    .line 266
    add-int/lit8 v4, v4, 0x1

    .line 267
    const v5, 0x10403b6

    .line 268
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    .line 273
    :pswitch_4
    const v5, 0x10403b8

    .line 274
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    .line 279
    :pswitch_5
    const v5, 0x10403b9

    .line 280
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    .line 281
    iget-object v9, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 283
    .restart local v7       #ringuri:Landroid/net/Uri;
    if-nez v7, :cond_1

    .line 284
    const v0, 0x10403b5

    .line 286
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 297
    .end local v7           #ringuri:Landroid/net/Uri;
    :pswitch_6
    add-int/lit8 v1, v1, 0x1

    .line 298
    add-int/lit8 v4, v4, 0x1

    .line 299
    const v5, 0x10403b7

    .line 300
    const v9, 0x10801eb

    invoke-direct {p0, v9}, Landroid/view/VolumePanel;->setLargeIcon(I)V

    goto/16 :goto_0

    .line 305
    :pswitch_7
    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v9

    sput v9, Landroid/view/VolumePanel;->EAR_PROTECT_LIMIT_INDEX_VALUE:I

    .line 306
    iget-object v9, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    iput v9, p0, Landroid/view/VolumePanel;->mGetFMCurrentVol:I

    .line 307
    iget-object v9, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v3

    .line 308
    .local v3, isSpeakerOn:Z
    if-nez v3, :cond_b

    iget v9, p0, Landroid/view/VolumePanel;->mGetFMCurrentVol:I

    sget v10, Landroid/view/VolumePanel;->EAR_PROTECT_LIMIT_INDEX_VALUE:I

    if-ne v9, v10, :cond_b

    iget v9, p0, Landroid/view/VolumePanel;->mPrevFMVol:I

    sget v10, Landroid/view/VolumePanel;->EAR_PROTECT_LIMIT_INDEX_VALUE:I

    if-ge v9, v10, :cond_b

    .line 309
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/view/VolumePanel;->mFlag_isFMRadio:Z

    .line 310
    :cond_b
    iget v9, p0, Landroid/view/VolumePanel;->mGetFMCurrentVol:I

    iput v9, p0, Landroid/view/VolumePanel;->mPrevFMVol:I

    .line 311
    const v5, 0x10403b3

    .line 312
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    .line 325
    .end local v3           #isSpeakerOn:Z
    .restart local v6       #messageString:Ljava/lang/String;
    :cond_c
    iget-object v9, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    iget-object v9, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 351
    :cond_d
    sget-boolean v9, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v9, :cond_e

    .line 352
    const-string v9, "VolumePanel"

    const-string v10, "mFlag_isMusic != true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_e
    iget-object v9, p0, Landroid/view/VolumePanel;->mWarningMessage:Landroid/widget/TextView;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 212
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 395
    monitor-enter p0

    .line 396
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 397
    .local v1, numStreamTypes:I
    const/4 v3, 0x1

    sub-int v0, v1, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 398
    iget-object v3, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 399
    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 400
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 397
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 403
    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 404
    return-void

    .line 403
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 176
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 182
    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_2

    .line 183
    invoke-virtual {p0, v3}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 184
    invoke-virtual {p0, v3, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 187
    :cond_2
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_3

    .line 188
    invoke-virtual {p0, v3}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 189
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 190
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 193
    :cond_3
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 194
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 195
    return-void
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 166
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
