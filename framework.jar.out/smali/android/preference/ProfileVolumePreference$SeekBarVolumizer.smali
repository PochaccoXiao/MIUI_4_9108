.class public Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "ProfileVolumePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/ProfileVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mOriginalStreamVolume:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStreamType:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Landroid/preference/ProfileVolumePreference;


# direct methods
.method public constructor <init>(Landroid/preference/ProfileVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"

    .prologue
    .line 322
    iput-object p1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 301
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 304
    new-instance v0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer$1;

    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer$1;-><init>(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 323
    iput-object p2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 324
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 325
    iput p4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    .line 326
    iput-object p3, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 328
    invoke-direct {p0, p3}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;)V

    .line 329
    return-void
.end method

.method static synthetic access$000(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 291
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 291
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 291
    iget v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method private initSeekBar(Landroid/widget/SeekBar;)V
    .locals 13
    .parameter "seekBar"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x5

    .line 332
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 333
    const-string v4, "ProfileVolumePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initSeekBar : seekBar.setMax : mAudioManager.getStreamMaxVolume(mStreamType) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v7, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v4, "ProfileVolumePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initSeekBar : mStreamType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sound_profile_edit_mode"

    invoke-static {v4, v5, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 341
    .local v2, editMode:I
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sound_profile_mode"

    invoke-static {v4, v5, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 344
    .local v0, currentMode:I
    const-string v4, "ProfileVolumePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "editMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\tcurrentMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    if-ne v2, v10, :cond_7

    .line 347
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v9, :cond_4

    .line 348
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_volume_ring"

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 468
    :cond_0
    :goto_0
    const-string v4, "ProfileVolumePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initSeekBar : mStreamType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  volume :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v9, :cond_1f

    .line 471
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v4, v9, v5, v12}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 482
    :cond_1
    :goto_1
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {p1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 483
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 484
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v6, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    aget-object v5, v5, v6

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v12, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 488
    const/4 v1, 0x0

    .line 491
    .local v1, defaultUri:Landroid/net/Uri;
    if-ne v2, v10, :cond_23

    .line 492
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v8, :cond_22

    .line 493
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_notification_sound"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 541
    .local v3, ringtoneName:Ljava/lang/String;
    :goto_2
    if-eqz v3, :cond_2

    .line 542
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 544
    :cond_2
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    iput-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 545
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_3

    .line 546
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v5, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v4, v5}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 548
    :cond_3
    return-void

    .line 351
    .end local v1           #defaultUri:Landroid/net/Uri;
    .end local v3           #ringtoneName:Ljava/lang/String;
    :cond_4
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v10, :cond_5

    .line 352
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_volume_system"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 355
    :cond_5
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v11, :cond_6

    .line 356
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_volume_music"

    const/16 v6, 0xb

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 359
    :cond_6
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v8, :cond_0

    .line 360
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_volume_notification"

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 363
    :cond_7
    if-ne v2, v9, :cond_b

    .line 364
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v9, :cond_8

    .line 365
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "meeting_volume_ring"

    invoke-static {v4, v5, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 368
    :cond_8
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v10, :cond_9

    .line 369
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "meeting_volume_system"

    invoke-static {v4, v5, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 372
    :cond_9
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v11, :cond_a

    .line 373
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "meeting_volume_music"

    const/16 v6, 0xb

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 376
    :cond_a
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v8, :cond_0

    .line 377
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "meeting_volume_notification"

    invoke-static {v4, v5, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 380
    :cond_b
    if-ne v2, v11, :cond_f

    .line 381
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v9, :cond_c

    .line 382
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "outdoor_volume_ring"

    const/4 v6, 0x7

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 385
    :cond_c
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v10, :cond_d

    .line 386
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "outdoor_volume_system"

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 389
    :cond_d
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v11, :cond_e

    .line 390
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "outdoor_volume_music"

    const/16 v6, 0xb

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 393
    :cond_e
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v8, :cond_0

    .line 394
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "outdoor_volume_notification"

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 397
    :cond_f
    const/4 v4, 0x4

    if-ne v2, v4, :cond_13

    .line 398
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v9, :cond_10

    .line 399
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user1_volume_ring"

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 402
    :cond_10
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v10, :cond_11

    .line 403
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user1_volume_system"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 406
    :cond_11
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v11, :cond_12

    .line 407
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user1_volume_music"

    const/16 v6, 0xb

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 410
    :cond_12
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v8, :cond_0

    .line 411
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user1_volume_notification"

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 414
    :cond_13
    if-ne v2, v8, :cond_17

    .line 415
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v9, :cond_14

    .line 416
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user2_volume_ring"

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 419
    :cond_14
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v10, :cond_15

    .line 420
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user2_volume_system"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 423
    :cond_15
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v11, :cond_16

    .line 424
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user2_volume_music"

    const/16 v6, 0xb

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 427
    :cond_16
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v8, :cond_0

    .line 428
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user2_volume_notification"

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 431
    :cond_17
    const/4 v4, 0x6

    if-ne v2, v4, :cond_1b

    .line 432
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v9, :cond_18

    .line 433
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user3_volume_ring"

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 436
    :cond_18
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v10, :cond_19

    .line 437
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user3_volume_system"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 440
    :cond_19
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v11, :cond_1a

    .line 441
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user3_volume_music"

    const/16 v6, 0xb

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 444
    :cond_1a
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v8, :cond_0

    .line 445
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user3_volume_notification"

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 450
    :cond_1b
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v9, :cond_1c

    .line 451
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "normal_volume_ring"

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 454
    :cond_1c
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v10, :cond_1d

    .line 455
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "normal_volume_system"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 458
    :cond_1d
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v11, :cond_1e

    .line 459
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "normal_volume_music"

    const/16 v6, 0xb

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 462
    :cond_1e
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v8, :cond_0

    .line 463
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v4}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "normal_volume_notification"

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 473
    :cond_1f
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v11, :cond_20

    .line 474
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v4, v11, v5, v12}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_1

    .line 476
    :cond_20
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v10, :cond_21

    .line 477
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v4, v10, v5, v12}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_1

    .line 479
    :cond_21
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v8, :cond_1

    .line 480
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v4, v8, v5, v12}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_1

    .line 496
    .restart local v1       #defaultUri:Landroid/net/Uri;
    :cond_22
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_ringtone"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #ringtoneName:Ljava/lang/String;
    goto/16 :goto_2

    .line 498
    .end local v3           #ringtoneName:Ljava/lang/String;
    :cond_23
    if-ne v2, v9, :cond_25

    .line 499
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v8, :cond_24

    .line 500
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "meeting_notification_sound"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #ringtoneName:Ljava/lang/String;
    goto/16 :goto_2

    .line 503
    .end local v3           #ringtoneName:Ljava/lang/String;
    :cond_24
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "meeting_ringtone"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #ringtoneName:Ljava/lang/String;
    goto/16 :goto_2

    .line 505
    .end local v3           #ringtoneName:Ljava/lang/String;
    :cond_25
    if-ne v2, v11, :cond_27

    .line 506
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v8, :cond_26

    .line 507
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "outdoor_notification_sound"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #ringtoneName:Ljava/lang/String;
    goto/16 :goto_2

    .line 510
    .end local v3           #ringtoneName:Ljava/lang/String;
    :cond_26
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "outdoor_ringtone"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #ringtoneName:Ljava/lang/String;
    goto/16 :goto_2

    .line 512
    .end local v3           #ringtoneName:Ljava/lang/String;
    :cond_27
    const/4 v4, 0x4

    if-ne v2, v4, :cond_29

    .line 513
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v8, :cond_28

    .line 514
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user1_notification_sound"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #ringtoneName:Ljava/lang/String;
    goto/16 :goto_2

    .line 517
    .end local v3           #ringtoneName:Ljava/lang/String;
    :cond_28
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user1_ringtone"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #ringtoneName:Ljava/lang/String;
    goto/16 :goto_2

    .line 519
    .end local v3           #ringtoneName:Ljava/lang/String;
    :cond_29
    if-ne v2, v8, :cond_2b

    .line 520
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v8, :cond_2a

    .line 521
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user2_notification_sound"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #ringtoneName:Ljava/lang/String;
    goto/16 :goto_2

    .line 524
    .end local v3           #ringtoneName:Ljava/lang/String;
    :cond_2a
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user2_ringtone"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #ringtoneName:Ljava/lang/String;
    goto/16 :goto_2

    .line 526
    .end local v3           #ringtoneName:Ljava/lang/String;
    :cond_2b
    const/4 v4, 0x6

    if-ne v2, v4, :cond_2d

    .line 527
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v8, :cond_2c

    .line 528
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user3_notification_sound"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #ringtoneName:Ljava/lang/String;
    goto/16 :goto_2

    .line 531
    .end local v3           #ringtoneName:Ljava/lang/String;
    :cond_2c
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user3_ringtone"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #ringtoneName:Ljava/lang/String;
    goto/16 :goto_2

    .line 534
    .end local v3           #ringtoneName:Ljava/lang/String;
    :cond_2d
    iget v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v4, v8, :cond_2e

    .line 535
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "normal_notification_sound"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #ringtoneName:Ljava/lang/String;
    goto/16 :goto_2

    .line 538
    .end local v3           #ringtoneName:Ljava/lang/String;
    :cond_2e
    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "normal_ringtone"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #ringtoneName:Ljava/lang/String;
    goto/16 :goto_2
.end method

.method private sample()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v0, p0}, Landroid/preference/ProfileVolumePreference;->onSampleStarting(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;)V

    .line 608
    iget v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 610
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 611
    const-string v0, "ProfileVolumePreference"

    const-string/jumbo v1, "sample : mRingtone.play()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_0
    return-void
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 3
    .parameter "amount"

    .prologue
    .line 626
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 627
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    const-string v0, "ProfileVolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeVolumeBy : (mRingtone != null && !mRingtone.isPlaying()) amount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-direct {p0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->sample()V

    .line 631
    :cond_0
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 632
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    const/4 v2, 0x1

    const-string v3, "ProfileVolumePreference"

    .line 565
    if-nez p3, :cond_0

    .line 580
    :goto_0
    return-void

    .line 569
    :cond_0
    const-string v0, "ProfileVolumePreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStreamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v0, v2, :cond_1

    .line 571
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v0, p0}, Landroid/preference/ProfileVolumePreference;->onSampleStarting(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;)V

    .line 572
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->playSoundEffect(I)V

    .line 573
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 574
    const-string v0, "ProfileVolumePreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onProgressChanged : AudioManager.STREAM_SYSTEM["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 578
    :cond_1
    invoke-virtual {p0, p2}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/preference/ProfileVolumePreference$VolumeStore;)V
    .locals 2
    .parameter "volumeStore"

    .prologue
    .line 642
    iget v0, p1, Landroid/preference/ProfileVolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 643
    iget v0, p1, Landroid/preference/ProfileVolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 644
    iget v0, p1, Landroid/preference/ProfileVolumePreference$VolumeStore;->volume:I

    iput v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 645
    iget v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 647
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/preference/ProfileVolumePreference$VolumeStore;)V
    .locals 1
    .parameter "volumeStore"

    .prologue
    .line 635
    iget v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 636
    iget v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Landroid/preference/ProfileVolumePreference$VolumeStore;->volume:I

    .line 637
    iget v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Landroid/preference/ProfileVolumePreference$VolumeStore;->originalVolume:I

    .line 639
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 590
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    invoke-direct {p0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->sample()V

    .line 593
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 596
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    invoke-direct {p0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->sample()V

    .line 599
    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 584
    iput p1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 585
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 586
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 587
    return-void
.end method

.method public revertVolume()V
    .locals 4

    .prologue
    .line 558
    const-string v0, "ProfileVolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "revertVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "vol:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 561
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 602
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 603
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 551
    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 552
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 553
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 554
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 619
    :cond_0
    return-void
.end method
