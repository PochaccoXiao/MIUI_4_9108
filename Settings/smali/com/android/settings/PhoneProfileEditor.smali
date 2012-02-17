.class public Lcom/android/settings/PhoneProfileEditor;
.super Landroid/preference/PreferenceActivity;
.source "PhoneProfileEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private currentMode:I

.field private editMode:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNotificationPulse:Landroid/preference/CheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerVolume:Lcom/android/settings/PhoneProfileVolumePreference;

.field private mSilent:Landroid/preference/CheckBoxPreference;

.field private mSoundSettings:Landroid/preference/PreferenceGroup;

.field private mToast:Landroid/widget/Toast;

.field private mVibrate:Landroid/preference/ListPreference;

.field private profileMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 95
    new-instance v0, Lcom/android/settings/PhoneProfileEditor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/PhoneProfileEditor$1;-><init>(Lcom/android/settings/PhoneProfileEditor;)V

    iput-object v0, p0, Lcom/android/settings/PhoneProfileEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PhoneProfileEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/PhoneProfileEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/settings/PhoneProfileEditor;->currentMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/PhoneProfileEditor;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/PhoneProfileEditor;)Lcom/android/settings/PhoneProfileVolumePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/PhoneProfileEditor;->mRingerVolume:Lcom/android/settings/PhoneProfileVolumePreference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/PhoneProfileEditor;Lcom/android/settings/PhoneProfileVolumePreference;)Lcom/android/settings/PhoneProfileVolumePreference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/PhoneProfileEditor;->mRingerVolume:Lcom/android/settings/PhoneProfileVolumePreference;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/PhoneProfileEditor;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/PhoneProfileEditor;->updateState(Z)Z

    move-result v0

    return v0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 828
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/PhoneProfileEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 829
    :cond_0
    const-string v0, ""

    .line 831
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 836
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 837
    :cond_0
    sget-object v0, Lcom/android/settings/PhoneProfileEditor;->sNotSet:Ljava/lang/String;

    .line 839
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private getPhoneVibrateSettingValue()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    const-string v9, "always"

    .line 578
    iget v3, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    iget v4, p0, Lcom/android/settings/PhoneProfileEditor;->currentMode:I

    if-ne v3, v4, :cond_6

    .line 579
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrate_in_silent"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_1

    move v1, v6

    .line 585
    .local v1, vibeInSilent:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 588
    .local v0, callsVibrateSetting:I
    if-eqz v1, :cond_3

    .line 589
    if-nez v0, :cond_0

    .line 591
    iget-object v3, p0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 595
    :cond_0
    if-ne v0, v6, :cond_2

    .line 596
    const-string v3, "always"

    move-object v3, v9

    .line 647
    .end local v0           #callsVibrateSetting:I
    .end local v1           #vibeInSilent:Z
    :goto_1
    return-object v3

    :cond_1
    move v1, v7

    .line 579
    goto :goto_0

    .line 598
    .restart local v0       #callsVibrateSetting:I
    .restart local v1       #vibeInSilent:Z
    :cond_2
    const-string v3, "silent"

    goto :goto_1

    .line 601
    :cond_3
    if-ne v0, v5, :cond_4

    .line 603
    iget-object v3, p0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7, v7}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 607
    :cond_4
    if-ne v0, v6, :cond_5

    .line 608
    const-string v3, "notsilent"

    goto :goto_1

    .line 610
    :cond_5
    const-string v3, "never"

    goto :goto_1

    .line 617
    .end local v0           #callsVibrateSetting:I
    .end local v1           #vibeInSilent:Z
    :cond_6
    iget v3, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    if-ne v3, v6, :cond_7

    .line 618
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_vibrate_type_ringer"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 640
    .local v2, vibrationType:I
    :goto_2
    if-nez v2, :cond_d

    .line 641
    const-string v3, "always"

    move-object v3, v9

    goto :goto_1

    .line 620
    .end local v2           #vibrationType:I
    :cond_7
    iget v3, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    if-ne v3, v5, :cond_8

    .line 621
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "meeting_vibrate_type_ringer"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .restart local v2       #vibrationType:I
    goto :goto_2

    .line 623
    .end local v2           #vibrationType:I
    :cond_8
    iget v3, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    if-ne v3, v8, :cond_9

    .line 624
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "outdoor_vibrate_type_ringer"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .restart local v2       #vibrationType:I
    goto :goto_2

    .line 626
    .end local v2           #vibrationType:I
    :cond_9
    iget v3, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_a

    .line 627
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user1_vibrate_type_ringer"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .restart local v2       #vibrationType:I
    goto :goto_2

    .line 629
    .end local v2           #vibrationType:I
    :cond_a
    iget v3, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_b

    .line 630
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user2_vibrate_type_ringer"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .restart local v2       #vibrationType:I
    goto :goto_2

    .line 632
    .end local v2           #vibrationType:I
    :cond_b
    iget v3, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_c

    .line 633
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user3_vibrate_type_ringer"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .restart local v2       #vibrationType:I
    goto :goto_2

    .line 636
    .end local v2           #vibrationType:I
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "normal_vibrate_type_ringer"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .restart local v2       #vibrationType:I
    goto :goto_2

    .line 642
    :cond_d
    if-ne v2, v6, :cond_e

    .line 643
    const-string v3, "never"

    goto/16 :goto_1

    .line 644
    :cond_e
    if-ne v2, v8, :cond_f

    .line 645
    const-string v3, "notsilent"

    goto/16 :goto_1

    .line 647
    :cond_f
    const-string v3, "silent"

    goto/16 :goto_1
