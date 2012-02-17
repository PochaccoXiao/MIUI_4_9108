.class public Lcom/android/server/WifiService;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WifiService$11;,
        Lcom/android/server/WifiService$Multicaster;,
        Lcom/android/server/WifiService$DeathRecipient;,
        Lcom/android/server/WifiService$LockList;,
        Lcom/android/server/WifiService$WifiLock;,
        Lcom/android/server/WifiService$WifiHandler;,
        Lcom/android/server/WifiService$DriverAction;
    }
.end annotation


# static fields
.field private static final ACTION_DEVICE_IDLE:Ljava/lang/String; = "com.android.server.WifiManager.action.DEVICE_IDLE"

.field private static final DBG:Z = false

.field private static final DEFAULT_IDLE_MILLIS:J = 0xdbba0L

.field private static final DEFAULT_WAKELOCK_TIMEOUT:I = 0x1f40

.field private static final DHCP_DEFAULT_RANGE1_START:Ljava/lang/String; = "192.168.43.2"

.field private static final DHCP_DEFAULT_RANGE1_STOP:Ljava/lang/String; = "192.168.43.254"

.field private static final DHCP_DEFAULT_RANGE2_START:Ljava/lang/String; = "192.168.44.2"

.field private static final DHCP_DEFAULT_RANGE2_STOP:Ljava/lang/String; = "192.168.44.254"

.field private static final IDLE_REQUEST:I = 0x0

.field private static final MESSAGE_CREATE_GO:I = 0x19

.field private static final MESSAGE_DESTROY_GO:I = 0x1a

.field private static final MESSAGE_DISABLE_WIFI:I = 0x1

.field private static final MESSAGE_DISCONNECT_WIFIDIRECT:I = 0x1b

.field private static final MESSAGE_ENABLE_NETWORKS:I = 0x9

.field private static final MESSAGE_ENABLE_RSSI_POLLING:I = 0xc

.field private static final MESSAGE_ENABLE_WIFI:I = 0x0

.field private static final MESSAGE_PROVISION_REQUEST:I = 0x17

.field private static final MESSAGE_PROVISION_RESPONSE:I = 0x18

.field private static final MESSAGE_RELEASE_WAKELOCK:I = 0x4

.field private static final MESSAGE_REPORT_WORKSOURCE:I = 0xb

.field private static final MESSAGE_SET_CHANNELS:I = 0x8

.field private static final MESSAGE_START_ACCESS_POINT:I = 0x6

.field private static final MESSAGE_START_SCAN:I = 0xa

.field private static final MESSAGE_START_WIFI:I = 0x3

.field private static final MESSAGE_START_WIFIDIRECT:I = 0x15

.field private static final MESSAGE_STOP_ACCESS_POINT:I = 0x7

.field private static final MESSAGE_STOP_WIFI:I = 0x2

.field private static final MESSAGE_STOP_WIFIDIRECT:I = 0x16

.field private static final MESSAGE_UPDATE_STATE:I = 0x5

.field private static final SCAN_RESULT_BUFFER_SIZE:I = 0x200

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0x50

.field private static final SOFTAP_IFACE:Ljava/lang/String; = "wl0.1"

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "WifiService"

