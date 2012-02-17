.class public Lcom/android/settings/ProfileDefaultRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "ProfileDefaultRingtonePreference.java"


# instance fields
.field private currentMode:I

.field private editMode:I

.field private mContext:Landroid/content/Context;

.field private mRingtoneType:I

.field private mShowDefault:Z

.field private mShowSilent:Z

.field private mSoundType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-boolean v3, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->mShowDefault:Z

    .line 39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->mShowSilent:Z

    .line 46
    iput-object p1, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->mContext:Landroid/content/Context;

    .line 48
    sget-object v1, Lcom/android/settings/R$styleable;->ProfileDefaultRingtonePreference:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->mSoundType:I

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_profile_edit_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_profile_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->currentMode:I

    .line 57
    return-void
.end method


# virtual methods
.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "ringtonePickerIntent"

    .prologue
    const/4 v7, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 62
    const/4 v1, 0x0

    .line 65
    .local v1, ringtoneUri:Landroid/net/Uri;
    iget v2, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->mSoundType:I

    if-ne v2, v5, :cond_8

    .line 66
    iput v5, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->mRingtoneType:I

    .line 68
    iget v2, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v2, v6, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_notification_sound"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, mRingtoneUriString:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 104
    const-string v2, "ProfileDefaultRingtonePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call ringtone is empty ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_1
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 115
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v3, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->mShowDefault:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    iget-boolean v2, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->mShowDefault:Z

    if-eqz v2, :cond_0

    .line 117
    const-string v2, "android.intent.extra.ringtone.DEFAULT_URI"

    iget v3, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->mRingtoneType:I

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 120
    :cond_0
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v3, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->mShowSilent:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    const-string v2, "android.intent.extra.ringtone.TYPE"

    iget v3, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->mRingtoneType:I

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v2, "android.intent.extra.ringtone.EDIT"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    iget v2, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->mSoundType:I

    if-ne v2, v5, :cond_1

    .line 133
    const-string v2, "android.intent.extra.ringtone.TITLE"

    iget-object v3, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->mContext:Landroid/content/Context;

    const v4, 0x7f080213

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    :cond_1
    return-void

    .line 70
    .end local v0           #mRingtoneUriString:Ljava/lang/String;
    :cond_2
    iget v2, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v2, v5, :cond_3

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "meeting_notification_sound"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #mRingtoneUriString:Ljava/lang/String;
    goto :goto_0

    .line 72
    .end local v0           #mRingtoneUriString:Ljava/lang/String;
    :cond_3
    iget v2, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v2, v3, :cond_4

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "outdoor_notification_sound"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #mRingtoneUriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 74
    .end local v0           #mRingtoneUriString:Ljava/lang/String;
    :cond_4
    iget v2, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v2, v4, :cond_5

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user1_notification_sound"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #mRingtoneUriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 76
    .end local v0           #mRingtoneUriString:Ljava/lang/String;
    :cond_5
    iget v2, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v2, v7, :cond_6

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user2_notification_sound"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #mRingtoneUriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 78
    .end local v0           #mRingtoneUriString:Ljava/lang/String;
    :cond_6
    iget v2, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user3_notification_sound"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #mRingtoneUriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 81
    .end local v0           #mRingtoneUriString:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "normal_notification_sound"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #mRingtoneUriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 84
    .end local v0           #mRingtoneUriString:Ljava/lang/String;
    :cond_8
    iput v6, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->mRingtoneType:I

    .line 85
    iget v2, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v2, v6, :cond_9

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_ringtone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #mRingtoneUriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 87
    .end local v0           #mRingtoneUriString:Ljava/lang/String;
    :cond_9
    iget v2, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v2, v5, :cond_a

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "meeting_ringtone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #mRingtoneUriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 89
    .end local v0           #mRingtoneUriString:Ljava/lang/String;
    :cond_a
    iget v2, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v2, v3, :cond_b

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "outdoor_ringtone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #mRingtoneUriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 91
    .end local v0           #mRingtoneUriString:Ljava/lang/String;
    :cond_b
    iget v2, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v2, v4, :cond_c

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user1_ringtone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #mRingtoneUriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 93
    .end local v0           #mRingtoneUriString:Ljava/lang/String;
    :cond_c
    iget v2, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v2, v7, :cond_d

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user2_ringtone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #mRingtoneUriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 95
    .end local v0           #mRingtoneUriString:Ljava/lang/String;
    :cond_d
    iget v2, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_e

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user3_ringtone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #mRingtoneUriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 98
    .end local v0           #mRingtoneUriString:Ljava/lang/String;
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "normal_ringtone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #mRingtoneUriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 110
    :cond_f
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_1
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v3, 0x2

    const-string v4, "ProfileDefaultRingtonePreference"

    .line 204
    iget v1, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    iget v2, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->currentMode:I

    if-ne v1, v2, :cond_1

    .line 205
    iget v1, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->mSoundType:I

    if-ne v1, v3, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_sound"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, uriString:Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_f

    .line 250
    const-string v1, "ProfileDefaultRingtonePreference"

    const-string v1, "onRestoreRingtone : uriString is null. Silent"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_1
    if-eqz v0, :cond_10

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_2
    return-object v1

    .line 208
    .end local v0           #uriString:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ringtone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #uriString:Ljava/lang/String;
    goto :goto_0

    .line 213
    .end local v0           #uriString:Ljava/lang/String;
    :cond_1
    iget v1, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->mSoundType:I

    if-ne v1, v3, :cond_8

    .line 214
    iget v1, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v1, v5, :cond_2

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_notification_sound"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #uriString:Ljava/lang/String;
    goto :goto_0

    .line 216
    .end local v0           #uriString:Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v1, v3, :cond_3

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "meeting_notification_sound"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #uriString:Ljava/lang/String;
    goto :goto_0

    .line 218
    .end local v0           #uriString:Ljava/lang/String;
    :cond_3
    iget v1, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v1, v6, :cond_4

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "outdoor_notification_sound"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #uriString:Ljava/lang/String;
    goto :goto_0

    .line 220
    .end local v0           #uriString:Ljava/lang/String;
    :cond_4
    iget v1, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v1, v7, :cond_5

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user1_notification_sound"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #uriString:Ljava/lang/String;
    goto :goto_0

    .line 222
    .end local v0           #uriString:Ljava/lang/String;
    :cond_5
    iget v1, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user2_notification_sound"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #uriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 224
    .end local v0           #uriString:Ljava/lang/String;
    :cond_6
    iget v1, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user3_notification_sound"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #uriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 227
    .end local v0           #uriString:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "normal_notification_sound"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #uriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 230
    .end local v0           #uriString:Ljava/lang/String;
    :cond_8
    iget v1, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v1, v5, :cond_9

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_ringtone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #uriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 232
    .end local v0           #uriString:Ljava/lang/String;
    :cond_9
    iget v1, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v1, v3, :cond_a

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "meeting_ringtone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #uriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 234
    .end local v0           #uriString:Ljava/lang/String;
    :cond_a
    iget v1, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v1, v6, :cond_b

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "outdoor_ringtone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #uriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 236
    .end local v0           #uriString:Ljava/lang/String;
    :cond_b
    iget v1, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v1, v7, :cond_c

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user1_ringtone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #uriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 238
    .end local v0           #uriString:Ljava/lang/String;
    :cond_c
    iget v1, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_d

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user2_ringtone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #uriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 240
    .end local v0           #uriString:Ljava/lang/String;
    :cond_d
    iget v1, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_e

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user3_ringtone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #uriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 243
    .end local v0           #uriString:Ljava/lang/String;
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "normal_ringtone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #uriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 253
    :cond_f
    const-string v1, "ProfileDefaultRingtonePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreRingtone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v1, "ProfileDefaultRingtonePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri.parse(uriString) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 256
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 6
    .parameter "ringtoneUri"

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 140
    iget v0, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->mSoundType:I

    if-ne v0, v4, :cond_e

    .line 141
    iget v0, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v0, v1, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "driving_notification_sound"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 188
    :goto_1
    iget v0, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    iget v1, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->currentMode:I

    if-ne v0, v1, :cond_0

    .line 189
    iget v0, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->mSoundType:I

    if-ne v0, v4, :cond_1d

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_sound"

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 198
    :cond_0
    :goto_3
    return-void

    :cond_1
    move-object v2, v3

    .line 142
    goto :goto_0

    .line 144
    :cond_2
    iget v0, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v0, v4, :cond_4

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "meeting_notification_sound"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_3
    move-object v2, v3

    goto :goto_4

    .line 147
    :cond_4
    iget v0, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v0, v2, :cond_6

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "outdoor_notification_sound"

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_5
    move-object v2, v3

    goto :goto_5

    .line 150
    :cond_6
    iget v0, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v0, v5, :cond_8

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user1_notification_sound"

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_7
    move-object v2, v3

    goto :goto_6

    .line 153
    :cond_8
    iget v0, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user2_notification_sound"

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_7
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_9
    move-object v2, v3

    goto :goto_7

    .line 156
    :cond_a
    iget v0, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user3_notification_sound"

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_b
    move-object v2, v3

    goto :goto_8

    .line 160
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "normal_notification_sound"

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_d
    move-object v2, v3

    goto :goto_9

    .line 164
    :cond_e
    iget v0, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v0, v1, :cond_10

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "driving_ringtone"

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_a
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_f
    move-object v2, v3

    goto :goto_a

    .line 167
    :cond_10
    iget v0, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v0, v4, :cond_12

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "meeting_ringtone"

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_b
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_11
    move-object v2, v3

    goto :goto_b

    .line 170
    :cond_12
    iget v0, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v0, v2, :cond_14

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "outdoor_ringtone"

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_c
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_13
    move-object v2, v3

    goto :goto_c

    .line 173
    :cond_14
    iget v0, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    if-ne v0, v5, :cond_16

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user1_ringtone"

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_d
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_15
    move-object v2, v3

    goto :goto_d

    .line 176
    :cond_16
    iget v0, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_18

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user2_ringtone"

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_e
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_17
    move-object v2, v3

    goto :goto_e

    .line 179
    :cond_18
    iget v0, p0, Lcom/android/settings/ProfileDefaultRingtonePreference;->editMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1a

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user3_ringtone"

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_f
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_19
    move-object v2, v3

    goto :goto_f

    .line 183
    :cond_1a
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "normal_ringtone"

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_1b
    move-object v2, v3

    goto :goto_10

    :cond_1c
    move-object v2, v3

    .line 190
    goto/16 :goto_2

    .line 193
    :cond_1d
    invoke-virtual {p0}, Lcom/android/settings/ProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ringtone"

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3

    :cond_1e
    move-object v2, v3

    goto :goto_11
.end method
