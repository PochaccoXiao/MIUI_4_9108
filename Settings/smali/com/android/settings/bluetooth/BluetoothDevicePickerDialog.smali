.class public Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;
.super Landroid/preference/PreferenceActivity;
.source "BluetoothDevicePickerDialog.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;


# instance fields
.field private intent:Landroid/content/Intent;

.field private mDeviceList:Lcom/android/settings/ProgressCategory;

.field private mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/settings/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterType:I

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

.field m_bObexWaitForBonding:Z

.field m_iBPPReturn:I

.field m_iObexReturn:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 68
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->m_bObexWaitForBonding:Z

    .line 71
    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->m_iObexReturn:I

    .line 72
    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->m_iBPPReturn:I

    .line 77
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->onBluetoothStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;)Lcom/android/settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDeviceList:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;)Ljava/util/WeakHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->addDevices()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private addDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z
    .locals 1
    .parameter "cachedDevice"

    .prologue
    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method private addDevices()V
    .locals 4

    .prologue
    .line 255
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/List;

    move-result-object v1

    .line 256
    .local v1, cachedDevices:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 257
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 259
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_0
    return-void
.end method

.method private cancelDiscovery()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 434
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDeviceList:Lcom/android/settings/ProgressCategory;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDeviceList:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 437
    :cond_0
    return-void
.end method

.method private createDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 381
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 384
    .local v0, preference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDeviceList:Lcom/android/settings/ProgressCategory;

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDeviceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    return-void
.end method

.method private getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 6
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x0

    .line 338
    if-eqz p1, :cond_0

    instance-of v3, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v5

    .line 348
    :goto_0
    return-object v3

    .line 342
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 343
    .local v1, adapterMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 344
    .local v2, pref:Landroid/preference/Preference;
    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v3, :cond_3

    :cond_2
    move-object v3, v5

    .line 345
    goto :goto_0

    .line 348
    :cond_3
    check-cast v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .end local v2           #pref:Landroid/preference/Preference;
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    goto :goto_0
.end method

.method private onBluetoothStateChanged(I)V
    .locals 2
    .parameter "bluetoothState"

    .prologue
    .line 413
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDeviceList:Lcom/android/settings/ProgressCategory;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDeviceList:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 418
    :cond_0
    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 421
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    :cond_0
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 426
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 427
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 329
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 330
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 331
    const/4 v1, 0x0

    .line 334
    :goto_0
    return v1

    .line 333
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onContextItemSelected(Landroid/view/MenuItem;)V

    .line 334
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 127
    const-string v3, "BluetoothDevicePickerDialog"

    const-string v4, "<SURESH> onCreate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 142
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v3, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->finish()V

    .line 210
    :goto_0
    return-void

    .line 147
    :cond_0
    iput v6, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mFilterType:I

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->intent:Landroid/content/Intent;

    .line 152
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->intent:Landroid/content/Intent;

    const-string v4, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mFilterType:I

    .line 153
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->intent:Landroid/content/Intent;

    const-string v4, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLaunchPackage:Ljava/lang/String;

    .line 154
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->intent:Landroid/content/Intent;

    const-string v4, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLaunchClass:Ljava/lang/String;

    .line 163
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 166
    .local v0, cachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3, v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setBluetoothEnabled(Z)V

    .line 168
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->isPairedHeadsetOrA2DPExist()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->finish()V

    goto :goto_0

    .line 179
    :cond_1
    const-string v3, "statusbar"

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 182
    .local v2, mStatusBar:Landroid/app/StatusBarManager;
    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapse()V

    .line 185
    const v3, 0x7f080066

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    const v3, 0x7f040011

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->addPreferencesFromResource(I)V

    .line 190
    const-string v3, "device_policy"

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 192
    .local v1, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v3

    if-nez v3, :cond_2

    .line 193
    const v3, 0x7f080712

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->finish()V

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v3

    if-ne v3, v5, :cond_3

    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mFilterType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mFilterType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    .line 198
    const v3, 0x7f080713

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->finish()V

    goto/16 :goto_0

    .line 203
    :cond_3
    const-string v3, "bt_device_list"

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/ProgressCategory;

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDeviceList:Lcom/android/settings/ProgressCategory;

    .line 206
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3, v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->startScanning(Z)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 321
    invoke-direct {p0, p3}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 322
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 264
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 265
    const v0, 0x7f080056

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x10801dc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 266
    return v2
.end method

.method public onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Got onDeviceAdded, but cachedDevice already exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->addDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->createDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 360
    :cond_1
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 393
    .local v0, preference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    if-eqz v0, :cond_0

    .line 394
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDeviceList:Lcom/android/settings/ProgressCategory;

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDeviceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 397
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 279
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 286
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 282
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->startScanning(Z)V

    move v0, v1

    .line 283
    goto :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 235
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->cancelDiscovery()V

    .line 236
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/app/Activity;)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->unregisterCallback(Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->finish()V

    .line 245
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 295
    const-string v2, "bt_scan"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2, v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->startScanning(Z)V

    move v2, v4

    .line 313
    :goto_0
    return v2

    .line 300
    :cond_0
    instance-of v2, p2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v2, :cond_1

    .line 301
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->stopScanning()V

    .line 302
    move-object v0, p2

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-object v1, v0

    .line 309
    .local v1, btPreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onClicked()V

    move v2, v4

    .line 310
    goto :goto_0

    .line 313
    .end local v1           #btPreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 272
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 273
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 274
    return v2
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 214
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 215
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 220
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->registerCallback(Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;)V

    .line 222
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 223
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/app/Activity;)V

    .line 228
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDeviceList:Lcom/android/settings/ProgressCategory;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDeviceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 402
    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onUserLeaveHint()V

    .line 250
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->stopScanning()V

    .line 251
    return-void
.end method
