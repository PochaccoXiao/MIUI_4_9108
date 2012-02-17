.class public Landroid/preference/ProfileVolumePreference;
.super Landroid/preference/SeekBarPreference;
.source "ProfileVolumePreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;,
        Landroid/preference/ProfileVolumePreference$SavedState;,
        Landroid/preference/ProfileVolumePreference$VolumeStore;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ProfileVolumePreference"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioMode:I

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

.field private mStreamType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/preference/ProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 62
    new-instance v1, Landroid/media/RingtoneManager;

    invoke-direct {v1, p1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/preference/ProfileVolumePreference;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 63
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference;->mRingtoneManager:Landroid/media/RingtoneManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->setType(I)V

    .line 65
    sget-object v1, Lcom/android/internal/R$styleable;->VolumePreference:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/preference/ProfileVolumePreference;->mStreamType:I

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method

.method private cleanup()V
    .locals 4

    .prologue
    .line 192
    const-string v2, "ProfileVolumePreference"

    const-string v3, " cleanup()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 195
    iget-object v2, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_1

    .line 196
    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 198
    .local v0, dialog:Landroid/app/Dialog;
    iget-object v2, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->stop()V

    .line 199
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020248

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 202
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 204
    :cond_0
    iget-object v2, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 209
    .end local v0           #dialog:Landroid/app/Dialog;
    .end local v1           #view:Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityStop()V
    .locals 2

    .prologue
    .line 183
    const-string v0, "ProfileVolumePreference"

    const-string v1, " onActivityStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Landroid/preference/ProfileVolumePreference;->cleanup()V

    .line 186
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindDialogView(Landroid/view/View;)V

    .line 80
    const v1, 0x1020248

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 81
    .local v0, seekBar:Landroid/widget/SeekBar;
    new-instance v1, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/preference/ProfileVolumePreference;->mStreamType:I

    invoke-direct {v1, p0, v2, v0, v3}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/ProfileVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v1, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    .line 82
    const-string v1, "ProfileVolumePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBindDialogView : mStreamType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/preference/ProfileVolumePreference;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 87
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 88
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 90
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 7
    .parameter "positiveResult"

    .prologue
    const/4 v5, 0x0

    const-string v6, "ProfileVolumePreference"

    .line 132
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onDialogClosed(Z)V

    .line 133
    const-string v3, "ProfileVolumePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onDialogClosed() positiveResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-nez p1, :cond_1

    iget-object v3, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    if-eqz v3, :cond_1

    .line 136
    iget-object v3, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {v3}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->stop()V

    .line 137
    iget-object v3, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {v3}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 179
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/preference/ProfileVolumePreference;->cleanup()V

    .line 180
    return-void

    .line 140
    :cond_1
    iget-object v3, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    if-eqz v3, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sound_profile_edit_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 144
    .local v1, editMode:I
    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sound_profile_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 146
    .local v0, currentMode:I
    iget-object v3, p0, Landroid/preference/ProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/ProfileVolumePreference;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 148
    .local v2, volume:I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 149
    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_volume_ring"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    :goto_1
    const-string v3, "ProfileVolumePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "editMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   currentMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   volume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/preference/ProfileVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Landroid/preference/ProfileVolumePreference;->mStreamType:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-eq v1, v0, :cond_0

    .line 174
    iget-object v3, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {v3}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->revertVolume()V

    goto :goto_0

    .line 151
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 152
    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "meeting_volume_ring"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 154
    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 155
    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "outdoor_volume_ring"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 157
    :cond_4
    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    .line 158
    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "user1_volume_ring"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 160
    :cond_5
    const/4 v3, 0x5

    if-ne v1, v3, :cond_6

    .line 161
    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "user2_volume_ring"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 163
    :cond_6
    const/4 v3, 0x6

    if-ne v1, v3, :cond_7

    .line 164
    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "user3_volume_ring"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 167
    :cond_7
    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "normal_volume_ring"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string v4, "ProfileVolumePreference"

    .line 94
    const-string v1, "ProfileVolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKey() Keycode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 96
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    if-nez v1, :cond_0

    .line 97
    const-string v1, "ProfileVolumePreference"

    const-string v1, " onKey() mSeekBarVolumizer is null, return true."

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 126
    :goto_0
    return v1

    .line 101
    :cond_0
    const-string v1, "ProfileVolumePreference"

    const-string v1, " onKey() Keycode: down "

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    .line 103
    .local v0, isdown:Z
    :goto_1
    sparse-switch p2, :sswitch_data_0

    move v1, v5

    .line 126
    goto :goto_0

    .end local v0           #isdown:Z
    :cond_1
    move v0, v5

    .line 102
    goto :goto_1

    .line 105
    .restart local v0       #isdown:Z
    :sswitch_0
    if-eqz v0, :cond_2

    .line 106
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    :cond_2
    move v1, v3

    .line 108
    goto :goto_0

    .line 110
    :sswitch_1
    if-eqz v0, :cond_3

    .line 111
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {v1, v3}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    :cond_3
    move v1, v3

    .line 113
    goto :goto_0

    .line 116
    :sswitch_2
    if-eqz v0, :cond_4

    .line 117
    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference;->onActivityDestroy()V

    :cond_4
    move v1, v3

    .line 119
    goto :goto_0

    .line 121
    :sswitch_3
    if-eqz v0, :cond_5

    .line 122
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {v1}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->requestFocus()Z

    :cond_5
    move v1, v3

    .line 124
    goto :goto_0

    .line 103
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x14 -> :sswitch_3
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 234
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/preference/ProfileVolumePreference$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 236
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 240
    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/preference/ProfileVolumePreference$SavedState;

    move-object v1, v0

    .line 241
    .local v1, myState:Landroid/preference/ProfileVolumePreference$SavedState;
    invoke-virtual {v1}, Landroid/preference/ProfileVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/preference/SeekBarPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 242
    iget-object v2, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_1

    .line 243
    iget-object v2, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {v1}, Landroid/preference/ProfileVolumePreference$SavedState;->getVolumeStore()Landroid/preference/ProfileVolumePreference$VolumeStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/ProfileVolumePreference$VolumeStore;)V

    goto :goto_0
.end method

.method protected onSampleStarting(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;)V
    .locals 1
    .parameter "volumizer"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    if-eq p1, v0, :cond_0

    .line 213
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 215
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 219
    invoke-super {p0}, Landroid/preference/SeekBarPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 220
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 229
    :goto_0
    return-object v2

    .line 225
    :cond_0
    new-instance v0, Landroid/preference/ProfileVolumePreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/ProfileVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 226
    .local v0, myState:Landroid/preference/ProfileVolumePreference$SavedState;
    iget-object v2, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_1

    .line 227
    iget-object v2, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/ProfileVolumePreference$SavedState;->getVolumeStore()Landroid/preference/ProfileVolumePreference$VolumeStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/ProfileVolumePreference$VolumeStore;)V

    :cond_1
    move-object v2, v0

    .line 229
    goto :goto_0
.end method

.method public setStreamType(I)V
    .locals 3
    .parameter "streamType"

    .prologue
    .line 72
    const-string v0, "ProfileVolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSteamType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput p1, p0, Landroid/preference/ProfileVolumePreference;->mStreamType:I

    .line 74
    return-void
.end method
