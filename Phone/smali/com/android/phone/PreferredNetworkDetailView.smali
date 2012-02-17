.class public Lcom/android/phone/PreferredNetworkDetailView;
.super Landroid/preference/PreferenceActivity;
.source "PreferredNetworkDetailView.java"


# instance fields
.field private actionType:I

.field final app:Lcom/android/phone/PhoneApp;

.field editDialog:Landroid/widget/EditText;

.field mGsmAct:Landroid/preference/CheckBoxPreference;

.field mGsmCompactAct:Landroid/preference/CheckBoxPreference;

.field mHandler:Landroid/os/Handler;

.field mNetworkId:Landroid/preference/Preference;

.field mNetworkIndex:Landroid/preference/Preference;

.field mNetworkName:Landroid/preference/Preference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mUtranAct:Landroid/preference/CheckBoxPreference;

.field private oldId:Ljava/lang/String;

.field private oldIndex:I

.field private oldName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 115
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->app:Lcom/android/phone/PhoneApp;

    .line 121
    new-instance v0, Lcom/android/phone/PreferredNetworkDetailView$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PreferredNetworkDetailView$1;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PreferredNetworkDetailView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    return v0
.end method

.method private savePreferredNetworkInfo(ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 11
    .parameter "index"
    .parameter "operator"
    .parameter "plmn"
    .parameter "gsmAct"
    .parameter "gsmCompactAct"
    .parameter "utranAct"
    .parameter "action"

    .prologue
    .line 452
    const-string v2, "PreferredNetworksDetailView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "savePreferredNetworkInfo Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Operator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "PLMN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "GSM ACT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "GSM Compact ACT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Utran ACT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/PreferredNetworkDetailView;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v10}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V

    .line 468
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 148
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    const v1, 0x7f030038

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->addPreferencesFromResource(I)V

    .line 154
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->app:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 158
    const-string v1, "network_index"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    .line 160
    const-string v1, "network_name"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    .line 162
    const-string v1, "network_id"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    .line 164
    const-string v1, "gsm_act"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    .line 166
    const-string v1, "gsm_compact_act"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    .line 168
    const-string v1, "utran_act"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    .line 172
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$2;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$2;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 185
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$3;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$3;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 202
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$4;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$4;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 219
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$5;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$5;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 243
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$6;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$6;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 266
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$7;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$7;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 292
    .local v0, i:Landroid/content/Intent;
    const-string v1, "type_action"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    .line 294
    const-string v1, "index"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    .line 296
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    .line 298
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldId:Ljava/lang/String;

    .line 300
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    iget v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 308
    const-string v1, "act_gsm"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 310
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0d047d

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 312
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 323
    :goto_0
    const-string v1, "act_gsm_compact"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 325
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0d0480

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 327
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 339
    :goto_1
    const-string v1, "act_utran"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 341
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0d0483

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 343
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 353
    :goto_2
    return-void

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0d047e

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 317
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0d0481

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 333
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 347
    :cond_2
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0d0484

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 349
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const v7, 0x7f0d0095

    .line 363
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 365
    .local v2, mContext:Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 367
    .local v4, mInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03003a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 369
    .local v0, layout:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 371
    .local v1, mBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 373
    const v5, 0x7f080138

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    .line 374
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 376
    packed-switch p1, :pswitch_data_0

    .line 442
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 444
    .local v3, mDialog:Landroid/app/Dialog;
    return-object v3

    .line 380
    .end local v3           #mDialog:Landroid/app/Dialog;
    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 382
    const v5, 0x7f0d0478

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/PreferredNetworkDetailView$8;

    invoke-direct {v6, p0}, Lcom/android/phone/PreferredNetworkDetailView$8;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 400
    :pswitch_1
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 402
    const v5, 0x7f0d0479

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/PreferredNetworkDetailView$9;

    invoke-direct {v6, p0}, Lcom/android/phone/PreferredNetworkDetailView$9;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 420
    :pswitch_2
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 422
    const v5, 0x7f0d047a

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/PreferredNetworkDetailView$10;

    invoke-direct {v6, p0}, Lcom/android/phone/PreferredNetworkDetailView$10;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 478
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 480
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f10

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v2, "PreferredNetworksDetailView"

    .line 492
    const-string v0, "PreferredNetworksDetailView"

    const-string v0, "onOptionsItemSelected"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 568
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 498
    :pswitch_0
    const-string v0, "PreferredNetworksDetailView"

    const-string v0, "MENU_DELETE"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v4, v8

    :goto_1
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v5, v8

    :goto_2
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v6, v8

    :goto_3
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PreferredNetworkDetailView;->savePreferredNetworkInfo(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 512
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d048a

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 514
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->finish()V

    move v0, v8

    .line 516
    goto :goto_0

    :cond_0
    move v4, v9

    .line 500
    goto :goto_1

    :cond_1
    move v5, v9

    goto :goto_2

    :cond_2
    move v6, v9

    goto :goto_3

    .line 520
    :pswitch_1
    const-string v0, "PreferredNetworksDetailView"

    const-string v0, "MENU_SAVE"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v0, "PreferredNetworksDetailView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    if-eq v0, v8, :cond_3

    .line 525
    iget v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    move v4, v8

    :goto_4
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    move v5, v8

    :goto_5
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    move v6, v8

    :goto_6
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PreferredNetworkDetailView;->savePreferredNetworkInfo(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 536
    :cond_3
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    move v4, v8

    :goto_7
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    move v5, v8

    :goto_8
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    move v6, v8

    :goto_9
    iget v7, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PreferredNetworkDetailView;->savePreferredNetworkInfo(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 550
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->finish()V

    .line 552
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0489

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v8

    .line 554
    goto/16 :goto_0

    :cond_4
    move v4, v9

    .line 525
    goto :goto_4

    :cond_5
    move v5, v9

    goto :goto_5

    :cond_6
    move v6, v9

    goto :goto_6

    :cond_7
    move v4, v9

    .line 536
    goto :goto_7

    :cond_8
    move v5, v9

    goto :goto_8

    :cond_9
    move v6, v9

    goto :goto_9

    .line 558
    :pswitch_2
    const-string v0, "PreferredNetworksDetailView"

    const-string v0, "MENU_DISCARD"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->finish()V

    move v0, v8

    .line 562
    goto/16 :goto_0

    .line 494
    :pswitch_data_0
    .packed-switch 0x7f08018f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 580
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 582
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 590
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 592
    return-void
.end method
