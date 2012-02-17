.class public Lcom/android/settings/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"


# static fields
.field public static curHWVersion:Ljava/lang/String;

.field public static strFTAHardwareVersion:Ljava/lang/String;


# instance fields
.field public mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mStrings:[Ljava/lang/String;

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-string v3, ""

    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings;->phone:Lcom/android/internal/telephony/Phone;

    .line 65
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v2, ""

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v2, ""

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v2, ""

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->mStrings:[Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/android/settings/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$1;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    new-instance v0, Lcom/android/settings/Settings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$2;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/Settings;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/Settings;->mStrings:[Ljava/lang/String;

    return-object v0
.end method

.method private setFTAHardwareVersion()V
    .locals 14

    .prologue
    const-string v13, "Settings"

    .line 245
    const/4 v0, 0x1

    .line 246
    .local v0, OEM_SERVM_FUNCTAG:C
    const/4 v3, 0x1

    .line 247
    .local v3, OEM_SM_ENTER_MODE_MESSAGE:C
    const/4 v5, 0x1

    .line 248
    .local v5, OEM_SM_TYPE_TEST_MANUAL:C
    const/16 v4, 0x1003

    .line 249
    .local v4, OEM_SM_TYPE_SUB_TST_FTA_HW_VERSION_ENTER:C
    const/4 v2, 0x0

    .line 250
    .local v2, OEM_SM_DUMMY:C
    const/4 v1, 0x0

    .line 251
    .local v1, OEM_SM_ACTION:C
    const/4 v10, 0x7

    .line 252
    .local v10, fileSize:C
    const/4 v7, 0x0

    .line 254
    .local v7, data:[B
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "hardware_version"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/android/settings/Settings;->curHWVersion:Ljava/lang/String;

    .line 255
    const-string v11, "Settings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "curHWVersion : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/settings/Settings;->curHWVersion:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    sget-object v11, Lcom/android/settings/Settings;->curHWVersion:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_0

    .line 257
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 258
    .local v6, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 261
    .local v8, dos:Ljava/io/DataOutputStream;
    const/4 v11, 0x1

    :try_start_0
    invoke-virtual {v8, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 262
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 263
    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 264
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 265
    const/16 v11, 0x1003

    invoke-virtual {v8, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 266
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 274
    if-nez v7, :cond_1

    .line 276
    const-string v11, "Settings"

    const-string v11, " err - data is NULL"

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v6           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v8           #dos:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 267
    .restart local v6       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #dos:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v11

    move-object v9, v11

    .line 268
    .local v9, e:Ljava/io/IOException;
    const-string v11, "Settings"

    const-string v11, "IOException in getServMQueryData!!!"

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    .end local v9           #e:Ljava/io/IOException;
    :cond_1
    sget-object v11, Lcom/android/settings/Settings;->strFTAHardwareVersion:Ljava/lang/String;

    if-nez v11, :cond_2

    .line 281
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    sput-object v11, Lcom/android/settings/Settings;->strFTAHardwareVersion:Ljava/lang/String;

    .line 283
    :cond_2
    iget-object v11, p0, Lcom/android/settings/Settings;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v12, p0, Lcom/android/settings/Settings;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x3f0

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-interface {v11, v7, v12}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v3, 0x7f040028

    invoke-virtual {p0, v3}, Lcom/android/settings/Settings;->addPreferencesFromResource(I)V

    .line 96
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 98
    .local v0, activePhoneType:I
    const-string v3, "parent"

    invoke-virtual {p0, v3}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 99
    .local v2, parent:Landroid/preference/PreferenceGroup;
    const-string v3, "sync_settings"

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 101
    const-string v3, "dock_settings"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 102
    .local v1, dockSettings:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 107
    :cond_0
    const-string v3, "software_update"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 111
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/Settings;->phone:Lcom/android/internal/telephony/Phone;

    .line 112
    invoke-direct {p0}, Lcom/android/settings/Settings;->setFTAHardwareVersion()V

    .line 114
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings/Settings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 163
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, key:Ljava/lang/String;
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    .line 129
    .local v2, result:Z
    if-eqz v1, :cond_0

    const-string v3, "software_update"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    new-instance v0, Landroid/content/Intent;

    .end local v0           #i:Landroid/content/Intent;
    const-string v3, "android.intent.action.SOFTWARE_UPDATE_SETTING"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    const/4 v2, 0x1

    .line 135
    :cond_0
    return v2
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 140
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 148
    const-string v1, "call_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/settings/Settings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v3, v3}, Lcom/android/settings/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 156
    return-void

    .line 148
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
