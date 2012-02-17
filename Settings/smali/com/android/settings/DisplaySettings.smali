.class public Lcom/android/settings/DisplaySettings;
.super Landroid/preference/PreferenceActivity;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DisplaySettings$OrientationObserver;
    }
.end annotation


# instance fields
.field editor:Landroid/content/SharedPreferences$Editor;

.field private gSensor:Landroid/preference/PreferenceScreen;

.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private mAnimationScales:[F

.field private mAnimations:Landroid/preference/ListPreference;

.field private mBattTemperature:I

.field private mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mModeSetting:Landroid/preference/Preference;

.field private mNotificationPulse:Landroid/preference/CheckBoxPreference;

.field private mOrientationObserver:Lcom/android/settings/DisplaySettings$OrientationObserver;

.field private mPowerSavingMode:Landroid/preference/CheckBoxPreference;

.field private mScreenDisplay:Landroid/preference/PreferenceScreen;

.field mSharedPreference:Landroid/content/SharedPreferences;

.field private mSpliteViewMode:Landroid/preference/PreferenceScreen;

.field private mTouchKeyLight:Landroid/preference/ListPreference;

.field private mTvOutSettigs:Landroid/preference/Preference;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private screenTimeoutPreference:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mBattTemperature:I

    .line 110
    new-instance v0, Lcom/android/settings/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$1;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    new-instance v0, Lcom/android/settings/DisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$2;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 473
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DisplaySettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mBattTemperature:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/DisplaySettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/settings/DisplaySettings;->mBattTemperature:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/BrightnessPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->changeBacklightvalue()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private changeBacklightvalue()V
    .locals 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->screenTimeoutPreference:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->screenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const/16 v3, 0x7530

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->screenTimeoutPreference:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->screenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->screenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 252
    :cond_1
    return-void
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 13
    .parameter "screenTimeoutPreference"

    .prologue
    .line 256
    const-string v11, "device_policy"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 258
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v11

    move-wide v3, v11

    .line 259
    .local v3, maxTimeout:J
    :goto_0
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-nez v11, :cond_1

    .line 288
    .end local p0
    :goto_1
    return-void

    .line 258
    .end local v3           #maxTimeout:J
    .restart local p0
    :cond_0
    const-wide/16 v11, 0x0

    move-wide v3, v11

    goto :goto_0

    .line 262
    .restart local v3       #maxTimeout:J
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 263
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 264
    .local v10, values:[Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v5, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v6, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 267
    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 268
    .local v7, timeout:J
    cmp-long v11, v7, v3

    if-gtz v11, :cond_2

    .line 269
    aget-object v11, v1, v2

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 273
    .end local v7           #timeout:J
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_5

    .line 274
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 276
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 279
    .local v9, userPreference:I
    int-to-long v11, v9

    cmp-long v11, v11, v3

    if-gtz v11, :cond_5

    .line 280
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 287
    .end local v9           #userPreference:I
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_6
    const/4 v11, 0x0

    goto :goto_3
.end method

.method private updateAnimationsSummary(Ljava/lang/Object;)V
    .locals 5
    .parameter "value"

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 374
    .local v1, summaries:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 375
    .local v2, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 378
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 379
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 383
    :cond_0
    return-void

    .line 375
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateState(Z)V
    .locals 14
    .parameter "force"

    .prologue
    const/high16 v9, 0x3f00

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v13, "power_saving_mode"

    .line 331
    const/4 v1, 0x0

    .line 333
    .local v1, animations:I
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v7}, Landroid/view/IWindowManager;->getAnimationScales()[F

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    if-eqz v7, :cond_1

    .line 338
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v7, v7

    if-lt v7, v12, :cond_0

    .line 339
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    aget v7, v7, v11

    add-float/2addr v7, v9

    float-to-int v7, v7

    rem-int/lit8 v1, v7, 0xa

    .line 341
    :cond_0
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v7, v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_1

    .line 342
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    aget v7, v7, v12

    add-float/2addr v7, v9

    float-to-int v7, v7

    and-int/lit8 v7, v7, 0x7

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v1, v7

    .line 345
    :cond_1
    const/4 v5, 0x0

    .line 346
    .local v5, idx:I
    const/4 v2, 0x0

    .line 347
    .local v2, best:I
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 348
    .local v0, aents:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, v0

    if-ge v4, v7, :cond_3

    .line 349
    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 350
    .local v6, val:I
    if-gt v6, v1, :cond_2

    if-le v6, v2, :cond_2

    .line 351
    move v2, v6

    .line 352
    move v5, v4

    .line 348
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 334
    .end local v0           #aents:[Ljava/lang/CharSequence;
    .end local v2           #best:I
    .end local v4           #i:I
    .end local v5           #idx:I
    .end local v6           #val:I
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 335
    .local v3, e:Landroid/os/RemoteException;
    const-string v7, "DisplaySettings"

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 355
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v0       #aents:[Ljava/lang/CharSequence;
    .restart local v2       #best:I
    .restart local v4       #i:I
    .restart local v5       #idx:I
    :cond_3
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 356
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/DisplaySettings;->updateAnimationsSummary(Ljava/lang/Object;)V

    .line 357
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "accelerometer_rotation"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_4

    move v8, v12

    :goto_2
    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 361
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "button_key_light"

    const/16 v10, 0x5dc

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 363
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 367
    const-string v7, "power_saving_mode"

    invoke-virtual {p0, v13}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    .line 368
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "power_saving_mode"

    invoke-static {v8, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_5

    move v8, v12

    :goto_3
    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 370
    return-void

    :cond_4
    move v8, v11

    .line 357
    goto :goto_2

    :cond_5
    move v8, v11

    .line 368
    goto :goto_3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, "GT-I9220"

    const-string v9, "GT-I9100G"

    const-string v6, "GT-I9108"

    .line 156
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 159
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 161
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DisplaySettings;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 163
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "battery_temperature"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 165
    const v3, 0x7f040013

    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "tvout_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 171
    const-string v3, "animations"

    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    .line 172
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    const-string v3, "accelerometer"

    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    .line 174
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 175
    const-string v3, "brightness"

    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/BrightnessPreference;

    iput-object v3, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    .line 179
    const-string v3, "screen_timeout"

    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/DisplaySettings;->screenTimeoutPreference:Landroid/preference/ListPreference;

    .line 180
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->screenTimeoutPreference:Landroid/preference/ListPreference;

    const-string v4, "screen_off_timeout"

    const/16 v5, 0x7530

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 182
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->screenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 183
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->screenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 186
    const-string v3, "mode"

    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DisplaySettings;->mModeSetting:Landroid/preference/Preference;

    .line 188
    const-string v3, "GT-I9100G"

    const-string v3, "GT-I9108"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "GT-I9188"

    const-string v4, "GT-I9108"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "GT-I9220"

    const-string v3, "GT-I9108"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "GT-I9108"

    const-string v3, "GT-I9108"

    invoke-virtual {v6, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mModeSetting:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    :cond_1
    const-string v3, "touch_key_light"

    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    .line 195
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 197
    const-string v3, "screen_display"

    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/DisplaySettings;->mScreenDisplay:Landroid/preference/PreferenceScreen;

    .line 201
    const-string v3, "power_saving_mode"

    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    .line 202
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    const-string v4, "power_saving_mode"

    invoke-static {v1, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v8

    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 205
    const-string v3, "tvout_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DisplaySettings;->mTvOutSettigs:Landroid/preference/Preference;

    .line 206
    new-instance v3, Lcom/android/settings/DisplaySettings$OrientationObserver;

    invoke-direct {v3, p0}, Lcom/android/settings/DisplaySettings$OrientationObserver;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v3, p0, Lcom/android/settings/DisplaySettings;->mOrientationObserver:Lcom/android/settings/DisplaySettings$OrientationObserver;

    .line 207
    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 210
    const-string v3, "g_sensor"

    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/DisplaySettings;->gSensor:Landroid/preference/PreferenceScreen;

    .line 214
    const-string v3, "GT-I9108"

    const-string v3, "GT-I9103"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "GT-I9108"

    const-string v3, "GT-I9100G"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "GT-I9108"

    const-string v3, "SGH-I927"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->gSensor:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 217
    :cond_3
    const-string v3, "split_view_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/DisplaySettings;->mSpliteViewMode:Landroid/preference/PreferenceScreen;

    .line 219
    const-string v3, "GT-I9220"

    const-string v3, "GT-I9108"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mSpliteViewMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    :cond_4
    const-string v3, "SPH-D710"

    const-string v4, "GT-I9108"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 226
    const-string v3, "notification_flash"

    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    .line 228
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    const-string v4, "notification_light_pulse"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v8, :cond_7

    move v4, v8

    :goto_1
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 230
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :cond_5
    :goto_2
    return-void

    :cond_6
    move v4, v7

    .line 202
    goto/16 :goto_0

    :cond_7
    move v4, v7

    .line 228
    goto :goto_1

    .line 231
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 232
    .local v2, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "DisplaySettings"

    const-string v4, "notification_light_pulse not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 236
    .end local v2           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_8
    const-string v3, "notification_flash"

    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 237
    .local v0, removablePref:Landroid/preference/Preference;
    if-eqz v0, :cond_5

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 309
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 310
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 311
    const-string v0, "DisplaySettings"

    const-string v1, "onResume() : registerReceiver Intent.ACTION_BATTERY_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v0, "SPH-D710"

    const-string v1, "GT-I9108"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 316
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v9, 0x1

    const-string v8, "DisplaySettings"

    .line 424
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, key:Ljava/lang/String;
    const-string v5, "animations"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 427
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 428
    .local v4, value:I
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v5, v5

    if-lt v5, v9, :cond_0

    .line 429
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    const/4 v6, 0x0

    rem-int/lit8 v7, v4, 0xa

    int-to-float v7, v7

    aput v7, v5, v6

    .line 431
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v5, v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    .line 432
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    const/4 v6, 0x1

    div-int/lit8 v7, v4, 0xa

    rem-int/lit8 v7, v7, 0xa

    int-to-float v7, v7

    aput v7, v5, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 435
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 439
    :goto_0
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/settings/DisplaySettings;->updateAnimationsSummary(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 445
    .end local v4           #value:I
    :cond_2
    :goto_1
    const-string v5, "screen_timeout"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 446
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 448
    .restart local v4       #value:I
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 451
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 452
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 458
    .end local v2           #i:Landroid/content/Intent;
    .end local v4           #value:I
    :cond_3
    :goto_2
    const-string v5, "touch_key_light"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 459
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 461
    .restart local v4       #value:I
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "button_key_light"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 464
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 465
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    .line 470
    .end local v4           #value:I
    :cond_4
    :goto_3
    return v9

    .line 436
    .restart local v4       #value:I
    .restart local p2
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 437
    .local v1, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v5, "DisplaySettings"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 440
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v4           #value:I
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 441
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "DisplaySettings"

    const-string v5, "could not persist animation setting"

    invoke-static {v8, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 454
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #value:I
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 455
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v5, "DisplaySettings"

    const-string v5, "could not persist screen timeout setting"

    invoke-static {v8, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 466
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local p2
    :catch_3
    move-exception v5

    move-object v1, v5

    .line 467
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v5, "DisplaySettings"

    const-string v5, "could not persist Touch key light setting"

    invoke-static {v8, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "DisplaySettings"

    .line 387
    const-string v1, "DisplaySettings"

    const-string v1, "onPreferenceTreeClick()"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    move v1, v4

    .line 420
    :goto_2
    return v1

    :cond_1
    move v3, v4

    .line 389
    goto :goto_0

    .line 394
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    .line 395
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 396
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_light_pulse"

    if-eqz v0, :cond_3

    move v3, v5

    :goto_3
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_3

    .line 399
    .end local v0           #value:Z
    :cond_4
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_saving_mode"

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v5

    :goto_4
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 402
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)V

    goto :goto_1

    :cond_5
    move v3, v4

    .line 400
    goto :goto_4

    .line 403
    :cond_6
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTvOutSettigs:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v4

    .line 404
    goto :goto_2

    .line 407
    :cond_7
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->gSensor:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v4

    .line 408
    goto :goto_2

    .line 411
    :cond_8
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenDisplay:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 412
    const-string v1, "DisplaySettings"

    const-string v1, "onPreferenceTreeClick(), mScreenDisplay"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 413
    goto :goto_2

    .line 416
    :cond_9
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mModeSetting:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    .line 417
    goto :goto_2
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 292
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 294
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 295
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DisplaySettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    const-string v1, "DisplaySettings"

    const-string v2, "onResume() : registerReceiver Intent.ACTION_BATTERY_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v1, "SPH-D710"

    const-string v2, "GT-I9108"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settings.BACKLIGHTCHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2, v4, v4}, Lcom/android/settings/DisplaySettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "accelerometer_rotation"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mOrientationObserver:Lcom/android/settings/DisplaySettings$OrientationObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 304
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/DisplaySettings;->updateState(Z)V

    .line 305
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 320
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 322
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const-string v0, "DisplaySettings"

    const-string v1, "onStop() : Dismiss brightness dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mOrientationObserver:Lcom/android/settings/DisplaySettings$OrientationObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 328
    return-void
.end method