.field private static sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sValidRegulatoryChannelCounts:[I

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private allowWifi:Z

.field private allowWifiAp:Z

.field private mAirplaneModeOverwridden:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceIdle:Z

.field private mDhcpRange:[Ljava/lang/String;

.field private mDirectRegexs:[Ljava/lang/String;

.field private mEnabledAccessPointListDialog:Z

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mIdleIntent:Landroid/app/PendingIntent;

.field private mLastApEnableUid:I

.field private mLastDirectEnableUid:I

.field private mLastEnableUid:I

.field private final mLocks:Lcom/android/server/WifiService$LockList;

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WifiService$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedReconfig:Z

.field private mPluggedType:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field private final mScanResultCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOff:Z

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mWifiApState:I

.field private mWifiEnabledSoon:Z

.field private final mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

.field private mWifiRegexs:[Ljava/lang/String;

.field private final mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

.field private mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;

.field private nwService:Landroid/os/INetworkManagementService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-string v0, "\t+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/WifiService;->scanResultPattern:Ljava/util/regex/Pattern;

    .line 248
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/WifiService;->sValidRegulatoryChannelCounts:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V
    .locals 11
    .parameter "context"
    .parameter "tracker"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v10, "WifiService"

    .line 261
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    .line 130
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mWifiEnabledSoon:Z

    .line 137
    new-instance v4, Lcom/android/server/WifiService$LockList;

    invoke-direct {v4, p0, v9}, Lcom/android/server/WifiService$LockList;-><init>(Lcom/android/server/WifiService;Lcom/android/server/WifiService$1;)V

    iput-object v4, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    .line 146
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    .line 155
    iput-object v9, p0, Lcom/android/server/WifiService;->mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;

    .line 227
    new-instance v4, Landroid/os/WorkSource;

    invoke-direct {v4}, Landroid/os/WorkSource;-><init>()V

    iput-object v4, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 232
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    iput v4, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    .line 237
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    iput v4, p0, Lcom/android/server/WifiService;->mLastApEnableUid:I

    .line 242
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    iput v4, p0, Lcom/android/server/WifiService;->mLastDirectEnableUid:I

    .line 256
    iput-boolean v7, p0, Lcom/android/server/WifiService;->allowWifi:Z

    .line 257
    iput-boolean v7, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    .line 2874
    new-instance v4, Lcom/android/server/WifiService$10;

    invoke-direct {v4, p0}, Lcom/android/server/WifiService$10;-><init>(Lcom/android/server/WifiService;)V

    iput-object v4, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 262
    iput-object p1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    .line 263
    iput-object p2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    .line 264
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiStateTracker;->enableRssiPolling(Z)V

    .line 265
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 267
    const-string v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 268
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    .line 270
    new-instance v4, Lcom/android/server/WifiService$1;

    const/16 v5, 0x50

    const/high16 v6, 0x3f40

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/server/WifiService$1;-><init>(Lcom/android/server/WifiService;IFZ)V

    iput-object v4, p0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    .line 281
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "WifiService"

    invoke-direct {v3, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 282
    .local v3, wifiThread:Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 283
    new-instance v4, Lcom/android/server/WifiService$WifiHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/WifiService$WifiHandler;-><init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    .line 285
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiStateTracker;->setWifiState(I)V

    .line 286
    iput v7, p0, Lcom/android/server/WifiService;->mWifiApState:I

    .line 288
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 289
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-direct {v1, v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 290
    .local v1, idleIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v4, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    .line 292
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 293
    .local v2, powerManager:Landroid/os/PowerManager;
    const-string v4, "WifiService"

    invoke-virtual {v2, v7, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 294
    const-string v4, "WifiService"

    invoke-virtual {v2, v7, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, Lcom/android/server/WifiService;->sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 298
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    iput-object v4, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 301
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/WifiService$2;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$2;-><init>(Lcom/android/server/WifiService;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 316
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/WifiService$3;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$3;-><init>(Lcom/android/server/WifiService;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 333
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/WifiService$4;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$4;-><init>(Lcom/android/server/WifiService;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifidirect.CREATE_LINK_COMPLETE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 366
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/WifiService$5;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$5;-><init>(Lcom/android/server/WifiService;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifidirect.GO_READY"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 379
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/WifiService$6;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$6;-><init>(Lcom/android/server/WifiService;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifidirect.GO_STOP"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 391
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/WifiService$7;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$7;-><init>(Lcom/android/server/WifiService;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifidirect.DIRECT_LINK_DOWN"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 406
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/WifiService$8;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$8;-><init>(Lcom/android/server/WifiService;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifidirect.DIRECT_LINK_ADDED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 427
    return-void
.end method

.method private ConfigureDirectInterface()V
    .locals 11

    .prologue
    const-string v10, "WifiService"

    .line 546
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 548
    const/4 v6, 0x0

    .line 549
    .local v6, wifiTethered:Z
    const/4 v5, 0x0

    .line 551
    .local v5, wifiAvailable:Z
    const-string v7, "network_management"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 552
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 555
    .local v4, service:Landroid/os/INetworkManagementService;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v7}, Landroid/os/INetworkManagementService;->isGOCreated()Z

    move-result v7

    if-nez v7, :cond_0

    .line 556
    const-string v7, "WifiService"

    const-string v8, "[updateDirectState][Direct Client is Created.] "

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_0
    return-void

    .line 560
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 561
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "WifiService"

    const-string v7, "[Configure Interface] Error configuring interface "

    invoke-static {v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iput-object v7, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    .line 565
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const v8, 0x104048a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 567
    .local v3, intf:Ljava/lang/String;
    const/4 v2, 0x0

    .line 569
    .local v2, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v7, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v2

    .line 570
    if-eqz v2, :cond_1

    .line 572
    const v7, -0x3f57d4ff

    iput v7, v2, Landroid/net/InterfaceConfiguration;->ipAddr:I

    .line 573
    const/16 v7, -0x100

    iput v7, v2, Landroid/net/InterfaceConfiguration;->netmask:I

    .line 574
    const-string v7, "up"

    iput-object v7, v2, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 576
    iget-object v7, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v7, v3, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 581
    :cond_1
    :goto_1
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/WifiService;->mDhcpRange:[Ljava/lang/String;

    .line 582
    iget-object v7, p0, Lcom/android/server/WifiService;->mDhcpRange:[Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "192.168.43.2"

    aput-object v9, v7, v8

    .line 583
    iget-object v7, p0, Lcom/android/server/WifiService;->mDhcpRange:[Ljava/lang/String;

    const/4 v8, 0x1

    const-string v9, "192.168.43.254"

    aput-object v9, v7, v8

    .line 584
    iget-object v7, p0, Lcom/android/server/WifiService;->mDhcpRange:[Ljava/lang/String;

    const/4 v8, 0x2

    const-string v9, "192.168.44.2"

    aput-object v9, v7, v8

    .line 585
    iget-object v7, p0, Lcom/android/server/WifiService;->mDhcpRange:[Ljava/lang/String;

    const/4 v8, 0x3

    const-string v9, "192.168.44.254"

    aput-object v9, v7, v8

    .line 587
    :try_start_2
    iget-object v7, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    iget-object v8, p0, Lcom/android/server/WifiService;->mDhcpRange:[Ljava/lang/String;

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 588
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 589
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v7, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error startTethering "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 578
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 579
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v7, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error configuring interface "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private DisableDnsmasq()V
    .locals 8

    .prologue
    const-string v7, "WifiService"

    .line 594
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 596
    const/4 v4, 0x0

    .line 597
    .local v4, wifiTethered:Z
    const/4 v3, 0x0

    .line 599
    .local v3, wifiAvailable:Z
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 600
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 603
    .local v2, service:Landroid/os/INetworkManagementService;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v5}, Landroid/os/INetworkManagementService;->stopTethering()V

    .line 604
    const-string v5, "WifiService"

    const-string v6, "[DisableDnsmasq] "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :goto_0
    return-void

    .line 605
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 606
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error startTethering "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/server/WifiService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mAirplaneModeOverwridden:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/server/WifiService;->ConfigureDirectInterface()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/server/WifiService;->sendReportWorkSourceMessage()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->sendEnableRssiPollingMessage(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/server/WifiService;->sendEnableNetworksMessage()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/WifiService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput p1, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/server/WifiService;->handleSecurityPolicy()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/WifiService;ZZI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WifiService;->setWifiEnabledBlocking(ZZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/WifiService;)Lcom/android/server/WifiWatchdogService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/WifiService;Lcom/android/server/WifiWatchdogService;)Lcom/android/server/WifiWatchdogService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/WifiService;->mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;

    return-object p1
.end method

.method static synthetic access$2600()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/server/WifiService;->doUpdateWifiState()V

    return-void
.end method

.method static synthetic access$2900()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/server/WifiService;->sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/server/WifiService;->testAndClearWifiSavedState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WifiService;->setWifiApEnabledBlocking(ZILandroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/WifiService;IZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->setNumAllowedChannelsBlocking(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WifiService;->setWifiDirectEnabledBlocking(ZILandroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/server/WifiService;->DisableDnsmasq()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$LockList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/WifiService;Landroid/os/IBinder;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiEnabled(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/WifiService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/WifiService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/WifiService;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->updateTetherState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/WifiService;)Landroid/os/INetworkManagementService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method private acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z
    .locals 6
    .parameter "wifiLock"

    .prologue
    .line 3607
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireWifiLockLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3609
    iget-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->addLock(Lcom/android/server/WifiService$WifiLock;)V
    invoke-static {v3, p1}, Lcom/android/server/WifiService$LockList;->access$4100(Lcom/android/server/WifiService$LockList;Lcom/android/server/WifiService$WifiLock;)V

    .line 3611
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3613
    .local v1, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 3614
    iget v3, p1, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 3628
    :goto_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->sendReportWorkSourceMessage()V

    .line 3630
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3631
    const/4 v3, 0x1

    .line 3635
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    return v3

    .line 3616
    :pswitch_0
    :try_start_1
    iget v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3632
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 3633
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 3635
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 3619
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    :try_start_2
    iget v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3635
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3622
    :pswitch_2
    :try_start_3
    iget v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 3614
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    const-string v2, "\""

    .line 1986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doUpdateWifiState()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3136
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiEnabled()Z

    move-result v4

    .line 3137
    .local v4, wifiEnabled:Z
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/android/server/WifiService;->mAirplaneModeOverwridden:Z

    if-nez v7, :cond_3

    move v0, v10

    .line 3140
    .local v0, airplaneMode:Z
    :goto_0
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v7

    .line 3141
    :try_start_0
    iget-object v8, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->hasLocks()Z
    invoke-static {v8}, Lcom/android/server/WifiService$LockList;->access$2200(Lcom/android/server/WifiService$LockList;)Z

    move-result v1

    .line 3142
    .local v1, lockHeld:Z
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3144
    const/4 v2, 0x1

    .line 3145
    .local v2, strongestLockMode:I
    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    move v5, v10

    .line 3146
    .local v5, wifiShouldBeEnabled:Z
    :goto_1
    iget-boolean v7, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v7, :cond_0

    if-eqz v1, :cond_5

    :cond_0
    move v6, v10

    .line 3148
    .local v6, wifiShouldBeStarted:Z
    :goto_2
    if-eqz v1, :cond_1

    .line 3149
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->getStrongestLockMode()I
    invoke-static {v7}, Lcom/android/server/WifiService$LockList;->access$2300(Lcom/android/server/WifiService$LockList;)I

    move-result v2

    .line 3152
    :cond_1
    iget-boolean v7, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-nez v7, :cond_2

    if-ne v2, v11, :cond_2

    .line 3153
    const/4 v2, 0x1

    .line 3156
    :cond_2
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    monitor-enter v7

    .line 3157
    :try_start_1
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v8

    if-ne v8, v11, :cond_6

    if-nez v0, :cond_6

    .line 3158
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3194
    :goto_3
    return-void

    .end local v0           #airplaneMode:Z
    .end local v1           #lockHeld:Z
    .end local v2           #strongestLockMode:I
    .end local v5           #wifiShouldBeEnabled:Z
    .end local v6           #wifiShouldBeStarted:Z
    :cond_3
    move v0, v9

    .line 3137
    goto :goto_0

    .line 3142
    .restart local v0       #airplaneMode:Z
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .restart local v1       #lockHeld:Z
    .restart local v2       #strongestLockMode:I
    :cond_4
    move v5, v9

    .line 3145
    goto :goto_1

    .restart local v5       #wifiShouldBeEnabled:Z
    :cond_5
    move v6, v9

    .line 3146
    goto :goto_2

    .line 3162
    .restart local v6       #wifiShouldBeStarted:Z
    :cond_6
    if-eqz v0, :cond_8

    :try_start_3
    iget v8, p0, Lcom/android/server/WifiService;->mWifiApState:I

    if-eq v8, v11, :cond_7

    iget v8, p0, Lcom/android/server/WifiService;->mWifiApState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_8

    .line 3164
    :cond_7
    sget-object v8, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3165
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/WifiService;->mLastApEnableUid:I

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/WifiService;->sendAccessPointMessage(ZLandroid/net/wifi/WifiConfiguration;I)V

    .line 3168
    :cond_8
    if-eqz v5, :cond_b

    .line 3169
    if-eqz v6, :cond_a

    .line 3170
    sget-object v8, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3171
    const/4 v8, 0x1

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/WifiService;->sendEnableMessage(ZZI)V

    .line 3172
    sget-object v8, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3173
    invoke-direct {p0, v2}, Lcom/android/server/WifiService;->sendStartMessage(I)V

    .line 3193
    :cond_9
    :goto_4
    monitor-exit v7

    goto :goto_3

    :catchall_1
    move-exception v8

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .line 3174
    :cond_a
    :try_start_4
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v8

    if-nez v8, :cond_9

    .line 3175
    iget-object v8, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_mobile_data_transition_wakelock_timeout_ms"

    const/16 v10, 0x1f40

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3185
    .local v3, wakeLockTimeout:I
    sget-object v8, Lcom/android/server/WifiService;->sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3186
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/server/WifiService$WifiHandler;->sendEmptyMessage(I)Z

    .line 3187
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/4 v9, 0x4

    int-to-long v10, v3

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/WifiService$WifiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 3190
    .end local v3           #wakeLockTimeout:I
    :cond_b
    sget-object v8, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3191
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/WifiService;->sendEnableMessage(ZZI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .locals 3

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    return-void
.end method

.method private getPersistedWifiEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 624
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 626
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "wifi_on"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v4, :cond_0

    move v2, v4

    .line 631
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 626
    goto :goto_0

    .line 627
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    move v2, v3

    .line 631
    goto :goto_0
.end method

.method private getWifiDirectConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 13

    .prologue
    const/4 v9, 0x4

    const-string v10, "direct_ssid"

    const-string v12, "direct_password"

    .line 1164
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1165
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1166
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1168
    .local v6, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    const-string v7, "direct_ssid"

    invoke-static {v0, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1169
    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 1170
    const-string v7, "gsm.sim.msisdn"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1171
    .local v2, mNumber:Ljava/lang/String;
    const-string v5, "AndroidP2P"

    .line 1173
    .local v5, tempSSID:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v9, :cond_2

    .line 1174
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-static {v7, v8, v9}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v1

    .line 1175
    .local v1, mLast4digitNum:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1182
    .end local v1           #mLast4digitNum:Ljava/lang/String;
    :goto_0
    const-string v7, "direct_ssid"

    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0, v10, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1185
    .end local v2           #mNumber:Ljava/lang/String;
    .end local v5           #tempSSID:Ljava/lang/String;
    :cond_0
    const-string v7, "direct_password"

    invoke-static {v0, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1186
    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 1187
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-direct {v3, v7, v8}, Ljava/util/Random;-><init>(J)V

    .line 1188
    .local v3, rnd:Ljava/util/Random;
    const-string v7, "%08d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const v10, 0x55d2370

    invoke-virtual {v3, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    const v11, 0x989680

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1189
    const-string v7, "direct_password"

    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v0, v12, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1192
    .end local v3           #rnd:Ljava/util/Random;
    :cond_1
    return-object v6

    .line 1178
    .restart local v2       #mNumber:Ljava/lang/String;
    .restart local v5       #tempSSID:Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-direct {v3, v7, v8}, Ljava/util/Random;-><init>(J)V

    .line 1179
    .restart local v3       #rnd:Ljava/util/Random;
    const/16 v7, 0x2327

    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit16 v4, v7, 0x3e8

    .line 1180
    .local v4, sequence:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleSecurityPolicy()V
    .locals 9

    .prologue
    const/high16 v7, 0x1000

    const/high16 v6, 0x80

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "com.android.settings"

    .line 3045
    iget-object v1, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/WifiService;->allowWifi:Z

    .line 3046
    iget-object v1, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    .line 3047
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSecurityPolicy()     allowWifi ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WifiService;->allowWifi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")     allowWifiAp ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    iget-boolean v1, p0, Lcom/android/server/WifiService;->allowWifi:Z

    if-nez v1, :cond_0

    .line 3049
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiEnabledState()I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 3050
    iget-boolean v1, p0, Lcom/android/server/WifiService;->allowWifi:Z

    invoke-virtual {p0, v1}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 3051
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3052
    .local v0, startDialogIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v1, "com.android.settings.wifi.WifiSecurityChangeDialog"

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3053
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3054
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3055
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3059
    .end local v0           #startDialogIntent:Landroid/content/Intent;
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    if-nez v1, :cond_1

    .line 3060
    iget v1, p0, Lcom/android/server/WifiService;->mWifiApState:I

    if-eq v1, v5, :cond_1

    .line 3061
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 3062
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3063
    .restart local v0       #startDialogIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v1, "com.android.settings.wifi.WifiApSecurityChangeDialog"

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3064
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3065
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3066
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3071
    .end local v0           #startDialogIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3229
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneSensitive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private isAirplaneSensitive()Z
    .locals 3

    .prologue
    .line 3210
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3212
    .local v0, airplaneModeRadios:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAirplaneToggleable()Z
    .locals 3

    .prologue
    .line 3217
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3219
    .local v0, toggleableRadios:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "string"
    .parameter "strings"

    .prologue
    .line 2322
    array-length v1, p1

    .line 2324
    .local v1, size:I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 2326
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2327
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 2337
    :goto_1
    return v2

    .line 2326
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2337
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "set"
    .parameter "strings"

    .prologue
    .line 2302
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2303
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 2307
    .local v1, nextSetBit:I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    .line 2309
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2310
    aget-object v2, p1, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2314
    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 2315
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2318
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V
    .locals 2
    .parameter "wifiLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3577
    iget v0, p1, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 3589
    :goto_0
    return-void

    .line 3579
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 3583
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 3586
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 3577
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V
    .locals 2
    .parameter "wifiLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3592
    iget v0, p1, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 3604
    :goto_0
    return-void

    .line 3594
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 3598
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 3601
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 3592
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseP2PScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 18
    .parameter "line"

    .prologue
    .line 2626
    const/4 v2, 0x0

    .line 2627
    .local v2, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz p1, :cond_1

    .line 2632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    move-object v14, v0

    monitor-enter v14

    .line 2633
    :try_start_0
    sget-object v15, Lcom/android/server/WifiService;->scanResultPattern:Ljava/util/regex/Pattern;

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v12

    .line 2634
    .local v12, result:[Ljava/lang/String;
    const/4 v15, 0x5

    move-object v0, v12

    array-length v0, v0

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-gt v0, v1, :cond_7

    array-length v15, v12

    const/16 v16, 0x7

    move v0, v15

    move/from16 v1, v16

    if-gt v0, v1, :cond_7

    .line 2635
    const/4 v15, 0x0

    aget-object v4, v12, v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2641
    .local v4, bssid:Ljava/lang/String;
    const/4 v15, 0x1

    :try_start_1
    aget-object v15, v12, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2642
    .local v7, frequency:I
    const/4 v15, 0x2

    aget-object v15, v12, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2646
    .local v6, level:I
    if-lez v6, :cond_0

    .line 2647
    add-int/lit16 v6, v6, -0x100

    .line 2648
    :cond_0
    const/4 v15, 0x3

    aget-object v15, v12, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 2666
    .local v8, devType:I
    :goto_0
    :try_start_2
    array-length v15, v12

    const/16 v16, 0x5

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 2667
    const/4 v15, 0x4

    aget-object v15, v12, v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x5b

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    .line 2668
    const/4 v15, 0x4

    aget-object v5, v12, v15

    .line 2669
    .local v5, flags:Ljava/lang/String;
    const-string v3, ""

    .line 2670
    .local v3, ssid:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2693
    .local v9, status:I
    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2694
    .local v11, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    move-object v15, v0

    invoke-virtual {v15, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2695
    .end local v2           #scanResult:Landroid/net/wifi/ScanResult;
    .local v13, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v13, :cond_6

    .line 2696
    :try_start_3
    iput v6, v13, Landroid/net/wifi/ScanResult;->level:I

    .line 2697
    iput-object v3, v13, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 2698
    iput-object v5, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 2699
    iput v7, v13, Landroid/net/wifi/ScanResult;->frequency:I

    .line 2700
    iput v8, v13, Landroid/net/wifi/ScanResult;->primaryDev:I

    .line 2701
    iput v9, v13, Landroid/net/wifi/ScanResult;->status:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v13

    .line 2715
    .end local v3           #ssid:Ljava/lang/String;
    .end local v4           #bssid:Ljava/lang/String;
    .end local v5           #flags:Ljava/lang/String;
    .end local v6           #level:I
    .end local v7           #frequency:I
    .end local v8           #devType:I
    .end local v9           #status:I
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v2       #scanResult:Landroid/net/wifi/ScanResult;
    :goto_2
    :try_start_4
    monitor-exit v14

    .line 2718
    .end local v12           #result:[Ljava/lang/String;
    :cond_1
    return-object v2

    .line 2649
    .restart local v4       #bssid:Ljava/lang/String;
    .restart local v12       #result:[Ljava/lang/String;
    :catch_0
    move-exception v15

    move-object v10, v15

    .line 2650
    .local v10, e:Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    .line 2651
    .restart local v7       #frequency:I
    const/4 v6, 0x0

    .line 2652
    .restart local v6       #level:I
    const/4 v8, 0x0

    .restart local v8       #devType:I
    goto :goto_0

    .line 2672
    .end local v10           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v5, ""

    .line 2673
    .restart local v5       #flags:Ljava/lang/String;
    const/4 v15, 0x5

    aget-object v3, v12, v15

    .line 2674
    .restart local v3       #ssid:Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9       #status:I
    goto :goto_1

    .line 2676
    .end local v3           #ssid:Ljava/lang/String;
    .end local v5           #flags:Ljava/lang/String;
    .end local v9           #status:I
    :cond_3
    array-length v15, v12

    const/16 v16, 0x6

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 2677
    const/4 v15, 0x4

    aget-object v5, v12, v15

    .line 2678
    .restart local v5       #flags:Ljava/lang/String;
    const/4 v15, 0x5

    aget-object v3, v12, v15

    .line 2679
    .restart local v3       #ssid:Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9       #status:I
    goto :goto_1

    .line 2680
    .end local v3           #ssid:Ljava/lang/String;
    .end local v5           #flags:Ljava/lang/String;
    .end local v9           #status:I
    :cond_4
    array-length v15, v12

    const/16 v16, 0x7

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 2681
    const/4 v15, 0x4

    aget-object v5, v12, v15

    .line 2682
    .restart local v5       #flags:Ljava/lang/String;
    const/4 v15, 0x5

    aget-object v3, v12, v15

    .line 2683
    .restart local v3       #ssid:Ljava/lang/String;
    const/4 v15, 0x6

    aget-object v15, v12, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .restart local v9       #status:I
    goto :goto_1

    .line 2687
    .end local v3           #ssid:Ljava/lang/String;
    .end local v5           #flags:Ljava/lang/String;
    .end local v9           #status:I
    :cond_5
    const-string v5, ""

    .line 2688
    .restart local v5       #flags:Ljava/lang/String;
    const-string v3, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2689
    .restart local v3       #ssid:Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9       #status:I
    goto :goto_1

    .line 2704
    .end local v2           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v11       #key:Ljava/lang/String;
    .restart local v13       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_6
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_8

    .line 2705
    new-instance v2, Landroid/net/wifi/ScanResult;

    invoke-direct/range {v2 .. v9}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2708
    .end local v13           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v2       #scanResult:Landroid/net/wifi/ScanResult;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    move-object v15, v0

    invoke-virtual {v15, v11, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2715
    .end local v3           #ssid:Ljava/lang/String;
    .end local v4           #bssid:Ljava/lang/String;
    .end local v5           #flags:Ljava/lang/String;
    .end local v6           #level:I
    .end local v7           #frequency:I
    .end local v8           #devType:I
    .end local v9           #status:I
    .end local v11           #key:Ljava/lang/String;
    .end local v12           #result:[Ljava/lang/String;
    :catchall_0
    move-exception v15

    :goto_3
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v15

    .line 2712
    .restart local v12       #result:[Ljava/lang/String;
    :cond_7
    :try_start_7
    const-string v15, "WifiService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Misformatted scan result text with "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v12

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " fields: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 2715
    .end local v2           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v3       #ssid:Ljava/lang/String;
    .restart local v4       #bssid:Ljava/lang/String;
    .restart local v5       #flags:Ljava/lang/String;
    .restart local v6       #level:I
    .restart local v7       #frequency:I
    .restart local v8       #devType:I
    .restart local v9       #status:I
    .restart local v11       #key:Ljava/lang/String;
    .restart local v13       #scanResult:Landroid/net/wifi/ScanResult;
    :catchall_1
    move-exception v15

    move-object v2, v13

    .end local v13           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v2       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_3

    .end local v2           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v13       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_8
    move-object v2, v13

    .end local v13           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v2       #scanResult:Landroid/net/wifi/ScanResult;
    goto/16 :goto_2
.end method

.method private parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 14
    .parameter "line"

    .prologue
    .line 2490
    const/4 v0, 0x0

    .line 2491
    .local v0, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz p1, :cond_1

    .line 2496
    iget-object v10, p0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    monitor-enter v10

    .line 2497
    :try_start_0
    sget-object v11, Lcom/android/server/WifiService;->scanResultPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v8

    .line 2498
    .local v8, result:[Ljava/lang/String;
    const/4 v11, 0x3

    array-length v12, v8

    if-gt v11, v12, :cond_6

    array-length v11, v8

    const/4 v12, 0x5

    if-gt v11, v12, :cond_6

    .line 2499
    const/4 v11, 0x0

    aget-object v2, v8, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2504
    .local v2, bssid:Ljava/lang/String;
    const/4 v11, 0x1

    :try_start_1
    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2505
    .local v5, frequency:I
    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .line 2509
    .local v4, level:I
    if-lez v4, :cond_0

    add-int/lit16 v4, v4, -0x100

    .line 2525
    :cond_0
    :goto_0
    :try_start_2
    array-length v11, v8

    const/4 v12, 0x4

    if-ne v11, v12, :cond_3

    .line 2526
    const/4 v11, 0x3

    aget-object v11, v8, v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5b

    if-ne v11, v12, :cond_2

    .line 2527
    const/4 v11, 0x3

    aget-object v3, v8, v11

    .line 2528
    .local v3, flags:Ljava/lang/String;
    const-string v1, ""

    .line 2544
    .local v1, ssid:Ljava/lang/String;
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2545
    .local v7, key:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2546
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .local v9, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v9, :cond_5

    .line 2547
    :try_start_3
    iput v4, v9, Landroid/net/wifi/ScanResult;->level:I

    .line 2548
    iput-object v1, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 2549
    iput-object v3, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 2550
    iput v5, v9, Landroid/net/wifi/ScanResult;->frequency:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v9

    .line 2564
    .end local v1           #ssid:Ljava/lang/String;
    .end local v2           #bssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    .end local v4           #level:I
    .end local v5           #frequency:I
    .end local v7           #key:Ljava/lang/String;
    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    :goto_2
    :try_start_4
    monitor-exit v10

    .line 2567
    .end local v8           #result:[Ljava/lang/String;
    :cond_1
    return-object v0

    .line 2510
    .restart local v2       #bssid:Ljava/lang/String;
    .restart local v8       #result:[Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v6, v11

    .line 2511
    .local v6, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    .line 2512
    .restart local v5       #frequency:I
    const/4 v4, 0x0

    .restart local v4       #level:I
    goto :goto_0

    .line 2530
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v3, ""

    .line 2531
    .restart local v3       #flags:Ljava/lang/String;
    const/4 v11, 0x3

    aget-object v1, v8, v11

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_1

    .line 2533
    .end local v1           #ssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    :cond_3
    array-length v11, v8

    const/4 v12, 0x5

    if-ne v11, v12, :cond_4

    .line 2534
    const/4 v11, 0x3

    aget-object v3, v8, v11

    .line 2535
    .restart local v3       #flags:Ljava/lang/String;
    const/4 v11, 0x4

    aget-object v1, v8, v11

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_1

    .line 2539
    .end local v1           #ssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    :cond_4
    const-string v3, ""

    .line 2540
    .restart local v3       #flags:Ljava/lang/String;
    const-string v1, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_1

    .line 2553
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v7       #key:Ljava/lang/String;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_5
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_7

    .line 2554
    new-instance v0, Landroid/net/wifi/ScanResult;

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2557
    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    :try_start_6
    iget-object v11, p0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v7, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2564
    .end local v1           #ssid:Ljava/lang/String;
    .end local v2           #bssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    .end local v4           #level:I
    .end local v5           #frequency:I
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #result:[Ljava/lang/String;
    :catchall_0
    move-exception v11

    :goto_3
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v11

    .line 2561
    .restart local v8       #result:[Ljava/lang/String;
    :cond_6
    :try_start_7
    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Misformatted scan result text with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " fields: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 2564
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v1       #ssid:Ljava/lang/String;
    .restart local v2       #bssid:Ljava/lang/String;
    .restart local v3       #flags:Ljava/lang/String;
    .restart local v4       #level:I
    .restart local v5       #frequency:I
    .restart local v7       #key:Ljava/lang/String;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :catchall_1
    move-exception v11

    move-object v0, v9

    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_3

    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_7
    move-object v0, v9

    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_2
.end method

.method private persistWifiEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 636
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 637
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wifi_on"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 638
    return-void

    .line 637
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private preventDirectEnable()Z
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "direct_use_hide_my_device"

    .line 1053
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1054
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v3, :cond_0

    move v3, v5

    .line 1072
    :goto_0
    return v3

    .line 1056
    :cond_0
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1057
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    .line 1059
    .local v2, mDirectDisable:I
    :try_start_0
    const-string v3, "direct_use_hide_my_device"

    const/16 v4, 0x64

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1061
    if-ne v2, v7, :cond_1

    .line 1063
    const/4 v2, 0x1

    .line 1064
    :try_start_1
    const-string v3, "direct_use_hide_my_device"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1072
    :cond_1
    :goto_1
    if-ne v2, v6, :cond_2

    move v3, v6

    goto :goto_0

    .line 1065
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/NumberFormatException;
    move v3, v5

    .line 1066
    goto :goto_0

    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    move v3, v5

    .line 1072
    goto :goto_0

    .line 1069
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V
    .locals 13
    .parameter "config"

    .prologue
    .line 1785
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1786
    .local v6, netId:I
    if-gez v6, :cond_1

    .line 1978
    :cond_0
    return-void

    .line 1796
    :cond_1
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "ssid"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1797
    .local v9, value:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1798
    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1803
    :goto_0
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "bssid"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1804
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1805
    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1810
    :goto_1
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "priority"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1811
    const/4 v10, -0x1

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1812
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1814
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->priority:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1819
    :cond_2
    :goto_2
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "scan_ssid"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1820
    const/4 v10, 0x0

    iput-boolean v10, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1821
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1823
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    :goto_3
    iput-boolean v10, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1828
    :cond_3
    :goto_4
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "wep_tx_keyidx"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1829
    const/4 v10, -0x1

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 1830
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1832
    :try_start_2
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1841
    :cond_4
    :goto_5
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    const/4 v10, 0x4

    if-ge v2, v10, :cond_9

    .line 1842
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    sget-object v11, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v11, v11, v2

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1843
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1844
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v9, v10, v2

    .line 1841
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1800
    .end local v2           #i:I
    :cond_5
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 1807
    :cond_6
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_1

    .line 1823
    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    .line 1846
    .restart local v2       #i:I
    :cond_8
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v11, v10, v2

    goto :goto_7

    .line 1854
    :cond_9
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "psk"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1855
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 1856
    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1861
    :goto_8
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "proto"

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1863
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 1864
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1865
    .local v8, vals:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_9
    if-ge v3, v5, :cond_c

    aget-object v7, v0, v3

    .line 1866
    .local v7, val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1868
    .local v4, index:I
    if-ltz v4, :cond_a

    .line 1869
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1865
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1858
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_b
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_8

    .line 1874
    :cond_c
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "key_mgmt"

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1876
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 1877
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1878
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_a
    if-ge v3, v5, :cond_e

    aget-object v7, v0, v3

    .line 1879
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1881
    .restart local v4       #index:I
    if-ltz v4, :cond_d

    .line 1882
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1878
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1887
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_e
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "auth_alg"

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1889
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 1890
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1891
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_b
    if-ge v3, v5, :cond_10

    aget-object v7, v0, v3

    .line 1892
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1894
    .restart local v4       #index:I
    if-ltz v4, :cond_f

    .line 1895
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1891
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1900
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_10
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "pairwise"

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1902
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 1903
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1904
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_c
    if-ge v3, v5, :cond_12

    aget-object v7, v0, v3

    .line 1905
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1907
    .restart local v4       #index:I
    if-ltz v4, :cond_11

    .line 1908
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1904
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1913
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_12
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "group"

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1915
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 1916
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1917
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_d
    if-ge v3, v5, :cond_14

    aget-object v7, v0, v3

    .line 1918
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1920
    .restart local v4       #index:I
    if-ltz v4, :cond_13

    .line 1921
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1917
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1926
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_14
    const-string v10, "WifiService"

    const-string v11, "***WAPI : readNetworkVariables testing for WAPI"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 1929
    const-string v10, "WifiService"

    const-string v11, "***WAPI : readNetworkVariables WAPI_PSK"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    const-string v10, "psk_key_type"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1932
    const/4 v10, -0x1

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiPSKKeyType:I

    .line 1933
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "***WAPI : readNetworkVariables WAPI_PSK type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_15

    .line 1936
    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiPSKKeyType:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1970
    :cond_15
    :goto_e
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_f
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .line 1971
    .local v1, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1973
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_17

    .line 1974
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eq v1, v10, :cond_16

    invoke-static {v9}, Lcom/android/server/WifiService;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1975
    :cond_16
    invoke-virtual {v1, v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 1970
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1940
    .end local v0           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v1           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v3           #i$:I
    .end local v5           #len$:I
    :cond_18
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1941
    const-string v10, "WifiService"

    const-string v11, "***WAPI : readNetworkVariables WAPI_CERT"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    const-string v10, "cert_index"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1944
    const/4 v10, -0x1

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 1945
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "***WAPI : readNetworkVariables WAPI_CERT index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_19

    .line 1948
    :try_start_4
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1952
    :cond_19
    :goto_10
    const-string v10, "wapi_as_cert"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1953
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "***WAPI : readNetworkVariables WAPI_CERT as cert "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1a

    .line 1955
    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 1959
    :goto_11
    const-string v10, "wapi_user_cert"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1960
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "***WAPI : readNetworkVariables WAPI_CERT user cert "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1b

    .line 1962
    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_e

    .line 1957
    :cond_1a
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    goto :goto_11

    .line 1964
    :cond_1b
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_e

    .line 1949
    :catch_0
    move-exception v10

    goto :goto_10

    .line 1937
    :catch_1
    move-exception v10

    goto/16 :goto_e

    .line 1833
    .end local v2           #i:I
    :catch_2
    move-exception v10

    goto/16 :goto_5

    .line 1824
    :catch_3
    move-exception v10

    goto/16 :goto_4

    .line 1815
    :catch_4
    move-exception v10

    goto/16 :goto_2
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 3197
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3198
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3199
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3200
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3201
    const-string v1, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3202
    const-string v1, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3204
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3206
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3207
    return-void
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .locals 7
    .parameter "lock"

    .prologue
    .line 3676
    iget-object v4, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;
    invoke-static {v4, p1}, Lcom/android/server/WifiService$LockList;->access$4300(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;

    move-result-object v3

    .line 3678
    .local v3, wifiLock:Lcom/android/server/WifiService$WifiLock;
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseWifiLockLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3680
    if-eqz v3, :cond_1

    const/4 v4, 0x1

    move v0, v4

    .line 3682
    .local v0, hadLock:Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3684
    .local v1, ident:J
    if-eqz v0, :cond_0

    .line 3685
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 3686
    iget v4, v3, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 3700
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3704
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3707
    :goto_2
    return v0

    .line 3680
    .end local v0           #hadLock:Z
    .end local v1           #ident:J
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 3688
    .restart local v0       #hadLock:Z
    .restart local v1       #ident:J
    :pswitch_0
    :try_start_1
    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3702
    :catch_0
    move-exception v4

    .line 3704
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 3691
    :pswitch_1
    :try_start_2
    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 3704
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3694
    :pswitch_2
    :try_start_3
    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 3686
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    const/4 v2, 0x1

    .line 1981
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const-string v0, ""

    .line 1982
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removeMulticasterLocked(II)V
    .locals 5
    .parameter "i"
    .parameter "uid"

    .prologue
    .line 3813
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .line 3815
    .local v1, removed:Lcom/android/server/WifiService$Multicaster;
    if-eqz v1, :cond_0

    .line 3816
    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->unlinkDeathRecipient()V

    .line 3818
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 3819
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateTracker;->startPacketFiltering()Z

    .line 3822
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3824
    .local v0, ident:Ljava/lang/Long;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3827
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3829
    :goto_0
    return-void

    .line 3825
    :catch_0
    move-exception v2

    .line 3827
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private reportStartWorkSource()V
    .locals 4

    .prologue
    .line 3118
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v2

    .line 3119
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    .line 3120
    iget-boolean v1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v1, :cond_0

    .line 3121
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$2100(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3122
    iget-object v3, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$2100(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$WifiLock;

    iget-object v1, v1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 3121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3125
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget-object v3, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiStateTracker;->updateBatteryWorkSourceLocked(Landroid/os/WorkSource;)V

    .line 3126
    sget-object v1, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3127
    monitor-exit v2

    .line 3128
    return-void

    .line 3127
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendAccessPointMessage(ZLandroid/net/wifi/WifiConfiguration;I)V
    .locals 3
    .parameter "enable"
    .parameter "wifiConfig"
    .parameter "uid"

    .prologue
    .line 3089
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-eqz p1, :cond_0

    const/4 v1, 0x6

    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, p3, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3092
    return-void

    .line 3089
    :cond_0
    const/4 v1, 0x7

    goto :goto_0
.end method

.method private sendEnableMessage(ZZI)V
    .locals 5
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3078
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    if-eqz p2, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v1, v2, v3, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 3081
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3082
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    move v2, v4

    .line 3078
    goto :goto_0
.end method

.method private sendEnableNetworksMessage()V
    .locals 2

    .prologue
    .line 3095
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3096
    return-void
.end method

.method private sendEnableRssiPollingMessage(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 3103
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v1, 0xc

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3104
    return-void

    :cond_0
    move v2, v3

    .line 3103
    goto :goto_0
.end method

.method private sendGroupFormationMessage(ZLjava/lang/String;)V
    .locals 2
    .parameter "enable"
    .parameter "mSSID"

    .prologue
    .line 3113
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-eqz p1, :cond_0

    const/16 v1, 0x19

    :goto_0
    invoke-static {v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3115
    return-void

    .line 3113
    :cond_0
    const/16 v1, 0x1a

    goto :goto_0
.end method

.method private sendReportWorkSourceMessage()V
    .locals 2

    .prologue
    .line 3099
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3100
    return-void
.end method

.method private sendStartMessage(I)V
    .locals 3
    .parameter "lockMode"

    .prologue
    .line 3085
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3086
    return-void
.end method

.method private sendWiFiDirectMessage(ZLandroid/net/wifi/WifiConfiguration;I)V
    .locals 3
    .parameter "enable"
    .parameter "wifiConfig"
    .parameter "intent"

    .prologue
    .line 3107
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-eqz p1, :cond_0

    const/16 v1, 0x15

    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, p3, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3110
    return-void

    .line 3107
    :cond_0
    const/16 v1, 0x16

    goto :goto_0
.end method

.method private setNumAllowedChannelsBlocking(IZ)Z
    .locals 2
    .parameter "numChannels"
    .parameter "persist"

    .prologue
    .line 2822
    if-eqz p2, :cond_0

    .line 2823
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_num_allowed_channels"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2827
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels(I)Z

    move-result v0

    return v0
.end method

.method private setWifiApEnabledBlocking(ZILandroid/net/wifi/WifiConfiguration;)Z
    .locals 10
    .parameter "enable"
    .parameter "uid"
    .parameter "wifiConfig"

    .prologue
    const/4 v4, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v6, 0x0

    const-string v7, "WifiService"

    .line 1586
    if-eqz p1, :cond_0

    move v2, v4

    .line 1588
    .local v2, eventualWifiApState:I
    :goto_0
    iget v3, p0, Lcom/android/server/WifiService;->mWifiApState:I

    if-ne v3, v2, :cond_2

    .line 1590
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 1592
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wl0.1"

    invoke-interface {v3, p3, v4, v5}, Landroid/os/INetworkManagementService;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    invoke-virtual {p0, p3}, Lcom/android/server/WifiService;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v9

    .line 1675
    :goto_1
    return v3

    .end local v2           #eventualWifiApState:I
    :cond_0
    move v2, v9

    .line 1586
    goto :goto_0

    .line 1596
    .restart local v2       #eventualWifiApState:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1597
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "WifiService"

    const-string v3, "Exception in nwService during AP restart"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :try_start_1
    iget-object v3, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->stopAccessPoint()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1603
    :goto_2
    sget-object v3, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v8, p2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v3, v6

    .line 1604
    goto :goto_1

    .line 1600
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 1601
    .local v1, ee:Ljava/lang/Exception;
    const-string v3, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not stop AP, :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ee:Ljava/lang/Exception;
    :cond_1
    move v3, v9

    .line 1607
    goto :goto_1

    .line 1614
    :cond_2
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v3

    if-ne v3, v4, :cond_3

    if-eqz p1, :cond_3

    .line 1615
    const-string v3, "WifiService"

    const-string v3, "WiFi is Enabled, Mobile AP could not turn on."

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    sget-object v3, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v8, p2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v3, v6

    .line 1617
    goto :goto_1

    .line 1620
    :cond_3
    if-eqz p1, :cond_5

    const/4 v3, 0x2

    :goto_3
    sget-object v4, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v3, p2, v4}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    .line 1623
    if-eqz p1, :cond_8

    .line 1626
    if-nez p3, :cond_4

    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p3

    if-nez p3, :cond_4

    .line 1627
    new-instance p3, Landroid/net/wifi/WifiConfiguration;

    .end local p3
    invoke-direct {p3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1628
    .restart local p3
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const v4, 0x10403c2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1629
    iget-object v3, p3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    .line 1632
    :cond_4
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->loadDriver()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1633
    const-string v3, "WifiService"

    const-string v3, "Failed to load Wi-Fi driver for AP mode"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    sget-object v3, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v8, p2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v3, v6

    .line 1635
    goto/16 :goto_1

    :cond_5
    move v3, v6

    .line 1620
    goto :goto_3

    .line 1639
    :cond_6
    :try_start_2
    iget-object v3, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wl0.1"

    invoke-interface {v3, p3, v4, v5}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    invoke-direct {p0}, Lcom/android/server/WifiService;->registerForBroadcasts()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1651
    invoke-virtual {p0, p3}, Lcom/android/server/WifiService;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 1674
    :cond_7
    sget-object v3, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v2, p2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v3, v9

    .line 1675
    goto/16 :goto_1

    .line 1645
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 1646
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "WifiService"

    const-string v3, "Exception in startAccessPoint()"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    sget-object v3, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v8, p2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v3, v6

    .line 1648
    goto/16 :goto_1

    .line 1656
    .end local v0           #e:Ljava/lang/Exception;
    :cond_8
    :try_start_3
    iget-object v3, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->stopAccessPoint()V

    .line 1659
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1667
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->unloadDriver()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1668
    const-string v3, "WifiService"

    const-string v3, "Failed to unload Wi-Fi driver for AP mode"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    sget-object v3, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v8, p2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v3, v6

    .line 1670
    goto/16 :goto_1

    .line 1661
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 1662
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "WifiService"

    const-string v3, "Exception in stopAccessPoint()"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    sget-object v3, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v8, p2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v3, v6

    .line 1664
    goto/16 :goto_1
.end method

.method private setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V
    .locals 7
    .parameter "wifiAPState"
    .parameter "uid"
    .parameter "flag"

    .prologue
    .line 1692
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWifiApEnabledState  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    iget v3, p0, Lcom/android/server/WifiService;->mWifiApState:I

    .line 1698
    .local v3, previousWifiApState:I
    iget v4, p0, Lcom/android/server/WifiService;->mWifiApState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    if-ne p3, v4, :cond_0

    .line 1699
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->unloadDriver()Z

    .line 1702
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1704
    .local v0, ident:J
    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    .line 1705
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1711
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1715
    :goto_1
    iput p1, p0, Lcom/android/server/WifiService;->mWifiApState:I

    .line 1718
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1719
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1720
    const-string v4, "wifi_state"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1721
    const-string v4, "previous_wifi_state"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1722
    const-string v4, "wifi_enable_soon"

    iget-boolean v5, p0, Lcom/android/server/WifiService;->mWifiEnabledSoon:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1723
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WifiService;->mWifiEnabledSoon:Z

    .line 1724
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1725
    return-void

    .line 1706
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 1707
    :try_start_1
    iget-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1709
    :catch_0
    move-exception v4

    .line 1711
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private setWifiDirectEnabledBlocking(ZILandroid/net/wifi/WifiConfiguration;)Z
    .locals 6
    .parameter "enable"
    .parameter "intent"
    .parameter "config"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v4, "WifiService"

    .line 967
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 968
    const-string v1, "WifiService"

    const-string v1, "setWifiDirectEnabledBlocking is called. But, wifi interface is down. Skip."

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 994
    :goto_0
    return v1

    .line 971
    :cond_0
    if-eqz p1, :cond_1

    .line 973
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p3, p2}, Landroid/os/INetworkManagementService;->startWifiDirect(Landroid/net/wifi/WifiConfiguration;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v1, v5

    .line 994
    goto :goto_0

    .line 975
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 976
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiService"

    const-string v1, "Exception in startWifiDirect()"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 977
    goto :goto_0

    .line 982
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/WifiService;->isGOCreated()Z

    move-result v1

    if-ne v1, v5, :cond_2

    .line 983
    invoke-direct {p0}, Lcom/android/server/WifiService;->DisableDnsmasq()V

    .line 985
    :cond_2
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->stopWifiDirect()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 988
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 989
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "WifiService"

    const-string v1, "Exception in stopWifiDirect()"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 990
    goto :goto_0
.end method

.method private setWifiEnabledBlocking(ZZI)Z
    .locals 11
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"

    .prologue
    .line 831
    if-eqz p1, :cond_0

    const/4 v6, 0x3

    move v2, v6

    .line 832
    .local v2, eventualWifiState:I
    :goto_0
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v5

    .line 834
    .local v5, wifiState:I
    if-ne v5, v2, :cond_1

    .line 835
    const/4 v6, 0x1

    .line 954
    :goto_1
    return v6

    .line 831
    .end local v2           #eventualWifiState:I
    .end local v5           #wifiState:I
    :cond_0
    const/4 v6, 0x1

    move v2, v6

    goto :goto_0

    .line 837
    .restart local v2       #eventualWifiState:I
    .restart local v5       #wifiState:I
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/server/WifiService;->mAirplaneModeOverwridden:Z

    if-nez v6, :cond_2

    .line 838
    const/4 v6, 0x0

    goto :goto_1

    .line 848
    :cond_2
    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    if-nez p1, :cond_3

    .line 849
    const/4 v6, 0x0

    goto :goto_1

    .line 857
    :cond_3
    iget v6, p0, Lcom/android/server/WifiService;->mWifiApState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    if-eqz p1, :cond_4

    .line 858
    const/4 v6, 0x4

    invoke-direct {p0, v6, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 859
    const/4 v6, 0x0

    goto :goto_1

    .line 862
    :cond_4
    if-eqz p1, :cond_5

    const/4 v6, 0x2

    :goto_2
    invoke-direct {p0, v6, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 864
    if-eqz p1, :cond_a

    .line 865
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->loadDriver()Z

    move-result v6

    if-nez v6, :cond_6

    .line 866
    const-string v6, "WifiService"

    const-string v7, "Failed to load Wi-Fi driver."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v6, 0x4

    invoke-direct {p0, v6, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 868
    const/4 v6, 0x0

    goto :goto_1

    .line 862
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 877
    :cond_6
    invoke-direct {p0}, Lcom/android/server/WifiService;->getWifiDirectConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 878
    .local v0, directConfig:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "direct_intent"

    const/16 v8, 0xa

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 880
    .local v4, intent:I
    const/4 v6, 0x1

    invoke-virtual {p0, v6, v0, v4}, Lcom/android/server/WifiService;->setWifiDirectEnabled(ZLandroid/net/wifi/WifiConfiguration;I)Z

    .line 882
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->startSupplicant()Z

    move-result v6

    if-nez v6, :cond_7

    .line 883
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->unloadDriver()Z

    .line 884
    const-string v6, "WifiService"

    const-string v7, "Failed to start supplicant daemon."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const/4 v6, 0x4

    invoke-direct {p0, v6, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 886
    const/4 v6, 0x0

    goto :goto_1

    .line 890
    :cond_7
    invoke-direct {p0}, Lcom/android/server/WifiService;->registerForBroadcasts()V

    .line 892
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->startEventLoop()V

    .line 950
    .end local v0           #directConfig:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #intent:I
    :cond_8
    if-eqz p2, :cond_9

    .line 951
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiEnabled(Z)V

    .line 953
    :cond_9
    invoke-direct {p0, v2, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 954
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 897
    :cond_a
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 900
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    .line 908
    :try_start_0
    const-string v6, "WifiService"

    const-string v7, "Start  ----- stopWifiDirect"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-virtual {p0}, Lcom/android/server/WifiService;->isGOCreated()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 910
    invoke-direct {p0}, Lcom/android/server/WifiService;->DisableDnsmasq()V

    .line 913
    :cond_b
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/WifiService;->setWifiDirectSetting(Z)Z

    .line 914
    iget-object v6, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v6}, Landroid/os/INetworkManagementService;->stopWifiDirect()Z

    .line 916
    const-string v6, "WifiService"

    const-string v7, "End    ----- stopWifiDirect"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    const/4 v3, 0x0

    .line 924
    .local v3, failedToStopSupplicantOrUnloadDriver:Z
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->stopSupplicant()Z

    move-result v6

    if-nez v6, :cond_c

    .line 925
    const-string v6, "WifiService"

    const-string v7, "Failed to stop supplicant daemon."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/4 v6, 0x4

    invoke-direct {p0, v6, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 927
    const/4 v3, 0x1

    .line 934
    :cond_c
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    .line 936
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->unloadDriver()Z

    move-result v6

    if-nez v6, :cond_d

    .line 937
    const-string v6, "WifiService"

    const-string v7, "Failed to unload Wi-Fi driver."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    if-nez v3, :cond_d

    .line 939
    const/4 v6, 0x4

    invoke-direct {p0, v6, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 940
    const/4 v3, 0x1

    .line 944
    :cond_d
    if-eqz v3, :cond_8

    .line 945
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 917
    .end local v3           #failedToStopSupplicantOrUnloadDriver:Z
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 918
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "WifiService"

    const-string v7, "Exception in stopWifiDirect()"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method private setWifiEnabledState(II)V
    .locals 5
    .parameter "wifiState"
    .parameter "uid"

    .prologue
    .line 999
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v3

    .line 1001
    .local v3, previousWifiState:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1003
    .local v0, ident:J
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    .line 1004
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1014
    :goto_1
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiStateTracker;->setWifiState(I)V

    .line 1017
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1018
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1019
    const-string v4, "wifi_state"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1020
    const-string v4, "previous_wifi_state"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1021
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1022
    return-void

    .line 1005
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 1006
    :try_start_1
    iget-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1008
    :catch_0
    move-exception v4

    .line 1010
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private static stateName(I)Ljava/lang/String;
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 3452
    packed-switch p0, :pswitch_data_0

    .line 3464
    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    .line 3454
    :pswitch_0
    const-string v0, "disabling"

    goto :goto_0

    .line 3456
    :pswitch_1
    const-string v0, "disabled"

    goto :goto_0

    .line 3458
    :pswitch_2
    const-string v0, "enabling"

    goto :goto_0

    .line 3460
    :pswitch_3
    const-string v0, "enabled"

    goto :goto_0

    .line 3462
    :pswitch_4
    const-string v0, "unknown state"

    goto :goto_0

    .line 3452
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private testAndClearWifiSavedState()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v2, "wifi_saved_state"

    .line 611
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 612
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 614
    .local v1, wifiSavedState:I
    :try_start_0
    const-string v2, "wifi_saved_state"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 615
    if-ne v1, v4, :cond_0

    .line 616
    const-string v2, "wifi_saved_state"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :cond_0
    :goto_0
    if-ne v1, v4, :cond_1

    move v2, v4

    :goto_1
    return v2

    :cond_1
    move v2, v5

    goto :goto_1

    .line 617
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateTetherState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p1, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, tethered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 455
    .local v16, wifiTethered:Z
    const/4 v15, 0x0

    .line 457
    .local v15, wifiAvailable:Z
    const-string v17, "network_management"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 458
    .local v5, b:Landroid/os/IBinder;
    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v14

    .line 460
    .local v14, service:Landroid/os/INetworkManagementService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "connectivity"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .end local p2           #tethered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast p2, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WifiService;->mWifiRegexs:[Ljava/lang/String;

    .line 463
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 464
    .local v11, intf:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiRegexs:[Ljava/lang/String;

    move-object v4, v0

    .local v4, arr$:[Ljava/lang/String;
    array-length v12, v4

    .local v12, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v12, :cond_0

    aget-object v13, v4, v9

    .line 465
    .local v13, regex:Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 467
    const/4 v10, 0x0

    .line 469
    .local v10, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_0
    invoke-interface {v14, v11}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v10

    .line 470
    if-eqz v10, :cond_1

    .line 472
    const v17, -0x3f57d4ff

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Landroid/net/InterfaceConfiguration;->ipAddr:I

    .line 473
    const/16 v17, -0x100

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Landroid/net/InterfaceConfiguration;->netmask:I

    .line 474
    const-string v17, "up"

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 476
    invoke-interface {v14, v11, v10}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_0

    .line 490
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error tethering "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 478
    :catch_0
    move-exception v17

    move-object/from16 v6, v17

    .line 479
    .local v6, e:Ljava/lang/Exception;
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error configuring interface "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/os/INetworkManagementService;->stopAccessPoint()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 485
    :goto_2
    const/16 v17, 0x4

    const/16 v18, 0x0

    sget-object v19, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    .line 496
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v9           #i$:I
    .end local v10           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v11           #intf:Ljava/lang/String;
    .end local v12           #len$:I
    .end local v13           #regex:Ljava/lang/String;
    :cond_2
    return-void

    .line 482
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v6       #e:Ljava/lang/Exception;
    .restart local v9       #i$:I
    .restart local v10       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v11       #intf:Ljava/lang/String;
    .restart local v12       #len$:I
    .restart local v13       #regex:Ljava/lang/String;
    :catch_1
    move-exception v17

    move-object/from16 v7, v17

    .line 483
    .local v7, ee:Ljava/lang/Exception;
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Could not stop AP, :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 464
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #ee:Ljava/lang/Exception;
    .end local v10           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1
.end method

.method private updateWifiState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3132
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/4 v1, 0x5

    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3133
    return-void
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .parameter "binder"
    .parameter "tag"

    .prologue
    .line 3773
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 3775
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v2

    .line 3776
    :try_start_0
    iget v3, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    .line 3777
    iget-object v3, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    new-instance v4, Lcom/android/server/WifiService$Multicaster;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/server/WifiService$Multicaster;-><init>(Lcom/android/server/WifiService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3782
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->stopPacketFiltering()Z

    .line 3783
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3785
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3786
    .local v1, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3788
    .local v0, ident:Ljava/lang/Long;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3791
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3793
    :goto_0
    return-void

    .line 3783
    .end local v0           #ident:Ljava/lang/Long;
    .end local v1           #uid:I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 3789
    .restart local v0       #ident:Ljava/lang/Long;
    .restart local v1       #uid:I
    :catch_0
    move-exception v2

    .line 3791
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 6
    .parameter "binder"
    .parameter "lockMode"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 3553
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3554
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 3557
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument, lockMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    const/4 v1, 0x0

    .line 3572
    :goto_0
    return v1

    .line 3561
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 3562
    const/4 p4, 0x0

    .line 3564
    :cond_1
    if-eqz p4, :cond_2

    .line 3565
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    .line 3567
    :cond_2
    if-nez p4, :cond_3

    .line 3568
    new-instance p4, Landroid/os/WorkSource;

    .end local p4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    .line 3570
    .restart local p4
    :cond_3
    new-instance v0, Lcom/android/server/WifiService$WifiLock;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WifiService$WifiLock;-><init>(Lcom/android/server/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 3571
    .local v0, wifiLock:Lcom/android/server/WifiService$WifiLock;
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v1

    .line 3572
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 3573
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 23
    .parameter "config"

    .prologue
    .line 1995
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2004
    if-nez p1, :cond_0

    .line 2005
    const/16 v20, -0x1

    .line 2298
    :goto_0
    return v20

    .line 2008
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v16, v0

    .line 2009
    .local v16, netId:I
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/16 v20, 0x1

    move/from16 v17, v20

    .line 2010
    .local v17, newNetwork:Z
    :goto_1
    const/4 v10, 0x0

    .line 2012
    .local v10, doReconfig:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2013
    if-eqz v17, :cond_3

    .line 2014
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiStateTracker;->addNetwork()I

    move-result v16

    .line 2015
    if-gez v16, :cond_2

    .line 2019
    const/16 v21, -0x1

    monitor-exit v20

    move/from16 v20, v21

    goto :goto_0

    .line 2009
    .end local v10           #doReconfig:Z
    .end local v17           #newNetwork:Z
    :cond_1
    const/16 v20, 0x0

    move/from16 v17, v20

    goto :goto_1

    .line 2021
    .restart local v10       #doReconfig:Z
    .restart local v17       #newNetwork:Z
    :cond_2
    const/4 v10, 0x1

    .line 2023
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WifiService;->mNeedReconfig:Z

    move/from16 v21, v0

    if-nez v21, :cond_4

    if-eqz v10, :cond_7

    :cond_4
    const/16 v21, 0x1

    :goto_2
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WifiService;->mNeedReconfig:Z

    .line 2024
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2033
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "ssid"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 2290
    :cond_5
    :goto_3
    if-eqz v17, :cond_6

    .line 2291
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/WifiService;->removeNetwork(I)Z

    .line 2298
    :cond_6
    const/16 v20, -0x1

    goto :goto_0

    .line 2023
    :cond_7
    const/16 v21, 0x0

    goto :goto_2

    .line 2024
    :catchall_0
    move-exception v21

    :try_start_1
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v21

    .line 2044
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "bssid"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2055
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2057
    .local v6, allowedKeyManagementString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->cardinality()I

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "key_mgmt"

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2069
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2071
    .local v8, allowedProtocolsString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->cardinality()I

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "proto"

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2083
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 2084
    const-string v20, "WifiService"

    const-string v21, "***WAPI:addOrUpdateNetwork WAPI PSK"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    const-string v20, "psk_key_type"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPSKKeyType:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2098
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    const-string v20, "psk"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v21, v0

    move/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2162
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2164
    .local v7, allowedPairwiseCiphersString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->cardinality()I

    move-result v20

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "pairwise"

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2176
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2178
    .local v5, allowedGroupCiphersString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->cardinality()I

    move-result v20

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "group"

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2192
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "psk"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2203
    :cond_f
    const/4 v12, 0x0

    .line 2204
    .local v12, hasSetKey:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14

    .line 2205
    const/4 v13, 0x0

    .local v13, i:I
    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move v0, v13

    move/from16 v1, v20

    if-ge v0, v1, :cond_14

    .line 2208
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    if-eqz v20, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    const-string v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 2209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v21, v21, v13

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v13

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2220
    const/4 v12, 0x1

    .line 2205
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 2108
    .end local v5           #allowedGroupCiphersString:Ljava/lang/String;
    .end local v7           #allowedPairwiseCiphersString:Ljava/lang/String;
    .end local v12           #hasSetKey:Z
    .end local v13           #i:I
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 2109
    const-string v20, "WifiService"

    const-string v21, "***WAPI:addOrUpdateNetwork WAPI CERT"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    const-string v20, "cert_index"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2123
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    const-string v20, "wapi_as_cert"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    move-object/from16 v21, v0

    move/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2134
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    const-string v20, "wapi_user_cert"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v21, v0

    move/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_c

    goto/16 :goto_3

    .line 2145
    :cond_13
    const-string v20, "WifiService"

    const-string v21, "***WAPI:addOrUpdateNetwork rest"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2149
    .local v4, allowedAuthAlgorithmsString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->cardinality()I

    move-result v20

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "auth_alg"

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_c

    goto/16 :goto_3

    .line 2225
    .end local v4           #allowedAuthAlgorithmsString:Ljava/lang/String;
    .restart local v5       #allowedGroupCiphersString:Ljava/lang/String;
    .restart local v7       #allowedPairwiseCiphersString:Ljava/lang/String;
    .restart local v12       #hasSetKey:Z
    :cond_14
    if-eqz v12, :cond_15

    .line 2226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "wep_tx_keyidx"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2239
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "priority"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2250
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "scan_ssid"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v22, v0

    if-eqz v22, :cond_19

    const/16 v22, 0x1

    :goto_5
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2262
    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object v9, v0

    .local v9, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v15, v9

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_6
    if-ge v14, v15, :cond_1b

    aget-object v11, v9, v14

    .line 2263
    .local v11, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v19

    .line 2264
    .local v19, varName:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v18

    .line 2265
    .local v18, value:Ljava/lang/String;
    if-eqz v18, :cond_18

    .line 2266
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v20, v0

    move-object v0, v11

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_17

    .line 2267
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_1a

    const-string v20, "NULL"

    move-object/from16 v18, v20

    .line 2269
    :cond_17
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2262
    :cond_18
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 2250
    .end local v9           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v11           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v18           #value:Ljava/lang/String;
    .end local v19           #varName:Ljava/lang/String;
    :cond_19
    const/16 v22, 0x0

    goto :goto_5

    .line 2267
    .restart local v9       #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .restart local v11       #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    .restart local v18       #value:Ljava/lang/String;
    .restart local v19       #varName:Ljava/lang/String;
    :cond_1a
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v18, v20

    goto :goto_7

    .end local v11           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v18           #value:Ljava/lang/String;
    .end local v19           #varName:Ljava/lang/String;
    :cond_1b
    move/from16 v20, v16

    .line 2281
    goto/16 :goto_0
.end method

.method public configureDirectPeerInterface()V
    .locals 10

    .prologue
    const-string v9, "WifiService"

    .line 499
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 501
    const/4 v6, 0x0

    .line 502
    .local v6, wifiTethered:Z
    const/4 v5, 0x0

    .line 504
    .local v5, wifiAvailable:Z
    const-string v7, "network_management"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 505
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 508
    .local v4, service:Landroid/os/INetworkManagementService;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v7}, Landroid/os/INetworkManagementService;->isGOCreated()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 509
    const-string v7, "WifiService"

    const-string v8, "[configureDirectPeerInterface][Direct Client is Created.] "

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_0
    return-void

    .line 513
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 514
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "WifiService"

    const-string v7, "[configureDirectPeerInterface] Error configuring interface "

    invoke-static {v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iput-object v7, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    .line 518
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const v8, 0x104048a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, intf:Ljava/lang/String;
    const-string v7, "WifiService"

    const-string v7, "[1][ConfigureDirectPeerInterface] "

    invoke-static {v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v2, 0x0

    .line 523
    .local v2, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v7, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v2

    .line 524
    if-eqz v2, :cond_1

    .line 525
    const-string v7, "up"

    iput-object v7, v2, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 526
    const-string v7, "WifiService"

    const-string v8, "[2][ConfigureDirectPeerInterface ------ ] "

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v7, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v7, v3, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 533
    :cond_1
    :goto_1
    const-string v7, "WifiService"

    const-string v7, "[3][ConfigureDirectPeerInterface ------ ] "

    invoke-static {v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 530
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 531
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v7, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[2-1]Error configuring interface "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public connectPeerWithProvision(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "macAddr"
    .parameter "pin"

    .prologue
    const-string v1, "WifiService"

    .line 1312
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    monitor-enter v1

    .line 1314
    :try_start_0
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start    ----- connectPeerWithProvision : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget-object v2, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->connectPeerWithProvision(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    const-string v2, "WifiService"

    const-string v3, "end    ----- connectPeerWithProvision"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    :try_start_1
    monitor-exit v1

    .line 1322
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1317
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1318
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in connectPeerWithProvision() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    const/4 v2, 0x0

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 1321
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public connectToP2PNetwork(Ljava/lang/String;)Z
    .locals 5
    .parameter "DevAddr"

    .prologue
    const-string v1, "WifiService"

    .line 1298
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    monitor-enter v1

    .line 1300
    :try_start_0
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start, connectToP2PNetwork : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iget-object v2, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->connectPeer(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1306
    :try_start_1
    monitor-exit v1

    .line 1307
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1302
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1303
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in connectToP2PNetwork() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    const/4 v2, 0x0

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 1306
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public disableNetwork(I)Z
    .locals 1
    .parameter "netId"

    .prologue
    .line 2378
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2380
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->disableNetwork(I)Z

    move-result v0

    return v0
.end method

.method public disconnect()Z
    .locals 1

    .prologue
    .line 1475
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1477
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->disconnect()Z

    move-result v0

    return v0
.end method

.method public disconnectWifiDirectPeer(Ljava/lang/String;)Z
    .locals 3
    .parameter "macAddr"

    .prologue
    .line 1259
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectWifiDirectPeer...... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1262
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1266
    :goto_0
    return v0

    .line 1264
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v1, 0x1b

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1266
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v7, 0x0

    const-string v10, " scan"

    const-string v9, " full, "

    const-string v8, " full high perf, "

    .line 3410
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 3412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3449
    :goto_0
    return-void

    .line 3417
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wi-Fi is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/WifiService;->stateName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stay-awake conditions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "stay_on_while_plugged_in"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3421
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3423
    const-string v3, "Internal state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3424
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3425
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3426
    const-string v3, "Latest scan results:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3427
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->getScanResultsList()Ljava/util/List;

    move-result-object v2

    .line 3428
    .local v2, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 3429
    const-string v3, "  BSSID              Frequency   RSSI  Flags             SSID"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3430
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 3431
    .local v1, r:Landroid/net/wifi/ScanResult;
    const-string v3, "  %17s  %9d  %5d  %-16s  %s%n"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget v6, v1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v6, :cond_1

    const-string v6, ""

    :goto_2
    aput-object v6, v4, v5

    invoke-virtual {p2, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_1

    :cond_1
    iget-object v6, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_2

    .line 3439
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Landroid/net/wifi/ScanResult;
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locks acquired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full, "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full high perf, "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locks released: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full, "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full high perf, "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3446
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3447
    const-string v3, "Locks held:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3448
    iget-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v3, p2}, Lcom/android/server/WifiService$LockList;->access$3400(Lcom/android/server/WifiService$LockList;Ljava/io/PrintWriter;)V

    goto/16 :goto_0
.end method

.method public enableNetwork(IZ)Z
    .locals 3
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 2360
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2362
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2363
    .local v0, ifname:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/NetworkUtils;->enableInterface(Ljava/lang/String;)I

    .line 2364
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiStateTracker;->enableNetwork(IZ)Z

    move-result v1

    .line 2365
    .local v1, result:Z
    if-nez v1, :cond_0

    .line 2366
    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    .line 2368
    :cond_0
    return v1
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 3545
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3550
    :goto_0
    return-void

    .line 3548
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x3

    .line 1732
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1741
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateTracker;->listNetworks()Ljava/lang/String;

    move-result-object v4

    .line 1743
    .local v4, listStr:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1745
    .local v5, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v4, :cond_1

    .line 1773
    :cond_0
    return-object v5

    .line 1748
    :cond_1
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1750
    .local v3, lines:[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    array-length v7, v3

    if-ge v2, v7, :cond_0

    .line 1751
    aget-object v7, v3, v2

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1753
    .local v6, result:[Ljava/lang/String;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1755
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1759
    array-length v7, v6

    if-le v7, v9, :cond_4

    .line 1760
    aget-object v7, v6, v9

    const-string v8, "[CURRENT]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_2

    .line 1761
    iput v11, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1769
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 1770
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1750
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1756
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1757
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_2

    .line 1762
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    aget-object v7, v6, v9

    const-string v8, "[DISABLED]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_3

    .line 1763
    const/4 v7, 0x1

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1

    .line 1765
    :cond_3
    iput v12, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1

    .line 1767
    :cond_4
    iput v12, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 2388
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2393
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->requestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfoLists()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "WifiService"

    .line 1225
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1227
    :try_start_0
    const-string v1, "WifiService"

    const-string v2, "Start  ----- getDeviceInfoLists"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getDeviceInfoLists()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1231
    :goto_0
    return-object v1

    .line 1229
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1230
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiService"

    const-string v1, "Exception in getDeviceInfoLists()"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 1

    .prologue
    .line 2870
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2871
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDirectWpsPin()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "WifiService"

    .line 1236
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1238
    :try_start_0
    const-string v1, "WifiService"

    const-string v2, "Start  ----- getDirectWpsPin"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getDirectWpsPin()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1242
    :goto_0
    return-object v1

    .line 1240
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1241
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiService"

    const-string v1, "Exception in getDirectWpsPin()"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getNetworkStateTracker()Landroid/net/NetworkStateTracker;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    return-object v0
.end method

.method public getNumAllowedChannels()I
    .locals 4

    .prologue
    .line 2838
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2845
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateTracker;->getNumAllowedChannels()I

    move-result v0

    .line 2846
    .local v0, numChannels:I
    if-gez v0, :cond_0

    .line 2847
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_num_allowed_channels"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2851
    :cond_0
    return v0
.end method

.method public getNumberOfWAPIASCertificate()I
    .locals 1

    .prologue
    .line 3840
    invoke-static {}, Landroid/net/wifi/WifiNative;->getWAPIASCertCount()I

    move-result v0

    return v0
.end method

.method public getNumberOfWAPIUserCertificate()I
    .locals 1

    .prologue
    .line 3848
    invoke-static {}, Landroid/net/wifi/WifiNative;->getWAPIUserCertCount()I

    move-result v0

    return v0
.end method

.method public getP2PScanResults()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 2578
    iget-object v9, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    monitor-enter v9

    .line 2581
    :try_start_0
    iget-object v10, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v10}, Landroid/os/INetworkManagementService;->getDeviceInfoLists()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 2588
    .local v5, reply:Ljava/lang/String;
    :try_start_1
    monitor-exit v9

    .line 2589
    if-nez v5, :cond_0

    move-object v9, v12

    .line 2615
    .end local v5           #reply:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 2584
    :catch_0
    move-exception v10

    move-object v0, v10

    .line 2585
    .local v0, e:Ljava/lang/Exception;
    const-string v10, "WifiService"

    const-string v11, "Exception in getP2PScanResults()"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    monitor-exit v9

    move-object v9, v12

    goto :goto_0

    .line 2588
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 2593
    .restart local v5       #reply:Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2596
    .local v7, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v3, 0x0

    .line 2597
    .local v3, lineCount:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 2599
    .local v6, replyLen:I
    const/4 v2, 0x0

    .local v2, lineBeg:I
    const/4 v4, 0x0

    .local v4, lineEnd:I
    :goto_1
    if-gt v4, v6, :cond_4

    .line 2600
    if-eq v4, v6, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_3

    .line 2601
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 2603
    if-le v4, v2, :cond_2

    .line 2604
    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2605
    .local v1, line:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/WifiService;->parseP2PScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v8

    .line 2606
    .local v8, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v8, :cond_2

    .line 2607
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2612
    .end local v1           #line:Ljava/lang/String;
    .end local v8           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_2
    add-int/lit8 v2, v4, 0x1

    .line 2599
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move-object v9, v7

    .line 2615
    goto :goto_0
.end method

.method public getPER()I
    .locals 1

    .prologue
    .line 1403
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1404
    invoke-static {}, Landroid/net/wifi/WifiNative;->getPerCommand()I

    move-result v0

    return v0
.end method

.method public getRoamDelta()I
    .locals 1

    .prologue
    .line 1439
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1440
    invoke-static {}, Landroid/net/wifi/WifiNative;->getRoamDeltaCommand()I

    move-result v0

    return v0
.end method

.method public getRoamScanPeriod()I
    .locals 1

    .prologue
    .line 1457
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1458
    invoke-static {}, Landroid/net/wifi/WifiNative;->getRoamScanPeriodCommand()I

    move-result v0

    return v0
.end method

.method public getRoamTrigger()I
    .locals 1

    .prologue
    .line 1421
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1422
    invoke-static {}, Landroid/net/wifi/WifiNative;->getRoamTriggerCommand()I

    move-result v0

    return v0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2443
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2446
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateTracker;->scanResults()Ljava/lang/String;

    move-result-object v4

    .line 2447
    .local v4, reply:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 2448
    const/4 v8, 0x0

    .line 2481
    :goto_0
    return-object v8

    .line 2451
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2453
    .local v6, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v2, 0x0

    .line 2455
    .local v2, lineCount:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 2458
    .local v5, replyLen:I
    const/4 v1, 0x0

    .local v1, lineBeg:I
    const/4 v3, 0x0

    .local v3, lineEnd:I
    :goto_1
    if-gt v3, v5, :cond_5

    .line 2459
    if-eq v3, v5, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2

    .line 2460
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 2464
    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    .line 2465
    add-int/lit8 v1, v3, 0x1

    .line 2458
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2468
    :cond_3
    if-le v3, v1, :cond_4

    .line 2469
    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2470
    .local v0, line:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v7

    .line 2471
    .local v7, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v7, :cond_4

    .line 2472
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2477
    .end local v0           #line:Ljava/lang/String;
    .end local v7           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_4
    add-int/lit8 v1, v3, 0x1

    goto :goto_2

    .line 2480
    :cond_5
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiStateTracker;->setScanResultsList(Ljava/util/List;)V

    move-object v8, v6

    .line 2481
    goto :goto_0
.end method

.method public getValidChannelCounts()[I
    .locals 1

    .prologue
    .line 2860
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2861
    sget-object v0, Lcom/android/server/WifiService;->sValidRegulatoryChannelCounts:[I

    return-object v0
.end method

.method public getWAPIASCertificateName(I)Ljava/lang/String;
    .locals 1
    .parameter "iIndex"

    .prologue
    .line 3844
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->getWAPIASCertName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWAPIUserCertificateName(I)Ljava/lang/String;
    .locals 1
    .parameter "iIndex"

    .prologue
    .line 3852
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->getWAPIUserCertName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1542
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1543
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1544
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1547
    .local v3, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :try_start_0
    const-string v4, "wifi_ap_ssid"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1548
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v4, :cond_0

    move-object v4, v6

    .line 1556
    :goto_0
    return-object v4

    .line 1550
    :cond_0
    const-string v4, "wifi_ap_security"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 1551
    .local v0, authType:I
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->set(I)V

    .line 1552
    const-string v4, "wifi_ap_passwd"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .line 1553
    goto :goto_0

    .line 1554
    .end local v0           #authType:I
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 1555
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "WifiService"

    const-string v5, "AP settings not found, returning"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 1556
    goto :goto_0
.end method

.method public getWifiApEnabledState()I
    .locals 1

    .prologue
    .line 1687
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1688
    iget v0, p0, Lcom/android/server/WifiService;->mWifiApState:I

    return v0
.end method

.method public getWifiDirectSetting()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, "direct_on"

    .line 1093
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1095
    const/4 v2, 0x0

    .line 1096
    .local v2, mDirect:I
    const/16 v3, 0x64

    .line 1099
    .local v3, mDirectDefault:I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1100
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "direct_on"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1102
    if-ne v2, v3, :cond_0

    .line 1104
    const/4 v2, 0x0

    .line 1105
    :try_start_1
    const-string v4, "direct_on"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1106
    const-string v4, "WifiService"

    const-string v5, "---- getWifiDirectSetting.....set.... ........."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1114
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    if-ne v2, v7, :cond_1

    move v4, v7

    :goto_1
    return v4

    .line 1107
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/NumberFormatException;
    move v4, v6

    .line 1108
    goto :goto_1

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_1
    move v4, v6

    .line 1114
    goto :goto_1

    .line 1111
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public getWifiEnabledState()I
    .locals 1

    .prologue
    .line 1393
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1394
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v0

    return v0
.end method

.method public initializeMulticastFiltering()V
    .locals 2

    .prologue
    .line 3760
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 3762
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v0

    .line 3764
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3765
    monitor-exit v0

    .line 3770
    :goto_0
    return-void

    .line 3767
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateTracker;->startPacketFiltering()Z

    .line 3769
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDirectConnected()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1152
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isGOCreated()Z

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isGcCreated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v2, :cond_1

    :cond_0
    move v1, v2

    .line 1159
    :goto_0
    return v1

    :cond_1
    move v1, v3

    .line 1155
    goto :goto_0

    .line 1157
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1158
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiService"

    const-string v2, "[Direct, isConnected]"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 1159
    goto :goto_0
.end method

.method public isDirectInitialized()Z
    .locals 3

    .prologue
    .line 1125
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isDirectInitialized()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1128
    :goto_0
    return v1

    .line 1126
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1127
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiService"

    const-string v2, "[isDirectInitialized Error]"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGOCreated()Z
    .locals 3

    .prologue
    .line 1134
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isGOCreated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1137
    :goto_0
    return v1

    .line 1135
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1136
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiService"

    const-string v2, "[isGOCreated Error]"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGcCreated()Z
    .locals 3

    .prologue
    .line 1143
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isGcCreated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1146
    :goto_0
    return v1

    .line 1144
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1145
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiService"

    const-string v2, "[isGcCreated Error]"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 3832
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3834
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v0

    .line 3835
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3836
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isShowingAccessPointListDialog()Z
    .locals 3

    .prologue
    .line 817
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShowingAccessPointListDialog():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEnabledAccessPointListDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnabledAccessPointListDialog:Z

    return v0
.end method

.method parseScanFlags(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .parameter "flags"

    .prologue
    .line 2730
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2732
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 2733
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 2736
    :cond_0
    return-object v0
.end method

.method public pingSupplicant()Z
    .locals 1

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 651
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->ping()Z

    move-result v0

    return v0
.end method

.method public reassociate()Z
    .locals 1

    .prologue
    .line 1495
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1497
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->reassociate()Z

    move-result v0

    return v0
.end method

.method public reconnect()Z
    .locals 1

    .prologue
    .line 1485
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1487
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z

    move-result v0

    return v0
.end method

.method public releaseMulticastLock()V
    .locals 6

    .prologue
    .line 3796
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 3798
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3799
    .local v3, uid:I
    iget-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v4

    .line 3800
    :try_start_0
    iget v5, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    .line 3801
    iget-object v5, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 3802
    .local v2, size:I
    const/4 v5, 0x1

    sub-int v0, v2, v5

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 3803
    iget-object v5, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .line 3804
    .local v1, m:Lcom/android/server/WifiService$Multicaster;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->getUid()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 3805
    invoke-direct {p0, v0, v3}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    .line 3802
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3808
    .end local v1           #m:Lcom/android/server/WifiService$Multicaster;
    :cond_1
    monitor-exit v4

    .line 3809
    return-void

    .line 3808
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "lock"

    .prologue
    .line 3667
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3668
    iget-object v0, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v0

    .line 3669
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3670
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeNetwork(I)Z
    .locals 1
    .parameter "netId"

    .prologue
    .line 2347
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2349
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->removeNetwork(I)Z

    move-result v0

    return v0
.end method

.method public saveConfiguration()Z
    .locals 5

    .prologue
    .line 2745
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2747
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v3

    .line 2748
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->saveConfig()Z

    move-result v2

    .line 2749
    .local v2, result:Z
    if-eqz v2, :cond_0

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mNeedReconfig:Z

    if-eqz v4, :cond_0

    .line 2750
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WifiService;->mNeedReconfig:Z

    .line 2751
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->reloadConfig()Z

    move-result v2

    .line 2753
    if-eqz v2, :cond_0

    .line 2754
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2755
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2758
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2760
    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 2762
    .local v0, ibm:Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_1

    .line 2764
    :try_start_1
    const-string v3, "com.android.providers.settings"

    invoke-interface {v0, v3}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2769
    :cond_1
    :goto_0
    return v2

    .line 2758
    .end local v0           #ibm:Landroid/app/backup/IBackupManager;
    .end local v2           #result:Z
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 2765
    .restart local v0       #ibm:Landroid/app/backup/IBackupManager;
    .restart local v2       #result:Z
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public sendProvisionRequest(ILjava/lang/String;)Z
    .locals 4
    .parameter "provision_method"
    .parameter "macAddr"

    .prologue
    const/4 v3, 0x0

    .line 1270
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendProvisionRequest to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1273
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v0, :cond_0

    move v0, v3

    .line 1277
    :goto_0
    return v0

    .line 1275
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v1, 0x17

    invoke-static {v0, v1, p1, v3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1277
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public sendProvisionResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "cfgMethod"
    .parameter "macAddr"
    .parameter "mPin"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1281
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendProvisionRequest to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1284
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 1285
    .local v0, provRespConfig:[Ljava/lang/String;
    aput-object p1, v0, v4

    .line 1286
    aput-object p2, v0, v5

    .line 1287
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 1289
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v1, :cond_0

    move v1, v4

    .line 1293
    :goto_0
    return v1

    .line 1291
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v2, 0x18

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    move v1, v5

    .line 1293
    goto :goto_0
.end method

.method public setDeviceDiscoveryEnabled(ZZ)Z
    .locals 7
    .parameter "enable"
    .parameter "bListenOnly"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "WifiService"

    .line 1197
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1198
    if-eqz p1, :cond_1

    .line 1201
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/WifiService;->setSupplicantAutoScan(Z)Z

    .line 1202
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v2, v3}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1203
    .local v1, isWifiConnected:Z
    if-ne v1, v5, :cond_0

    .line 1204
    invoke-virtual {p0}, Lcom/android/server/WifiService;->disconnect()Z

    .line 1207
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p2}, Landroid/os/INetworkManagementService;->startDirectDeviceDiscovery(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #isWifiConnected:Z
    :goto_0
    move v2, v5

    .line 1221
    :goto_1
    return v2

    .line 1208
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1209
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiService"

    const-string v2, "Exception in startDeviceDiscovery()"

    invoke-static {v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1210
    goto :goto_1

    .line 1214
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopDirectDeviceDiscovery()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1215
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1216
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "WifiService"

    const-string v2, "Exception in stopDeviceDiscovery()"

    invoke-static {v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1217
    goto :goto_1
.end method

.method public setDirectAPEnabled(ZLjava/lang/String;)Z
    .locals 2
    .parameter "enable"
    .parameter "mSSID"

    .prologue
    .line 1118
    const-string v0, "WifiService"

    const-string v1, "setDirectApEnabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->sendGroupFormationMessage(ZLjava/lang/String;)V

    .line 1120
    const/4 v0, 0x1

    return v0
.end method

.method public setNumAllowedChannels(IZ)Z
    .locals 10
    .parameter "numChannels"
    .parameter "persist"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2785
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiService trying to setNumAllowed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with persist set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2795
    const/4 v1, 0x0

    .line 2796
    .local v1, found:Z
    sget-object v0, Lcom/android/server/WifiService;->sValidRegulatoryChannelCounts:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, v0, v2

    .line 2797
    .local v4, validChan:I
    if-ne v4, p1, :cond_1

    .line 2798
    const/4 v1, 0x1

    .line 2802
    .end local v4           #validChan:I
    :cond_0
    if-nez v1, :cond_2

    move v5, v8

    .line 2811
    :goto_1
    return v5

    .line 2796
    .restart local v4       #validChan:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2806
    .end local v4           #validChan:I
    :cond_2
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v5, :cond_3

    move v5, v8

    goto :goto_1

    .line 2808
    :cond_3
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v6, 0x8

    if-eqz p2, :cond_4

    move v7, v9

    :goto_2
    invoke-static {v5, v6, p1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    move v5, v9

    .line 2811
    goto :goto_1

    :cond_4
    move v7, v8

    .line 2808
    goto :goto_2
.end method

.method public setRoamBand(I)Z
    .locals 1
    .parameter "roamBand"

    .prologue
    .line 1466
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1467
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setRoamBandCommand(I)Z

    move-result v0

    return v0
.end method

.method public setRoamDelta(I)Z
    .locals 1
    .parameter "roamDelta"

    .prologue
    .line 1430
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1431
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setRoamDeltaCommand(I)Z

    move-result v0

    return v0
.end method

.method public setRoamScanPeriod(I)Z
    .locals 1
    .parameter "roamScanPeriod"

    .prologue
    .line 1448
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1449
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setRoamScanPeriodCommand(I)Z

    move-result v0

    return v0
.end method

.method public setRoamTrigger(I)Z
    .locals 1
    .parameter "roamTrigger"

    .prologue
    .line 1412
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1413
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setRoamTriggerCommand(I)Z

    move-result v0

    return v0
.end method

.method public setShowAccessPointListDialog(Z)Z
    .locals 3
    .parameter "setEnable"

    .prologue
    .line 811
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEnabledAccessPointListDialog:Z

    .line 812
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowAccessPointListDialog():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEnabledAccessPointListDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 v0, 0x1

    return v0
.end method

.method public setSupplicantAutoConn(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1352
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1353
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->SetAutoConn(Z)Z

    move-result v0

    return v0
.end method

.method public setSupplicantAutoScan(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1357
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1358
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->SetAutoScan(Z)Z

    move-result v0

    return v0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .parameter "wifiConfig"

    .prologue
    const/4 v4, 0x1

    .line 1561
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1562
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1564
    .local v0, cr:Landroid/content/ContentResolver;
    if-nez p1, :cond_1

    .line 1573
    :cond_0
    :goto_0
    return-void

    .line 1566
    :cond_1
    const-string v2, "wifi_ap_ssid"

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1567
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .line 1568
    .local v1, isWpa:Z
    const-string v2, "wifi_ap_security"

    if-eqz v1, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1571
    if-eqz v1, :cond_0

    .line 1572
    const-string v2, "wifi_ap_passwd"

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1568
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 7
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    const/4 v6, 0x1

    .line 1509
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1510
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 1538
    :goto_0
    return v3

    .line 1513
    :cond_0
    if-eqz p2, :cond_1

    .line 1514
    iget-object v3, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    .line 1515
    iget-boolean p2, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    .line 1516
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiApEnabled: allowWifiAp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    iget-boolean v3, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    if-nez v3, :cond_1

    .line 1518
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1519
    .local v2, startDialogIntent:Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.wifi.WifiApSecurityChangeDialog"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1520
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1521
    const/high16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1522
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v3, v6

    .line 1524
    goto :goto_0

    .line 1528
    .end local v2           #startDialogIntent:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    monitor-enter v3

    .line 1530
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1531
    .local v0, ident:J
    sget-object v4, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1532
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1534
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, p0, Lcom/android/server/WifiService;->mLastApEnableUid:I

    .line 1535
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, p2, p1, v4}, Lcom/android/server/WifiService;->sendAccessPointMessage(ZLandroid/net/wifi/WifiConfiguration;I)V

    .line 1536
    monitor-exit v3

    move v3, v6

    .line 1538
    goto :goto_0

    .line 1536
    .end local v0           #ident:J
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setWifiDirectEnabled(ZLandroid/net/wifi/WifiConfiguration;I)Z
    .locals 6
    .parameter "enable"
    .parameter "config"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1031
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1032
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v2, :cond_0

    move v2, v4

    .line 1049
    :goto_0
    return v2

    .line 1034
    :cond_0
    if-ne p1, v5, :cond_1

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiDirectSetting()Z

    move-result v2

    if-eq v2, v5, :cond_1

    .line 1036
    const-string v2, "WifiService"

    const-string v3, "---- Check wifi direct setting. It is unchecked."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1037
    goto :goto_0

    .line 1041
    :cond_1
    invoke-direct {p0}, Lcom/android/server/WifiService;->getWifiDirectConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1042
    .local v0, directConfig:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "direct_intent"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1045
    .local v1, directintent:I
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    monitor-enter v2

    .line 1046
    :try_start_0
    sget-object v3, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1047
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/WifiService;->sendWiFiDirectMessage(ZLandroid/net/wifi/WifiConfiguration;I)V

    .line 1048
    monitor-exit v2

    move v2, v5

    .line 1049
    goto :goto_0

    .line 1048
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setWifiDirectPassword(Ljava/lang/String;)I
    .locals 5
    .parameter "mPassword"

    .prologue
    const-string v1, "WifiService"

    .line 1339
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    monitor-enter v1

    .line 1341
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->setWifiDirectPassword(Ljava/lang/String;)I

    .line 1342
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finish    ----- setWifiDirectPassword"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1347
    :try_start_1
    monitor-exit v1

    .line 1348
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1343
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1344
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setWifiDirectPassword() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    const/4 v2, 0x0

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 1347
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setWifiDirectSSID(Ljava/lang/String;)I
    .locals 5
    .parameter "mSssid"

    .prologue
    const-string v1, "WifiService"

    .line 1326
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    monitor-enter v1

    .line 1328
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->setWifiDirectSSID(Ljava/lang/String;)I

    .line 1329
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finish    ----- setWifiDirectSSID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1334
    :try_start_1
    monitor-exit v1

    .line 1335
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1330
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1331
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setWifiDirectSSID() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    const/4 v2, 0x0

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 1334
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setWifiDirectSetting(Z)Z
    .locals 5
    .parameter "bDirect"

    .prologue
    const/4 v4, 0x1

    .line 1076
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1078
    const/4 v2, 0x0

    .line 1081
    .local v2, mDirectSetting:I
    if-ne p1, v4, :cond_0

    .line 1082
    const/4 v2, 0x1

    .line 1084
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1085
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "direct_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 1089
    .end local v0           #cr:Landroid/content/ContentResolver;
    :goto_0
    return v3

    .line 1086
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1087
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setWifiEnabled(Z)Z
    .locals 10
    .parameter "enable"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "WifiService"

    .line 673
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_enabled"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 675
    const-string v4, "WifiService"

    const-string v5, "WiFi is Disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v8

    .line 711
    :goto_0
    return v4

    .line 678
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 680
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 681
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v4, :cond_1

    move v4, v8

    goto :goto_0

    .line 683
    :cond_1
    if-eqz p1, :cond_2

    .line 684
    const-string v4, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v4, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/WifiService;->allowWifi:Z

    .line 686
    iget-boolean p1, p0, Lcom/android/server/WifiService;->allowWifi:Z

    .line 687
    const-string v4, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "****************setWifiEnabled(), allowWifi****************"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/WifiService;->allowWifi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-boolean v4, p0, Lcom/android/server/WifiService;->allowWifi:Z

    if-nez v4, :cond_2

    .line 689
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 690
    .local v3, startDialogIntent:Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.wifi.WifiSecurityChangeDialog"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 692
    const/high16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 693
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v7

    .line 694
    goto :goto_0

    .line 699
    .end local v3           #startDialogIntent:Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    monitor-enter v4

    .line 701
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 702
    .local v1, ident:J
    sget-object v5, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 703
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 705
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iput v5, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    .line 707
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v7

    :goto_1
    iput-boolean v5, p0, Lcom/android/server/WifiService;->mAirplaneModeOverwridden:Z

    .line 708
    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {p0, p1, v5, v6}, Lcom/android/server/WifiService;->sendEnableMessage(ZZI)V

    .line 709
    monitor-exit v4

    move v4, v7

    .line 711
    goto/16 :goto_0

    :cond_3
    move v5, v8

    .line 707
    goto :goto_1

    .line 709
    .end local v1           #ident:J
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public setWifiEnabledDialog(Z)Z
    .locals 12
    .parameter "enable"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v8, "WifiService"

    .line 753
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 754
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v5, :cond_0

    move v5, v10

    .line 807
    :goto_0
    return v5

    .line 757
    :cond_0
    if-eqz p1, :cond_1

    .line 758
    const-string v5, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWifiEnabledDialog: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v5, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v11}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/WifiService;->allowWifi:Z

    .line 760
    const-string v5, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "****************setWifiEnabledDialog(), allowWifi****************"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/WifiService;->allowWifi:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-boolean p1, p0, Lcom/android/server/WifiService;->allowWifi:Z

    .line 762
    iget-boolean v5, p0, Lcom/android/server/WifiService;->allowWifi:Z

    if-nez v5, :cond_1

    .line 763
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 764
    .local v3, startDialogIntent:Landroid/content/Intent;
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.wifi.WifiSecurityChangeDialog"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 765
    const/high16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 766
    const/high16 v5, 0x80

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 767
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 768
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p0, v9, v5}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    move v5, v9

    .line 769
    goto :goto_0

    .line 777
    .end local v3           #startDialogIntent:Landroid/content/Intent;
    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_enabled"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_2

    .line 779
    const-string v5, "WifiService"

    const-string v6, "WiFi is Disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v10

    .line 780
    goto :goto_0

    .line 782
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 784
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v4

    .line 785
    .local v4, wifiApState:I
    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 787
    :cond_3
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mWifiEnabledSoon:Z

    .line 788
    const-string v5, "WifiService"

    const-string v5, "setWifiEnabledDialog, Mobile AP will be disabled"

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-virtual {p0, v11, v10}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 792
    :cond_4
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    monitor-enter v5

    .line 794
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 795
    .local v1, ident:J
    sget-object v6, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 796
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 798
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iput v6, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    .line 800
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v9

    :goto_1
    iput-boolean v6, p0, Lcom/android/server/WifiService;->mAirplaneModeOverwridden:Z

    .line 802
    invoke-virtual {p0, p1}, Lcom/android/server/WifiService;->setShowAccessPointListDialog(Z)Z

    .line 803
    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/WifiService;->sendEnableMessage(ZZI)V

    .line 804
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setWifiEnabledDialog(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    monitor-exit v5

    move v5, v9

    .line 807
    goto/16 :goto_0

    :cond_5
    move v6, v10

    .line 800
    goto :goto_1

    .line 805
    .end local v1           #ident:J
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public shutdown()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const-string v5, "WifiService"

    .line 718
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 719
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v3, :cond_0

    move v3, v4

    .line 742
    :goto_0
    return v3

    .line 722
    :cond_0
    const-string v3, "WifiService"

    const-string v3, "shutdown() is called"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v2

    .line 726
    .local v2, wifiApState:I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 728
    :cond_1
    const-string v3, "WifiService"

    const-string v3, "Mobile AP will be disabled"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 732
    :cond_2
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    monitor-enter v3

    .line 734
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 735
    .local v0, ident:J
    sget-object v4, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 736
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 738
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    .line 739
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/WifiService;->sendEnableMessage(ZZI)V

    .line 740
    monitor-exit v3

    .line 742
    const/4 v3, 0x1

    goto :goto_0

    .line 740
    .end local v0           #ident:J
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public startScan(Z)V
    .locals 4
    .parameter "forceActive"

    .prologue
    const/4 v3, 0x0

    .line 658
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 659
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v0, :cond_0

    .line 662
    :goto_0
    return-void

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v1, 0xa

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public startWifi()V
    .locals 5

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/WifiService;->testAndClearWifiSavedState()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    move v1, v2

    .line 442
    .local v1, wifiEnabled:Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 443
    .local v0, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 444
    const/4 v1, 0x0

    .line 447
    :cond_1
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiService starting up with Wi-Fi "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_3

    const-string v4, "enabled"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {p0, v1}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 450
    return-void

    .line 437
    .end local v0           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v1           #wifiEnabled:Z
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 447
    .restart local v0       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v1       #wifiEnabled:Z
    :cond_3
    const-string v4, "disabled"

    goto :goto_1
.end method

.method public stopWifiDirectWps()Z
    .locals 4

    .prologue
    const-string v3, "WifiService"

    .line 1247
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1249
    :try_start_0
    const-string v1, "WifiService"

    const-string v2, "Start  ----- stopWifiDirectWps"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->stopWifiDirectWps()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1255
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1251
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1252
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiService"

    const-string v1, "Exception in stopWifiDirectWps()"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 9
    .parameter "lock"
    .parameter "ws"

    .prologue
    .line 3640
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3641
    .local v4, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 3642
    .local v3, pid:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 3643
    const/4 p2, 0x0

    .line 3645
    :cond_0
    if-eqz p2, :cond_1

    .line 3646
    invoke-virtual {p0, v4, v3}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    .line 3648
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3650
    .local v0, ident:J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3651
    :try_start_1
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I
    invoke-static {v7, p1}, Lcom/android/server/WifiService$LockList;->access$4200(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)I

    move-result v2

    .line 3652
    .local v2, index:I
    if-gez v2, :cond_2

    .line 3653
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Wifi lock not active"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3659
    .end local v2           #index:I
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3660
    :catch_0
    move-exception v6

    .line 3662
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3664
    :goto_0
    return-void

    .line 3655
    .restart local v2       #index:I
    :cond_2
    :try_start_3
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v7}, Lcom/android/server/WifiService$LockList;->access$2100(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WifiService$WifiLock;

    .line 3656
    .local v5, wl:Lcom/android/server/WifiService$WifiLock;
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 3657
    if-eqz p2, :cond_3

    new-instance v7, Landroid/os/WorkSource;

    invoke-direct {v7, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_1
    iput-object v7, v5, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    .line 3658
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 3659
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3662
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3657
    :cond_3
    :try_start_4
    new-instance v7, Landroid/os/WorkSource;

    invoke-direct {v7, v4}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 3662
    .end local v2           #index:I
    .end local v5           #wl:Lcom/android/server/WifiService$WifiLock;
    :catchall_1
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public wpsCommandCancel()Z
    .locals 2

    .prologue
    .line 2426
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2427
    const-string v0, "WifiService"

    const-string v1, "WifiService: wpsCommandCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->wpsCommandCancel()Z

    move-result v0

    return v0
.end method

.method public wpsPbcConnect()Z
    .locals 2

    .prologue
    .line 2404
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2405
    const-string v0, "WifiService"

    const-string v1, "WifiService: wpsPbcConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->wpsPbcConnect()Z

    move-result v0

    return v0
.end method

.method public wpsPinConnect(Ljava/lang/String;)I
    .locals 2
    .parameter "bssid"

    .prologue
    .line 2415
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2416
    const-string v0, "WifiService"

    const-string v1, "wpsPinConnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->wpsPinConnect(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
