.class public Lcom/android/settings/AccessibilitySettings;
.super Landroid/preference/PreferenceActivity;
.source "AccessibilitySettings.java"


# instance fields
.field private endPowerKeyEndChecked:Z

.field private mAccessibilityServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mAudioCategory:Landroid/preference/PreferenceCategory;

.field private mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

.field private mNoAppDialog:Landroid/app/AlertDialog;

.field private mPowerButtonCategory:Landroid/preference/PreferenceCategory;

.field private mPowerButtonEndsCallCheckBox:Landroid/preference/CheckBoxPreference;

.field private mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private mToggleCheckBox:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 82
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServices:Ljava/util/Map;

    .line 85
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mNoAppDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AccessibilitySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/AccessibilitySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mPowerButtonEndsCallCheckBox:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/AccessibilitySettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/AccessibilitySettings;->setAccessibilityServicePreferencesState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->persistEnabledAccessibilityServices()V

    return-void
.end method

.method private addAccessibilitServicePreferences()V
    .locals 9

    .prologue
    .line 419
    const-string v7, "accessibility"

    invoke-virtual {p0, v7}, Lcom/android/settings/AccessibilitySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 422
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 424
    .local v3, installedServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    const-string v7, "accessibility_services_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    iput-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

    .line 427
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 429
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

    .line 444
    :cond_0
    return-void

    .line 433
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 434
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ServiceInfo;

    .line 435
    .local v6, serviceInfo:Landroid/content/pm/ServiceInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 437
    .local v4, key:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServices:Ljava/util/Map;

    invoke-interface {v7, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    new-instance v5, Landroid/preference/CheckBoxPreference;

    invoke-direct {v5, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 440
    .local v5, preference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 433
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private displayNoAppsAlert()V
    .locals 5

    .prologue
    .line 453
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 454
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v3, "com.android.vending"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 460
    .local v1, noAppsAlert:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f08041a

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 461
    const v3, 0x7f08041b

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 463
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/AccessibilitySettings$9;

    invoke-direct {v4, p0}, Lcom/android/settings/AccessibilitySettings$9;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 476
    const/high16 v3, 0x104

    new-instance v4, Lcom/android/settings/AccessibilitySettings$10;

    invoke-direct {v4, p0}, Lcom/android/settings/AccessibilitySettings$10;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 482
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mNoAppDialog:Landroid/app/AlertDialog;

    .line 483
    .end local v1           #noAppsAlert:Landroid/app/AlertDialog$Builder;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 455
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 457
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private handleEnableAccessibilityServiceStateChange(Landroid/preference/CheckBoxPreference;)V
    .locals 9
    .parameter "preference"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 341
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    move-object v0, p1

    .line 343
    .local v0, checkBoxPreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 344
    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 345
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080418

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServices:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/AccessibilitySettings$8;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/AccessibilitySettings$8;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/settings/AccessibilitySettings$7;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/AccessibilitySettings$7;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/AccessibilitySettings$6;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/AccessibilitySettings$6;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/AccessibilitySettings$5;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/AccessibilitySettings$5;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 388
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 392
    .end local v0           #checkBoxPreference:Landroid/preference/CheckBoxPreference;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->persistEnabledAccessibilityServices()V

    goto :goto_0
.end method

.method private handleEnableAccessibilityStateChange(Landroid/preference/CheckBoxPreference;)V
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 308
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 311
    invoke-direct {p0, v4}, Lcom/android/settings/AccessibilitySettings;->setAccessibilityServicePreferencesState(Z)V

    .line 333
    :goto_0
    return-void

    .line 313
    :cond_0
    move-object v0, p1

    .line 314
    .local v0, checkBoxPreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 315
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080419

    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/AccessibilitySettings$4;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/AccessibilitySettings$4;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 331
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private persistEnabledAccessibilityServices()V
    .locals 8

    .prologue
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 402
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, -0x1

    .line 403
    .local v1, firstEnabled:I
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 404
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 405
    .local v4, preference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 406
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 411
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #preference:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 413
    return-void
.end method

.method private setAccessibilityServicePreferencesState(Z)V
    .locals 4
    .parameter "isEnabled"

    .prologue
    .line 207
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v3, :cond_1

    .line 216
    :cond_0
    return-void

    .line 211
    :cond_1
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 212
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 213
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 214
    .local v2, pref:Landroid/preference/Preference;
    invoke-virtual {v2, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    const-string v4, "GT-I9220"

    const-string v2, "GT-I9108"

    .line 99
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 102
    const-string v0, "toggle_accessibility_service_checkbox"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleCheckBox:Landroid/preference/CheckBoxPreference;

    .line 105
    const-string v0, "power_button_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mPowerButtonCategory:Landroid/preference/PreferenceCategory;

    .line 106
    const-string v0, "mono_audio_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    .line 108
    const-string v0, "audio_preference_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAudioCategory:Landroid/preference/PreferenceCategory;

    .line 109
    const-string v0, "GT-I9220"

    const-string v0, "GT-I9108"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mAudioCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 113
    :cond_0
    const-string v0, "GT-I9220"

    const-string v0, "GT-I9108"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mono_audio_db"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 116
    :cond_1
    const-string v0, "power_button_ends_call"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mPowerButtonEndsCallCheckBox:Landroid/preference/CheckBoxPreference;

    .line 119
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->addAccessibilitServicePreferences()V

    .line 120
    return-void

    :cond_2
    move v1, v3

    .line 114
    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 197
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->persistEnabledAccessibilityServices()V

    .line 198
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v11, "mono_audio_db"

    const-string v10, "mono"

    const-string v9, "incall_power_button_behavior"

    .line 220
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, key:Ljava/lang/String;
    const-string v5, "toggle_accessibility_service_checkbox"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 223
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 224
    .local v2, isChecked:Z
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v5, v0

    invoke-direct {p0, v5}, Lcom/android/settings/AccessibilitySettings;->handleEnableAccessibilityStateChange(Landroid/preference/CheckBoxPreference;)V

    .line 299
    .end local v2           #isChecked:Z
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    return v5

    .line 225
    :cond_1
    const-string v5, "power_button_ends_call"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 226
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 232
    .restart local v2       #isChecked:Z
    if-ne v2, v7, :cond_3

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "proximity_sensor"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 236
    .local v1, currntProximitySensor:I
    if-nez v1, :cond_2

    .line 238
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 239
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08068b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040014

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f08038d

    new-instance v7, Lcom/android/settings/AccessibilitySettings$3;

    invoke-direct {v7, p0}, Lcom/android/settings/AccessibilitySettings$3;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f08038e

    new-instance v7, Lcom/android/settings/AccessibilitySettings$2;

    invoke-direct {v7, p0}, Lcom/android/settings/AccessibilitySettings$2;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    new-instance v6, Lcom/android/settings/AccessibilitySettings$1;

    invoke-direct {v6, p0}, Lcom/android/settings/AccessibilitySettings$1;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "incall_power_button_behavior"

    const/4 v6, 0x2

    invoke-static {v5, v9, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 272
    iput-boolean v7, p0, Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z

    .line 273
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mPowerButtonEndsCallCheckBox:Landroid/preference/CheckBoxPreference;

    iget-boolean v6, p0, Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 277
    .end local v1           #currntProximitySensor:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "incall_power_button_behavior"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 280
    iput-boolean v8, p0, Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z

    .line 281
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mPowerButtonEndsCallCheckBox:Landroid/preference/CheckBoxPreference;

    iget-boolean v6, p0, Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 284
    .end local v2           #isChecked:Z
    :cond_4
    const-string v5, "mono_audio_key"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 285
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.MONO_AUDIO_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v4, mono_intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mono_audio_db"

    invoke-static {v5, v11, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 288
    const-string v5, "mono"

    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 290
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mono_audio_db"

    invoke-static {v5, v11, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    const-string v5, "mono"

    invoke-virtual {v4, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 295
    .end local v4           #mono_intent:Landroid/content/Intent;
    :cond_6
    instance-of v5, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_0

    .line 296
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v5, v0

    invoke-direct {p0, v5}, Lcom/android/settings/AccessibilitySettings;->handleEnableAccessibilityServiceStateChange(Landroid/preference/CheckBoxPreference;)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 14

    .prologue
    .line 124
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 126
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 127
    .local v1, enabled:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "enabled_accessibility_services"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 129
    .local v8, settingValue:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 130
    iget-object v9, p0, Lcom/android/settings/AccessibilitySettings;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 131
    .local v9, splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v9, v8}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 132
    :goto_0
    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 133
    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    .end local v9           #splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAccessibilityServices:Ljava/util/Map;

    .line 139
    .local v0, accessibilityServices:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 140
    .local v4, key:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 141
    .local v6, preference:Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_1

    .line 142
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v6, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 146
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #preference:Landroid/preference/CheckBoxPreference;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "accessibility_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 148
    .local v7, serviceState:I
    const-string v10, "GT-I9220"

    const-string v11, "GT-I9108"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 149
    iget-object v10, p0, Lcom/android/settings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "mono_audio_db"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    .line 153
    const/4 v10, 0x1

    if-ne v7, v10, :cond_6

    .line 154
    iget-object v10, p0, Lcom/android/settings/AccessibilitySettings;->mToggleCheckBox:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 158
    :goto_3
    iget-object v10, p0, Lcom/android/settings/AccessibilitySettings;->mToggleCheckBox:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 173
    :cond_4
    :goto_4
    const/16 v10, 0x1a

    invoke-static {v10}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "incall_power_button_behavior"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 180
    .local v3, incallPowerBehavior:I
    const/4 v10, 0x2

    if-ne v3, v10, :cond_9

    const/4 v10, 0x1

    move v5, v10

    .line 182
    .local v5, powerButtonCheckboxEnabled:Z
    :goto_5
    iput-boolean v5, p0, Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z

    .line 183
    iget-object v10, p0, Lcom/android/settings/AccessibilitySettings;->mPowerButtonEndsCallCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 184
    iget-object v10, p0, Lcom/android/settings/AccessibilitySettings;->mPowerButtonEndsCallCheckBox:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 191
    .end local v3           #incallPowerBehavior:I
    .end local v5           #powerButtonCheckboxEnabled:Z
    :goto_6
    return-void

    .line 149
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 156
    :cond_6
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings/AccessibilitySettings;->setAccessibilityServicePreferencesState(Z)V

    goto :goto_3

    .line 160
    :cond_7
    const/4 v10, 0x1

    if-ne v7, v10, :cond_8

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "accessibility_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    :cond_8
    iget-object v10, p0, Lcom/android/settings/AccessibilitySettings;->mToggleCheckBox:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 168
    iget-object v10, p0, Lcom/android/settings/AccessibilitySettings;->mNoAppDialog:Landroid/app/AlertDialog;

    if-nez v10, :cond_4

    .line 169
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->displayNoAppsAlert()V

    goto :goto_4

    .line 180
    .restart local v3       #incallPowerBehavior:I
    :cond_9
    const/4 v10, 0x0

    move v5, v10

    goto :goto_5

    .line 188
    .end local v3           #incallPowerBehavior:I
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/AccessibilitySettings;->mPowerButtonCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6
.end method
