.class public Lcom/android/settings/PhoneProfileVolumePreference;
.super Landroid/preference/ProfileVolumePreference;
.source "PhoneProfileVolumePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PhoneProfileVolumePreference$SavedState;
    }
.end annotation


# static fields
.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_TYPE:[I


# instance fields
.field private currentMode:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mNotificationVolumeTitle:Landroid/widget/TextView;

.field private mOldNotification:I

.field private mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

.field private originalMusicVol:I

.field private originalNotiVol:I

.field private originalRingVol:I

.field private originalSysVol:I

.field private profileMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_ID:[I

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    return-void

    .line 46
    :array_0
    .array-data 0x4
        0xf4t 0x0t 0xbt 0x7ft
        0xf1t 0x0t 0xbt 0x7ft
        0xf2t 0x0t 0xbt 0x7ft
    .end array-data

    .line 52
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/preference/ProfileVolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    invoke-virtual {p0, v3}, Lcom/android/settings/PhoneProfileVolumePreference;->setStreamType(I)V

    .line 73
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/android/settings/PhoneProfileVolumePreference;->setDialogLayoutResource(I)V

    .line 74
    const v0, 0x7f020050

    invoke-virtual {p0, v0}, Lcom/android/settings/PhoneProfileVolumePreference;->setDialogIcon(I)V

    .line 76
    sget-object v0, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    iput-object v0, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    .line 77
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_profile_edit_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_profile_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/PhoneProfileVolumePreference;->currentMode:I

    .line 85
    iget-object v0, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/PhoneProfileVolumePreference;->originalRingVol:I

    .line 86
    iget-object v0, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/PhoneProfileVolumePreference;->originalMusicVol:I

    .line 87
    iget-object v0, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/PhoneProfileVolumePreference;->originalSysVol:I

    .line 88
    iget-object v0, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/PhoneProfileVolumePreference;->originalNotiVol:I

    .line 90
    const-string v0, "PhoneProfileVolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profileMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  currentMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->currentMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_ID:[I

    return-object v0
.end method

.method private cleanup()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 342
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 343
    iget-object v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 346
    .local v0, dialog:Landroid/app/Dialog;
    iget-object v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->stop()V

    .line 347
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->originalRingVol:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 351
    iget-object v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->originalMusicVol:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 352
    iget-object v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->originalSysVol:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 353
    iget-object v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x5

    iget v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->originalNotiVol:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 356
    :cond_0
    iget-object v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 342
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_2
    return-void
.end method

.method private setNotificationVolumeVisibility(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 334
    iget-object v0, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mNotificationVolumeTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    return-void

    :cond_1
    move v1, v3

    .line 335
    goto :goto_0

    :cond_2
    move v1, v3

    .line 338
    goto :goto_1
.end method


# virtual methods
.method public onActivityStop()V
    .locals 0

    .prologue
    .line 279
    invoke-super {p0}, Landroid/preference/ProfileVolumePreference;->onActivityStop()V

    .line 280
    invoke-direct {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->cleanup()V

    .line 281
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/preference/ProfileVolumePreference;->onBindDialogView(Landroid/view/View;)V

    .line 99
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 100
    sget-object v2, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_ID:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 101
    .local v1, seekBar:Landroid/widget/SeekBar;
    iget-object v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    new-instance v3, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v0

    invoke-direct {v3, p0, v4, v1, v5}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/ProfileVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v3, v2, v0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v1           #seekBar:Landroid/widget/SeekBar;
    :cond_0
    const v2, 0x7f0b00f3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mNotificationVolumeTitle:Landroid/widget/TextView;

    .line 128
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v6, 0x5

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 284
    if-nez p2, :cond_2

    move v1, v5

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings/PhoneProfileVolumePreference;->setNotificationVolumeVisibility(Z)V

    .line 286
    if-eqz p2, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 291
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v6, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 296
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_0
    iget v1, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    if-ne v1, v5, :cond_4

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_notifications_use_ring_volume"

    if-eqz p2, :cond_3

    move v3, v5

    :goto_1
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    :goto_2
    iget v1, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    iget v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->currentMode:I

    if-ne v1, v2, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notifications_use_ring_volume"

    if-eqz p2, :cond_10

    move v3, v5

    :goto_3
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 323
    :cond_1
    return-void

    :cond_2
    move v1, v4

    .line 284
    goto :goto_0

    :cond_3
    move v3, v4

    .line 297
    goto :goto_1

    .line 299
    :cond_4
    iget v1, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    if-ne v1, v3, :cond_6

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "meeting_notifications_use_ring_volume"

    if-eqz p2, :cond_5

    move v3, v5

    :goto_4
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_4

    .line 302
    :cond_6
    iget v1, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "outdoor_notifications_use_ring_volume"

    if-eqz p2, :cond_7

    move v3, v5

    :goto_5
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    move v3, v4

    goto :goto_5

    .line 305
    :cond_8
    iget v1, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user1_notifications_use_ring_volume"

    if-eqz p2, :cond_9

    move v3, v5

    :goto_6
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_9
    move v3, v4

    goto :goto_6

    .line 308
    :cond_a
    iget v1, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    if-ne v1, v6, :cond_c

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user2_notifications_use_ring_volume"

    if-eqz p2, :cond_b

    move v3, v5

    :goto_7
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_b
    move v3, v4

    goto :goto_7

    .line 311
    :cond_c
    iget v1, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_e

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user3_notifications_use_ring_volume"

    if-eqz p2, :cond_d

    move v3, v5

    :goto_8
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_d
    move v3, v4

    goto :goto_8

    .line 315
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "normal_notifications_use_ring_volume"

    if-eqz p2, :cond_f

    move v3, v5

    :goto_9
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_f
    move v3, v4

    goto :goto_9

    :cond_10
    move v3, v4

    .line 320
    goto/16 :goto_3
.end method

.method protected onDialogClosed(Z)V
    .locals 11
    .parameter "positiveResult"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 132
    invoke-super {p0, p1}, Landroid/preference/ProfileVolumePreference;->onDialogClosed(Z)V

    .line 134
    if-nez p1, :cond_12

    .line 138
    iget v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    iget v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->currentMode:I

    if-eq v2, v3, :cond_0

    .line 139
    iget-object v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->originalRingVol:I

    invoke-virtual {v2, v8, v3, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 140
    iget-object v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->originalMusicVol:I

    invoke-virtual {v2, v10, v3, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 141
    iget-object v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->originalSysVol:I

    invoke-virtual {v2, v7, v3, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 142
    iget-object v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->originalNotiVol:I

    invoke-virtual {v2, v9, v3, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 144
    :cond_0
    iget v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mOldNotification:I

    if-ne v2, v7, :cond_2

    move v1, v7

    .line 145
    .local v1, isChecked:Z
    :goto_0
    if-nez v1, :cond_3

    move v2, v7

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/settings/PhoneProfileVolumePreference;->setNotificationVolumeVisibility(Z)V

    .line 147
    iget v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    if-ne v2, v7, :cond_5

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_notifications_use_ring_volume"

    if-eqz v1, :cond_4

    move v4, v7

    :goto_2
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    :goto_3
    iget v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    iget v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->currentMode:I

    if-ne v2, v3, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notifications_use_ring_volume"

    if-eqz v1, :cond_11

    move v4, v7

    :goto_4
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 180
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v0, v9, v2, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 274
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_1
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->cleanup()V

    .line 275
    return-void

    .end local v1           #isChecked:Z
    :cond_2
    move v1, v6

    .line 144
    goto :goto_0

    .restart local v1       #isChecked:Z
    :cond_3
    move v2, v6

    .line 145
    goto :goto_1

    :cond_4
    move v4, v6

    .line 148
    goto :goto_2

    .line 150
    :cond_5
    iget v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    if-ne v2, v8, :cond_7

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "meeting_notifications_use_ring_volume"

    if-eqz v1, :cond_6

    move v4, v7

    :goto_6
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_6
    move v4, v6

    goto :goto_6

    .line 153
    :cond_7
    iget v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    if-ne v2, v10, :cond_9

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "outdoor_notifications_use_ring_volume"

    if-eqz v1, :cond_8

    move v4, v7

    :goto_7
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_8
    move v4, v6

    goto :goto_7

    .line 156
    :cond_9
    iget v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_b

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user1_notifications_use_ring_volume"

    if-eqz v1, :cond_a

    move v4, v7

    :goto_8
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_a
    move v4, v6

    goto :goto_8

    .line 159
    :cond_b
    iget v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    if-ne v2, v9, :cond_d

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user2_notifications_use_ring_volume"

    if-eqz v1, :cond_c

    move v4, v7

    :goto_9
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_c
    move v4, v6

    goto :goto_9

    .line 162
    :cond_d
    iget v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_f

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user3_notifications_use_ring_volume"

    if-eqz v1, :cond_e

    move v4, v7

    :goto_a
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_e
    move v4, v6

    goto :goto_a

    .line 166
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "normal_notifications_use_ring_volume"

    if-eqz v1, :cond_10

    move v4, v7

    :goto_b
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_10
    move v4, v6

    goto :goto_b

    :cond_11
    move v4, v6

    .line 172
    goto/16 :goto_4

    .line 188
    .end local v1           #isChecked:Z
    :cond_12
    iget v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mOldNotification:I

    if-ne v2, v7, :cond_13

    move v1, v7

    .line 189
    .restart local v1       #isChecked:Z
    :goto_c
    if-nez v1, :cond_14

    move v2, v7

    :goto_d
    invoke-direct {p0, v2}, Lcom/android/settings/PhoneProfileVolumePreference;->setNotificationVolumeVisibility(Z)V

    .line 191
    const-string v2, "PhoneProfileVolumePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " 1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " 2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    if-ne v2, v7, :cond_16

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_volume_notification"

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_volume_music"

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_volume_system"

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_notifications_use_ring_volume"

    if-eqz v1, :cond_15

    move v4, v7

    :goto_e
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    :goto_f
    iget v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    iget v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->currentMode:I

    if-eq v2, v3, :cond_22

    .line 264
    iget-object v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->originalRingVol:I

    invoke-virtual {v2, v8, v3, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 265
    iget-object v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->originalMusicVol:I

    invoke-virtual {v2, v10, v3, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 266
    iget-object v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->originalSysVol:I

    invoke-virtual {v2, v7, v3, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 267
    iget-object v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/settings/PhoneProfileVolumePreference;->originalNotiVol:I

    invoke-virtual {v2, v9, v3, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_5

    .end local v1           #isChecked:Z
    :cond_13
    move v1, v6

    .line 188
    goto/16 :goto_c

    .restart local v1       #isChecked:Z
    :cond_14
    move v2, v6

    .line 189
    goto/16 :goto_d

    :cond_15
    move v4, v6

    .line 201
    goto :goto_e

    .line 203
    :cond_16
    iget v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    if-ne v2, v8, :cond_18

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "meeting_volume_notification"

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "meeting_volume_music"

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "meeting_volume_system"

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "meeting_notifications_use_ring_volume"

    if-eqz v1, :cond_17

    move v4, v7

    :goto_10
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_f

    :cond_17
    move v4, v6

    goto :goto_10

    .line 212
    :cond_18
    iget v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    if-ne v2, v10, :cond_1a

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "outdoor_volume_notification"

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "outdoor_volume_music"

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "outdoor_volume_system"

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "outdoor_notifications_use_ring_volume"

    if-eqz v1, :cond_19

    move v4, v7

    :goto_11
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_f

    :cond_19
    move v4, v6

    goto :goto_11

    .line 221
    :cond_1a
    iget v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1c

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user1_volume_notification"

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user1_volume_music"

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user1_volume_system"

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user1_notifications_use_ring_volume"

    if-eqz v1, :cond_1b

    move v4, v7

    :goto_12
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_f

    :cond_1b
    move v4, v6

    goto :goto_12

    .line 230
    :cond_1c
    iget v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    if-ne v2, v9, :cond_1e

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user2_volume_notification"

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user2_volume_music"

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user2_volume_system"

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user2_notifications_use_ring_volume"

    if-eqz v1, :cond_1d

    move v4, v7

    :goto_13
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_f

    :cond_1d
    move v4, v6

    goto :goto_13

    .line 239
    :cond_1e
    iget v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->profileMode:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_20

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user3_volume_notification"

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user3_volume_music"

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user3_volume_system"

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user3_notifications_use_ring_volume"

    if-eqz v1, :cond_1f

    move v4, v7

    :goto_14
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_f

    :cond_1f
    move v4, v6

    goto :goto_14

    .line 250
    :cond_20
    const-string v2, "PhoneProfileVolumePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "normal_volume_notification"

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "normal_volume_music"

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "normal_volume_system"

    iget-object v4, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "normal_notifications_use_ring_volume"

    if-eqz v1, :cond_21

    move v4, v7

    :goto_15
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_f

    :cond_21
    move v4, v6

    goto :goto_15

    .line 270
    :cond_22
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notifications_use_ring_volume"

    if-eqz v1, :cond_23

    move v4, v7

    :goto_16
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_5

    :cond_23
    move v4, v6

    goto :goto_16
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    .line 382
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/PhoneProfileVolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 384
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/ProfileVolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 397
    :cond_1
    return-void

    .line 388
    :cond_2
    check-cast p1, Lcom/android/settings/PhoneProfileVolumePreference$SavedState;

    .line 389
    invoke-virtual {p1}, Lcom/android/settings/PhoneProfileVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/ProfileVolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 390
    sget-object v0, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/android/settings/PhoneProfileVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/ProfileVolumePreference$VolumeStore;

    move-result-object v0

    .line 391
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 392
    iget-object v2, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    .line 393
    if-eqz v2, :cond_3

    .line 394
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/ProfileVolumePreference$VolumeStore;)V

    .line 391
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onSampleStarting(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;)V
    .locals 4
    .parameter "volumizer"

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/preference/ProfileVolumePreference;->onSampleStarting(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;)V

    .line 328
    iget-object v0, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 329
    .local v3, vol:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 328
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    .end local v3           #vol:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 363
    invoke-super {p0}, Landroid/preference/ProfileVolumePreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 364
    .local v2, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileVolumePreference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    .line 377
    :goto_0
    return-object v5

    .line 369
    :cond_0
    new-instance v1, Lcom/android/settings/PhoneProfileVolumePreference$SavedState;

    invoke-direct {v1, v2}, Lcom/android/settings/PhoneProfileVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 370
    .local v1, myState:Lcom/android/settings/PhoneProfileVolumePreference$SavedState;
    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/android/settings/PhoneProfileVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/ProfileVolumePreference$VolumeStore;

    move-result-object v4

    .line 371
    .local v4, volumeStore:[Landroid/preference/ProfileVolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v5, Lcom/android/settings/PhoneProfileVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 372
    iget-object v5, p0, Lcom/android/settings/PhoneProfileVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    aget-object v3, v5, v0

    .line 373
    .local v3, vol:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_1

    .line 374
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/ProfileVolumePreference$VolumeStore;)V

    .line 371
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3           #vol:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;
    :cond_2
    move-object v5, v1

    .line 377
    goto :goto_0
.end method
