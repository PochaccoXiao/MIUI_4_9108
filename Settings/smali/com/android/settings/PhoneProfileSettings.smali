.class public Lcom/android/settings/PhoneProfileSettings;
.super Landroid/preference/PreferenceActivity;
.source "PhoneProfileSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mSelectedKey:Ljava/lang/String;

.field private mSelectedProfile:I

.field profileName:[I

.field profilekey:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 57
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 70
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "driving"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "meeting"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "outdoor"

    aput-object v2, v0, v1

    const-string v1, "user1"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "user2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "user3"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/PhoneProfileSettings;->profilekey:[Ljava/lang/String;

    .line 71
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/PhoneProfileSettings;->profileName:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xeft 0x6t 0x8t 0x7ft
        0xf0t 0x6t 0x8t 0x7ft
        0xf1t 0x6t 0x8t 0x7ft
        0xf2t 0x6t 0x8t 0x7ft
    .end array-data
.end method

.method private fillList()V
    .locals 12

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 101
    const-string v5, "phone_profile_list"

    invoke-virtual {p0, v5}, Lcom/android/settings/PhoneProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 102
    .local v3, profileList:Landroid/preference/PreferenceGroup;
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sound_profile_mode"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/PhoneProfileSettings;->mSelectedProfile:I

    .line 104
    iget-object v5, p0, Lcom/android/settings/PhoneProfileSettings;->profilekey:[Ljava/lang/String;

    iget v6, p0, Lcom/android/settings/PhoneProfileSettings;->mSelectedProfile:I

    aget-object v5, v5, v6

    iput-object v5, p0, Lcom/android/settings/PhoneProfileSettings;->mSelectedKey:Ljava/lang/String;

    .line 106
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v5, 0x7

    if-ge v1, v5, :cond_8

    .line 107
    new-instance v2, Lcom/android/settings/PhoneProfilePreference;

    invoke-direct {v2, p0}, Lcom/android/settings/PhoneProfilePreference;-><init>(Landroid/content/Context;)V

    .line 109
    .local v2, pref:Lcom/android/settings/PhoneProfilePreference;
    iget-object v5, p0, Lcom/android/settings/PhoneProfileSettings;->profilekey:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v2, v5}, Lcom/android/settings/PhoneProfilePreference;->setKey(Ljava/lang/String;)V

    .line 110
    if-ne v1, v9, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user1_title"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, title:Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/android/settings/PhoneProfilePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    .end local v4           #title:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v7}, Lcom/android/settings/PhoneProfilePreference;->setPersistent(Z)V

    .line 131
    invoke-virtual {v2, p0}, Lcom/android/settings/PhoneProfilePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    invoke-virtual {v2, v8}, Lcom/android/settings/PhoneProfilePreference;->setSelectable(Z)V

    .line 134
    iget-object v5, p0, Lcom/android/settings/PhoneProfileSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/PhoneProfileSettings;->mSelectedKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/PhoneProfileSettings;->profilekey:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    invoke-virtual {v2}, Lcom/android/settings/PhoneProfilePreference;->setChecked()V

    .line 137
    :cond_0
    if-ne v1, v9, :cond_5

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user1_avalable"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 140
    .local v0, available:I
    if-ne v0, v8, :cond_1

    .line 141
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 106
    .end local v0           #available:I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_2
    if-ne v1, v10, :cond_3

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user2_title"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 120
    .restart local v4       #title:Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/android/settings/PhoneProfilePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 122
    .end local v4           #title:Ljava/lang/String;
    :cond_3
    if-ne v1, v11, :cond_4

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user3_title"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .restart local v4       #title:Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/android/settings/PhoneProfilePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 129
    .end local v4           #title:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/PhoneProfileSettings;->profileName:[I

    aget v5, v5, v1

    invoke-virtual {p0, v5}, Lcom/android/settings/PhoneProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/settings/PhoneProfilePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 143
    :cond_5
    if-ne v1, v10, :cond_6

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user2_avalable"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 146
    .restart local v0       #available:I
    if-ne v0, v8, :cond_1

    .line 147
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 149
    .end local v0           #available:I
    :cond_6
    if-ne v1, v11, :cond_7

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user3_avalable"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 152
    .restart local v0       #available:I
    if-ne v0, v8, :cond_1

    .line 153
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 156
    .end local v0           #available:I
    :cond_7
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 158
    .end local v2           #pref:Lcom/android/settings/PhoneProfilePreference;
    :cond_8
    return-void
.end method

.method public static setPhoneProfileMode(Landroid/content/ContentResolver;Landroid/media/AudioManager;I)V
    .locals 11
    .parameter "cr"
    .parameter "audioManager"
    .parameter "mode"

    .prologue
    .line 452
    const-string v0, "sound_profile_mode"

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 453
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 454
    const-string v0, "sound_profile_pre_mode"

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 457
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 458
    const-string p2, "driving_silent"

    .end local p2
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 459
    .local v1, silent:I
    const-string p2, "driving_vibrate_type_ringer"

    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 460
    .local v3, vibrationType:I
    const-string p2, "driving_volume_ring"

    const/4 v0, 0x6

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 461
    .local v6, volRing:I
    const-string p2, "driving_volume_system"

    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 462
    .local v7, volSys:I
    const-string p2, "driving_volume_music"

    const/16 v0, 0xb

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 463
    .local v4, volMusic:I
    const-string p2, "driving_volume_notification"

    const/4 v0, 0x4

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 464
    .local v5, volNoti:I
    const-string p2, "driving_notifications_use_ring_volume"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 465
    .local v2, useRingvol:I
    const-string p2, "driving_ringtone"

    invoke-static {p0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, mRingtoneUriString:Ljava/lang/String;
    const-string p2, "driving_notification_sound"

    invoke-static {p0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .local p2, mNotiUriString:Ljava/lang/String;
    move v8, v7

    .end local v7           #volSys:I
    .local v8, volSys:I
    move v7, v6

    .end local v6           #volRing:I
    .local v7, volRing:I
    move v6, v5

    .end local v5           #volNoti:I
    .local v6, volNoti:I
    move v5, v4

    .end local v4           #volMusic:I
    .local v5, volMusic:I
    move v4, v3

    .end local v3           #vibrationType:I
    .local v4, vibrationType:I
    move v3, v2

    .end local v2           #useRingvol:I
    .local v3, useRingvol:I
    move v2, v1

    .end local v1           #silent:I
    .local v2, silent:I
    move-object v1, v0

    .end local v0           #mRingtoneUriString:Ljava/lang/String;
    .local v1, mRingtoneUriString:Ljava/lang/String;
    move-object v0, p2

    .line 546
    .end local p2           #mNotiUriString:Ljava/lang/String;
    .local v0, mNotiUriString:Ljava/lang/String;
    :goto_0
    const/4 p2, 0x1

    if-ne v2, p2, :cond_b

    .line 547
    const/4 p2, 0x1

    const-string v9, "vibrate_in_silent"

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne p2, v9, :cond_9

    const/4 p2, 0x1

    .line 551
    .local p2, vibeInSilent:Z
    :goto_1
    if-eqz p2, :cond_a

    const/4 p2, 0x1

    .end local p2           #vibeInSilent:Z
    :goto_2
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 561
    :goto_3
    const/4 p2, 0x3

    if-ne v4, p2, :cond_c

    .line 562
    const/4 p2, 0x1

    .line 563
    .local p2, callsVibrateSetting:I
    const/4 v4, 0x0

    .line 575
    .local v4, vibeInSilent:Z
    :goto_4
    const-string v9, "vibrate_in_silent"

    if-eqz v4, :cond_f

    const/4 v10, 0x1

    :goto_5
    invoke-static {p0, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 581
    const/4 v9, 0x1

    if-ne v2, v9, :cond_1

    .line 582
    if-eqz v4, :cond_10

    const/4 v2, 0x1

    .end local v2           #silent:I
    :goto_6
    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 587
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 591
    const/4 p2, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v7, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 592
    .end local p2           #callsVibrateSetting:I
    const/4 p2, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v8, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 593
    const/4 p2, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v5, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 594
    const/4 p2, 0x5

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v6, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 595
    const/4 p2, 0x1

    if-ne v3, p2, :cond_2

    .line 596
    const/4 p2, 0x5

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 599
    .end local v3           #useRingvol:I
    :cond_2
    const-string p1, "ringtone"

    .end local p1
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 605
    const-string p1, "notification_sound"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 607
    return-void

    .line 470
    .end local v0           #mNotiUriString:Ljava/lang/String;
    .end local v1           #mRingtoneUriString:Ljava/lang/String;
    .end local v4           #vibeInSilent:Z
    .end local v5           #volMusic:I
    .end local v6           #volNoti:I
    .end local v7           #volRing:I
    .end local v8           #volSys:I
    .restart local p1
    .local p2, mode:I
    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 471
    const-string p2, "meeting_silent"

    .end local p2           #mode:I
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 472
    .local v1, silent:I
    const-string p2, "meeting_vibrate_type_ringer"

    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 473
    .local v3, vibrationType:I
    const-string p2, "meeting_volume_ring"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 474
    .local v6, volRing:I
    const-string p2, "meeting_volume_system"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 475
    .local v7, volSys:I
    const-string p2, "meeting_volume_music"

    const/16 v0, 0xb

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 476
    .local v4, volMusic:I
    const-string p2, "meeting_volume_notification"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 477
    .local v5, volNoti:I
    const-string p2, "meeting_notifications_use_ring_volume"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 478
    .local v2, useRingvol:I
    const-string p2, "meeting_ringtone"

    invoke-static {p0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, mRingtoneUriString:Ljava/lang/String;
    const-string p2, "meeting_notification_sound"

    invoke-static {p0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .local p2, mNotiUriString:Ljava/lang/String;
    move v8, v7

    .end local v7           #volSys:I
    .restart local v8       #volSys:I
    move v7, v6

    .end local v6           #volRing:I
    .local v7, volRing:I
    move v6, v5

    .end local v5           #volNoti:I
    .local v6, volNoti:I
    move v5, v4

    .end local v4           #volMusic:I
    .local v5, volMusic:I
    move v4, v3

    .end local v3           #vibrationType:I
    .local v4, vibrationType:I
    move v3, v2

    .end local v2           #useRingvol:I
    .local v3, useRingvol:I
    move v2, v1

    .end local v1           #silent:I
    .local v2, silent:I
    move-object v1, v0

    .end local v0           #mRingtoneUriString:Ljava/lang/String;
    .local v1, mRingtoneUriString:Ljava/lang/String;
    move-object v0, p2

    .end local p2           #mNotiUriString:Ljava/lang/String;
    .local v0, mNotiUriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 483
    .end local v0           #mNotiUriString:Ljava/lang/String;
    .end local v1           #mRingtoneUriString:Ljava/lang/String;
    .end local v2           #silent:I
    .end local v3           #useRingvol:I
    .end local v4           #vibrationType:I
    .end local v5           #volMusic:I
    .end local v6           #volNoti:I
    .end local v7           #volRing:I
    .end local v8           #volSys:I
    .local p2, mode:I
    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 484
    const-string p2, "outdoor_silent"

    .end local p2           #mode:I
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 485
    .local v1, silent:I
    const-string p2, "outdoor_vibrate_type_ringer"

    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 486
    .local v3, vibrationType:I
    const-string p2, "outdoor_volume_ring"

    const/4 v0, 0x7

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 487
    .local v6, volRing:I
    const-string p2, "outdoor_volume_system"

    const/4 v0, 0x4

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 488
    .local v7, volSys:I
    const-string p2, "outdoor_volume_music"

    const/16 v0, 0xb

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 489
    .local v4, volMusic:I
    const-string p2, "outdoor_volume_notification"

    const/4 v0, 0x4

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 490
    .local v5, volNoti:I
    const-string p2, "outdoor_notifications_use_ring_volume"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 491
    .local v2, useRingvol:I
    const-string p2, "outdoor_ringtone"

    invoke-static {p0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, mRingtoneUriString:Ljava/lang/String;
    const-string p2, "outdoor_notification_sound"

    invoke-static {p0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .local p2, mNotiUriString:Ljava/lang/String;
    move v8, v7

    .end local v7           #volSys:I
    .restart local v8       #volSys:I
    move v7, v6

    .end local v6           #volRing:I
    .local v7, volRing:I
    move v6, v5

    .end local v5           #volNoti:I
    .local v6, volNoti:I
    move v5, v4

    .end local v4           #volMusic:I
    .local v5, volMusic:I
    move v4, v3

    .end local v3           #vibrationType:I
    .local v4, vibrationType:I
    move v3, v2

    .end local v2           #useRingvol:I
    .local v3, useRingvol:I
    move v2, v1

    .end local v1           #silent:I
    .local v2, silent:I
    move-object v1, v0

    .end local v0           #mRingtoneUriString:Ljava/lang/String;
    .local v1, mRingtoneUriString:Ljava/lang/String;
    move-object v0, p2

    .end local p2           #mNotiUriString:Ljava/lang/String;
    .local v0, mNotiUriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 495
    .end local v0           #mNotiUriString:Ljava/lang/String;
    .end local v1           #mRingtoneUriString:Ljava/lang/String;
    .end local v2           #silent:I
    .end local v3           #useRingvol:I
    .end local v4           #vibrationType:I
    .end local v5           #volMusic:I
    .end local v6           #volNoti:I
    .end local v7           #volRing:I
    .end local v8           #volSys:I
    .local p2, mode:I
    :cond_5
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    .line 496
    const-string p2, "user1_silent"

    .end local p2           #mode:I
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 497
    .local v1, silent:I
    const-string p2, "user1_vibrate_type_ringer"

    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 498
    .local v3, vibrationType:I
    const-string p2, "user1_volume_ring"

    const/4 v0, 0x6

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 499
    .local v6, volRing:I
    const-string p2, "user1_volume_system"

    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 500
    .local v7, volSys:I
    const-string p2, "user1_volume_music"

    const/16 v0, 0xb

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 501
    .local v4, volMusic:I
    const-string p2, "user1_volume_notification"

    const/4 v0, 0x4

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 502
    .local v5, volNoti:I
    const-string p2, "user1_notifications_use_ring_volume"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 503
    .local v2, useRingvol:I
    const-string p2, "user1_ringtone"

    invoke-static {p0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, mRingtoneUriString:Ljava/lang/String;
    const-string p2, "user1_notification_sound"

    invoke-static {p0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .local p2, mNotiUriString:Ljava/lang/String;
    move v8, v7

    .end local v7           #volSys:I
    .restart local v8       #volSys:I
    move v7, v6

    .end local v6           #volRing:I
    .local v7, volRing:I
    move v6, v5

    .end local v5           #volNoti:I
    .local v6, volNoti:I
    move v5, v4

    .end local v4           #volMusic:I
    .local v5, volMusic:I
    move v4, v3

    .end local v3           #vibrationType:I
    .local v4, vibrationType:I
    move v3, v2

    .end local v2           #useRingvol:I
    .local v3, useRingvol:I
    move v2, v1

    .end local v1           #silent:I
    .local v2, silent:I
    move-object v1, v0

    .end local v0           #mRingtoneUriString:Ljava/lang/String;
    .local v1, mRingtoneUriString:Ljava/lang/String;
    move-object v0, p2

    .end local p2           #mNotiUriString:Ljava/lang/String;
    .local v0, mNotiUriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 507
    .end local v0           #mNotiUriString:Ljava/lang/String;
    .end local v1           #mRingtoneUriString:Ljava/lang/String;
    .end local v2           #silent:I
    .end local v3           #useRingvol:I
    .end local v4           #vibrationType:I
    .end local v5           #volMusic:I
    .end local v6           #volNoti:I
    .end local v7           #volRing:I
    .end local v8           #volSys:I
    .local p2, mode:I
    :cond_6
    const/4 v0, 0x5

    if-ne p2, v0, :cond_7

    .line 508
    const-string p2, "user2_silent"

    .end local p2           #mode:I
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 509
    .local v1, silent:I
    const-string p2, "user2_vibrate_type_ringer"

    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 510
    .local v3, vibrationType:I
    const-string p2, "user2_volume_ring"

    const/4 v0, 0x6

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 511
    .local v6, volRing:I
    const-string p2, "user2_volume_system"

    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 512
    .local v7, volSys:I
    const-string p2, "user2_volume_music"

    const/16 v0, 0xb

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 513
    .local v4, volMusic:I
    const-string p2, "user2_volume_notification"

    const/4 v0, 0x4

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 514
    .local v5, volNoti:I
    const-string p2, "user2_notifications_use_ring_volume"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 515
    .local v2, useRingvol:I
    const-string p2, "user2_ringtone"

    invoke-static {p0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, mRingtoneUriString:Ljava/lang/String;
    const-string p2, "user2_notification_sound"

    invoke-static {p0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .local p2, mNotiUriString:Ljava/lang/String;
    move v8, v7

    .end local v7           #volSys:I
    .restart local v8       #volSys:I
    move v7, v6

    .end local v6           #volRing:I
    .local v7, volRing:I
    move v6, v5

    .end local v5           #volNoti:I
    .local v6, volNoti:I
    move v5, v4

    .end local v4           #volMusic:I
    .local v5, volMusic:I
    move v4, v3

    .end local v3           #vibrationType:I
    .local v4, vibrationType:I
    move v3, v2

    .end local v2           #useRingvol:I
    .local v3, useRingvol:I
    move v2, v1

    .end local v1           #silent:I
    .local v2, silent:I
    move-object v1, v0

    .end local v0           #mRingtoneUriString:Ljava/lang/String;
    .local v1, mRingtoneUriString:Ljava/lang/String;
    move-object v0, p2

    .end local p2           #mNotiUriString:Ljava/lang/String;
    .local v0, mNotiUriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 519
    .end local v0           #mNotiUriString:Ljava/lang/String;
    .end local v1           #mRingtoneUriString:Ljava/lang/String;
    .end local v2           #silent:I
    .end local v3           #useRingvol:I
    .end local v4           #vibrationType:I
    .end local v5           #volMusic:I
    .end local v6           #volNoti:I
    .end local v7           #volRing:I
    .end local v8           #volSys:I
    .local p2, mode:I
    :cond_7
    const/4 v0, 0x6

    if-ne p2, v0, :cond_8

    .line 520
    const-string p2, "user3_silent"

    .end local p2           #mode:I
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 521
    .local v1, silent:I
    const-string p2, "user3_vibrate_type_ringer"

    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 522
    .local v3, vibrationType:I
    const-string p2, "user3_volume_ring"

    const/4 v0, 0x6

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 523
    .local v6, volRing:I
    const-string p2, "user3_volume_system"

    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 524
    .local v7, volSys:I
    const-string p2, "user3_volume_music"

    const/16 v0, 0xb

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 525
    .local v4, volMusic:I
    const-string p2, "user3_volume_notification"

    const/4 v0, 0x4

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 526
    .local v5, volNoti:I
    const-string p2, "user3_notifications_use_ring_volume"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 527
    .local v2, useRingvol:I
    const-string p2, "user3_ringtone"

    invoke-static {p0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, mRingtoneUriString:Ljava/lang/String;
    const-string p2, "user3_notification_sound"

    invoke-static {p0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .local p2, mNotiUriString:Ljava/lang/String;
    move v8, v7

    .end local v7           #volSys:I
    .restart local v8       #volSys:I
    move v7, v6

    .end local v6           #volRing:I
    .local v7, volRing:I
    move v6, v5

    .end local v5           #volNoti:I
    .local v6, volNoti:I
    move v5, v4

    .end local v4           #volMusic:I
    .local v5, volMusic:I
    move v4, v3

    .end local v3           #vibrationType:I
    .local v4, vibrationType:I
    move v3, v2

    .end local v2           #useRingvol:I
    .local v3, useRingvol:I
    move v2, v1

    .end local v1           #silent:I
    .local v2, silent:I
    move-object v1, v0

    .end local v0           #mRingtoneUriString:Ljava/lang/String;
    .local v1, mRingtoneUriString:Ljava/lang/String;
    move-object v0, p2

    .end local p2           #mNotiUriString:Ljava/lang/String;
    .local v0, mNotiUriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 532
    .end local v0           #mNotiUriString:Ljava/lang/String;
    .end local v1           #mRingtoneUriString:Ljava/lang/String;
    .end local v2           #silent:I
    .end local v3           #useRingvol:I
    .end local v4           #vibrationType:I
    .end local v5           #volMusic:I
    .end local v6           #volNoti:I
    .end local v7           #volRing:I
    .end local v8           #volSys:I
    .local p2, mode:I
    :cond_8
    const-string p2, "normal_silent"

    .end local p2           #mode:I
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 533
    .local v1, silent:I
    const-string p2, "normal_vibrate_type_ringer"

    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 534
    .local v3, vibrationType:I
    const-string p2, "normal_volume_ring"

    const/4 v0, 0x6

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 535
    .local v6, volRing:I
    const-string p2, "normal_volume_system"

    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 536
    .local v7, volSys:I
    const-string p2, "normal_volume_music"

    const/16 v0, 0xb

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 537
    .local v4, volMusic:I
    const-string p2, "normal_volume_notification"

    const/4 v0, 0x4

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 538
    .local v5, volNoti:I
    const-string p2, "normal_notifications_use_ring_volume"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 539
    .local v2, useRingvol:I
    const-string p2, "normal_ringtone"

    invoke-static {p0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, mRingtoneUriString:Ljava/lang/String;
    const-string p2, "normal_notification_sound"

    invoke-static {p0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .local p2, mNotiUriString:Ljava/lang/String;
    move v8, v7

    .end local v7           #volSys:I
    .restart local v8       #volSys:I
    move v7, v6

    .end local v6           #volRing:I
    .local v7, volRing:I
    move v6, v5

    .end local v5           #volNoti:I
    .local v6, volNoti:I
    move v5, v4

    .end local v4           #volMusic:I
    .local v5, volMusic:I
    move v4, v3

    .end local v3           #vibrationType:I
    .local v4, vibrationType:I
    move v3, v2

    .end local v2           #useRingvol:I
    .local v3, useRingvol:I
    move v2, v1

    .end local v1           #silent:I
    .local v2, silent:I
    move-object v1, v0

    .end local v0           #mRingtoneUriString:Ljava/lang/String;
    .local v1, mRingtoneUriString:Ljava/lang/String;
    move-object v0, p2

    .end local p2           #mNotiUriString:Ljava/lang/String;
    .local v0, mNotiUriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 547
    :cond_9
    const/4 p2, 0x0

    goto/16 :goto_1

    .line 551
    .local p2, vibeInSilent:Z
    :cond_a
    const/4 p2, 0x0

    goto/16 :goto_2

    .line 555
    .end local p2           #vibeInSilent:Z
    :cond_b
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_3

    .line 564
    :cond_c
    const/4 p2, 0x1

    if-ne v4, p2, :cond_d

    .line 565
    const/4 p2, 0x0

    .line 566
    .local p2, callsVibrateSetting:I
    const/4 v4, 0x0

    .local v4, vibeInSilent:Z
    goto/16 :goto_4

    .line 567
    .end local p2           #callsVibrateSetting:I
    .local v4, vibrationType:I
    :cond_d
    const/4 p2, 0x2

    if-ne v4, p2, :cond_e

    .line 568
    const/4 p2, 0x2

    .line 569
    .restart local p2       #callsVibrateSetting:I
    const/4 v4, 0x1

    .local v4, vibeInSilent:Z
    goto/16 :goto_4

    .line 571
    .end local p2           #callsVibrateSetting:I
    .local v4, vibrationType:I
    :cond_e
    const/4 p2, 0x1

    .line 572
    .restart local p2       #callsVibrateSetting:I
    const/4 v4, 0x1

    .local v4, vibeInSilent:Z
    goto/16 :goto_4

    .line 575
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 582
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_6
.end method

.method private setSelectedKey(Ljava/lang/String;)V
    .locals 20
    .parameter "key"

    .prologue
    .line 226
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PhoneProfileSettings;->mSelectedKey:Ljava/lang/String;

    .line 228
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    const/16 v16, 0x7

    move v0, v5

    move/from16 v1, v16

    if-ge v0, v1, :cond_12

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileSettings;->profilekey:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v5

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 230
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/PhoneProfileSettings;->mSelectedProfile:I

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "sound_profile_mode"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/PhoneProfileSettings;->mSelectedProfile:I

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/PhoneProfileSettings;->mSelectedProfile:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "sound_profile_pre_mode"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/PhoneProfileSettings;->mSelectedProfile:I

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/PhoneProfileSettings;->mSelectedProfile:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "driving_silent"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 241
    .local v8, silent:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "driving_vibrate_type_ringer"

    const/16 v18, 0x2

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 243
    .local v11, vibrationType:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "driving_volume_ring"

    const/16 v18, 0x6

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 245
    .local v14, volRing:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "driving_volume_system"

    const/16 v18, 0x2

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 247
    .local v15, volSys:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "driving_volume_music"

    const/16 v18, 0xb

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 249
    .local v12, volMusic:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "driving_volume_notification"

    const/16 v18, 0x4

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 251
    .local v13, volNoti:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "driving_notifications_use_ring_volume"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 254
    .local v9, useRingvol:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "driving_ringtone"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 257
    .local v7, mRingtoneUriString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "driving_notification_sound"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 385
    .local v6, mNotiUriString:Ljava/lang/String;
    :goto_1
    const/16 v16, 0x3

    move v0, v11

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    .line 386
    const/4 v4, 0x1

    .line 387
    .local v4, callsVibrateSetting:I
    const/4 v10, 0x0

    .line 399
    .local v10, vibeInSilent:Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "vibrate_in_silent"

    if-eqz v10, :cond_d

    const/16 v18, 0x1

    :goto_3
    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 405
    const/16 v16, 0x1

    move v0, v8

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    if-eqz v10, :cond_e

    const/16 v17, 0x1

    :goto_4
    invoke-virtual/range {v16 .. v17}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 411
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 415
    const/16 v16, 0x1

    move v0, v8

    move/from16 v1, v16

    if-ne v0, v1, :cond_11

    .line 416
    const/16 v16, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "vibrate_in_silent"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    const/16 v16, 0x1

    move/from16 v10, v16

    .line 420
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    if-eqz v10, :cond_10

    const/16 v17, 0x1

    :goto_6
    invoke-virtual/range {v16 .. v17}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 427
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move v2, v14

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move v2, v15

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move v2, v12

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    const/16 v17, 0x5

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move v2, v13

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 431
    const/16 v16, 0x1

    move v0, v9

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    const/16 v17, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v18

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 435
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "ringtone"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "notification_sound"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 228
    .end local v4           #callsVibrateSetting:I
    .end local v6           #mNotiUriString:Ljava/lang/String;
    .end local v7           #mRingtoneUriString:Ljava/lang/String;
    .end local v8           #silent:I
    .end local v9           #useRingvol:I
    .end local v10           #vibeInSilent:Z
    .end local v11           #vibrationType:I
    .end local v12           #volMusic:I
    .end local v13           #volNoti:I
    .end local v14           #volRing:I
    .end local v15           #volSys:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 259
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/PhoneProfileSettings;->mSelectedProfile:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "meeting_silent"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 262
    .restart local v8       #silent:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "meeting_vibrate_type_ringer"

    const/16 v18, 0x2

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 264
    .restart local v11       #vibrationType:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "meeting_volume_ring"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 266
    .restart local v14       #volRing:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "meeting_volume_system"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 268
    .restart local v15       #volSys:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "meeting_volume_music"

    const/16 v18, 0xb

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 270
    .restart local v12       #volMusic:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "meeting_volume_notification"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 272
    .restart local v13       #volNoti:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "meeting_notifications_use_ring_volume"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 275
    .restart local v9       #useRingvol:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "meeting_ringtone"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 278
    .restart local v7       #mRingtoneUriString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "meeting_notification_sound"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #mNotiUriString:Ljava/lang/String;
    goto/16 :goto_1

    .line 280
    .end local v6           #mNotiUriString:Ljava/lang/String;
    .end local v7           #mRingtoneUriString:Ljava/lang/String;
    .end local v8           #silent:I
    .end local v9           #useRingvol:I
    .end local v11           #vibrationType:I
    .end local v12           #volMusic:I
    .end local v13           #volNoti:I
    .end local v14           #volRing:I
    .end local v15           #volSys:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/PhoneProfileSettings;->mSelectedProfile:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "outdoor_silent"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 283
    .restart local v8       #silent:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "outdoor_vibrate_type_ringer"

    const/16 v18, 0x2

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 285
    .restart local v11       #vibrationType:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "outdoor_volume_ring"

    const/16 v18, 0x7

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 287
    .restart local v14       #volRing:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "outdoor_volume_system"

    const/16 v18, 0x4

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 289
    .restart local v15       #volSys:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "outdoor_volume_music"

    const/16 v18, 0xb

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 291
    .restart local v12       #volMusic:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "outdoor_volume_notification"

    const/16 v18, 0x4

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 293
    .restart local v13       #volNoti:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "outdoor_notifications_use_ring_volume"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 296
    .restart local v9       #useRingvol:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "outdoor_ringtone"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 299
    .restart local v7       #mRingtoneUriString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "outdoor_notification_sound"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #mNotiUriString:Ljava/lang/String;
    goto/16 :goto_1

    .line 300
    .end local v6           #mNotiUriString:Ljava/lang/String;
    .end local v7           #mRingtoneUriString:Ljava/lang/String;
    .end local v8           #silent:I
    .end local v9           #useRingvol:I
    .end local v11           #vibrationType:I
    .end local v12           #volMusic:I
    .end local v13           #volNoti:I
    .end local v14           #volRing:I
    .end local v15           #volSys:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/PhoneProfileSettings;->mSelectedProfile:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user1_silent"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 303
    .restart local v8       #silent:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user1_vibrate_type_ringer"

    const/16 v18, 0x2

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 305
    .restart local v11       #vibrationType:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user1_volume_ring"

    const/16 v18, 0x6

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 307
    .restart local v14       #volRing:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user1_volume_system"

    const/16 v18, 0x2

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 309
    .restart local v15       #volSys:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user1_volume_music"

    const/16 v18, 0xb

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 311
    .restart local v12       #volMusic:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user1_volume_notification"

    const/16 v18, 0x4

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 313
    .restart local v13       #volNoti:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user1_notifications_use_ring_volume"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 316
    .restart local v9       #useRingvol:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user1_ringtone"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 319
    .restart local v7       #mRingtoneUriString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user1_notification_sound"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #mNotiUriString:Ljava/lang/String;
    goto/16 :goto_1

    .line 320
    .end local v6           #mNotiUriString:Ljava/lang/String;
    .end local v7           #mRingtoneUriString:Ljava/lang/String;
    .end local v8           #silent:I
    .end local v9           #useRingvol:I
    .end local v11           #vibrationType:I
    .end local v12           #volMusic:I
    .end local v13           #volNoti:I
    .end local v14           #volRing:I
    .end local v15           #volSys:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/PhoneProfileSettings;->mSelectedProfile:I

    move/from16 v16, v0

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user2_silent"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 323
    .restart local v8       #silent:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user2_vibrate_type_ringer"

    const/16 v18, 0x2

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 325
    .restart local v11       #vibrationType:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user2_volume_ring"

    const/16 v18, 0x6

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 327
    .restart local v14       #volRing:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user2_volume_system"

    const/16 v18, 0x2

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 329
    .restart local v15       #volSys:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user2_volume_music"

    const/16 v18, 0xb

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 331
    .restart local v12       #volMusic:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user2_volume_notification"

    const/16 v18, 0x4

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 333
    .restart local v13       #volNoti:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user2_notifications_use_ring_volume"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 336
    .restart local v9       #useRingvol:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user2_ringtone"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 339
    .restart local v7       #mRingtoneUriString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user2_notification_sound"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #mNotiUriString:Ljava/lang/String;
    goto/16 :goto_1

    .line 340
    .end local v6           #mNotiUriString:Ljava/lang/String;
    .end local v7           #mRingtoneUriString:Ljava/lang/String;
    .end local v8           #silent:I
    .end local v9           #useRingvol:I
    .end local v11           #vibrationType:I
    .end local v12           #volMusic:I
    .end local v13           #volNoti:I
    .end local v14           #volRing:I
    .end local v15           #volSys:I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/PhoneProfileSettings;->mSelectedProfile:I

    move/from16 v16, v0

    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user3_silent"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 343
    .restart local v8       #silent:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user3_vibrate_type_ringer"

    const/16 v18, 0x2

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 345
    .restart local v11       #vibrationType:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user3_volume_ring"

    const/16 v18, 0x6

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 347
    .restart local v14       #volRing:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user3_volume_system"

    const/16 v18, 0x2

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 349
    .restart local v15       #volSys:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user3_volume_music"

    const/16 v18, 0xb

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 351
    .restart local v12       #volMusic:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user3_volume_notification"

    const/16 v18, 0x4

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 353
    .restart local v13       #volNoti:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user3_notifications_use_ring_volume"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 356
    .restart local v9       #useRingvol:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user3_ringtone"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 359
    .restart local v7       #mRingtoneUriString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "user3_notification_sound"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #mNotiUriString:Ljava/lang/String;
    goto/16 :goto_1

    .line 361
    .end local v6           #mNotiUriString:Ljava/lang/String;
    .end local v7           #mRingtoneUriString:Ljava/lang/String;
    .end local v8           #silent:I
    .end local v9           #useRingvol:I
    .end local v11           #vibrationType:I
    .end local v12           #volMusic:I
    .end local v13           #volNoti:I
    .end local v14           #volRing:I
    .end local v15           #volSys:I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "normal_silent"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 363
    .restart local v8       #silent:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "normal_vibrate_type_ringer"

    const/16 v18, 0x2

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 365
    .restart local v11       #vibrationType:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "normal_volume_ring"

    const/16 v18, 0x6

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 367
    .restart local v14       #volRing:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "normal_volume_system"

    const/16 v18, 0x2

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 369
    .restart local v15       #volSys:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "normal_volume_music"

    const/16 v18, 0xb

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 371
    .restart local v12       #volMusic:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "normal_volume_notification"

    const/16 v18, 0x4

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 373
    .restart local v13       #volNoti:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "normal_notifications_use_ring_volume"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 376
    .restart local v9       #useRingvol:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "normal_ringtone"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 379
    .restart local v7       #mRingtoneUriString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "normal_notification_sound"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #mNotiUriString:Ljava/lang/String;
    goto/16 :goto_1

    .line 388
    :cond_a
    const/16 v16, 0x1

    move v0, v11

    move/from16 v1, v16

    if-ne v0, v1, :cond_b

    .line 389
    const/4 v4, 0x0

    .line 390
    .restart local v4       #callsVibrateSetting:I
    const/4 v10, 0x0

    .restart local v10       #vibeInSilent:Z
    goto/16 :goto_2

    .line 391
    .end local v4           #callsVibrateSetting:I
    .end local v10           #vibeInSilent:Z
    :cond_b
    const/16 v16, 0x2

    move v0, v11

    move/from16 v1, v16

    if-ne v0, v1, :cond_c

    .line 392
    const/4 v4, 0x2

    .line 393
    .restart local v4       #callsVibrateSetting:I
    const/4 v10, 0x1

    .restart local v10       #vibeInSilent:Z
    goto/16 :goto_2

    .line 395
    .end local v4           #callsVibrateSetting:I
    .end local v10           #vibeInSilent:Z
    :cond_c
    const/4 v4, 0x1

    .line 396
    .restart local v4       #callsVibrateSetting:I
    const/4 v10, 0x1

    .restart local v10       #vibeInSilent:Z
    goto/16 :goto_2

    .line 399
    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 406
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 416
    :cond_f
    const/16 v16, 0x0

    move/from16 v10, v16

    goto/16 :goto_5

    .line 420
    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 424
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_7

    .line 445
    .end local v4           #callsVibrateSetting:I
    .end local v6           #mNotiUriString:Ljava/lang/String;
    .end local v7           #mRingtoneUriString:Ljava/lang/String;
    .end local v8           #silent:I
    .end local v9           #useRingvol:I
    .end local v10           #vibeInSilent:Z
    .end local v11           #vibrationType:I
    .end local v12           #volMusic:I
    .end local v13           #volNoti:I
    .end local v14           #volRing:I
    .end local v15           #volSys:I
    :cond_12
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/android/settings/PhoneProfileSettings;->addPreferencesFromResource(I)V

    .line 82
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/PhoneProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 85
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const-string v5, "sound_profile_edit_mode"

    const-string v4, "position"

    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 222
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 201
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/PhoneProfileEditor;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user1_avalable"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_profile_edit_mode"

    const/4 v2, 0x4

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    const-string v1, "position"

    const-string v1, "user1"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/PhoneProfileSettings;->startActivity(Landroid/content/Intent;)V

    .line 218
    const/4 v0, 0x1

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user2_avalable"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_profile_edit_mode"

    const/4 v2, 0x5

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    const-string v1, "position"

    const-string v1, "user2"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user3_avalable"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_profile_edit_mode"

    const/4 v2, 0x6

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    const-string v1, "position"

    const-string v1, "user3"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 98
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 174
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 175
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/PhoneProfileSettings;->setSelectedKey(Ljava/lang/String;)V

    .line 178
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 163
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 166
    .local v1, pos:I
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/settings/PhoneProfileSettings;->startActivity(Landroid/content/Intent;)V

    .line 170
    const/4 v2, 0x1

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user1_avalable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user2_avalable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user3_avalable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 188
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 194
    :cond_0
    :goto_0
    return v3

    .line 190
    :cond_1
    invoke-interface {p1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const v0, 0x7f0806f7

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020001

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 91
    invoke-direct {p0}, Lcom/android/settings/PhoneProfileSettings;->fillList()V

    .line 92
    return-void
.end method
