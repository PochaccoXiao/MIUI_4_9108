.class public Lcom/android/settings/AutoSilentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoSilentReceiver.java"


# static fields
.field private static sIsProcASM:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mEndHour:I

.field private mEndMinute:I

.field private mIsAutoSilentEnabled:Z

.field private mIsOneTimeRepeat:Z

.field private mRepeatDays:I

.field private mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mStartHour:I

.field private mStartMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/AutoSilentReceiver;->sIsProcASM:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    const-string v0, "AutoSilentReceiver"

    iput-object v0, p0, Lcom/android/settings/AutoSilentReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method private enterAutoSilentMode(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 230
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "previous_ringer_mode"

    iget-object v4, p0, Lcom/android/settings/AutoSilentReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 232
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v5, v2, :cond_2

    move v1, v5

    .line 239
    .local v1, vibeInSilent:Z
    :goto_0
    sput-boolean v5, Lcom/android/settings/AutoSilentReceiver;->sIsProcASM:Z

    .line 240
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 241
    .local v0, ringerMode:I
    if-eq v0, v5, :cond_0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    sput-boolean v6, Lcom/android/settings/AutoSilentReceiver;->sIsProcASM:Z

    .line 246
    :cond_1
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_3

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 249
    return-void

    .end local v0           #ringerMode:I
    .end local v1           #vibeInSilent:Z
    :cond_2
    move v1, v6

    .line 234
    goto :goto_0

    .restart local v0       #ringerMode:I
    .restart local v1       #vibeInSilent:Z
    :cond_3
    move v3, v6

    .line 246
    goto :goto_1
.end method

.method private exitAutoSilentMode(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 256
    iget-boolean v2, p0, Lcom/android/settings/AutoSilentReceiver;->mIsOneTimeRepeat:Z

    if-eqz v2, :cond_0

    .line 257
    iput-boolean v5, p0, Lcom/android/settings/AutoSilentReceiver;->mIsOneTimeRepeat:Z

    .line 258
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "key_repeat_days"

    const/16 v4, 0x80

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 259
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "key_auto_silent_setted"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 260
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/AutoSilentSettings;->unregisterAutoSilentAlarm(Landroid/content/Context;)V

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/AutoSilentSettings;->cancelNotifyASM(Landroid/content/Context;)V

    .line 266
    :cond_0
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v3, "previous_ringer_mode"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 269
    .local v0, previousRingerMode:I
    sput-boolean v6, Lcom/android/settings/AutoSilentReceiver;->sIsProcASM:Z

    .line 271
    if-ne v0, v7, :cond_1

    .line 272
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 284
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v6, v2, :cond_2

    move v1, v6

    .line 280
    .local v1, vibeInSilent:Z
    :goto_1
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_3

    move v3, v6

    :goto_2
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .end local v1           #vibeInSilent:Z
    :cond_2
    move v1, v5

    .line 276
    goto :goto_1

    .restart local v1       #vibeInSilent:Z
    :cond_3
    move v3, v5

    .line 280
    goto :goto_2
.end method

.method private isActivateDay(I)Z
    .locals 3
    .parameter "today"

    .prologue
    const/4 v2, 0x1

    .line 288
    sub-int v1, p1, v2

    shl-int v0, v2, v1

    .line 289
    .local v0, mask:I
    iget v1, p0, Lcom/android/settings/AutoSilentReceiver;->mRepeatDays:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    move v1, v2

    .line 292
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEnteredAutoSilentMode()Z
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "entered_auto_silent_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private procAutoSilentAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const v12, 0x7f0806ca

    const/4 v11, 0x2

    const v10, 0x7f0806cb

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 111
    const-string v6, "ext_key_changed_by_user"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 114
    .local v1, isValueChangedByUser:Z
    iget-boolean v6, p0, Lcom/android/settings/AutoSilentReceiver;->mIsAutoSilentEnabled:Z

    if-nez v6, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/android/settings/AutoSilentReceiver;->isEnteredAutoSilentMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 116
    invoke-direct {p0, p1}, Lcom/android/settings/AutoSilentReceiver;->exitAutoSilentMode(Landroid/content/Context;)V

    .line 118
    :cond_0
    invoke-static {p1}, Lcom/android/settings/AutoSilentSettings;->unregisterAutoSilentAlarm(Landroid/content/Context;)V

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/AutoSilentSettings;->cancelNotifyASM(Landroid/content/Context;)V

    .line 195
    :goto_0
    return-void

    .line 123
    :cond_1
    iget v6, p0, Lcom/android/settings/AutoSilentReceiver;->mStartHour:I

    iget v7, p0, Lcom/android/settings/AutoSilentReceiver;->mEndHour:I

    if-ne v6, v7, :cond_2

    iget v6, p0, Lcom/android/settings/AutoSilentReceiver;->mStartMinute:I

    iget v7, p0, Lcom/android/settings/AutoSilentReceiver;->mEndMinute:I

    if-ne v6, v7, :cond_2

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/AutoSilentSettings;->unregisterAutoSilentAlarm(Landroid/content/Context;)V

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/AutoSilentSettings;->cancelNotifyASM(Landroid/content/Context;)V

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v1, :cond_8

    :cond_3
    iget-boolean v6, p0, Lcom/android/settings/AutoSilentReceiver;->mIsOneTimeRepeat:Z

    if-eqz v6, :cond_8

    .line 131
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 132
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/AutoSilentSettings;->isValidNotifyASM(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/AutoSilentSettings;->unregisterAutoSilentAlarm(Landroid/content/Context;)V

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/AutoSilentSettings;->cancelNotifyASM(Landroid/content/Context;)V

    .line 135
    iget-object v6, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v7, "previous_ringer_mode"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 138
    .local v2, previousRingerMode:I
    sput-boolean v8, Lcom/android/settings/AutoSilentReceiver;->sIsProcASM:Z

    .line 140
    if-ne v2, v11, :cond_5

    .line 141
    iget-object v6, p0, Lcom/android/settings/AutoSilentReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v11}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 154
    .end local v2           #previousRingerMode:I
    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/settings/AutoSilentReceiver;->setNextAlarmAction(Landroid/content/Context;)V

    goto :goto_0

    .line 145
    .restart local v2       #previousRingerMode:I
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vibrate_in_silent"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v8, v6, :cond_6

    move v5, v8

    .line 149
    .local v5, vibeInSilent:Z
    :goto_2
    iget-object v6, p0, Lcom/android/settings/AutoSilentReceiver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v5, :cond_7

    move v7, v8

    :goto_3
    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_1

    .end local v5           #vibeInSilent:Z
    :cond_6
    move v5, v9

    .line 145
    goto :goto_2

    .restart local v5       #vibeInSilent:Z
    :cond_7
    move v7, v9

    .line 149
    goto :goto_3

    .line 158
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v2           #previousRingerMode:I
    .end local v5           #vibeInSilent:Z
    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 159
    .restart local v0       #calendar:Ljava/util/Calendar;
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 160
    .local v4, today:I
    invoke-direct {p0, v4}, Lcom/android/settings/AutoSilentReceiver;->isActivateDay(I)Z

    move-result v6

    if-nez v6, :cond_9

    iget-boolean v6, p0, Lcom/android/settings/AutoSilentReceiver;->mIsOneTimeRepeat:Z

    if-eqz v6, :cond_f

    .line 162
    :cond_9
    invoke-static {p1, v0}, Lcom/android/settings/AutoSilentSettings;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-direct {p0}, Lcom/android/settings/AutoSilentReceiver;->isEnteredAutoSilentMode()Z

    move-result v6

    if-nez v6, :cond_c

    .line 163
    invoke-direct {p0, p1}, Lcom/android/settings/AutoSilentReceiver;->enterAutoSilentMode(Landroid/content/Context;)V

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v12}, Lcom/android/settings/AutoSilentSettings;->notifyASM(Landroid/content/Context;I)V

    .line 176
    :cond_a
    :goto_4
    invoke-static {p1, v0}, Lcom/android/settings/AutoSilentSettings;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-direct {p0}, Lcom/android/settings/AutoSilentReceiver;->isEnteredAutoSilentMode()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.TIME_SET"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v12}, Lcom/android/settings/AutoSilentSettings;->notifyASM(Landroid/content/Context;I)V

    .line 194
    :cond_b
    :goto_5
    invoke-direct {p0, p1}, Lcom/android/settings/AutoSilentReceiver;->setNextAlarmAction(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 167
    :cond_c
    invoke-static {p1, v0}, Lcom/android/settings/AutoSilentSettings;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-direct {p0}, Lcom/android/settings/AutoSilentReceiver;->isEnteredAutoSilentMode()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 168
    iget-object v6, p0, Lcom/android/settings/AutoSilentReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 169
    .local v3, ringerMode:I
    if-eqz v3, :cond_d

    if-ne v3, v8, :cond_e

    .line 171
    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/AutoSilentReceiver;->exitAutoSilentMode(Landroid/content/Context;)V

    .line 173
    :cond_e
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/android/settings/AutoSilentSettings;->notifyASM(Landroid/content/Context;I)V

    goto :goto_4

    .line 181
    .end local v3           #ringerMode:I
    :cond_f
    invoke-direct {p0, v4}, Lcom/android/settings/AutoSilentReceiver;->isActivateDay(I)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-direct {p0}, Lcom/android/settings/AutoSilentReceiver;->isEnteredAutoSilentMode()Z

    move-result v6

    if-eqz v6, :cond_10

    if-eqz v1, :cond_10

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/AutoSilentReceiver;->exitAutoSilentMode(Landroid/content/Context;)V

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/android/settings/AutoSilentSettings;->notifyASM(Landroid/content/Context;I)V

    goto :goto_5

    .line 185
    :cond_10
    invoke-direct {p0, v4}, Lcom/android/settings/AutoSilentReceiver;->isActivateDay(I)Z

    move-result v6

    if-nez v6, :cond_11

    invoke-direct {p0}, Lcom/android/settings/AutoSilentReceiver;->isEnteredAutoSilentMode()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.settings.AUTO_SILENT_END_ACTION"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/AutoSilentReceiver;->exitAutoSilentMode(Landroid/content/Context;)V

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/android/settings/AutoSilentSettings;->notifyASM(Landroid/content/Context;I)V

    goto :goto_5

    .line 191
    :cond_11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/android/settings/AutoSilentSettings;->notifyASM(Landroid/content/Context;I)V

    goto :goto_5
.end method

.method private setNextAlarmAction(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/AutoSilentSettings;->registerAutoSilentAlarm(Landroid/content/Context;)V

    .line 199
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const v4, 0x7f0806cb

    .line 41
    const-string v2, "key_auto_silent_pref"

    invoke-virtual {p1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 43
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 45
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/settings/AutoSilentReceiver;->resetData(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    iget-boolean v2, p0, Lcom/android/settings/AutoSilentReceiver;->mIsAutoSilentEnabled:Z

    if-eqz v2, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/AutoSilentReceiver;->isEnteredAutoSilentMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0806ca

    invoke-static {v2, v3}, Lcom/android/settings/AutoSilentSettings;->notifyASM(Landroid/content/Context;I)V

    .line 55
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AutoSilentReceiver;->procAutoSilentAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 99
    :cond_0
    :goto_1
    return-void

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/settings/AutoSilentSettings;->notifyASM(Landroid/content/Context;I)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.settings.AUTO_SILENT_START_ACTION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.settings.AUTO_SILENT_END_ACTION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 60
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AutoSilentReceiver;->procAutoSilentAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 61
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 62
    sget-boolean v2, Lcom/android/settings/AutoSilentReceiver;->sIsProcASM:Z

    if-nez v2, :cond_6

    .line 64
    iget-boolean v2, p0, Lcom/android/settings/AutoSilentReceiver;->mIsOneTimeRepeat:Z

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/settings/AutoSilentReceiver;->isEnteredAutoSilentMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 65
    invoke-static {p1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/AutoSilentSettings;->cancelNotifyASM(Landroid/content/Context;)V

    goto :goto_1

    .line 69
    :cond_5
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 70
    .local v1, ringerMode:I
    if-eqz v1, :cond_0

    if-eq v1, v5, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/AutoSilentReceiver;->isEnteredAutoSilentMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-static {p1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/settings/AutoSilentSettings;->notifyASM(Landroid/content/Context;I)V

    goto :goto_1

    .line 81
    .end local v1           #ringerMode:I
    :cond_6
    sput-boolean v6, Lcom/android/settings/AutoSilentReceiver;->sIsProcASM:Z

    goto :goto_1

    .line 83
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    :cond_8
    iget-boolean v2, p0, Lcom/android/settings/AutoSilentReceiver;->mIsAutoSilentEnabled:Z

    if-eqz v2, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/settings/AutoSilentReceiver;->setNextAlarmAction(Landroid/content/Context;)V

    .line 88
    iget-boolean v2, p0, Lcom/android/settings/AutoSilentReceiver;->mIsOneTimeRepeat:Z

    if-eqz v2, :cond_9

    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 90
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {p1, v0}, Lcom/android/settings/AutoSilentSettings;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct {p0}, Lcom/android/settings/AutoSilentReceiver;->isEnteredAutoSilentMode()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings/AutoSilentReceiver;->exitAutoSilentMode(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 96
    .end local v0           #calendar:Ljava/util/Calendar;
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AutoSilentReceiver;->procAutoSilentAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public resetData(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 300
    iget-object v0, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_auto_silent_setted"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/AutoSilentReceiver;->mIsAutoSilentEnabled:Z

    .line 302
    iget-object v0, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_repeat_days"

    const/16 v2, 0x80

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AutoSilentReceiver;->mRepeatDays:I

    .line 304
    iget v0, p0, Lcom/android/settings/AutoSilentReceiver;->mRepeatDays:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AutoSilentReceiver;->mIsOneTimeRepeat:Z

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_hour_start"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AutoSilentReceiver;->mStartHour:I

    .line 309
    iget-object v0, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_minute_start"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AutoSilentReceiver;->mStartMinute:I

    .line 311
    iget-object v0, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_hour_end"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AutoSilentReceiver;->mEndHour:I

    .line 312
    iget-object v0, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_minute_end"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AutoSilentReceiver;->mEndMinute:I

    .line 313
    return-void

    .line 306
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/AutoSilentReceiver;->mIsOneTimeRepeat:Z

    goto :goto_0
.end method
