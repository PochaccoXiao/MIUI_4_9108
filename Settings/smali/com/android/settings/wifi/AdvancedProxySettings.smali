.class public Lcom/android/settings/wifi/AdvancedProxySettings;
.super Landroid/preference/PreferenceActivity;
.source "AdvancedProxySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPreferenceKeys:[Ljava/lang/String;

.field private mSettingNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "wifi_exception_proxy1"

    .line 45
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 56
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "wifi_exception_proxy1"

    aput-object v6, v0, v2

    const-string v1, "wifi_exception_proxy2"

    aput-object v1, v0, v3

    const-string v1, "wifi_exception_proxy3"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    .line 62
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "wifi_exception_proxy1"

    aput-object v6, v0, v2

    const-string v1, "wifi_exception_proxy2"

    aput-object v1, v0, v3

    const-string v1, "wifi_exception_proxy3"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mPreferenceKeys:[Ljava/lang/String;

    return-void
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 134
    const/4 v1, 0x1

    .line 138
    :goto_0
    return v1

    .line 137
    :cond_0
    const-string v1, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 138
    .local v0, validIp:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private updateSettingsProvider()V
    .locals 5

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedProxySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 159
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 160
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AdvancedProxySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 161
    .local v2, preference:Landroid/preference/EditTextPreference;
    if-eqz v2, :cond_0

    .line 162
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 159
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    :cond_1
    return-void
.end method

.method private updateUi()V
    .locals 5

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedProxySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 144
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 145
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, settingValue:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedProxySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 148
    .local v2, preference:Landroid/preference/EditTextPreference;
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    .end local v3           #settingValue:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v2, 0x7f040038

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AdvancedProxySettings;->addPreferencesFromResource(I)V

    .line 74
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mPreferenceKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AdvancedProxySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 76
    .local v1, preference:Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 74
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v1           #preference:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 106
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 93
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedProxySettings;->updateSettingsProvider()V

    .line 97
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x1

    .line 110
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, key:Ljava/lang/String;
    if-nez v2, :cond_0

    move v4, v6

    .line 129
    :goto_0
    return v4

    .line 114
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 116
    .local v3, value:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AdvancedProxySettings;->isIpAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 117
    const v4, 0x7f0801b5

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 118
    const/4 v4, 0x0

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 123
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedProxySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    move v4, v6

    .line 129
    goto :goto_0

    .line 122
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 86
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedProxySettings;->updateUi()V

    .line 87
    return-void
.end method