.end method

.method private setPhoneVibrateSettingValue(Ljava/lang/String;)V
    .locals 8
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 656
    const-string v3, "notsilent"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 657
    const/4 v0, 0x1

    .line 658
    .local v0, callsVibrateSetting:I
    const/4 v2, 0x0

    .line 659
    .local v2, vibeInSilent:Z
    const/4 v1, 0x3

    .line 674
    .local v1, vibValue:I
    :goto_0
    iget v3, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    iget v4, p0, Lcom/android/settings/PhoneProfileEditor;->currentMode:I

    if-ne v3, v4, :cond_1

    .line 675
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrate_in_silent"

    if-eqz v2, :cond_5

    move v5, v7

    :goto_1
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 681
    iget-object v3, p0, Lcom/android/settings/PhoneProfileEditor;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 682
    iget-object v3, p0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_6

    move v4, v7

    :goto_2
    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 687
    :cond_0
    iget-object v3, p0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 692
    :cond_1
    iget v3, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    if-ne v3, v7, :cond_7

    .line 693
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_vibrate_type_ringer"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 714
    :goto_3
    return-void

    .line 660
    .end local v0           #callsVibrateSetting:I
    .end local v1           #vibValue:I
    .end local v2           #vibeInSilent:Z
    :cond_2
    const-string v3, "never"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 661
    const/4 v0, 0x0

    .line 662
    .restart local v0       #callsVibrateSetting:I
    const/4 v2, 0x0

    .line 663
    .restart local v2       #vibeInSilent:Z
    const/4 v1, 0x1

    .restart local v1       #vibValue:I
    goto :goto_0

    .line 664
    .end local v0           #callsVibrateSetting:I
    .end local v1           #vibValue:I
    .end local v2           #vibeInSilent:Z
    :cond_3
    const-string v3, "silent"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 665
    const/4 v0, 0x2

    .line 666
    .restart local v0       #callsVibrateSetting:I
    const/4 v2, 0x1

    .line 667
    .restart local v2       #vibeInSilent:Z
    const/4 v1, 0x2

    .restart local v1       #vibValue:I
    goto :goto_0

    .line 669
    .end local v0           #callsVibrateSetting:I
    .end local v1           #vibValue:I
    .end local v2           #vibeInSilent:Z
    :cond_4
    const/4 v0, 0x1

    .line 670
    .restart local v0       #callsVibrateSetting:I
    const/4 v2, 0x1

    .line 671
    .restart local v2       #vibeInSilent:Z
    const/4 v1, 0x0

    .restart local v1       #vibValue:I
    goto :goto_0

    :cond_5
    move v5, v6

    .line 675
    goto :goto_1

    :cond_6
    move v4, v6

    .line 682
    goto :goto_2

    .line 695
    :cond_7
    iget v3, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 696
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "meeting_vibrate_type_ringer"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 698
    :cond_8
    iget v3, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    .line 699
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "outdoor_vibrate_type_ringer"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 701
    :cond_9
    iget v3, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_a

    .line 702
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user1_vibrate_type_ringer"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 704
    :cond_a
    iget v3, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_b

    .line 705
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user2_vibrate_type_ringer"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 707
    :cond_b
    iget v3, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_c

    .line 708
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user3_vibrate_type_ringer"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 711
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "normal_vibrate_type_ringer"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 844
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802ce

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805a5

    new-instance v2, Lcom/android/settings/PhoneProfileEditor$2;

    invoke-direct {v2, p0}, Lcom/android/settings/PhoneProfileEditor$2;-><init>(Lcom/android/settings/PhoneProfileEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 854
    return-void
.end method

.method private updateState(Z)Z
    .locals 14
    .parameter "force"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v13, "meeting"

    const-string v12, "driving_silent"

    const-string v11, "driving"

    .line 718
    const/4 v6, 0x0

    .line 719
    .local v6, silentSetting:I
    const/4 v3, 0x0

    .line 721
    .local v3, silent:Z
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 723
    iget v7, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    iget v8, p0, Lcom/android/settings/PhoneProfileEditor;->currentMode:I

    if-ne v7, v8, :cond_e

    .line 724
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 729
    .local v2, ringerMode:I
    const/4 v7, 0x2

    if-eq v2, v7, :cond_7

    move v5, v10

    .line 732
    .local v5, silentOrVibrateMode:Z
    :goto_0
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-ne v5, v7, :cond_0

    if-eqz p1, :cond_2

    .line 733
    :cond_0
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 735
    if-ne v5, v10, :cond_1

    .line 736
    const/4 v6, 0x1

    .line 739
    :cond_1
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->profileMode:Ljava/lang/String;

    const-string v8, "driving"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 740
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "driving_silent"

    invoke-static {v7, v12, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 795
    .end local v2           #ringerMode:I
    .end local v5           #silentOrVibrateMode:Z
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/PhoneProfileEditor;->getPhoneVibrateSettingValue()Ljava/lang/String;

    move-result-object v1

    .line 797
    .local v1, phoneVibrateSetting:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->mVibrate:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz p1, :cond_4

    .line 798
    :cond_3
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->mVibrate:Landroid/preference/ListPreference;

    invoke-virtual {v7, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 800
    :cond_4
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->mVibrate:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/PhoneProfileEditor;->mVibrate:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 802
    iget v7, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    iget v8, p0, Lcom/android/settings/PhoneProfileEditor;->currentMode:I

    if-ne v7, v8, :cond_5

    .line 803
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "mode_ringer_streams_affected"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 805
    .local v4, silentModeStreams:I
    and-int/lit8 v7, v4, 0x10

    if-eqz v7, :cond_17

    move v0, v10

    .line 806
    .local v0, isAlarmInclSilentMode:Z
    :goto_2
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->mSilent:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_18

    const v8, 0x7f080208

    :goto_3
    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 811
    .end local v0           #isAlarmInclSilentMode:Z
    .end local v4           #silentModeStreams:I
    :cond_5
    iget v7, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_19

    .line 812
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "user1_title"

    iget-object v9, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 813
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "user1_avalable"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 824
    :cond_6
    :goto_4
    return v10

    .end local v1           #phoneVibrateSetting:Ljava/lang/String;
    .restart local v2       #ringerMode:I
    :cond_7
    move v5, v9

    .line 729
    goto/16 :goto_0

    .line 742
    .restart local v5       #silentOrVibrateMode:Z
    :cond_8
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->profileMode:Ljava/lang/String;

    const-string v8, "meeting"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 743
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "meeting_silent"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 745
    :cond_9
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->profileMode:Ljava/lang/String;

    const-string v8, "outdoor"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 746
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "outdoor_silent"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 748
    :cond_a
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->profileMode:Ljava/lang/String;

    const-string v8, "user1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 749
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "user1_silent"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 751
    :cond_b
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->profileMode:Ljava/lang/String;

    const-string v8, "user2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 752
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "user2_silent"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 754
    :cond_c
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->profileMode:Ljava/lang/String;

    const-string v8, "user3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 755
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "user3_silent"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 758
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "normal_silent"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 764
    .end local v2           #ringerMode:I
    .end local v5           #silentOrVibrateMode:Z
    :cond_e
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->profileMode:Ljava/lang/String;

    const-string v8, "driving"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 765
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "driving_silent"

    invoke-static {v7, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 787
    :goto_5
    if-ne v6, v10, :cond_f

    .line 788
    const/4 v3, 0x1

    .line 791
    :cond_f
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-ne v3, v7, :cond_10

    if-eqz p1, :cond_2

    .line 792
    :cond_10
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 767
    :cond_11
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->profileMode:Ljava/lang/String;

    const-string v8, "meeting"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 768
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "meeting_silent"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    goto :goto_5

    .line 770
    :cond_12
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->profileMode:Ljava/lang/String;

    const-string v8, "outdoor"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 771
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "outdoor_silent"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    goto :goto_5

    .line 773
    :cond_13
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->profileMode:Ljava/lang/String;

    const-string v8, "user1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 774
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "user1_silent"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    goto :goto_5

    .line 776
    :cond_14
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->profileMode:Ljava/lang/String;

    const-string v8, "user2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 777
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "user2_silent"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    goto :goto_5

    .line 779
    :cond_15
    iget-object v7, p0, Lcom/android/settings/PhoneProfileEditor;->profileMode:Ljava/lang/String;

    const-string v8, "user3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 780
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "user3_silent"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    goto :goto_5

    .line 783
    :cond_16
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "normal_silent"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    goto/16 :goto_5

    .restart local v1       #phoneVibrateSetting:Ljava/lang/String;
    .restart local v4       #silentModeStreams:I
    :cond_17
    move v0, v9

    .line 805
    goto/16 :goto_2

    .line 806
    .restart local v0       #isAlarmInclSilentMode:Z
    :cond_18
    const v8, 0x7f080207

    goto/16 :goto_3

    .line 815
    .end local v0           #isAlarmInclSilentMode:Z
    .end local v4           #silentModeStreams:I
    :cond_19
    iget v7, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1a

    .line 816
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "user2_title"

    iget-object v9, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 817
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "user2_avalable"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 819
    :cond_1a
    iget v7, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_6

    .line 820
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "user3_title"

    iget-object v9, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 821
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "user3_avalable"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v10, "PhoneProfileEditor"

    .line 133
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 136
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/android/settings/PhoneProfileEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    .line 138
    const v4, 0x7f04001a

    invoke-virtual {p0, v4}, Lcom/android/settings/PhoneProfileEditor;->addPreferencesFromResource(I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 141
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "position"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->profileMode:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0806f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/PhoneProfileEditor;->sNotSet:Ljava/lang/String;

    .line 145
    const-string v4, "profile_name"

    invoke-virtual {p0, v4}, Lcom/android/settings/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    .line 146
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    const-string v4, "silent"

    invoke-virtual {p0, v4}, Lcom/android/settings/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mSilent:Landroid/preference/CheckBoxPreference;

    .line 149
    const-string v4, "vibrate"

    invoke-virtual {p0, v4}, Lcom/android/settings/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mVibrate:Landroid/preference/ListPreference;

    .line 150
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mVibrate:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sound_profile_edit_mode"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sound_profile_mode"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/PhoneProfileEditor;->currentMode:I

    .line 157
    const-string v4, "PhoneProfileEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "editMode  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget v4, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    if-ne v4, v7, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0806f0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, mTitle:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 161
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 197
    :goto_0
    iget v4, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    if-ge v4, v9, :cond_0

    .line 198
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v6}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 200
    :cond_0
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eq v4, v8, :cond_1

    iget v4, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    iget v5, p0, Lcom/android/settings/PhoneProfileEditor;->currentMode:I

    if-ne v4, v5, :cond_8

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "ring_volume_silent"

    invoke-virtual {p0, v5}, Lcom/android/settings/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "ringtone_silent"

    invoke-virtual {p0, v5}, Lcom/android/settings/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "notification_sound_silent"

    invoke-virtual {p0, v5}, Lcom/android/settings/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 235
    :goto_1
    const-string v4, "sound_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    iput-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mSoundSettings:Landroid/preference/PreferenceGroup;

    .line 236
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mSoundSettings:Landroid/preference/PreferenceGroup;

    const-string v5, "notification_pulse"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    .line 238
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f06

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 240
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mSoundSettings:Landroid/preference/PreferenceGroup;

    iget-object v5, p0, Lcom/android/settings/PhoneProfileEditor;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    :goto_2
    return-void

    .line 163
    .end local v1           #mTitle:Ljava/lang/String;
    :cond_2
    iget v4, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    if-ne v4, v8, :cond_3

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0806f1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    .restart local v1       #mTitle:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 166
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 168
    .end local v1           #mTitle:Ljava/lang/String;
    :cond_3
    iget v4, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0806f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    .restart local v1       #mTitle:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 171
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 173
    .end local v1           #mTitle:Ljava/lang/String;
    :cond_4
    iget v4, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    if-ne v4, v9, :cond_5

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "user1_title"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .restart local v1       #mTitle:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/PhoneProfileEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 177
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/PhoneProfileEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 179
    .end local v1           #mTitle:Ljava/lang/String;
    :cond_5
    iget v4, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "user2_title"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .restart local v1       #mTitle:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/PhoneProfileEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 183
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/PhoneProfileEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 185
    .end local v1           #mTitle:Ljava/lang/String;
    :cond_6
    iget v4, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_7

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "user3_title"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .restart local v1       #mTitle:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/PhoneProfileEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 189
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/PhoneProfileEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 192
    .end local v1           #mTitle:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0806ef

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    .restart local v1       #mTitle:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 194
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 206
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "ring_volume"

    invoke-virtual {p0, v5}, Lcom/android/settings/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "ringtone"

    invoke-virtual {p0, v5}, Lcom/android/settings/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "notification_sound"

    invoke-virtual {p0, v5}, Lcom/android/settings/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 243
    :cond_9
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    const-string v5, "notification_light_pulse"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_a

    move v5, v7

    :goto_3
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 245
    iget-object v4, p0, Lcom/android/settings/PhoneProfileEditor;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 246
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 247
    .local v3, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "PhoneProfileEditor"

    const-string v4, "notification_light_pulse not found"

    invoke-static {v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v3           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_a
    move v5, v6

    .line 243
    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 411
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 413
    iget v0, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    move v0, v3

    .line 420
    :goto_0
    return v0

    .line 415
    :cond_0
    const v0, 0x7f0806f9

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020032

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 417
    const/4 v0, 0x2

    const v1, 0x7f0806f8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020014

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v3

    .line 420
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 21
    .parameter "item"

    .prologue
    .line 425
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 574
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v17

    :goto_0
    return v17

    .line 427
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/PhoneProfileEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 428
    .local v8, name:Ljava/lang/String;
    const/4 v5, 0x0

    .line 430
    .local v5, errorMsg:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0806fa

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 434
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    if-eqz v5, :cond_1

    .line 435
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/settings/PhoneProfileEditor;->showErrorMessage(Ljava/lang/String;)V

    .line 436
    const/16 v17, 0x0

    goto :goto_0

    .line 439
    :cond_1
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/PhoneProfileEditor;->updateState(Z)Z

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->finish()V

    .line 441
    const/16 v17, 0x1

    goto :goto_0

    .line 444
    .end local v5           #errorMsg:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user1_title"

    const-string v19, ""

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user1_avalable"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user1_silent"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user1_vibrate_type_ringer"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user1_volume_ring"

    const/16 v19, 0x6

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user1_volume_system"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user1_volume_music"

    const/16 v19, 0xb

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user1_volume_notification"

    const/16 v19, 0x4

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user1_notifications_use_ring_volume"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 477
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/PhoneProfileEditor;->currentMode:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 479
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "sound_profile_mode"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "sound_profile_pre_mode"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "normal_silent"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 488
    .local v9, silent:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "normal_vibrate_type_ringer"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 490
    .local v12, vibrationType:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "normal_volume_ring"

    const/16 v19, 0x6

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 492
    .local v15, volRing:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "normal_volume_system"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 494
    .local v16, volSys:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "normal_volume_music"

    const/16 v19, 0xb

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 496
    .local v13, volMusic:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "normal_volume_notification"

    const/16 v19, 0x4

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 498
    .local v14, volNoti:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "normal_notifications_use_ring_volume"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 501
    .local v10, useRingvol:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "normal_ringtone"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 504
    .local v7, mRingtoneUriString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "normal_notification_sound"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 507
    .local v6, mNotiUriString:Ljava/lang/String;
    const/16 v17, 0x1

    move v0, v9

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 508
    const/16 v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "vibrate_in_silent"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/16 v17, 0x1

    move/from16 v11, v17

    .line 512
    .local v11, vibeInSilent:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    if-eqz v11, :cond_9

    const/16 v18, 0x1

    :goto_3
    invoke-virtual/range {v17 .. v18}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 522
    .end local v11           #vibeInSilent:Z
    :goto_4
    const/16 v17, 0x3

    move v0, v12

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 523
    const/4 v4, 0x1

    .line 524
    .local v4, callsVibrateSetting:I
    const/4 v11, 0x0

    .line 536
    .restart local v11       #vibeInSilent:Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "vibrate_in_silent"

    if-eqz v11, :cond_e

    const/16 v19, 0x1

    :goto_6
    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 542
    const/16 v17, 0x1

    move v0, v9

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    if-eqz v11, :cond_f

    const/16 v18, 0x1

    :goto_7
    invoke-virtual/range {v17 .. v18}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 548
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move v2, v15

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move v2, v13

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move v2, v14

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 556
    const/16 v17, 0x1

    move v0, v10

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v19

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 560
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "ringtone"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "notification_sound"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 569
    .end local v4           #callsVibrateSetting:I
    .end local v6           #mNotiUriString:Ljava/lang/String;
    .end local v7           #mRingtoneUriString:Ljava/lang/String;
    .end local v9           #silent:I
    .end local v10           #useRingvol:I
    .end local v11           #vibeInSilent:Z
    .end local v12           #vibrationType:I
    .end local v13           #volMusic:I
    .end local v14           #volNoti:I
    .end local v15           #volRing:I
    .end local v16           #volSys:I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->finish()V

    .line 570
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 455
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user2_title"

    const-string v19, ""

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user2_avalable"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user2_silent"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user2_vibrate_type_ringer"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user2_volume_ring"

    const/16 v19, 0x6

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user2_volume_system"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user2_volume_music"

    const/16 v19, 0xb

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user2_volume_notification"

    const/16 v19, 0x4

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user2_notifications_use_ring_volume"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 466
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user3_title"

    const-string v19, ""

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user3_avalable"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user3_silent"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user3_vibrate_type_ringer"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user3_volume_ring"

    const/16 v19, 0x6

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user3_volume_system"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user3_volume_music"

    const/16 v19, 0xb

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user3_volume_notification"

    const/16 v19, 0x4

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user3_notifications_use_ring_volume"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 508
    .restart local v6       #mNotiUriString:Ljava/lang/String;
    .restart local v7       #mRingtoneUriString:Ljava/lang/String;
    .restart local v9       #silent:I
    .restart local v10       #useRingvol:I
    .restart local v12       #vibrationType:I
    .restart local v13       #volMusic:I
    .restart local v14       #volNoti:I
    .restart local v15       #volRing:I
    .restart local v16       #volSys:I
    :cond_8
    const/16 v17, 0x0

    move/from16 v11, v17

    goto/16 :goto_2

    .line 512
    .restart local v11       #vibeInSilent:Z
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 516
    .end local v11           #vibeInSilent:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_4

    .line 525
    :cond_b
    const/16 v17, 0x1

    move v0, v12

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 526
    const/4 v4, 0x0

    .line 527
    .restart local v4       #callsVibrateSetting:I
    const/4 v11, 0x0

    .restart local v11       #vibeInSilent:Z
    goto/16 :goto_5

    .line 528
    .end local v4           #callsVibrateSetting:I
    .end local v11           #vibeInSilent:Z
    :cond_c
    const/16 v17, 0x2

    move v0, v12

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 529
    const/4 v4, 0x2

    .line 530
    .restart local v4       #callsVibrateSetting:I
    const/4 v11, 0x1

    .restart local v11       #vibeInSilent:Z
    goto/16 :goto_5

    .line 532
    .end local v4           #callsVibrateSetting:I
    .end local v11           #vibeInSilent:Z
    :cond_d
    const/4 v4, 0x1

    .line 533
    .restart local v4       #callsVibrateSetting:I
    const/4 v11, 0x1

    .restart local v11       #vibeInSilent:Z
    goto/16 :goto_5

    .line 536
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 543
    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 425
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 21

    .prologue
    .line 266
    invoke-super/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 267
    const-string v17, "PhoneProfileEditor"

    const-string v18, "onPause"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/PhoneProfileEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 270
    .local v8, name:Ljava/lang/String;
    const/4 v5, 0x0

    .line 272
    .local v5, errorMsg:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0806fa

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 276
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    if-eqz v5, :cond_4

    .line 277
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user1_title"

    const-string v19, ""

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user1_avalable"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user1_silent"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user1_vibrate_type_ringer"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user1_volume_ring"

    const/16 v19, 0x6

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user1_volume_system"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user1_volume_music"

    const/16 v19, 0xb

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user1_volume_notification"

    const/16 v19, 0x4

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user1_notifications_use_ring_volume"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 310
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/PhoneProfileEditor;->currentMode:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 312
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "sound_profile_mode"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "sound_profile_pre_mode"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "normal_silent"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 321
    .local v9, silent:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "normal_vibrate_type_ringer"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 323
    .local v12, vibrationType:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "normal_volume_ring"

    const/16 v19, 0x6

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 325
    .local v15, volRing:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "normal_volume_system"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 327
    .local v16, volSys:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "normal_volume_music"

    const/16 v19, 0xb

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 329
    .local v13, volMusic:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "normal_volume_notification"

    const/16 v19, 0x4

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 331
    .local v14, volNoti:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "normal_notifications_use_ring_volume"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 334
    .local v10, useRingvol:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "normal_ringtone"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 337
    .local v7, mRingtoneUriString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "normal_notification_sound"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 340
    .local v6, mNotiUriString:Ljava/lang/String;
    const/16 v17, 0x1

    move v0, v9

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 341
    const/16 v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "vibrate_in_silent"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/16 v17, 0x1

    move/from16 v11, v17

    .line 345
    .local v11, vibeInSilent:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    if-eqz v11, :cond_9

    const/16 v18, 0x1

    :goto_2
    invoke-virtual/range {v17 .. v18}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 355
    .end local v11           #vibeInSilent:Z
    :goto_3
    const/16 v17, 0x3

    move v0, v12

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 356
    const/4 v4, 0x1

    .line 357
    .local v4, callsVibrateSetting:I
    const/4 v11, 0x0

    .line 369
    .restart local v11       #vibeInSilent:Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "vibrate_in_silent"

    if-eqz v11, :cond_e

    const/16 v19, 0x1

    :goto_5
    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 375
    const/16 v17, 0x1

    move v0, v9

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    if-eqz v11, :cond_f

    const/16 v18, 0x1

    :goto_6
    invoke-virtual/range {v17 .. v18}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 381
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move v2, v15

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move v2, v13

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move v2, v14

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 389
    const/16 v17, 0x1

    move v0, v10

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v19

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 393
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "ringtone"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "notification_sound"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 403
    .end local v4           #callsVibrateSetting:I
    .end local v6           #mNotiUriString:Ljava/lang/String;
    .end local v7           #mRingtoneUriString:Ljava/lang/String;
    .end local v9           #silent:I
    .end local v10           #useRingvol:I
    .end local v11           #vibeInSilent:Z
    .end local v12           #vibrationType:I
    .end local v13           #volMusic:I
    .end local v14           #volNoti:I
    .end local v15           #volRing:I
    .end local v16           #volSys:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/PhoneProfileEditor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mToast:Landroid/widget/Toast;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mToast:Landroid/widget/Toast;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->cancel()V

    .line 407
    :cond_5
    return-void

    .line 288
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user2_title"

    const-string v19, ""

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user2_avalable"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user2_silent"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user2_vibrate_type_ringer"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user2_volume_ring"

    const/16 v19, 0x6

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user2_volume_system"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user2_volume_music"

    const/16 v19, 0xb

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user2_volume_notification"

    const/16 v19, 0x4

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user2_notifications_use_ring_volume"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 299
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user3_title"

    const-string v19, ""

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user3_avalable"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user3_silent"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user3_vibrate_type_ringer"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user3_volume_ring"

    const/16 v19, 0x6

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user3_volume_system"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user3_volume_music"

    const/16 v19, 0xb

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user3_volume_notification"

    const/16 v19, 0x4

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "user3_notifications_use_ring_volume"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 341
    .restart local v6       #mNotiUriString:Ljava/lang/String;
    .restart local v7       #mRingtoneUriString:Ljava/lang/String;
    .restart local v9       #silent:I
    .restart local v10       #useRingvol:I
    .restart local v12       #vibrationType:I
    .restart local v13       #volMusic:I
    .restart local v14       #volNoti:I
    .restart local v15       #volRing:I
    .restart local v16       #volSys:I
    :cond_8
    const/16 v17, 0x0

    move/from16 v11, v17

    goto/16 :goto_1

    .line 345
    .restart local v11       #vibeInSilent:Z
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 349
    .end local v11           #vibeInSilent:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_3

    .line 358
    :cond_b
    const/16 v17, 0x1

    move v0, v12

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 359
    const/4 v4, 0x0

    .line 360
    .restart local v4       #callsVibrateSetting:I
    const/4 v11, 0x0

    .restart local v11       #vibeInSilent:Z
    goto/16 :goto_4

    .line 361
    .end local v4           #callsVibrateSetting:I
    .end local v11           #vibeInSilent:Z
    :cond_c
    const/16 v17, 0x2

    move v0, v12

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 362
    const/4 v4, 0x2

    .line 363
    .restart local v4       #callsVibrateSetting:I
    const/4 v11, 0x1

    .restart local v11       #vibeInSilent:Z
    goto/16 :goto_4

    .line 365
    .end local v4           #callsVibrateSetting:I
    .end local v11           #vibeInSilent:Z
    :cond_d
    const/4 v4, 0x1

    .line 366
    .restart local v4       #callsVibrateSetting:I
    const/4 v11, 0x1

    .restart local v11       #vibeInSilent:Z
    goto/16 :goto_4

    .line 369
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 376
    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_6
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 915
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/PhoneProfileEditor;->mVibrate:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    .line 918
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/PhoneProfileEditor;->setPhoneVibrateSettingValue(Ljava/lang/String;)V

    .line 919
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/PhoneProfileEditor;->updateState(Z)Z

    .line 935
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 921
    :cond_1
    iget-object v1, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    if-ne p1, v1, :cond_0

    .line 922
    iget-object v1, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 923
    iget-object v1, p0, Lcom/android/settings/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 924
    iget v1, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 925
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user1_title"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 927
    :cond_2
    iget v1, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 928
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user2_title"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 930
    :cond_3
    iget v1, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 931
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user3_title"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v3, 0x7f0806f3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 858
    iget-object v2, p0, Lcom/android/settings/PhoneProfileEditor;->mSilent:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_12

    .line 859
    iget-object v2, p0, Lcom/android/settings/PhoneProfileEditor;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 861
    .local v0, value:Z
    iget-object v2, p0, Lcom/android/settings/PhoneProfileEditor;->profileMode:Ljava/lang/String;

    const-string v3, "driving"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 862
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_silent"

    if-eqz v0, :cond_2

    move v4, v5

    :goto_0
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 884
    :goto_1
    iget v2, p0, Lcom/android/settings/PhoneProfileEditor;->editMode:I

    iget v3, p0, Lcom/android/settings/PhoneProfileEditor;->currentMode:I

    if-ne v2, v3, :cond_0

    .line 885
    iget-object v2, p0, Lcom/android/settings/PhoneProfileEditor;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 886
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v5, v2, :cond_f

    move v1, v5

    .line 890
    .local v1, vibeInSilent:Z
    :goto_2
    iget-object v2, p0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_10

    move v3, v5

    :goto_3
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 898
    .end local v1           #vibeInSilent:Z
    :cond_0
    :goto_4
    invoke-direct {p0, v6}, Lcom/android/settings/PhoneProfileEditor;->updateState(Z)Z

    .line 911
    .end local v0           #value:Z
    :cond_1
    :goto_5
    return v5

    .restart local v0       #value:Z
    :cond_2
    move v4, v6

    .line 862
    goto :goto_0

    .line 864
    :cond_3
    iget-object v2, p0, Lcom/android/settings/PhoneProfileEditor;->profileMode:Ljava/lang/String;

    const-string v3, "meeting"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 865
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "meeting_silent"

    if-eqz v0, :cond_4

    move v4, v5

    :goto_6
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v4, v6

    goto :goto_6

    .line 867
    :cond_5
    iget-object v2, p0, Lcom/android/settings/PhoneProfileEditor;->profileMode:Ljava/lang/String;

    const-string v3, "outdoor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 868
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "outdoor_silent"

    if-eqz v0, :cond_6

    move v4, v5

    :goto_7
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    move v4, v6

    goto :goto_7

    .line 870
    :cond_7
    iget-object v2, p0, Lcom/android/settings/PhoneProfileEditor;->profileMode:Ljava/lang/String;

    const-string v3, "user1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 871
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user1_silent"

    if-eqz v0, :cond_8

    move v4, v5

    :goto_8
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_8
    move v4, v6

    goto :goto_8

    .line 873
    :cond_9
    iget-object v2, p0, Lcom/android/settings/PhoneProfileEditor;->profileMode:Ljava/lang/String;

    const-string v3, "user2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 874
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user2_silent"

    if-eqz v0, :cond_a

    move v4, v5

    :goto_9
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_a
    move v4, v6

    goto :goto_9

    .line 876
    :cond_b
    iget-object v2, p0, Lcom/android/settings/PhoneProfileEditor;->profileMode:Ljava/lang/String;

    const-string v3, "user3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 877
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user3_silent"

    if-eqz v0, :cond_c

    move v4, v5

    :goto_a
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_c
    move v4, v6

    goto :goto_a

    .line 880
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "normal_silent"

    if-eqz v0, :cond_e

    move v4, v5

    :goto_b
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_e
    move v4, v6

    goto :goto_b

    :cond_f
    move v1, v6

    .line 886
    goto/16 :goto_2

    .restart local v1       #vibeInSilent:Z
    :cond_10
    move v3, v6

    .line 890
    goto/16 :goto_3

    .line 894
    .end local v1           #vibeInSilent:Z
    :cond_11
    iget-object v2, p0, Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_4

    .line 900
    .end local v0           #value:Z
    :cond_12
    const-string v2, "ring_volume_silent"

    invoke-virtual {p0, v2}, Lcom/android/settings/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eq p2, v2, :cond_13

    const-string v2, "ringtone_silent"

    invoke-virtual {p0, v2}, Lcom/android/settings/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eq p2, v2, :cond_13

    const-string v2, "notification_sound_silent"

    invoke-virtual {p0, v2}, Lcom/android/settings/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_1

    .line 903
    :cond_13
    iget-object v2, p0, Lcom/android/settings/PhoneProfileEditor;->mToast:Landroid/widget/Toast;

    if-eqz v2, :cond_14

    .line 904
    iget-object v2, p0, Lcom/android/settings/PhoneProfileEditor;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(I)V

    .line 909
    :goto_c
    iget-object v2, p0, Lcom/android/settings/PhoneProfileEditor;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 907
    :cond_14
    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/PhoneProfileEditor;->mToast:Landroid/widget/Toast;

    goto :goto_c
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 255
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 256
    const-string v1, "PhoneProfileEditor"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/PhoneProfileEditor;->updateState(Z)Z

    .line 259
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/PhoneProfileEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/PhoneProfileEditor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/PhoneProfileEditor;->mToast:Landroid/widget/Toast;

    .line 262
    return-void
.end method
