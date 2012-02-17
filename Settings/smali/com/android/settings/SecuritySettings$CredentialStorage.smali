.class Lcom/android/settings/SecuritySettings$CredentialStorage;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CredentialStorage"
.end annotation


# instance fields
.field private mAccessCheckBox:Landroid/preference/CheckBoxPreference;

.field private mEncryptedFSEnabled:Landroid/preference/CheckBoxPreference;

.field private mExternal:Z

.field private mInstallButton:Landroid/preference/Preference;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mPasswordButton:Landroid/preference/Preference;

.field private mResetButton:Landroid/preference/Preference;

.field private mShowingDialog:I

.field private mState:I

.field private mSubmit:Z

.field private mWillEnableEncryptedFS:Z

.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1168
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1188
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    .line 1192
    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mSubmit:Z

    .line 1194
    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mExternal:Z

    .line 1198
    iput v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mShowingDialog:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SecuritySettings;Lcom/android/settings/SecuritySettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1168
    invoke-direct {p0, p1}, Lcom/android/settings/SecuritySettings$CredentialStorage;-><init>(Lcom/android/settings/SecuritySettings;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/SecuritySettings$CredentialStorage;Landroid/preference/PreferenceCategory;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1168
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->createPreferences(Landroid/preference/PreferenceCategory;I)V

    return-void
.end method

.method private changePassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "oldPassword"
    .parameter "newPassword"

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p1, p2}, Landroid/security/KeyStore;->password(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1252
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    return v0
.end method

.method private checkError(Landroid/app/Dialog;I)Z
    .locals 6
    .parameter "dialog"
    .parameter "error"

    .prologue
    const/16 v1, 0xa

    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1350
    if-ne p2, v5, :cond_0

    .line 1351
    invoke-direct {p0, v5}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    move v1, v4

    .line 1369
    :goto_0
    return v1

    .line 1354
    :cond_0
    if-ne p2, v2, :cond_1

    .line 1355
    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    move v1, v4

    .line 1356
    goto :goto_0

    .line 1358
    :cond_1
    if-ge p2, v1, :cond_2

    move v1, v4

    .line 1359
    goto :goto_0

    .line 1361
    :cond_2
    sub-int v1, p2, v1

    add-int/lit8 v0, v1, 0x1

    .line 1362
    .local v0, count:I
    if-le v0, v2, :cond_3

    .line 1363
    const v1, 0x7f0804f0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    :goto_1
    move v1, v5

    .line 1369
    goto :goto_0

    .line 1364
    :cond_3
    if-ne v0, v5, :cond_4

    .line 1365
    const v1, 0x7f0804f1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1367
    :cond_4
    const v1, 0x7f0804f2

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private checkPassword(Landroid/app/Dialog;)Z
    .locals 7
    .parameter "dialog"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1324
    const v3, 0x7f0b0046

    invoke-direct {p0, p1, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->getText(Landroid/app/Dialog;I)Ljava/lang/String;

    move-result-object v2

    .line 1325
    .local v2, oldPassword:Ljava/lang/String;
    const v3, 0x7f0b0047

    invoke-direct {p0, p1, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->getText(Landroid/app/Dialog;I)Ljava/lang/String;

    move-result-object v1

    .line 1326
    .local v1, newPassword:Ljava/lang/String;
    const v3, 0x7f0b0048

    invoke-direct {p0, p1, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->getText(Landroid/app/Dialog;I)Ljava/lang/String;

    move-result-object v0

    .line 1328
    .local v0, confirmPassword:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 1329
    const v3, 0x7f0804f5

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    move v3, v5

    .line 1345
    :goto_0
    return v3

    .line 1331
    :cond_0
    if-nez v1, :cond_2

    .line 1332
    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->unlock(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->checkError(Landroid/app/Dialog;I)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0

    .line 1333
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 1334
    :cond_3
    const v3, 0x7f0804f4

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    :goto_1
    move v3, v5

    .line 1345
    goto :goto_0

    .line 1335
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_5

    .line 1336
    const v3, 0x7f0804f6

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1337
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1338
    const v3, 0x7f0804f3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1339
    :cond_6
    if-nez v2, :cond_7

    .line 1340
    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->initialize(Ljava/lang/String;)V

    move v3, v6

    .line 1341
    goto :goto_0

    .line 1343
    :cond_7
    invoke-direct {p0, v2, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->changePassword(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->checkError(Landroid/app/Dialog;I)Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v6

    goto :goto_0

    :cond_8
    move v3, v5

    goto :goto_0
.end method

.method private createPreferences(Landroid/preference/PreferenceCategory;I)V
    .locals 2
    .parameter "category"
    .parameter "type"

    .prologue
    .line 1391
    packed-switch p2, :pswitch_data_0

    .line 1428
    :goto_0
    return-void

    .line 1393
    :pswitch_0
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    .line 1394
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0804df

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 1395
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0804e0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1396
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1397
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1399
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    .line 1400
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    const v1, 0x7f0804e3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1401
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    const v1, 0x7f0804e5

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1402
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1403
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1405
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    .line 1406
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    const v1, 0x7f0804e7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1407
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    const v1, 0x7f0804e8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1408
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1409
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1411
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    .line 1412
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    const v1, 0x7f0804e9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1413
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    const v1, 0x7f0804ea

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1414
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1415
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 1419
    :pswitch_1
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mEncryptedFSEnabled:Landroid/preference/CheckBoxPreference;

    .line 1420
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mEncryptedFSEnabled:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0804fb

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 1421
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mEncryptedFSEnabled:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0804fc

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1422
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mEncryptedFSEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 1391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getText(Landroid/app/Dialog;I)Ljava/lang/String;
    .locals 3
    .parameter "dialog"
    .parameter "viewId"

    .prologue
    .line 1373
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1374
    .local v0, view:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 1232
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    .line 1233
    return-void
.end method

.method private lock()V
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->lock()Z

    .line 1242
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    .line 1243
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->reset()Z

    .line 1237
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    .line 1238
    return-void
.end method

.method private varargs showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V
    .locals 2
    .parameter "dialog"
    .parameter "stringId"
    .parameter "formatArgs"

    .prologue
    .line 1379
    const v1, 0x7f0b0044

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1380
    .local v0, view:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 1381
    if-eqz p3, :cond_0

    array-length v1, p3

    if-nez v1, :cond_2

    .line 1382
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1386
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1388
    :cond_1
    return-void

    .line 1384
    :cond_2
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showPasswordDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1474
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v3, 0x7f03001c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1477
    .local v1, view:Landroid/view/View;
    iget v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1478
    const v2, 0x7f0b0043

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1484
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0804e7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1488
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1490
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1494
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mShowingDialog:I

    .line 1495
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1496
    return-void

    .line 1480
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_0
    const v2, 0x7f0b0045

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1481
    const v2, 0x7f0b0046

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showResetDialog()V
    .locals 3

    .prologue
    .line 1499
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mShowingDialog:I

    .line 1500
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804eb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const/high16 v2, 0x104

    invoke-virtual {v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1506
    return-void
.end method

.method private showSwitchEncryptedFSDialog()V
    .locals 4

    .prologue
    const v3, 0x7f080501

    .line 1509
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080503

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1512
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mShowingDialog:I

    .line 1513
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mWillEnableEncryptedFS:Z

    if-eqz v1, :cond_0

    .line 1514
    const v1, 0x7f0804fd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0804ff

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1524
    :goto_0
    return-void

    .line 1519
    :cond_0
    const v1, 0x7f0804fe

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080500

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showUnlockDialog()V
    .locals 5

    .prologue
    .line 1456
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v3, 0x7f03001d

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1460
    .local v1, view:Landroid/view/View;
    iget-boolean v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mExternal:Z

    if-eqz v2, :cond_0

    .line 1461
    const v2, 0x7f0b0043

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1464
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0804e1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1468
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1469
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mShowingDialog:I

    .line 1470
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1471
    return-void
.end method

.method private unlock(Ljava/lang/String;)I
    .locals 1
    .parameter "password"

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 1247
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    return v0
.end method

.method private updatePreferences(I)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1431
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_0

    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1432
    const-string v1, "persist.security.efs.enabled"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1433
    .local v0, encFSEnabled:Z
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    if-nez v0, :cond_1

    if-eq p1, v5, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1434
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    if-eq p1, v5, :cond_2

    if-nez v0, :cond_2

    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1437
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mEncryptedFSEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1440
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    if-ne v1, p1, :cond_3

    .line 1453
    :goto_3
    return-void

    .end local v0           #encFSEnabled:Z
    :cond_0
    move v2, v3

    .line 1431
    goto :goto_0

    .restart local v0       #encFSEnabled:Z
    :cond_1
    move v2, v3

    .line 1433
    goto :goto_1

    :cond_2
    move v2, v3

    .line 1434
    goto :goto_2

    .line 1442
    :cond_3
    if-ne p1, v4, :cond_5

    .line 1443
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x7f0804f8

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1452
    :cond_4
    :goto_4
    iput p1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    goto :goto_3

    .line 1445
    :cond_5
    if-ne p1, v5, :cond_6

    .line 1446
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x7f0804f7

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 1448
    :cond_6
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 1449
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x7f0804f9

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1285
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mShowingDialog:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 1286
    if-ne p2, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mSubmit:Z

    .line 1287
    const/4 v1, -0x3

    if-ne p2, v1, :cond_0

    .line 1288
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->reset()V

    .line 1306
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v4

    .line 1286
    goto :goto_0

    .line 1291
    :cond_2
    if-ne p2, v3, :cond_3

    .line 1292
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1293
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "enableEFS"

    iget-boolean v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mWillEnableEncryptedFS:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1294
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/SecuritySettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 1295
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    goto :goto_1

    .line 1296
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 1298
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x7f080502

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1300
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1309
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mSubmit:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1310
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mSubmit:Z

    .line 1311
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->checkPassword(Landroid/app/Dialog;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1312
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 1320
    :cond_0
    :goto_0
    return-void

    .line 1316
    .restart local p1
    :cond_1
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    .line 1317
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mExternal:Z

    if-eqz v1, :cond_0

    .line 1318
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->finish()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 1256
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1257
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1258
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showUnlockDialog()V

    :goto_0
    move v2, v3

    .line 1268
    :goto_1
    return v2

    .line 1260
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->lock()V

    goto :goto_0

    .line 1263
    .restart local p2
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mEncryptedFSEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1264
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    .line 1265
    .local v1, bval:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mWillEnableEncryptedFS:Z

    .line 1266
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showSwitchEncryptedFSDialog()V

    .end local v1           #bval:Ljava/lang/Boolean;
    :cond_2
    move v2, v3

    .line 1268
    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1273
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->installFromSdCard(Landroid/content/Context;)V

    .line 1281
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1275
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showPasswordDialog()V

    goto :goto_0

    .line 1276
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1277
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showResetDialog()V

    goto :goto_0

    .line 1279
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method resume()V
    .locals 3

    .prologue
    .line 1213
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->test()I

    move-result v1

    iput v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    .line 1214
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    .line 1216
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1217
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mExternal:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "android.credentials.UNLOCK"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1219
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mExternal:Z

    .line 1220
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1221
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showPasswordDialog()V

    .line 1228
    :cond_0
    :goto_0
    return-void

    .line 1222
    :cond_1
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1223
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showUnlockDialog()V

    goto :goto_0

    .line 1225
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->finish()V

    goto :goto_0
.end method
