.class public Lcom/android/settings/ImeCheckBoxPreference;
.super Landroid/preference/Preference;
.source "ImeCheckBoxPreference.java"


# instance fields
.field private imeKey:Ljava/lang/String;

.field private mChecked:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mHaveHardKeyboard:Z

.field private mInputMethodProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastInputMethodId:Ljava/lang/String;

.field private mLastTickedInputMethodId:Ljava/lang/String;

.field final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 48
    iput-boolean v0, p0, Lcom/android/settings/ImeCheckBoxPreference;->mChecked:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/settings/ImeCheckBoxPreference;->mHaveHardKeyboard:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ImeCheckBoxPreference;->mDialog:Landroid/app/AlertDialog;

    .line 58
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/settings/ImeCheckBoxPreference;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 63
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/android/settings/ImeCheckBoxPreference;->setLayoutResource(I)V

    .line 64
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/ImeCheckBoxPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings/ImeCheckBoxPreference;->mLastTickedInputMethodId:Ljava/lang/String;

    return-object p1
.end method

.method private isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 1
    .parameter "property"

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isIMEChecked()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/settings/ImeCheckBoxPreference;->mChecked:Z

    return v0
.end method

.method public languageSettingsOnPause(Z)V
    .locals 14
    .parameter "bChecked"

    .prologue
    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v11, 0x100

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 209
    .local v3, enabledSysImes:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 211
    .local v1, enabled:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/ImeCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "enabled_input_methods"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, enabledStr:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 215
    iget-object v9, p0, Lcom/android/settings/ImeCheckBoxPreference;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 216
    .local v9, splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v9, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 217
    :goto_0
    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 218
    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    .end local v9           #splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_0
    const/4 v4, -0x1

    .line 223
    .local v4, firstEnabled:I
    iget-object v11, p0, Lcom/android/settings/ImeCheckBoxPreference;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    .line 224
    .local v0, N:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v0, :cond_c

    .line 225
    iget-object v11, p0, Lcom/android/settings/ImeCheckBoxPreference;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 226
    .local v8, property:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 227
    .local v7, id:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/ImeCheckBoxPreference;->mLastInputMethodId:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 228
    .local v5, hasIt:Z
    invoke-direct {p0, v8}, Lcom/android/settings/ImeCheckBoxPreference;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v10

    .line 230
    .local v10, systemIme:Z
    const/4 v11, 0x1

    if-ne p1, v11, :cond_6

    .line 231
    const/4 v11, 0x1

    if-eq v0, v11, :cond_1

    if-eqz v10, :cond_2

    :cond_1
    iget-boolean v11, p0, Lcom/android/settings/ImeCheckBoxPreference;->mHaveHardKeyboard:Z

    if-eqz v11, :cond_3

    :cond_2
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/ImeCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 233
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_4

    const/16 v11, 0x3a

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    :cond_4
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    if-gez v4, :cond_5

    .line 236
    move v4, v6

    .line 239
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/ImeCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/ImeCheckBoxPreference;->mLastInputMethodId:Ljava/lang/String;

    .line 224
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 242
    :cond_6
    const/4 v11, 0x1

    if-eq v0, v11, :cond_7

    if-eqz v10, :cond_8

    :cond_7
    iget-boolean v11, p0, Lcom/android/settings/ImeCheckBoxPreference;->mHaveHardKeyboard:Z

    if-eqz v11, :cond_9

    :cond_8
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/ImeCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 244
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_a

    const/16 v11, 0x3a

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    :cond_a
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    if-gez v4, :cond_b

    .line 247
    move v4, v6

    .line 250
    :cond_b
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/settings/ImeCheckBoxPreference;->mLastInputMethodId:Ljava/lang/String;

    goto :goto_2

    .line 254
    .end local v5           #hasIt:Z
    .end local v7           #id:Ljava/lang/String;
    .end local v8           #property:Landroid/view/inputmethod/InputMethodInfo;
    .end local v10           #systemIme:Z
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/ImeCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "enabled_input_methods"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 256
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 70
    const v5, 0x7f0b006f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 71
    .local v3, mTextLayout:Landroid/widget/RelativeLayout;
    const v5, 0x7f0b0072

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 72
    .local v1, mCheckBoxLayout:Landroid/widget/LinearLayout;
    const v5, 0x7f0b0073

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 73
    .local v0, mCheckBox:Landroid/widget/CheckBox;
    const v5, 0x7f0b0070

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 74
    .local v4, mTitleView:Landroid/widget/TextView;
    const v5, 0x7f0b0071

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 75
    .local v2, mSummaryView:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/settings/ImeCheckBoxPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v5, p0, Lcom/android/settings/ImeCheckBoxPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-boolean v5, p0, Lcom/android/settings/ImeCheckBoxPreference;->mChecked:Z

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 79
    new-instance v5, Lcom/android/settings/ImeCheckBoxPreference$1;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/ImeCheckBoxPreference$1;-><init>(Lcom/android/settings/ImeCheckBoxPreference;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v5, Lcom/android/settings/ImeCheckBoxPreference$2;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/ImeCheckBoxPreference$2;-><init>(Lcom/android/settings/ImeCheckBoxPreference;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method public runIMEChecked(Z)Z
    .locals 14
    .parameter "bChecked"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/settings/ImeCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, id:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ImeCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "default_input_method"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/ImeCheckBoxPreference;->mLastInputMethodId:Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/ImeCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 139
    .local v1, config:Landroid/content/res/Configuration;
    iget v7, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 140
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/settings/ImeCheckBoxPreference;->mHaveHardKeyboard:Z

    .line 142
    :cond_0
    const/4 v6, 0x0

    .line 143
    .local v6, selImi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {p0}, Lcom/android/settings/ImeCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 144
    .local v5, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/ImeCheckBoxPreference;->mInputMethodProperties:Ljava/util/List;

    .line 145
    if-eqz p1, :cond_4

    .line 146
    iget-object v7, p0, Lcom/android/settings/ImeCheckBoxPreference;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 147
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 148
    iget-object v7, p0, Lcom/android/settings/ImeCheckBoxPreference;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 149
    .local v4, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 150
    move-object v6, v4

    .line 151
    invoke-direct {p0, v4}, Lcom/android/settings/ImeCheckBoxPreference;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 153
    iput-object v3, p0, Lcom/android/settings/ImeCheckBoxPreference;->mLastTickedInputMethodId:Ljava/lang/String;

    .line 154
    const-string v7, "ImeCheckBoxPreference"

    const-string v8, "runIMEChecked isSystemIme"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v7, 0x0

    .line 198
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v7

    .line 147
    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v4       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v4           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/settings/ImeCheckBoxPreference;->setIMEChecked(Z)V

    .line 160
    if-nez v6, :cond_3

    .line 161
    const-string v7, "ImeCheckBoxPreference"

    const-string v8, "runIMEChecked selImi == null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v7, 0x0

    goto :goto_1

    .line 164
    :cond_3
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ImeCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x1040014

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1080027

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/ImeCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0803da

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/ImeCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    new-instance v9, Lcom/android/settings/ImeCheckBoxPreference$4;

    invoke-direct {v9, p0, v3}, Lcom/android/settings/ImeCheckBoxPreference$4;-><init>(Lcom/android/settings/ImeCheckBoxPreference;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x104

    new-instance v9, Lcom/android/settings/ImeCheckBoxPreference$3;

    invoke-direct {v9, p0}, Lcom/android/settings/ImeCheckBoxPreference$3;-><init>(Lcom/android/settings/ImeCheckBoxPreference;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/ImeCheckBoxPreference;->mDialog:Landroid/app/AlertDialog;

    .line 192
    iget-object v7, p0, Lcom/android/settings/ImeCheckBoxPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 197
    .end local v0           #N:I
    .end local v2           #i:I
    :goto_2
    const-string v7, "ImeCheckBoxPreference"

    const-string v8, "runIMEChecked return true"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 194
    :cond_4
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings/ImeCheckBoxPreference;->mLastTickedInputMethodId:Ljava/lang/String;

    .line 195
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/settings/ImeCheckBoxPreference;->languageSettingsOnPause(Z)V

    goto :goto_2
.end method

.method public setIMEChecked(Z)V
    .locals 3
    .parameter "bChecked"

    .prologue
    .line 100
    const-string v0, "ImeCheckBoxPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIMEChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/ImeCheckBoxPreference;->mChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-boolean v0, p0, Lcom/android/settings/ImeCheckBoxPreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 102
    iput-boolean p1, p0, Lcom/android/settings/ImeCheckBoxPreference;->mChecked:Z

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/ImeCheckBoxPreference;->notifyChanged()V

    .line 105
    :cond_0
    return-void
.end method

.method public setIMEKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/settings/ImeCheckBoxPreference;->imeKey:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setIMESummary(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings/ImeCheckBoxPreference;->mSummary:Ljava/lang/CharSequence;

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/ImeCheckBoxPreference;->notifyChanged()V

    .line 119
    return-void
.end method

.method public setIMETitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings/ImeCheckBoxPreference;->mTitle:Ljava/lang/CharSequence;

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/ImeCheckBoxPreference;->notifyChanged()V

    .line 114
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/settings/ImeCheckBoxPreference;->setIMEKey(Ljava/lang/String;)V

    .line 132
    return-void
.end method
