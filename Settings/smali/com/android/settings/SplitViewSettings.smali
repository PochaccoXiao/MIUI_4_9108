.class public Lcom/android/settings/SplitViewSettings;
.super Landroid/preference/PreferenceActivity;
.source "SplitViewSettings.java"


# instance fields
.field private mSpliteviewCalendar:Landroid/preference/CheckBoxPreference;

.field private mSpliteviewIm:Landroid/preference/CheckBoxPreference;

.field private mSpliteviewMemo:Landroid/preference/CheckBoxPreference;

.field private mSpliteviewMessage:Landroid/preference/CheckBoxPreference;

.field private mSpliteviewMusic:Landroid/preference/CheckBoxPreference;

.field private mSpliteviewMyfiles:Landroid/preference/CheckBoxPreference;

.field private mSpliteviewPhone:Landroid/preference/CheckBoxPreference;

.field private mSpliteviewSocialhub:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f04002b

    invoke-virtual {p0, v0}, Lcom/android/settings/SplitViewSettings;->addPreferencesFromResource(I)V

    .line 63
    const-string v0, "splitview_phone_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/SplitViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewPhone:Landroid/preference/CheckBoxPreference;

    .line 64
    const-string v0, "splitview_message_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/SplitViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewMessage:Landroid/preference/CheckBoxPreference;

    .line 65
    const-string v0, "splitview_calendar_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/SplitViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewCalendar:Landroid/preference/CheckBoxPreference;

    .line 66
    const-string v0, "splitview_memo_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/SplitViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewMemo:Landroid/preference/CheckBoxPreference;

    .line 67
    const-string v0, "splitview_music_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/SplitViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewMusic:Landroid/preference/CheckBoxPreference;

    .line 68
    const-string v0, "splitview_myfiles_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/SplitViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewMyfiles:Landroid/preference/CheckBoxPreference;

    .line 69
    const-string v0, "splitview_socialhub_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/SplitViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewSocialhub:Landroid/preference/CheckBoxPreference;

    .line 70
    const-string v0, "splitview_im_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/SplitViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewIm:Landroid/preference/CheckBoxPreference;

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 144
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 106
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    iget-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewPhone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/SplitViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "spliteview_mode_phone"

    iget-object v2, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewPhone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    :cond_0
    :goto_1
    return v3

    :cond_1
    move v2, v3

    .line 113
    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/SplitViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "spliteview_mode_message"

    iget-object v2, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewCalendar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/SplitViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "spliteview_mode_calendar"

    iget-object v2, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewCalendar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v4

    :goto_3
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_3

    .line 121
    :cond_6
    iget-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewMemo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/SplitViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "spliteview_mode_memo"

    iget-object v2, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewMemo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v4

    :goto_4
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_4

    .line 124
    :cond_8
    iget-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/SplitViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "spliteview_mode_music"

    iget-object v2, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v4

    :goto_5
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_9
    move v2, v3

    goto :goto_5

    .line 127
    :cond_a
    iget-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewMyfiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/SplitViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "spliteview_mode_myfiles"

    iget-object v2, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewMyfiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v4

    :goto_6
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_b
    move v2, v3

    goto :goto_6

    .line 130
    :cond_c
    iget-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewSocialhub:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/SplitViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "spliteview_mode_socialhub"

    iget-object v2, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewSocialhub:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v4

    :goto_7
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_d
    move v2, v3

    goto :goto_7

    .line 133
    :cond_e
    iget-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewIm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/SplitViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "spliteview_mode_im"

    iget-object v2, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewIm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v4

    :goto_8
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_f
    move v2, v3

    goto :goto_8
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 77
    iget-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewPhone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SplitViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "spliteview_mode_phone"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SplitViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "spliteview_mode_message"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewCalendar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SplitViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "spliteview_mode_calendar"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewMemo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SplitViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "spliteview_mode_memo"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SplitViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "spliteview_mode_music"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewMyfiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SplitViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "spliteview_mode_myfiles"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    :goto_5
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewSocialhub:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SplitViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "spliteview_mode_socialhub"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v4

    :goto_6
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/SplitViewSettings;->mSpliteviewIm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SplitViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "spliteview_mode_im"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v4

    :goto_7
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 101
    return-void

    :cond_0
    move v1, v3

    .line 77
    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 80
    goto :goto_1

    :cond_2
    move v1, v3

    .line 83
    goto :goto_2

    :cond_3
    move v1, v3

    .line 86
    goto :goto_3

    :cond_4
    move v1, v3

    .line 89
    goto :goto_4

    :cond_5
    move v1, v3

    .line 92
    goto :goto_5

    :cond_6
    move v1, v3

    .line 95
    goto :goto_6

    :cond_7
    move v1, v3

    .line 98
    goto :goto_7
.end method
